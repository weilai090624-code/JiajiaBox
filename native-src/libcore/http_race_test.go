package libcore

import (
	"context"
	"errors"
	"io"
	"net/http"
	"net/http/httptest"
	"strings"
	"sync/atomic"
	"testing"
	"time"
)

type contextBody struct {
	ctx context.Context
	io.Reader
	closed atomic.Bool
}

func (b *contextBody) Read(p []byte) (int, error) {
	if err := b.ctx.Err(); err != nil {
		return 0, err
	}
	return b.Reader.Read(p)
}
func (b *contextBody) Close() error { b.closed.Store(true); return nil }
func TestHTTPRaceCancelsLoserRetainsWinner(t *testing.T) {
	loserDone := make(chan struct{})
	var winner context.Context
	attempts := []httpAttempt{
		func(ctx context.Context) (*http.Response, error) {
			<-ctx.Done()
			close(loserDone)
			return nil, ctx.Err()
		},
		func(ctx context.Context) (*http.Response, error) {
			winner = ctx
			return &http.Response{StatusCode: 200, Body: &contextBody{ctx: ctx, Reader: strings.NewReader("working body")}}, nil
		},
	}
	response, err := raceHTTP(context.Background(), time.Second, attempts)
	if err != nil {
		t.Fatal(err)
	}
	select {
	case <-loserDone:
	case <-time.After(time.Second):
		t.Fatal("loser was not canceled")
	}
	if winner.Err() != nil {
		t.Fatal("winner canceled before consuming body")
	}
	data, err := io.ReadAll(response.Body)
	if err != nil || string(data) != "working body" {
		t.Fatalf("body: %s %v", data, err)
	}
	response.Body.Close()
	if winner.Err() == nil {
		t.Fatal("winner context leaked after body consumed")
	}
}
func TestHTTPRaceTimeoutCancelsRequests(t *testing.T) {
	done := make(chan struct{})
	_, err := raceHTTP(context.Background(), 20*time.Millisecond, []httpAttempt{func(ctx context.Context) (*http.Response, error) { <-ctx.Done(); close(done); return nil, ctx.Err() }})
	if !errors.Is(err, context.DeadlineExceeded) {
		t.Fatal(err)
	}
	select {
	case <-done:
	case <-time.After(time.Second):
		t.Fatal("timeout did not cancel transport")
	}
}
func TestHTTPDirectRequestAndErrorBody(t *testing.T) {
	var posts atomic.Int32
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.Method == "POST" {
			posts.Add(1)
			data, _ := io.ReadAll(r.Body)
			w.Write(data)
			return
		}
		w.WriteHeader(500)
		w.Write([]byte(strings.Repeat("x", 4096)))
	}))
	defer server.Close()
	client := NewHttpClient()
	defer client.Close()
	client.TryH3Direct()
	request := client.NewRequest()
	request.SetURL(server.URL)
	request.SetMethod("POST")
	request.SetContentString("payload")
	response, err := request.Execute()
	if err != nil {
		t.Fatal(err)
	}
	body, err := response.GetContent()
	if err != nil || string(body) != "payload" || posts.Load() != 1 {
		t.Fatalf("duplicate POST or broken body: %s %v", body, err)
	}
	request = client.NewRequest()
	request.SetURL(server.URL)
	if _, err = request.Execute(); err == nil || !strings.Contains(err.Error(), "HTTP 500") {
		t.Fatal(err)
	}
}
