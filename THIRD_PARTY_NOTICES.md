# 第三方组件与许可证

JiajiaBox 是 NekoBox for Android / SagerNet 的独立修改版本，并包含修改过的
sing-box、libcore 与 libneko。上游组件仍适用其各自许可证，本项目的 GPL-3.0
授权不改变上游版权归属。

| 组件 | 上游 | 许可证 | 说明 |
| --- | --- | --- | --- |
| NekoBox for Android | https://github.com/MatsuriDayo/NekoBoxForAndroid | GPL-3.0-or-later | Copyright (C) 2023-2024 MatsuriDayo & NekoBox Authors |
| SagerNet / libcore | https://github.com/SagerNet/SagerNet | GPL-3.0-or-later | Copyright (C) 2021 nekohasekai |
| sing-box | https://github.com/SagerNet/sing-box | GPL-3.0-or-later | Copyright (C) 2022 nekohasekai；另含名称使用/非关联条款 |
| sing-box-lx（VLESS Encryption 客户端） | https://github.com/Leadaxe/sing-box-lx | GPL-3.0-or-later | 仅客户端实现；native.0rtt 已验证，xorpub/random/1rtt 未验证 |
| libneko | https://github.com/MatsuriDayo/libneko | GPL-3.0-or-later | 上游版权归 MatsuriDayo |
| Yacd-meta / 其他随附组件 | 见 `assets/licenses/UPSTREAM-NOTICES.txt` | 各自许可证 | 完整声明随应用分发 |

## 完整文本

本文件只是汇总，不替代许可证原文。完整 GPL 文本、上游 notices 与各组件声明位于：

```text
LICENSE
assets/licenses/
  GPL-3.0.txt
  sing-box-NOTICE.txt
  NekoBox-NOTICE.txt
  SagerNet-libcore-NOTICE.txt
  UPSTREAM-NOTICES.txt
  ...
```

## 名称与关联

本软件是独立修改版本，不是 NekoBox、SagerNet 或 sing-box 的官方发行版，也不表示
上游对本软件的认可或背书。上游名称与商标归各自权利人所有。


## Mundo 伴生核心（可选，闭源，非 GPL）

JiajiaBox 的 MX 协议支持是**可选的伴生核心接入**，不属于 GPL-3.0：

| 组件 | 来源 | 许可证 | 说明 |
| --- | --- | --- | --- |
| libmundoproxy.so | Mundo | **闭源 / 专有** | 1.0.0，arm64-v8a，原样使用，不属 GPL-3.0 |
| libtun2socks.so | Mundo | **闭源 / 专有** | MundoTunnel JNI 桥，arm64-v8a，原样使用 |
| FlClash-FOSS 接入参考 | https://github.com/Mundo-Connect/FlClash-FOSS | GPL-3.0 | 参考其 `mundo_profile.dart` / `core.cpp` 的接入方式与配置字段；仅参考，未复制闭源核心 |

- 上述 `.so` 通过运行时 `dlopen` 加载，未修改二进制；
- JiajiaBox 侧的 `MundoCore` / `MundoProbe` / `MundoEnsure` 与 smali 补丁是原创代码，按 GPL-3.0 发布；
- **Mundo 作者已于 2026-11-06 同意原样打包并公开分发**（微信确认，记录见 [MUNDO-PERMISSION.md](MUNDO-PERMISSION.md)）；
- 该同意不改变版权归属，也不使这两个 `.so` 适用 GPL-3.0；作者未指定固定署名格式，本项目保留本声明；
- 完整说明见 [MUNDO-INTEGRATION.md](MUNDO-INTEGRATION.md)，许可申请见 [MUNDO-PERMISSION-REQUEST.md](MUNDO-PERMISSION-REQUEST.md)。

```
libmundoproxy.so SHA-256: 52836a67ed26e53fa4facac330da66ba4068aeccf0c03a7cc95ea34e0900c6f3
libtun2socks.so  SHA-256: 195c2d25ecb604f2a0fb8084c15b6b1f0cb3dfd527d40069dcdb3d097ee38398
```

## 修改说明

对上游代码的修改汇总见 [MODIFICATIONS.md](MODIFICATIONS.md)；逐条变更以 Git
提交历史为准。

## 对应源码

```text
https://github.com/weilai090624-code/JiajiaBox
```

每个 Release 附带对应 tag 的源码归档；构建方式见 [BUILDING.md](BUILDING.md)。
