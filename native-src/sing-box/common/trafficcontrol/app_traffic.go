package trafficcontrol

import (
	"bytes"
	"encoding/json"
	"os"
	"sort"
	"sync"
	"sync/atomic"
	"time"
)

type AppTraffic struct {
	Package  string `json:"package"`
	Upload   int64  `json:"upload"`
	Download int64  `json:"download"`
}

// Each connection resolves its recorder once. Packet callbacks touch only the
// owning application's atomic counters, with no map lookup or global lock.
type AppTrafficRecorder struct {
	name     string
	upload   atomic.Int64
	download atomic.Int64
}

func (r *AppTrafficRecorder) Add(upload, download int64) {
	if r == nil {
		return
	}
	if upload > 0 {
		r.upload.Add(upload)
	}
	if download > 0 {
		r.download.Add(download)
	}
}

type appTrafficStore struct {
	sync.RWMutex
	rows      map[string]*AppTrafficRecorder
	path      string
	flushMu   sync.Mutex
	persisted []byte
	startOnce sync.Once
}

func newAppTrafficStore() *appTrafficStore {
	return &appTrafficStore{rows: make(map[string]*AppTrafficRecorder)}
}

var appTraffic = newAppTrafficStore()

func (s *appTrafficStore) recorder(name string) *AppTrafficRecorder {
	if name == "" {
		name = "unknown"
	}
	s.RLock()
	row := s.rows[name]
	s.RUnlock()
	if row != nil {
		return row
	}
	s.Lock()
	defer s.Unlock()
	if row = s.rows[name]; row == nil {
		row = &AppTrafficRecorder{name: name}
		s.rows[name] = row
	}
	return row
}
func NewAppTrafficRecorder(name string) *AppTrafficRecorder { return appTraffic.recorder(name) }
func RecordAppTraffic(name string, upload, download int64) {
	if upload > 0 || download > 0 {
		NewAppTrafficRecorder(name).Add(upload, download)
	}
}

func (s *appTrafficStore) configure(path string) {
	s.Lock()
	defer s.Unlock()
	if s.path != "" {
		return
	}
	s.path = path
	data, err := os.ReadFile(path)
	if err != nil {
		return
	}
	var rows []AppTraffic
	if json.Unmarshal(data, &rows) != nil {
		return
	}
	for _, v := range rows {
		if v.Upload < 0 || v.Download < 0 {
			continue
		}
		row := s.rows[v.Package]
		if row == nil {
			row = &AppTrafficRecorder{name: v.Package}
			s.rows[v.Package] = row
		}
		// Counters may already exist when the API starts: retain their increments.
		row.upload.Add(v.Upload)
		row.download.Add(v.Download)
	}
}
func ConfigureAppTraffic(path string) {
	appTraffic.configure(path)
	s := appTraffic
	s.startOnce.Do(func() {
		go func() {
			ticker := time.NewTicker(2 * time.Second)
			defer ticker.Stop()
			for range ticker.C {
				s.flush()
			}
		}()
	})
}
func (s *appTrafficStore) snapshot() []AppTraffic {
	s.RLock()
	counters := make([]*AppTrafficRecorder, 0, len(s.rows))
	for _, v := range s.rows {
		counters = append(counters, v)
	}
	s.RUnlock()
	rows := make([]AppTraffic, 0, len(counters))
	for _, v := range counters {
		rows = append(rows, AppTraffic{Package: v.name, Upload: v.upload.Load(), Download: v.download.Load()})
	}
	sort.Slice(rows, func(i, j int) bool {
		a, b := rows[i], rows[j]
		if a.Upload+a.Download == b.Upload+b.Download {
			return a.Package < b.Package
		}
		return a.Upload+a.Download > b.Upload+b.Download
	})
	return rows
}
func AppTrafficSnapshot() []AppTraffic { return appTraffic.snapshot() }
func (s *appTrafficStore) flush() {
	// Serialize writers, but never hold the counter-map lock during encoding or IO.
	s.flushMu.Lock()
	defer s.flushMu.Unlock()
	s.RLock()
	path := s.path
	s.RUnlock()
	if path == "" {
		return
	}
	rows := s.snapshot()
	// Stable package ordering avoids unnecessary disk writes when totals tie.
	sort.Slice(rows, func(i, j int) bool { return rows[i].Package < rows[j].Package })
	data, err := json.Marshal(rows)
	if err != nil || bytes.Equal(data, s.persisted) {
		return
	}
	if err = os.WriteFile(path+".tmp", data, 0600); err != nil {
		return
	}
	if err = os.Rename(path+".tmp", path); err != nil {
		return
	}
	s.persisted = data
}
func FlushAppTraffic() { appTraffic.flush() }
