# JiajiaBox build 241 native sources

Kernel: sing-box 1.14.3-Jiajia-7. Upstream v1.14.3 commit 7054cac5124465ffdb145870d7c01885566711b1.

This directory contains the current sing-box, libcore, libneko and existing JNI binding sources. Go modules use relative replacement paths.

Run ./build.sh using the local Go 1.25.8, Termux clang, NDK headers and aarch64 assembler. Output: ../build/rebuilt-performance-241/libgojni.so.

Client generation helpers are in ../addon-src. Packaging, tests, performance measurements and validation notes are in ../build/rebuilt-performance-241/README.md. The cached reconstructed Android project uses differential packaging against build 240 to retain all unchanged DEX/resources.

## Build 306 source snapshot

The current JNI Go/C binding sources are versioned in `bindings/android-arm64/`. `build.sh` uses these files rather than an untracked `.build` cache. Set `JIAJIA_NATIVE_OUTPUT` for the output library and `JIAJIA_GO_BINARY` for Go. The bundled `android-cc.sh` and NDK paths describe the local build environment and must be adjusted on other machines. See ../RELEASING.md for release/source mapping and upload instructions.

## Build 307 online globe

The globe uses verified HTTPS IP.SB lookups instead of the bundled country database. Self and leaf outbounds query `/geoip` independently; destination IPs query `/geoip/{IP}` through an active proxy (or direct when none exists). Results expire after 30 s for self/exits and 60 s for targets. The shared limiter starts at most one request per second, with three concurrent jobs and HTTP 429 backoff. Query errors never invent an offline location. See `assets/licenses/Global-Globe-NOTICE.txt` for data handling.

Tests: `go test -tags=with_clash_api ./experimental/clashapi -run '^TestGlobe'` from `sing-box/`, and `python3 tools/test_globe_topology.py` from the project root (requires Android ART and build tools; see script options).
