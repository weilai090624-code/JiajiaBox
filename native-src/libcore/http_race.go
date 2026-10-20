package libcore

import (
	"context"
	"errors"
	"io"
	"net/http"
	"sync"
	"time"
)

type cleanupBody struct {
	io.ReadCloser
	once    sync.Once
	cleanup func()
}

func (b *cleanupBody) finish() { b.once.Do(b.cleanup) }
func (b *cleanupBody) Read(p []byte) (int, error) {
	n, err := b.ReadCloser.Read(p)
	if err == io.EOF {
		b.finish()
	}
	return n, err
}
func (b *cleanupBody) Close() error { err := b.ReadCloser.Close(); b.finish(); return err }

type httpAttempt func(context.Context) (*http.Response, error)

// A response retains its context until its body is consumed. Every losing
// attempt is canceled and closes any response, even after the caller returns.
func raceHTTP(parent context.Context, timeout time.Duration, attempts []httpAttempt) (*http.Response, error) {
	if len(attempts) == 0 {
		return nil, errors.New("no HTTP transports")
	}
	type result struct {
		response *http.Response
		err      error
		index    int
	}
	results := make(chan result)
	cancels := make([]context.CancelFunc, len(attempts))
	for i, attempt := range attempts {
		ctx, cancel := context.WithCancel(parent)
		cancels[i] = cancel
		go func(i int, attempt httpAttempt, ctx context.Context) {
			response, err := attempt(ctx)
			if err == nil && response == nil {
				err = errors.New("HTTP transport returned no response")
			}
			if err == nil && response.StatusCode != http.StatusOK {
				err = errors.New((&httpResponse{Response: response}).errorString())
				response = nil
			}
			select {
			case results <- result{response, err, i}:
			case <-ctx.Done():
				if response != nil && response.Body != nil {
					response.Body.Close()
				}
			}
		}(i, attempt, ctx)
	}
	cancelAll := func() {
		for _, cancel := range cancels {
			cancel()
		}
	}
	timer := time.NewTimer(timeout)
	defer timer.Stop()
	var combined error
	for remaining := len(attempts); remaining > 0; remaining-- {
		select {
		case r := <-results:
			if r.err != nil {
				combined = errors.Join(combined, r.err)
				if r.response != nil && r.response.Body != nil {
					r.response.Body.Close()
				}
				cancels[r.index]()
				continue
			}
			for i, cancel := range cancels {
				if i != r.index {
					cancel()
				}
			}
			r.response.Body = &cleanupBody{ReadCloser: r.response.Body, cleanup: cancels[r.index]}
			return r.response, nil
		case <-parent.Done():
			cancelAll()
			return nil, parent.Err()
		case <-timer.C:
			cancelAll()
			return nil, errors.Join(combined, context.DeadlineExceeded)
		}
	}
	cancelAll()
	return nil, combined
}
