# 对上游的修改说明

JiajiaBox 基于 NekoBox for Android / SagerNet，并包含修改过的 sing-box、libcore
与 libneko。本文件汇总修改范围；逐条变更、日期与作者以 Git 提交历史为准。

上游项目与许可证：

- NekoBox for Android：GPL-3.0-or-later
- SagerNet / libcore：GPL-3.0-or-later
- sing-box：GPL-3.0-or-later（含名称使用/非关联条款）
- libneko：GPL-3.0-or-later
- 其他随附组件：见 `assets/licenses/UPSTREAM-NOTICES.txt`

## JiajiaBox 修改部分

### 客户端与界面

- 品牌、图标与启动页
- 首页卡片、抽屉导航、玻璃/模糊效果与动画
- 主题配色、节点列表与延迟状态显示
- 订阅导入、流量显示、更新检查与关于页
- Clash API / Yacd 入口与连接详情界面

### 分流与路由

- AI 分流与 Telegram 分流规则
- CN 域名/IP 分流与 `gvt1-cn.com` / `gvt1.com` 强制代理规则
- 路由优先级、规则排序与运行时规则应用
- 地球/地区统计与连接出口展示

### 协议与原生核心

- sing-box 核心的 JiajiaBox 修改（JNI/libbox 绑定、应用流量、诊断、Clash API
  配置等）
- Nowhere NW3 客户端出站与相关导入/测试工具
- Trojan-Go、Mieru 等协议接入
- 原生库构建脚本与 Android NDK 交叉编译配置

### 发布与工具

- 版本号、内部版本号显示与 Release 流程
- 差分 APK 打包、源码同步、校验与发布脚本
- 许可证、第三方声明与构建文档整理

## 许可证

JiajiaBox 原创代码与上述修改部分按 GPL-3.0 发布。上游组件仍适用其原许可证，
相关版权声明保留在 `assets/licenses/`。本软件不是任何上游项目的官方发行版，
也不表示上游认可或背书。

对应源码与构建方式：

- https://github.com/weilai090624-code/JiajiaBox
- [BUILDING.md](BUILDING.md)
- [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)
