package libcore

import (
	"os"
	"path/filepath"
	"strings"
	"sync"
	"testing"
	"time"
)

func TestDiagnosticMarkerAndRestart(t *testing.T) {
	directory := t.TempDir()
	d := &diagnosticLogSink{directory: directory}
	defer func() { d.mu.Lock(); d.closeLocked(); d.mu.Unlock() }()
	logPath := filepath.Join(directory, "diagnostic.log")
	marker := filepath.Join(directory, "diagnostic-recording")
	os.WriteFile(logPath, []byte("UI start\n"), 0600)
	d.write("must not record")
	data, _ := os.ReadFile(logPath)
	if string(data) != "UI start\n" {
		t.Fatal("recorded without marker")
	}
	os.WriteFile(marker, nil, 0600)
	if !d.active(true) {
		t.Fatal("marker not recognized")
	}
	var wg sync.WaitGroup
	for i := 0; i < 8; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			for j := 0; j < 20; j++ {
				d.write("dns: example.test")
			}
		}()
	}
	wg.Wait()
	data, _ = os.ReadFile(logPath)
	if strings.Count(string(data), "[RouteDiag] dns: example.test") != 160 {
		t.Fatal("lost or interleaved records")
	}
	os.Remove(marker)
	d.active(true)
	d.write("after stop")
	data, _ = os.ReadFile(logPath)
	if strings.Contains(string(data), "after stop") {
		t.Fatal("recorded after stop")
	}
	os.WriteFile(logPath, []byte("UI restarted\n"), 0600)
	os.WriteFile(marker, nil, 0600)
	d.active(true)
	d.write("second session")
	data, _ = os.ReadFile(logPath)
	if !strings.HasPrefix(string(data), "UI restarted\n") || !strings.Contains(string(data), "second session") {
		t.Fatal("restart failed")
	}
}
func TestDiagnosticKernelLogsWithNormalLogDisabled(t *testing.T) {
	directory := t.TempDir()
	os.WriteFile(filepath.Join(directory, "diagnostic.log"), nil, 0600)
	os.WriteFile(filepath.Join(directory, "diagnostic-recording"), nil, 0600)
	d := &diagnosticLogSink{directory: directory}
	old := coreDiagnostic.Swap(d)
	defer func() { coreDiagnostic.Store(old); d.mu.Lock(); d.closeLocked(); d.mu.Unlock() }()
	raw := `{"log":{"disabled":true},"dns":{"servers":[{"type":"udp","tag":"dns","server":"1.1.1.1"}]},"outbounds":[{"type":"direct","tag":"direct"}],"route":{"final":"direct"}}`
	b, err := NewSingBoxInstance(raw, nil)
	if err != nil {
		t.Fatal(err)
	}
	if err = b.Start(); err != nil {
		b.Close()
		t.Fatal(err)
	}
	b.Close()
	data, _ := os.ReadFile(filepath.Join(directory, "diagnostic.log"))
	for _, needle := range []string{"core create: version=1.14.3-Jiajia-7", "diagnostic kernel logging enabled", "sing-box started"} {
		if !strings.Contains(string(data), needle) {
			t.Fatalf("missing %q in %s", needle, data)
		}
	}
	_, err = NewSingBoxInstance(`{"dns":{"rules":[{"action":"broken"}]}}`, nil)
	if err == nil {
		t.Fatal("expected malformed config failure")
	}
	data, _ = os.ReadFile(filepath.Join(directory, "diagnostic.log"))
	if !strings.Contains(string(data), "decode config failed") {
		t.Fatal("decode error missing")
	}
	os.Remove(filepath.Join(directory, "diagnostic-recording"))
	d.active(true)
	b, err = NewSingBoxInstance(raw, nil)
	if err != nil {
		t.Fatal(err)
	}
	if err = b.Start(); err != nil {
		b.Close()
		t.Fatal(err)
	}
	b.Close()
	after, _ := os.ReadFile(filepath.Join(directory, "diagnostic.log"))
	if string(after) != string(data) {
		t.Fatal("normal disabled logging was altered")
	}
}
func TestDiagnosticSizeLimitAndTruncate(t *testing.T) {
	directory := t.TempDir()
	logPath := filepath.Join(directory, "diagnostic.log")
	os.WriteFile(filepath.Join(directory, "diagnostic-recording"), nil, 0600)
	f, err := os.Create(logPath)
	if err != nil {
		t.Fatal(err)
	}
	f.Truncate(diagnosticLogLimit)
	f.Close()
	d := &diagnosticLogSink{directory: directory}
	defer func() { d.mu.Lock(); d.closeLocked(); d.mu.Unlock() }()
	d.write("oversized")
	info, _ := os.Stat(logPath)
	size := info.Size()
	for i := 0; i < 20; i++ {
		d.write("must be limited")
	}
	info, _ = os.Stat(logPath)
	if size != info.Size() {
		t.Fatal("size cap not enforced")
	}
	os.WriteFile(logPath, []byte("new\n"), 0600)
	d.write("after truncate")
	data, _ := os.ReadFile(logPath)
	if !strings.Contains(string(data), "after truncate") {
		t.Fatal("truncate not detected")
	}
	// A removed output file must not be recreated after recording has ended.
	os.Remove(filepath.Join(directory, "diagnostic-recording"))
	d.checked = time.Time{}
	os.Remove(logPath)
	d.write("off")
	if _, err = os.Stat(logPath); !os.IsNotExist(err) {
		t.Fatal("created file with recording off")
	}
}
