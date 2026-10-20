.class public final Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;
.super Ljava/lang/Object;
.source "BaseService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/bg/BaseService$Interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$1eJASEZL67nvrxm2XUJ2PGF2ILw(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Landroid/net/Network;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->preInit$lambda$2(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Landroid/net/Network;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static canReloadSelector(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)Z
    .locals 9
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    .line 204
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getProxy()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getConfig()Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getSelectorGroupId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    return v4

    .line 205
    :cond_1
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v0

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedProxy()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getById(J)Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v0

    if-nez v0, :cond_2

    return v4

    .line 206
    .local v0, "ent":Lio/nekohasekai/sagernet/database/ProxyEntity;
    :cond_2
    new-instance v1, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2, v3}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/bg/BaseService$Interface;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 207
    .local v1, "tmpBox":Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;
    invoke-virtual {v1}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->buildConfigTmp()V

    .line 208
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v2

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getProxy()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getLastSelectorGroupId()J

    move-result-wide v5

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getLastSelectorGroupId()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 209
    return v3

    .line 211
    :cond_4
    return v4
.end method

.method public static killProcesses(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V
    .locals 3
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    .line 225
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getProxy()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->close()V

    .line 226
    :cond_0
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .local v0, "$this$killProcesses_u24lambda_u240":Landroid/os/PowerManager$WakeLock;
    const/4 v2, 0x0

    .line 227
    .local v2, "$i$a$-apply-BaseService$Interface$killProcesses$1":I
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 228
    invoke-interface {p0, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->setWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 229
    nop

    .line 226
    .end local v0    # "$this$killProcesses_u24lambda_u240":Landroid/os/PowerManager$WakeLock;
    .end local v2    # "$i$a$-apply-BaseService$Interface$killProcesses$1":I
    nop

    .line 230
    :cond_1
    new-instance v0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$killProcesses$2;

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$killProcesses$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 233
    return-void
.end method

.method public static lateInit(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/bg/BaseService$Interface;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 299
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "$this$lateInit_u24lambda_u243":Landroid/os/PowerManager$WakeLock;
    const/4 v1, 0x0

    .line 300
    .local v1, "$i$a$-apply-BaseService$Interface$lateInit$2":I
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 301
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->setWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 302
    nop

    .line 299
    .end local v0    # "$this$lateInit_u24lambda_u243":Landroid/os/PowerManager$WakeLock;
    .end local v1    # "$i$a$-apply-BaseService$Interface$lateInit$2":I
    nop

    .line 304
    :cond_0
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getAcquireWakeLock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->acquireWakeLock()V

    .line 306
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getNotification()Lio/nekohasekai/sagernet/bg/ServiceNotification;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->postNotificationWakeLockStatus(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 310
    return-object v0

    .line 308
    :cond_2
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getNotification()Lio/nekohasekai/sagernet/bg/ServiceNotification;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->postNotificationWakeLockStatus(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 310
    return-object v0

    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static onBind(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;
    .param p1, "intent"    # Landroid/content/Intent;

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "io.nekohasekai.sagernet.SERVICE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getBinder()Lio/nekohasekai/sagernet/bg/BaseService$Binder;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static onStartCommand(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Landroid/content/Intent;II)I
    .locals 17
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 313
    move-object/from16 v6, p0

    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0, v6}, Lio/nekohasekai/sagernet/database/DataStore;->setBaseService(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V

    .line 315
    invoke-interface/range {p0 .. p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v7

    .line 316
    .local v7, "data":Lio/nekohasekai/sagernet/bg/BaseService$Data;
    invoke-virtual {v7}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v0

    sget-object v1, Lio/nekohasekai/sagernet/bg/BaseService$State;->Stopped:Lio/nekohasekai/sagernet/bg/BaseService$State;

    const/4 v8, 0x2

    if-eq v0, v1, :cond_0

    return v8

    .line 317
    :cond_0
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v0

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedProxy()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getById(J)Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v9

    .line 318
    .local v9, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    const-string v0, "null cannot be cast to non-null type android.content.Context"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v6

    check-cast v0, Landroid/content/Context;

    .line 319
    if-nez v9, :cond_1

    .line 320
    const-string v0, ""

    invoke-interface {v6, v0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->createNotification(Ljava/lang/String;)Lio/nekohasekai/sagernet/bg/ServiceNotification;

    move-result-object v0

    invoke-virtual {v7, v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->setNotification(Lio/nekohasekai/sagernet/bg/ServiceNotification;)V

    .line 321
    nop

    .line 393
    move-object v0, v6

    check-cast v0, Landroid/content/Context;

    .line 321
    const v1, 0x7f130228

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v1, v0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->stopRunner(ZLjava/lang/String;)V

    .line 322
    return v8

    .line 325
    :cond_1
    new-instance v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    invoke-direct {v0, v9, v6}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V

    move-object v10, v0

    .line 326
    .local v10, "proxy":Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;
    invoke-virtual {v7, v10}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->setProxy(Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;)V

    .line 327
    sget-object v0, Lio/nekohasekai/sagernet/BootReceiver;->Companion:Lio/nekohasekai/sagernet/BootReceiver$Companion;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getPersistAcrossReboot()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/BootReceiver$Companion;->setEnabled(Z)V

    .line 328
    invoke-virtual {v7}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getCloseReceiverRegistered()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 329
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v0

    .local v2, "$this$onStartCommand_u24lambda_u244":Landroid/content/IntentFilter;
    const/4 v3, 0x0

    .line 330
    .local v3, "$i$a$-apply-BaseService$Interface$onStartCommand$filter$1":I
    const-string v4, "io.nekohasekai.sagernet.RELOAD"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v4, "io.nekohasekai.sagernet.CLOSE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    .line 335
    const-string v4, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    :cond_2
    const-string v4, "com.linjiajia.top.RESET_UPSTREAM_CONNECTIONS"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    nop

    .line 329
    .end local v2    # "$this$onStartCommand_u24lambda_u244":Landroid/content/IntentFilter;
    .end local v3    # "$i$a$-apply-BaseService$Interface$onStartCommand$filter$1":I
    nop

    .line 339
    .local v0, "filter":Landroid/content/IntentFilter;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const-string v4, ".SERVICE"

    if-lt v2, v3, :cond_3

    .line 393
    move-object v11, v6

    check-cast v11, Landroid/content/Context;

    .line 341
    invoke-virtual {v7}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v12

    .line 342
    nop

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    move-object v3, v6

    check-cast v3, Landroid/content/Context;

    .line 343
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 344
    nop

    .line 345
    nop

    .line 340
    const/4 v15, 0x0

    const/16 v16, 0x2

    move-object v13, v0

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_0

    .line 393
    :cond_3
    move-object v2, v6

    check-cast v2, Landroid/content/Context;

    .line 349
    invoke-virtual {v7}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v3

    .line 350
    nop

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    move-object v11, v6

    check-cast v11, Landroid/content/Context;

    .line 351
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 352
    nop

    .line 348
    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 355
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->setCloseReceiverRegistered(Z)V

    .line 358
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_4
    sget-object v0, Lio/nekohasekai/sagernet/bg/BaseService$State;->Connecting:Lio/nekohasekai/sagernet/bg/BaseService$State;

    invoke-static {v7, v0, v1, v8, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->changeState$default(Lio/nekohasekai/sagernet/bg/BaseService$Data;Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;ILjava/lang/Object;)V

    .line 359
    new-instance v11, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;

    const/4 v5, 0x0

    move-object v0, v11

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Data;Lio/nekohasekai/sagernet/bg/BaseService$Interface;Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v11}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnMainDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 399
    return v8
.end method

.method public static persistStats(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V
    .locals 0
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    .line 270
    return-void
.end method

.method public static preInit(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/bg/BaseService$Interface;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 276
    sget-object v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->INSTANCE:Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;

    new-instance v1, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->start(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 293
    return-object v0
.end method

.method private static preInit$lambda$2(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Landroid/net/Network;)Lkotlin/Unit;
    .locals 7
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;
    .param p1, "it"    # Landroid/net/Network;

    .line 277
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getConnectivity()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    if-eqz v0, :cond_3

    .local v0, "link":Landroid/net/LinkProperties;
    const/4 v1, 0x0

    .line 278
    .local v1, "$i$a$-also-BaseService$Interface$preInit$2$1":I
    sget-object v2, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v2, p1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->setUnderlyingNetwork(Landroid/net/Network;)V

    .line 279
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getVpnService()Lio/nekohasekai/sagernet/bg/VpnService;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4}, Lio/nekohasekai/sagernet/bg/VpnService;->updateUnderlyingNetwork$default(Lio/nekohasekai/sagernet/bg/VpnService;Landroid/net/VpnService$Builder;ILjava/lang/Object;)V

    .line 281
    :cond_0
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getUpstreamInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "oldName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 283
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->setUpstreamInterfaceName(Ljava/lang/String;)V

    .line 285
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getUpstreamInterfaceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getUpstreamInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 286
    sget-object v4, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getUpstreamInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/nekohasekai/sagernet/ktx/Logs;->d(Ljava/lang/String;)V

    .line 287
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getNetworkChangeResetConnections()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    invoke-static {v3}, Llibcore/Libcore;->resetAllConnections(Z)V

    .line 291
    :cond_2
    nop

    .line 277
    .end local v0    # "link":Landroid/net/LinkProperties;
    .end local v1    # "$i$a$-also-BaseService$Interface$preInit$2$1":I
    .end local v2    # "oldName":Ljava/lang/String;
    nop

    .line 292
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static reload(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V
    .locals 5
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    .line 181
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedProxy()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 182
    const-string v0, "null cannot be cast to non-null type android.content.Context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f130228

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->stopRunner(ZLjava/lang/String;)V

    .line 184
    :cond_0
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->canReloadSelector()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 185
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v0

    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedProxy()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getById(J)Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v0

    .line 186
    .local v0, "ent":Lio/nekohasekai/sagernet/database/ProxyEntity;
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v2

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getProxy()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getConfig()Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v2

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getProfileTagMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    .line 187
    .local v1, "tag":Ljava/lang/String;
    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 189
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v2

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getProxy()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getBox()Llibcore/BoxInstance;

    move-result-object v2

    invoke-virtual {v2, v1}, Llibcore/BoxInstance;->selectOutbound(Ljava/lang/String;)Z

    .line 193
    :cond_3
    return-void

    .line 195
    .end local v0    # "ent":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v1    # "tag":Ljava/lang/String;
    :cond_4
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v0

    .line 196
    .local v0, "s":Lio/nekohasekai/sagernet/bg/BaseService$State;
    nop

    .line 197
    sget-object v2, Lio/nekohasekai/sagernet/bg/BaseService$State;->Stopped:Lio/nekohasekai/sagernet/bg/BaseService$State;

    if-ne v0, v2, :cond_5

    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->startRunner()V

    goto :goto_0

    .line 198
    :cond_5
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$State;->getCanStop()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {p0, v2, v1, v3, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->stopRunner$default(Lio/nekohasekai/sagernet/bg/BaseService$Interface;ZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 199
    :cond_6
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when invoking use"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void
.end method

.method public static startProcesses(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/bg/BaseService$Interface;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 215
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getProxy()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->launch()V

    .line 216
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static startRunner(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V
    .locals 4
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    .line 219
    const-string v0, "null cannot be cast to non-null type android.content.Context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 221
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 220
    new-instance v1, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 220
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 221
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 222
    :goto_0
    return-void
.end method

.method public static stopRunner(Lio/nekohasekai/sagernet/bg/BaseService$Interface;ZLjava/lang/String;)V
    .locals 4
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;
    .param p1, "restart"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .line 236
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setBaseService(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V

    .line 237
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setVpnService(Lio/nekohasekai/sagernet/bg/VpnService;)V

    .line 239
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v0

    sget-object v2, Lio/nekohasekai/sagernet/bg/BaseService$State;->Stopping:Lio/nekohasekai/sagernet/bg/BaseService$State;

    if-ne v0, v2, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getNotification()Lio/nekohasekai/sagernet/bg/ServiceNotification;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->destroy()V

    .line 241
    :cond_1
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->setNotification(Lio/nekohasekai/sagernet/bg/ServiceNotification;)V

    .line 242
    const-string v0, "null cannot be cast to non-null type android.app.Service"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroid/app/Service;

    .line 244
    invoke-interface {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v0

    sget-object v2, Lio/nekohasekai/sagernet/bg/BaseService$State;->Stopping:Lio/nekohasekai/sagernet/bg/BaseService$State;

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->changeState$default(Lio/nekohasekai/sagernet/bg/BaseService$Data;Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;ILjava/lang/Object;)V

    .line 246
    new-instance v0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$stopRunner$1;

    invoke-direct {v0, p0, p2, p1, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$stopRunner$1;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnMainDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 266
    return-void
.end method

.method public static synthetic stopRunner$default(Lio/nekohasekai/sagernet/bg/BaseService$Interface;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 235
    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-interface {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->stopRunner(ZLjava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: stopRunner"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
