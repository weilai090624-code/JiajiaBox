# JiajiaBox 320 可打断的左右滑动与一级抽屉

APK：/sdcard/Download/JiajiaBox-0.0.4-beta-320-interrupt-motion-local.apk
SHA-256：ad542dac3c78fc6fef5f09de7912fbcf3876a281ff51b5a7004fcd15f67fecac
基于本地 319。未提交、未推送、未上传、未发布、未自动安装。

左右滑动：松手动画进行中再次按下，停止旧动画并从当前已显示位移接手；按新的手指位置重设拖动原点，允许继续或反向拖回。接手后反向拖动以新手势意图决定完成方向；仅按住后松手则续向此前目标。返回首页请求可在动画中从当前位置改向。移除旧动画更新和结束回调，并对结束回调验证动画身份，防止过期回调提交旧页面状态。接手期间复用原页面、纹理租约和工作闸门。

一级抽屉：在 DrawerLayout 的触摸拦截和处理 DOWN 阶段，对正在滑动/归位的已捕获抽屉重新选为拖动目标。因此触到正在移动的抽屉或其遮罩时可以中断并继续拖动或反向拉回。保留原捕获回调、抽屉锁定检查、拖动范围和松手算法；其他 ViewDragHelper 使用场景以及抽屉静止时的点击不变。不使用跳到终点的 abort()。

验证：
- 真实 HomeSwipeController/DrawerLayers Java 回归：精确接手位移、两个方向反向、旧回调隔离、轻触续播、返回改向、20 次连续接手、1000 次重复 MOVE、完成/取消/重置及租约清理通过。
- 从生产 smali 提取接管分支，在 ART 中执行状态/父类/空捕获矩阵，验证仅运动中的 DrawerLayout 改用已捕获抽屉；两个 DOWN 挂点和原锁定回调仍存在。
- Java/D8、Android ART -Xverify:all（105 类和 UI 集成）、102 个动画资源、签名/对齐/完整性和精确修改范围检查通过。

尚未进行手机实际触控体验。建议测试左右页松手后立即按住反拖、连续反复抓停，以及一级抽屉打开/收起途中按住抽屉或遮罩继续拖动。

沿用 319 的顶部光照和滑动性能优化。仅版本元数据、主 DEX 的 ViewDragHelper 和 DEX 32 的 HomeSwipeController 变化；地球、贴图、原生库、动画资源及 DEX 16 均保留。
日志：swipe-tests.log、drawer-tests.log、ui-art-tests.log、art-tests.log、resources-tests.log、validation.txt。
