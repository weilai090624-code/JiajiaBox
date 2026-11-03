# 源码与成品上传信息

当前发布版本：`0.0.5 beta`，内部版本号 `475`，Android 包名 `com.linjiajia.top`，架构 `arm64-v8a`。

| 项目 | 值 |
| --- | --- |
| GitHub 仓库 | https://github.com/weilai090624-code/JiajiaBox |
| Git HTTPS 地址 | https://github.com/weilai090624-code/JiajiaBox.git |
| 源码分支 | `main` |
| 对应版本标签 | `v0.0.5-beta.475` |
| 预发布页面 | https://github.com/weilai090624-code/JiajiaBox/releases/tag/v0.0.5-beta.475 |
| APK | `JiajiaBox-0.0.5-beta-475-vless-encryption.apk` |
| APK SHA-256 | `2317a6ab615c52d8d010b1d91f8906eabcc8e2ca6c7b697494757cf9d5c616fb` |
| 对应源码归档 | `JiajiaBox-v0.0.5-beta.475-source.tar.gz` |
| 校验清单 | `SHA256SUMS.txt`（含 APK 与源码归档） |

本机项目路径：`/root/JiajiaBox-push`。成品位于 `/sdcard/Download/JiajiaBox Claude code/builds/next/`；发布素材位于 `build/release-upload-475/`。`build/`、缓存、APK、DEX 与 `.so` 产物由 `.gitignore` 排除，APK 作为 Releases 附件发布。

本版统一了首页、配置分组和测试弹窗的延迟颜色阈值；修复 Clash API 在启用后仍无法在 `127.0.0.1:9090` 监听的问题，并为外部面板增加受限的 Private Network Access；新增 VLESS Encryption（`mlkem768x25519plus`）客户端支持，兼容 Reality + Vision。xhttp 仍不在支持范围。

发布顺序：先提供本地 APK，由用户实测；用户明确同意后，再推送对应源码和成品。应用行为或 APK 有新改动时重新执行此流程。

支持的协议与模板格式清单见 `PROTOCOLS.md`。

Nowhere 协议与内核说明见 `nowhere/CONTEXT-DETAILED.txt` 和 `native-src/sing-box/protocol/nowhere/`；MX 协议暂不适配。

## 认证

Git HTTPS 推送和 Release 上传均使用你自己的 GitHub 凭证。发布脚本读取环境变量 `GH_TOKEN`。细粒度令牌需选择本仓库并授予 `Contents: Read and write`；权限依据见 [GitHub Releases API](https://docs.github.com/en/rest/releases/releases#create-a-release) 和 [上传附件 API](https://docs.github.com/en/rest/releases/assets#upload-a-release-asset)。

在 Bash 中输入令牌并用于当前终端：

```bash
read -rsp 'GitHub token: ' GH_TOKEN
export GH_TOKEN
export GIT_ASKPASS="$PWD/tools/github_askpass.py"
export GIT_TERMINAL_PROMPT=0
```

令牌由环境变量提供；Git remote 使用上表的普通 HTTPS 地址。

## 上传源码

在项目根目录核对改动并提交：

```bash
git status --short
git add .
git commit -m "feat: update globe regions and release assets"
git push origin main
```

为新的内部版本建立独立标签，再推送。已发布标签继续对应原来的源码；后续版本使用新的编号。

```bash
tag=v0.0.5-beta.475
git tag "$tag"
git push origin "$tag"
```

生成与标签一致的源码归档：

```bash
mkdir -p build/release-upload-475
git archive --format=tar.gz --prefix="JiajiaBox-$tag/" -o "build/release-upload-475/JiajiaBox-$tag-source.tar.gz" "$tag"
```

## 上传成品

准备发布正文、APK、源码归档和校验清单后运行标准库脚本（不需要安装 gh）：

```bash
python3 tools/publish_release.py \
  --repo weilai090624-code/JiajiaBox \
  --tag v0.0.5-beta.475 \
  --commit "$(git rev-parse v0.0.5-beta.475^{commit})" \
  --title "JiajiaBox v0.0.5-beta.475 预发布版" \
  --notes-file build/release-upload-475/RELEASE_NOTES.md \
  --asset "/sdcard/Download/JiajiaBox Claude code/builds/next/JiajiaBox-0.0.5-beta-475-vless-encryption.apk" \
  --asset "/sdcard/Download/JiajiaBox Claude code/builds/next/JiajiaBox-0.0.5-beta-475-vless-encryption.apk.sha256" \
  --asset build/release-upload-475/JiajiaBox-v0.0.5-beta.475-source.tar.gz \
  --asset build/release-upload-475/SHA256SUMS.txt \
  --output-json build/release-upload-475/github-publish.json
```

脚本先验证标签对应提交，再创建草稿，逐个上传并核对附件大小及服务端 SHA-256，全部成功后发布为预发布版。同名同校验附件会复用，不同内容会停止以避免混淆版本。创建草稿后会立即保存 Release ID；中断后使用同一命令和 `--output-json` 续传，也可指定 `--release-id`，复用已校验附件。发布结果中的 Release ID、附件 ID、下载地址和校验值保存在指定 JSON 中。

## 源码与本地构建

`addon-src/` 是项目修改的 Java 源码；`smali*` 是与该版 APK 同步的完整汇编源码；`assets/globe/` 包含地球网页与已署名贴图。内核源码位于 `native-src/`，当前 JNI 的 Go/C 绑定源码已收录在 `native-src/bindings/android-arm64/`。

`native-src/build.sh` 使用上述已收录绑定；当前环境的 Go 路径为 `/root/.local/go/bin/go`，Android 编译器包装器为 `native-src/android-cc.sh`，其 NDK/Termux 路径需要按构建机器调整。可用 `JIAJIA_NATIVE_OUTPUT` 指定原生库输出位置，`JIAJIA_GO_BINARY` 指定 Go 可执行程序。

完整汇编源码可由 `tools/sync_apk_sources.py APK路径` 从已验证 APK 同步（需要 baksmali），同时恢复 Git 忽略的运行库。当前仓库是解包后的 Android 工程，不是完整的原始 Gradle 工程；重新打包使用 apktool，签名使用 apksigner。APK 包内未修改的运行库可从对应 Release APK 恢复，或由所收录的原生源码重新编译。

本机继续覆盖安装所用签名文件为 `/root/.android/debug.keystore`，别名 `androiddebugkey`；须复用相同签名。私钥文件不随源码或 Release 附件上传。

