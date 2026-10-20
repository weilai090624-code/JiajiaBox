.class final Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NativeInterface.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/matsuri/nb4a/NativeInterface;->selector_OnProxySelected(Ljava/lang/String;Ljava/lang/String;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNativeInterface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeInterface.kt\nmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,110:1\n503#2,7:111\n*S KotlinDebug\n*F\n+ 1 NativeInterface.kt\nmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1\n*L\n93#1:111,7\n*E\n"
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
    c = "moe.matsuri.nb4a.NativeInterface$selector_OnProxySelected$1$1"
    f = "NativeInterface.kt"
    i = {
        0x0
    }
    l = {
        0x63,
        0x66
    }
    m = "invokeSuspend"
    n = {
        "id"
    }
    s = {
        "J$0"
    }
.end annotation


# instance fields
.field final synthetic $tag:Ljava/lang/String;

.field final synthetic $this_apply:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

.field J$0:J

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$4I7QfAGpPDcJ80VXHDQwPToh23I(JLio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->invokeSuspend$lambda$2(JLio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/bg/BaseService$Interface;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->$this_apply:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    iput-object p2, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->$tag:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$2(JLio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;)Lkotlin/Unit;
    .locals 1
    .param p0, "$id"    # J
    .param p2, "b"    # Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    .line 103
    invoke-interface {p2, p0, p1}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;->cbSelectorUpdate(J)V

    .line 104
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;

    iget-object v1, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->$this_apply:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    iget-object v2, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->$tag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 91
    iget v1, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_1
    const/4 v1, 0x0

    .local v1, "$i$a$-apply-NativeInterface$selector_OnProxySelected$1$1$1":I
    iget-wide v2, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->J$0:J

    .local v2, "id":J
    iget-object v4, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v1    # "$i$a$-apply-NativeInterface$selector_OnProxySelected$1$1$1":I
    .end local v2    # "id":J
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->$this_apply:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-interface {v1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getProxy()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getConfig()Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getProfileTagMap()Ljava/util/Map;

    move-result-object v1

    .line 93
    .local v1, "$this$filterValues$iv":Ljava/util/Map;
    iget-object v2, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->$tag:Ljava/lang/String;

    const/4 v3, 0x0

    .line 111
    .local v3, "$i$f$filterValues":I
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 112
    .local v4, "result$iv":Ljava/util/LinkedHashMap;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1    # "$this$filterValues$iv":Ljava/util/Map;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 113
    .local v5, "entry$iv":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 93
    .local v7, "$i$a$-filterValues-NativeInterface$selector_OnProxySelected$1$1$id$1":I
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 113
    .end local v6    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-filterValues-NativeInterface$selector_OnProxySelected$1$1$id$1":I
    if-eqz v6, :cond_0

    .line 114
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    .end local v5    # "entry$iv":Ljava/util/Map$Entry;
    :cond_1
    move-object v1, v4

    check-cast v1, Ljava/util/Map;

    .line 93
    .end local v3    # "$i$f$filterValues":I
    .end local v4    # "result$iv":Ljava/util/LinkedHashMap;
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 92
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_1

    .line 93
    :cond_2
    const-wide/16 v1, -0x1

    .line 92
    :goto_1
    move-wide v2, v1

    .line 94
    .restart local v2    # "id":J
    sget-object v1, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getById(J)Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v1

    if-nez v1, :cond_3

    .end local v2    # "id":J
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 96
    .local v1, "ent":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .restart local v2    # "id":J
    :cond_3
    iget-object v4, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->$this_apply:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-interface {v4}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v4

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getProxy()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v5, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->$this_apply:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    move-object v6, v4

    .local v6, "$this$invokeSuspend_u24lambda_u241":Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;
    const/4 v7, 0x0

    .line 97
    .local v7, "$i$a$-apply-NativeInterface$selector_OnProxySelected$1$1$1":I
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getLooper()Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8, v2, v3}, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->selectMain(J)V

    .line 98
    :cond_4
    sget-object v8, Lio/nekohasekai/sagernet/bg/ServiceNotification;->Companion:Lio/nekohasekai/sagernet/bg/ServiceNotification$Companion;

    invoke-virtual {v8, v1}, Lio/nekohasekai/sagernet/bg/ServiceNotification$Companion;->genTitle(Lio/nekohasekai/sagernet/database/ProxyEntity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->setDisplayProfileName(Ljava/lang/String;)V

    .line 99
    .end local v1    # "ent":Lio/nekohasekai/sagernet/database/ProxyEntity;
    invoke-interface {v5}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getNotification()Lio/nekohasekai/sagernet/bg/ServiceNotification;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getDisplayProfileName()Ljava/lang/String;

    move-result-object v5

    iput-object v4, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->L$0:Ljava/lang/Object;

    iput-wide v2, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->J$0:J

    const/4 v4, 0x1

    iput v4, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->label:I

    invoke-virtual {v1, v5, p0}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->postNotificationTitle(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v6    # "$this$invokeSuspend_u24lambda_u241":Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;
    if-ne v1, v0, :cond_5

    .line 91
    return-object v0

    .line 99
    :cond_5
    move v1, v7

    .end local v7    # "$i$a$-apply-NativeInterface$selector_OnProxySelected$1$1$1":I
    .local v1, "$i$a$-apply-NativeInterface$selector_OnProxySelected$1$1$1":I
    :goto_2
    move v7, v1

    nop

    .line 100
    .end local v1    # "$i$a$-apply-NativeInterface$selector_OnProxySelected$1$1$1":I
    .restart local v7    # "$i$a$-apply-NativeInterface$selector_OnProxySelected$1$1$1":I
    :cond_6
    nop

    .line 96
    .end local v7    # "$i$a$-apply-NativeInterface$selector_OnProxySelected$1$1$1":I
    nop

    .line 102
    :cond_7
    iget-object v1, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->$this_apply:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-interface {v1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getBinder()Lio/nekohasekai/sagernet/bg/BaseService$Binder;

    move-result-object v1

    new-instance v4, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3}, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1$$ExternalSyntheticLambda0;-><init>(J)V

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x0

    iput-object v6, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, p0, Lmoe/matsuri/nb4a/NativeInterface$selector_OnProxySelected$1$1;->label:I

    invoke-virtual {v1, v4, v5}, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->broadcast(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v2    # "id":J
    if-ne v1, v0, :cond_8

    .line 91
    return-object v0

    .line 105
    :cond_8
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
