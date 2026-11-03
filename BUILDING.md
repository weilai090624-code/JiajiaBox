# 构建说明

本仓库是 apktool 解包后的 Android 工程加原生核心源码，不是完整的 Gradle 工程。
发布 APK 使用差分打包，不直接执行 `apktool b`（当前资源全量重建会遇到
`iconSize` 等资源编译问题）。

以下命令以 Linux/aarch64 为例；x86_64 构建机同理，只需替换 NDK 主机标签。

## 依赖

- Go 1.25.x（本项目验证版本 `go1.25.8`）
- Android NDK r25c（默认查找 `/root/ndk-tc/android-ndk-r25c`）
- `clang`、`aarch64-linux-gnu-as`
- Java 21
- Android SDK build-tools：`zipalign`、`apksigner`、`aapt`
- `smali.jar` / `baksmali.jar`（可从 apktool 工具链获取）
- Python 3.11+
- 一个 Android 签名 keystore

签名私钥不随源码或 Release 分发。使用自己的 keystore 重新签名后，得到的 APK
不能直接覆盖官方签名版本，需要先卸载再安装。

## 1. 获取源码

```bash
git clone https://github.com/weilai090624-code/JiajiaBox.git
cd JiajiaBox
git checkout <tag>
```

每个 Release 也附带对应 tag 的 `JiajiaBox-<tag>-source.tar.gz`。GitHub tag 与
Release 附件二选一，内容应一致。

## 2. 编译原生核心

```bash
export ANDROID_NDK_ROOT=/path/to/android-ndk-r25c
export JIAJIA_GO_BINARY=/path/to/go
# 可选：自定义输出路径
export JIAJIA_NATIVE_OUTPUT="$PWD/build/native/libgojni.so"

bash native-src/build.sh
```

脚本使用 `native-src/bindings/android-arm64` 的 JNI 绑定，设置
`GOOS=android GOARCH=arm64 CGO_ENABLED=1`，输出 `libgojni.so`。

如果 `clang` 或 `aarch64-linux-gnu-as` 不在 PATH 中：

```bash
export CLANG=/path/to/clang
```

`native-src/android-cc.sh` 会用 clang 预处理 `.S` 文件，再调用
`aarch64-linux-gnu-as` 汇编。

## 3. 从 smali 重新生成 DEX（按需）

```bash
java -jar smali.jar assemble smali_classes32 -o classes32.dex
```

其他 `smali_classesN` 同理。只修改某个 DEX 时，替换对应的 `classesN.dex` 即可。

## 4. 差分打包 APK

```bash
python3 -I tools/package_update.py \
  --base /path/to/base-release.apk \
  --output /path/to/JiajiaBox-new.apk \
  --version-code 470 \
  --replace classes32.dex=/path/to/classes32.dex \
  --replace lib/arm64-v8a/libgojni.so=build/native/libgojni.so \
  --keystore /path/to/your.keystore \
  --ks-alias androiddebugkey \
  --ks-pass android \
  --key-pass android \
  --apksigner /path/to/apksigner \
  --aapt /path/to/aapt
```

说明：

- `--base` 使用同一签名体系的上一个 Release APK；脚本会校验新签名证书与 base
  一致。
- `--version-code` 会同时修改 `AndroidManifest.xml` 和对应 DEX 中的
  `BuildConfig.VERSION_CODE`。
- 只替换实际修改的条目；不要无意义地替换未修改的 DEX/资源。
- 脚本会自动执行 `zipalign`，并用 `apksigner` 签名和验签。

验证：

```bash
apksigner verify --verbose --print-certs /path/to/JiajiaBox-new.apk
zipalign -c 4 /path/to/JiajiaBox-new.apk
aapt dump badging /path/to/JiajiaBox-new.apk | head -1
```

## 5. 生成源码归档与发布

```bash
tag=v0.0.5-beta.470
git archive --format=tar.gz --prefix="JiajiaBox-$tag/" \
  -o "JiajiaBox-$tag-source.tar.gz" "$tag"
```

发布脚本读取 `GH_TOKEN`：

```bash
export GH_TOKEN=...
export GIT_ASKPASS="$PWD/tools/github_askpass.py"
export GIT_TERMINAL_PROMPT=0
python3 -I tools/publish_release.py \
  --repo weilai090624-code/JiajiaBox \
  --tag "$tag" \
  --commit "$(git rev-parse "$tag^{commit}")" \
  --title "JiajiaBox $tag 预发布版" \
  --notes-file RELEASE_NOTES.md \
  --asset JiajiaBox-new.apk \
  --asset JiajiaBox-new.apk.sha256 \
  --asset "JiajiaBox-$tag-source.tar.gz" \
  --asset SHA256SUMS.txt \
  --output-json github-publish.json
```

发布流程的更多细节见 [RELEASING.md](RELEASING.md)。每个 Release 应同时提供：

- 对应 tag 的源码归档
- APK 及其 SHA-256
- `SHA256SUMS.txt`
- 本仓库的源码链接

## 许可证与声明

- 许可证全文：[LICENSE](LICENSE)
- 第三方组件声明：[THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)
- 修改说明：[MODIFICATIONS.md](MODIFICATIONS.md)
- 应用内随附声明：`assets/licenses/`

分发修改版本时，请保留版权与许可证声明，提供完整对应源码和构建方式，并继续按
GPL 兼容方式授权。
