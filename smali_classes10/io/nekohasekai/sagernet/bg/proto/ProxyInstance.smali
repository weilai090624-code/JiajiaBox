.class public final Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;
.super Lio/nekohasekai/sagernet/bg/proto/BoxInstance;
.source "ProxyInstance.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProxyInstance.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProxyInstance.kt\nio/nekohasekai/sagernet/bg/proto/ProxyInstance\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,66:1\n216#2,2:67\n*S KotlinDebug\n*F\n+ 1 ProxyInstance.kt\nio/nekohasekai/sagernet/bg/proto/ProxyInstance\n*L\n39#1:67,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010$\u001a\u00020%H\u0014J\u0006\u0010&\u001a\u00020%J\u000e\u0010\'\u001a\u00020%H\u0096@\u00a2\u0006\u0002\u0010(J\u000e\u0010)\u001a\u00020%H\u0094@\u00a2\u0006\u0002\u0010(J\u0008\u0010*\u001a\u00020%H\u0016J\u0008\u0010+\u001a\u00020%H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006,"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;",
        "Lio/nekohasekai/sagernet/bg/proto/BoxInstance;",
        "profile",
        "Lio/nekohasekai/sagernet/database/ProxyEntity;",
        "service",
        "Lio/nekohasekai/sagernet/bg/BaseService$Interface;",
        "<init>",
        "(Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V",
        "getService",
        "()Lio/nekohasekai/sagernet/bg/BaseService$Interface;",
        "setService",
        "(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V",
        "notTmp",
        "",
        "getNotTmp",
        "()Z",
        "setNotTmp",
        "(Z)V",
        "lastSelectorGroupId",
        "",
        "getLastSelectorGroupId",
        "()J",
        "setLastSelectorGroupId",
        "(J)V",
        "displayProfileName",
        "",
        "getDisplayProfileName",
        "()Ljava/lang/String;",
        "setDisplayProfileName",
        "(Ljava/lang/String;)V",
        "looper",
        "Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;",
        "getLooper",
        "()Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;",
        "setLooper",
        "(Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;)V",
        "buildConfig",
        "",
        "buildConfigTmp",
        "init",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadConfig",
        "launch",
        "close",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private displayProfileName:Ljava/lang/String;

.field private lastSelectorGroupId:J

.field private looper:Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;

.field private notTmp:Z

.field private service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;


# direct methods
.method public constructor <init>(Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V
    .locals 2
    .param p1, "profile"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .param p2, "service"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    const-string v0, "profile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/bg/proto/BoxInstance;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity;)V

    .line 12
    iput-object p2, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->notTmp:Z

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->lastSelectorGroupId:J

    .line 18
    sget-object v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->Companion:Lio/nekohasekai/sagernet/bg/ServiceNotification$Companion;

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification$Companion;->genTitle(Lio/nekohasekai/sagernet/database/ProxyEntity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->displayProfileName:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/bg/BaseService$Interface;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 12
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V

    return-void
.end method


# virtual methods
.method protected buildConfig()V
    .locals 3

    .line 24
    invoke-super {p0}, Lio/nekohasekai/sagernet/bg/proto/BoxInstance;->buildConfig()V

    .line 25
    invoke-super {p0}, Lio/nekohasekai/sagernet/bg/proto/BoxInstance;->getConfig()Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getSelectorGroupId()J

    move-result-wide v0

    iput-wide v0, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->lastSelectorGroupId:J

    .line 27
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->notTmp:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getConfig()Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ktx/Logs;->d(Ljava/lang/String;)V

    .line 28
    :cond_0
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->notTmp:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lio/nekohasekai/sagernet/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    sget-object v1, Lmoe/matsuri/nb4a/utils/JavaUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getConfig()Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v2

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getTrafficMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toJson(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ktx/Logs;->d(Ljava/lang/String;)V

    .line 29
    :cond_1
    return-void
.end method

.method public final buildConfigTmp()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->notTmp:Z

    .line 34
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->buildConfig()V

    .line 35
    return-void
.end method

.method public close()V
    .locals 3

    .line 59
    invoke-super {p0}, Lio/nekohasekai/sagernet/bg/proto/BoxInstance;->close()V

    .line 60
    new-instance v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance$close$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance$close$1;-><init>(Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public final getDisplayProfileName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->displayProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastSelectorGroupId()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->lastSelectorGroupId:J

    return-wide v0
.end method

.method public final getLooper()Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->looper:Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;

    return-object v0
.end method

.method public final getNotTmp()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->notTmp:Z

    return v0
.end method

.method public final getService()Lio/nekohasekai/sagernet/bg/BaseService$Interface;
    .locals 1

    .line 12
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    return-object v0
.end method

.method public init(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance$init$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance$init$1;

    iget v1, v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance$init$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance$init$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance$init$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance$init$1;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance$init$1;-><init>(Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance$init$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 37
    iget v3, v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance$init$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v2, v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance$init$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    .local v2, "this":Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "this":Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 38
    .local v3, "this":Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;
    iput-object v3, v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance$init$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance$init$1;->label:I

    invoke-super {v3, v0}, Lio/nekohasekai/sagernet/bg/proto/BoxInstance;->init(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_1

    .line 37
    return-object v2

    .line 38
    :cond_1
    move-object v2, v3

    .line 39
    .end local v3    # "this":Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;
    .restart local v2    # "this":Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;
    :goto_1
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getPluginConfigs()Ljava/util/HashMap;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/util/Map;

    .local v2, "$this$forEach$iv":Ljava/util/Map;
    const/4 v3, 0x0

    .line 67
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "$this$forEach$iv":Ljava/util/Map;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "element$iv":Ljava/util/Map$Entry;
    const/4 v5, 0x0

    .line 39
    .local v5, "$i$a$-forEach-ProxyInstance$init$2":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    .line 40
    .local v6, "plugin":Lkotlin/Pair;
    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 41
    .local v7, "content":Ljava/lang/String;
    sget-object v8, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    invoke-virtual {v8, v7}, Lio/nekohasekai/sagernet/ktx/Logs;->d(Ljava/lang/String;)V

    .line 42
    .end local v7    # "content":Ljava/lang/String;
    nop

    .line 67
    .end local v4    # "element$iv":Ljava/util/Map$Entry;
    .end local v5    # "$i$a$-forEach-ProxyInstance$init$2":I
    .end local v6    # "plugin":Lkotlin/Pair;
    goto :goto_2

    .line 68
    :cond_2
    nop

    .line 43
    .end local v3    # "$i$f$forEach":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public launch()V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getBox()Llibcore/BoxInstance;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/BoxInstance;->setAsMain()V

    .line 51
    invoke-super {p0}, Lio/nekohasekai/sagernet/bg/proto/BoxInstance;->launch()V

    .line 52
    new-instance v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance$launch$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance$launch$1;-><init>(Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 56
    return-void
.end method

.method protected loadConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/bg/proto/BoxInstance;->loadConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 47
    return-object v0
.end method

.method public final setDisplayProfileName(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->displayProfileName:Ljava/lang/String;

    return-void
.end method

.method public final setLastSelectorGroupId(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 17
    iput-wide p1, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->lastSelectorGroupId:J

    return-void
.end method

.method public final setLooper(Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;

    .line 21
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->looper:Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;

    return-void
.end method

.method public final setNotTmp(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 15
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->notTmp:Z

    return-void
.end method

.method public final setService(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    .line 12
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    return-void
.end method
