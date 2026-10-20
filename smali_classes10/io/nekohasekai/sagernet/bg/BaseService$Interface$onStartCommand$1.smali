.class final Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BaseService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->onStartCommand(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.nekohasekai.sagernet.bg.BaseService$Interface$onStartCommand$1"
    f = "BaseService.kt"
    i = {}
    l = {
        0x16c,
        0x16d,
        0x175,
        0x178
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

.field final synthetic $profile:Lio/nekohasekai/sagernet/database/ProxyEntity;

.field final synthetic $proxy:Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/bg/BaseService$Data;Lio/nekohasekai/sagernet/bg/BaseService$Interface;Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/bg/BaseService$Data;",
            "Lio/nekohasekai/sagernet/bg/BaseService$Interface;",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            "Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->$data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    iput-object p2, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->this$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    iput-object p3, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->$profile:Lio/nekohasekai/sagernet/database/ProxyEntity;

    iput-object p4, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->$proxy:Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v6, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->$data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    iget-object v2, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->this$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    iget-object v3, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->$profile:Lio/nekohasekai/sagernet/database/ProxyEntity;

    iget-object v4, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->$proxy:Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Data;Lio/nekohasekai/sagernet/bg/BaseService$Interface;Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 359
    iget v1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/nekohasekai/sagernet/plugin/PluginManager$PluginNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 380
    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 378
    :catch_1
    move-exception v0

    goto/16 :goto_6

    .line 377
    :catch_2
    move-exception v0

    goto/16 :goto_7

    .line 359
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 360
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 361
    :try_start_1
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->$data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    iget-object v5, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->this$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    sget-object v6, Lio/nekohasekai/sagernet/bg/ServiceNotification;->Companion:Lio/nekohasekai/sagernet/bg/ServiceNotification$Companion;

    iget-object v7, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->$profile:Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-virtual {v6, v7}, Lio/nekohasekai/sagernet/bg/ServiceNotification$Companion;->genTitle(Lio/nekohasekai/sagernet/database/ProxyEntity;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->createNotification(Ljava/lang/String;)Lio/nekohasekai/sagernet/bg/ServiceNotification;

    move-result-object v5

    invoke-virtual {v1, v5}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->setNotification(Lio/nekohasekai/sagernet/bg/ServiceNotification;)V

    .line 363
    sget-object v1, Lio/nekohasekai/sagernet/bg/Executable;->INSTANCE:Lio/nekohasekai/sagernet/bg/Executable;

    const/4 v5, 0x1

    invoke-static {v1, v3, v5, v4}, Lio/nekohasekai/sagernet/bg/Executable;->killAll$default(Lio/nekohasekai/sagernet/bg/Executable;ZILjava/lang/Object;)V

    .line 364
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->this$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v5, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->label:I

    invoke-interface {v1, v6}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->preInit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 359
    return-object v0

    .line 365
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->$proxy:Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->label:I

    invoke-virtual {v1, v5}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->init(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 359
    return-object v0

    .line 366
    :cond_1
    :goto_1
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v5, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->$profile:Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lio/nekohasekai/sagernet/database/DataStore;->setCurrentProfile(J)V

    .line 368
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->$proxy:Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    new-instance v5, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;

    new-instance v6, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1$1;

    iget-object v7, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->this$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-direct {v6, v7, v4}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1$1;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-direct {v5, v6}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v1, v5}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->setProcesses(Lio/nekohasekai/sagernet/bg/GuardedProcessPool;)V

    .line 373
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->this$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x3

    iput v6, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->label:I

    invoke-interface {v1, v5}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->startProcesses(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 359
    return-object v0

    .line 374
    :cond_2
    :goto_2
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->$data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    sget-object v5, Lio/nekohasekai/sagernet/bg/BaseService$State;->Connected:Lio/nekohasekai/sagernet/bg/BaseService$State;

    invoke-static {v1, v5, v4, v2, v4}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->changeState$default(Lio/nekohasekai/sagernet/bg/BaseService$Data;Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;ILjava/lang/Object;)V

    .line 376
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->this$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x4

    iput v6, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->label:I

    invoke-interface {v1, v5}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->lateInit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lio/nekohasekai/sagernet/plugin/PluginManager$PluginNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v0, :cond_4

    .line 359
    return-object v0

    .line 386
    .local v0, "exc":Ljava/lang/Throwable;
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "getName(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "proxyerror"

    invoke-static {v1, v5, v3, v2, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 388
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "<get-readableMessage>(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/String;)V

    goto :goto_4

    .line 390
    :cond_3
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    invoke-virtual {v1, v0}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 392
    :goto_4
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->this$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->this$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v5, Landroid/content/Context;

    const v6, 0x7f13026f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-interface {v1, v3, v2}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->stopRunner(ZLjava/lang/String;)V

    .end local v0    # "exc":Ljava/lang/Throwable;
    goto :goto_7

    .line 381
    .local v0, "e":Lio/nekohasekai/sagernet/plugin/PluginManager$PluginNotFoundException;
    :goto_5
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->this$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v1, Landroid/content/Context;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 382
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 383
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->$data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getBinder()Lio/nekohasekai/sagernet/bg/BaseService$Binder;

    move-result-object v1

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/plugin/PluginManager$PluginNotFoundException;->getPlugin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->missingPlugin(Ljava/lang/String;)Lkotlinx/coroutines/Job;

    .line 384
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->this$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-interface {v1, v3, v4}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->stopRunner(ZLjava/lang/String;)V

    .end local v0    # "e":Lio/nekohasekai/sagernet/plugin/PluginManager$PluginNotFoundException;
    goto :goto_7

    .line 379
    :goto_6
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->this$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    .line 393
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->this$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v1, Landroid/content/Context;

    .line 379
    const v2, 0x7f130138

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->stopRunner(ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    .line 396
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->$data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    invoke-virtual {v1, v4}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->setConnectingJob(Lkotlinx/coroutines/Job;)V

    throw v0

    :cond_4
    :goto_7
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$onStartCommand$1;->$data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    invoke-virtual {v0, v4}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->setConnectingJob(Lkotlinx/coroutines/Job;)V

    .line 397
    nop

    .line 398
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
