# JiajiaBox build 241 native sources

Kernel: sing-box 1.14.3-Jiajia-7. Upstream v1.14.3 commit 7054cac5124465ffdb145870d7c01885566711b1.

This directory contains the current sing-box, libcore, libneko and existing JNI binding sources. Go modules use relative replacement paths.

Run ./build.sh using the local Go 1.25.8, Termux clang, NDK headers and aarch64 assembler. Output: ../build/rebuilt-performance-241/libgojni.so.

Client generation helpers are in ../addon-src. Packaging, tests, performance measurements and validation notes are in ../build/rebuilt-performance-241/README.md. The cached reconstructed Android project uses differential packaging against build 240 to retain all unchanged DEX/resources.
