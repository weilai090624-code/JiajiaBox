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

## 修改说明

对上游代码的修改汇总见 [MODIFICATIONS.md](MODIFICATIONS.md)；逐条变更以 Git
提交历史为准。

## 对应源码

```text
https://github.com/weilai090624-code/JiajiaBox
```

每个 Release 附带对应 tag 的源码归档；构建方式见 [BUILDING.md](BUILDING.md)。
