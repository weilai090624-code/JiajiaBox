package libcore

import (
	"sync"
	"testing"
)

func TestWakeTransitionAndConcurrentShutdown(t *testing.T) {
	b, err := NewSingBoxInstance(`{"outbounds":[{"type":"direct","tag":"direct"}]}`, nil)
	if err != nil {
		t.Fatal(err)
	}
	if err = b.Start(); err != nil {
		t.Fatal(err)
	}
	b.Wake()
	if b.sleeping.Load() {
		t.Fatal("wake without sleep changed state")
	}
	b.Sleep()
	b.Sleep()
	if !b.sleeping.Load() {
		t.Fatal("sleep missing")
	}
	b.Wake()
	b.Wake()
	if b.sleeping.Load() {
		t.Fatal("wake missing")
	}
	mainInstanceMu.Lock()
	mainInstance = b
	mainInstanceMu.Unlock()
	var workers sync.WaitGroup
	for i := 0; i < 10; i++ {
		workers.Add(1)
		go func() {
			defer workers.Done()
			ResetAllConnections(false)
			ResetAllConnections(true)
			b.Sleep()
			b.Wake()
		}()
	}
	b.Close()
	workers.Wait()
	b.Wake()
	b.Sleep()
	if currentMainInstance() != nil {
		t.Fatal("closed main instance retained")
	}
}
