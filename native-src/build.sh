#!/bin/bash
set -euo pipefail
native_root="$(cd "$(dirname "$0")" && pwd)"
cd "$native_root/libcore/.build/src-android-arm64"
export GOOS=android GOARCH=arm64 CGO_ENABLED=1
export CC="$native_root/android-cc.sh"
export CGO_CFLAGS='-I/root/ndk-tc/android-ndk-r25c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include'
export CGO_LDFLAGS='-L/root/ndk-tc/android-ndk-r25c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/aarch64-linux-android/21'
/root/.local/go/bin/go build -mod=mod -buildmode=c-shared -trimpath -ldflags='-s -w -extldflags=-Wl,-z,max-page-size=16384' -tags=with_conntrack,with_gvisor,with_quic,with_wireguard,with_utls,with_clash_api -o "${JIAJIA_NATIVE_OUTPUT:-/root/jiajiabox-fixed-0.0.3/build/rebuilt-fakeip-cache-249/libgojni.so}" ./gobind
