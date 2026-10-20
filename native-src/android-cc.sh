#!/bin/sh
for argument in "$@"; do
    case "$argument" in
        *.S)
            assembly_source="$argument"
            ;;
    esac
done
if [ -n "$assembly_source" ]; then
    previous=""
    for argument in "$@"; do
        if [ "$previous" = "-o" ]; then assembly_output="$argument"; fi
        previous="$argument"
    done
    /data/data/com.termux/files/usr/bin/clang-21 -fintegrated-cc1 -x c -E "$assembly_source" -o "$assembly_output.s" || exit
    exec /usr/bin/aarch64-linux-gnu-as "$assembly_output.s" -o "$assembly_output"
fi
exec /data/data/com.termux/files/usr/bin/clang-21 -fintegrated-cc1 "$@"
