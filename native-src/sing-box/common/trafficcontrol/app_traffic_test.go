package trafficcontrol

import (
	"encoding/json"
	"os"
	"path/filepath"
	"sync"
	"sync/atomic"
	"testing"
)

func TestAppTrafficConcurrentFlushAndRestore(t *testing.T) {
	s := newAppTrafficStore()
	path := filepath.Join(t.TempDir(), "traffic.json")
	s.configure(path)
	recorder := s.recorder("app.large")
	var workers sync.WaitGroup
	for i := 0; i < 20; i++ {
		workers.Add(1)
		go func() {
			defer workers.Done()
			for j := 0; j < 1000; j++ {
				recorder.Add(10, 20)
			}
		}()
	}
	workers.Add(1)
	go func() {
		defer workers.Done()
		for i := 0; i < 20; i++ {
			s.flush()
			s.snapshot()
		}
	}()
	workers.Wait()
	s.recorder("app.small").Add(1, 2)
	s.recorder("").Add(5, 6)
	s.flush()
	rows := s.snapshot()
	if len(rows) != 3 || rows[0].Upload != 200000 || rows[0].Download != 400000 || rows[1].Package != "unknown" {
		t.Fatalf("bad totals: %+v", rows)
	}
	restored := newAppTrafficStore()
	restored.configure(path)
	rows = restored.snapshot()
	if len(rows) != 3 || rows[0].Upload != 200000 || rows[0].Download != 400000 {
		t.Fatalf("lost persisted bytes: %+v", rows)
	}
	before, _ := os.Stat(path)
	s.flush()
	after, _ := os.Stat(path)
	if before.ModTime() != after.ModTime() {
		t.Fatal("unchanged totals were rewritten")
	}
}
func TestFlushRetryAndLiveMerge(t *testing.T) {
	dir := t.TempDir()
	path := filepath.Join(dir, "traffic.json")
	s := newAppTrafficStore()
	s.configure(path)
	s.recorder("app").Add(10, 20)
	os.Mkdir(path+".tmp", 0700)
	s.flush()
	if _, err := os.Stat(path); !os.IsNotExist(err) {
		t.Fatal("failed write unexpectedly persisted")
	}
	os.Remove(path + ".tmp")
	s.recorder("app").Add(1, 2)
	s.flush()
	data, _ := os.ReadFile(path)
	var rows []AppTraffic
	if json.Unmarshal(data, &rows) != nil || len(rows) != 1 || rows[0].Upload != 11 || rows[0].Download != 22 {
		t.Fatalf("retry lost increments: %s", data)
	}
	live := newAppTrafficStore()
	r := live.recorder("app")
	r.Add(3, 4)
	live.configure(path)
	r.Add(5, 6)
	if rows = live.snapshot(); rows[0].Upload != 19 || rows[0].Download != 32 {
		t.Fatal(rows)
	}
}
func TestFlowRecorderAndDirectExclusion(t *testing.T) {
	s := newAppTrafficStore()
	r := s.recorder("app.proxy")
	flow := &flowTracker{metadata: TrackerMetadata{appRecorder: r, Upload: new(atomic.Int64), Download: new(atomic.Int64)}}
	flow.CountForward(123)
	flow.CountReverse(456)
	direct := &flowTracker{metadata: TrackerMetadata{Upload: new(atomic.Int64), Download: new(atomic.Int64)}}
	direct.CountForward(999)
	direct.CountReverse(999)
	rows := s.snapshot()
	if len(rows) != 1 || rows[0].Upload != 123 || rows[0].Download != 456 {
		t.Fatal(rows)
	}
}
func BenchmarkAppTrafficAtomic(b *testing.B) {
	r := newAppTrafficStore().recorder("app")
	b.ReportAllocs()
	b.RunParallel(func(pb *testing.PB) {
		for pb.Next() {
			r.Add(100, 200)
		}
	})
}
func BenchmarkAppTrafficLegacy(b *testing.B) {
	var mu sync.Mutex
	rows := map[string]*AppTraffic{"app": {Package: "app"}}
	b.ReportAllocs()
	b.RunParallel(func(pb *testing.PB) {
		for pb.Next() {
			mu.Lock()
			r := rows["app"]
			r.Upload += 100
			r.Download += 200
			mu.Unlock()
		}
	})
}
