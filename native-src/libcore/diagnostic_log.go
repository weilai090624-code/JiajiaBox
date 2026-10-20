package libcore

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"sync"
	"sync/atomic"
	"time"
)

// Match the existing Android recorder's marker and shared output file.
// Do not write full configurations: they can contain subscription credentials.
type diagnosticLogSink struct {
	mu           sync.Mutex
	directory    string
	checked      time.Time
	enabled      bool
	file         *os.File
	fileInfo     os.FileInfo
	limitReached bool
	limitSize    int64
}

var coreDiagnostic atomic.Pointer[diagnosticLogSink]

const diagnosticLogLimit = 16 * 1024 * 1024

func (d *diagnosticLogSink) active(force bool) bool {
	d.mu.Lock()
	defer d.mu.Unlock()
	return d.activeLocked(force)
}
func (d *diagnosticLogSink) activeLocked(force bool) bool {
	now := time.Now()
	if force || d.checked.IsZero() || now.Sub(d.checked) >= 250*time.Millisecond {
		info, err := os.Stat(filepath.Join(d.directory, "diagnostic-recording"))
		d.enabled = err == nil && info.Mode().IsRegular()
		d.checked = now
		if !d.enabled {
			d.closeLocked()
		}
	}
	return d.enabled
}
func (d *diagnosticLogSink) closeLocked() {
	if d.file != nil {
		d.file.Close()
		d.file = nil
		d.fileInfo = nil
	}
	d.limitReached = false
}
func (d *diagnosticLogSink) write(message string) {
	d.mu.Lock()
	defer d.mu.Unlock()
	if !d.activeLocked(false) {
		return
	}
	path := filepath.Join(d.directory, "diagnostic.log")
	info, err := os.Stat(path)
	if err != nil || !info.Mode().IsRegular() {
		d.closeLocked()
		return
	}
	if d.file != nil && !os.SameFile(d.fileInfo, info) {
		d.closeLocked()
	}
	// The Android UI truncates this file when starting another recording.
	if d.limitReached && info.Size() < d.limitSize {
		d.limitReached = false
	}
	if d.limitReached {
		return
	}
	if d.file == nil {
		d.file, err = os.OpenFile(path, os.O_WRONLY|os.O_APPEND, 0600)
		if err != nil {
			return
		}
		d.fileInfo = info
	}
	line := time.Now().UTC().Format(time.RFC3339Nano) + " [RouteDiag] " + strings.TrimRight(message, "\r\n") + "\n"
	if info.Size()+int64(len(line)) > diagnosticLogLimit {
		line = time.Now().UTC().Format(time.RFC3339Nano) + " [RouteDiag] diagnostic size limit reached; start a new recording\n"
		d.limitReached = true
		d.limitSize = info.Size() + int64(len(line))
	}
	if _, err = d.file.WriteString(line); err != nil {
		d.closeLocked()
	}
}
func diagnosticRecording() bool { d := coreDiagnostic.Load(); return d != nil && d.active(true) }
func recordCoreDiagnostic(format string, args ...any) {
	if d := coreDiagnostic.Load(); d != nil {
		d.write(fmt.Sprintf(format, args...))
	}
}
