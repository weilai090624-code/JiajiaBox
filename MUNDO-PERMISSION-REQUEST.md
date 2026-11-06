> 状态：**已于 2026-11-06 获作者同意**（微信对话，作者回复“随便”，未指定固定署名格式；
> 记录见 [MUNDO-PERMISSION.md](MUNDO-PERMISSION.md)）。本文保留作为申请记录。

# 致 Mundo 的再分发许可申请（模板）

> 用途：向 Mundo 作者申请在 JiajiaBox 的 APK 中再分发 `libmundoproxy.so` 与
> `libtun2socks.so`。可直接复制发送；对方的书面回复建议保存在本仓库。

---

你好，我是开源安卓客户端 **JiajiaBox** 的开发者（GitHub：`weilai090624-code/JiajiaBox`，GPLv3）。

我们已经在客户端里接入了 Mundo 的伴生核心：应用通过 `dlopen` 加载官方
`libmundoproxy.so`，用 `libtun2socks.so` 的 `MundoTunnel.startService(config, -1)`
启动本地 SOCKS，再由 sing-box 把 MX 节点的出站指向这个 SOCKS。核心本身未做任何修改。

现在希望在 GitHub Release 的 APK 中直接打包这两个 arm64 库，特此申请书面许可：

1. 是否允许我们在 APK 中再分发未修改的 `libmundoproxy.so`
   （1.0.0，SHA-256 `52836a67…c6f3`）和 `libtun2socks.so`
   （SHA-256 `195c2d25…8398`），来源为官方 APK？
2. 许可范围是否为：非独占、免费、全球、可随 JiajiaBox 的 GitHub Release 分发，
   用户可免费下载？
3. 是否允许从官方 APK 中提取上述 arm64 库？
4. 是否需要署名、版权声明或官网链接？请给出你希望我们使用的**具体文字**和
   展示位置（README / Release / 应用内关于页）。
5. 许可覆盖的版本范围：只限当前版本，还是后续官方升级自动覆盖？
6. 如果不同意打包，是否认可 FlClash 那种“用户自行提供 `.so` / 从已安装的
   Mundo 导入”的方式？
7. `startService`、`obtainTrafficBytes`、`CDestroyProcess` 这些接口是否稳定？
   是否有版本兼容承诺或正式 SDK？
8. 请确认贵方有权授予上述再分发许可（包括库中可能包含的第三方代码）。

如果方便，请用**邮件、微信文字或盖章声明**任一书面形式回复。我们会在仓库的
`THIRD-PARTY-NOTICES` 和 Release 页面按你的要求署名，并明确注明：该库不属于
GPLv3，版权归 Mundo 所有，JiajiaBox 仅做原样分发。

谢谢！

---

## 对方书面回复应包含

1. 授权方全称、被授权方；
2. 授权对象（文件名、版本、架构、SHA-256）；
3. 权利内容（非独占、免费、可再分发、仅用于 JiajiaBox）；
4. 明确允许从官方 APK 提取并打包；
5. 明确允许闭源分发，不要求公开 `.so` 源码；
6. 署名格式与展示位置；
7. 版本范围与后续升级是否覆盖；
8. 免责声明；
9. 终止条件；
10. 签署/盖章/官方邮箱与日期。
