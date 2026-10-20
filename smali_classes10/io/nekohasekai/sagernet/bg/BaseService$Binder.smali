.class public final Lio/nekohasekai/sagernet/bg/BaseService$Binder;
.super Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub;
.source "BaseService.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/bg/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Binder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseService.kt\nio/nekohasekai/sagernet/bg/BaseService$Binder\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,403:1\n120#2,10:404\n*S KotlinDebug\n*F\n+ 1 BaseService.kt\nio/nekohasekai/sagernet/bg/BaseService$Binder\n*L\n121#1:404,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000i\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\n\u0018\u00002\u00020\u00012\u00020\u00022\u00060\u0003j\u0002`\u0004B\u0013\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u0016\u001a\u00020\u000fH\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000fH\u0016J\"\u0010\u001f\u001a\u00020\u001a2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u001a0!H\u0086@\u00a2\u0006\u0002\u0010\"J\u0010\u0010#\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000eH\u0016J\u0008\u0010$\u001a\u00020\u000fH\u0016J\u0018\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010\u0018J\u000e\u0010*\u001a\u00020&2\u0006\u0010+\u001a\u00020\u0018J\u0008\u0010,\u001a\u00020\u001aH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u001d\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/BaseService$Binder;",
        "Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "data",
        "Lio/nekohasekai/sagernet/bg/BaseService$Data;",
        "<init>",
        "(Lio/nekohasekai/sagernet/bg/BaseService$Data;)V",
        "callbacks",
        "io/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1",
        "Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;",
        "callbackIdMap",
        "",
        "Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;",
        "",
        "getCallbackIdMap",
        "()Ljava/util/Map;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "getState",
        "getProfileName",
        "",
        "registerCallback",
        "",
        "cb",
        "id",
        "broadcastMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "broadcast",
        "work",
        "Lkotlin/Function1;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unregisterCallback",
        "urlTest",
        "stateChanged",
        "Lkotlinx/coroutines/Job;",
        "s",
        "Lio/nekohasekai/sagernet/bg/BaseService$State;",
        "msg",
        "missingPlugin",
        "pluginName",
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
.field private final broadcastMutex:Lkotlinx/coroutines/sync/Mutex;

.field private final callbackIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final callbacks:Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private data:Lio/nekohasekai/sagernet/bg/BaseService$Data;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/nekohasekai/sagernet/bg/BaseService$Binder;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Data;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/bg/BaseService$Data;)V
    .locals 4
    .param p1, "data"    # Lio/nekohasekai/sagernet/bg/BaseService$Data;

    .line 92
    invoke-direct {p0}, Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    .line 94
    new-instance v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->callbacks:Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;

    .line 100
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->callbackIdMap:Ljava/util/Map;

    .line 102
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v3}, Lkotlinx/coroutines/MainCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 118
    const/4 v0, 0x0

    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->broadcastMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 92
    return-void
.end method

.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/bg/BaseService$Data;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 92
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/bg/BaseService$Binder;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Data;)V

    return-void
.end method


# virtual methods
.method public final broadcast(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/nekohasekai/sagernet/bg/BaseService$Binder$broadcast$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$broadcast$1;

    iget v1, v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$broadcast$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$broadcast$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$broadcast$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$broadcast$1;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/bg/BaseService$Binder$broadcast$1;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Binder;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$broadcast$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 120
    iget v3, v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$broadcast$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$withLock":I
    const/4 v2, 0x0

    .local v2, "owner$iv":Ljava/lang/Object;
    iget-object v3, v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$broadcast$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    .local v3, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v4, v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$broadcast$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "work":Lkotlin/jvm/functions/Function1;
    iget-object v5, v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$broadcast$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/nekohasekai/sagernet/bg/BaseService$Binder;

    .local v5, "this":Lio/nekohasekai/sagernet/bg/BaseService$Binder;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "owner$iv":Ljava/lang/Object;
    .end local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v4    # "work":Lkotlin/jvm/functions/Function1;
    .end local v5    # "this":Lio/nekohasekai/sagernet/bg/BaseService$Binder;
    .end local p1    # "$i$f$withLock":I
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p0

    .restart local v5    # "this":Lio/nekohasekai/sagernet/bg/BaseService$Binder;
    move-object v4, p1

    .line 121
    .restart local v4    # "work":Lkotlin/jvm/functions/Function1;
    iget-object v3, v5, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->broadcastMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 404
    .restart local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    const/4 p1, 0x0

    .local p1, "owner$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 405
    .local v6, "$i$f$withLock":I
    nop

    .line 409
    iput-object v5, v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$broadcast$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$broadcast$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$broadcast$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$broadcast$1;->label:I

    invoke-interface {v3, p1, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_1

    .line 120
    return-object v2

    .line 409
    :cond_1
    move-object v2, p1

    move p1, v6

    .line 410
    .end local v6    # "$i$f$withLock":I
    .restart local v2    # "owner$iv":Ljava/lang/Object;
    .local p1, "$i$f$withLock":I
    :goto_1
    nop

    .line 411
    const/4 v6, 0x0

    .line 122
    .local v6, "$i$a$-withLock$default-BaseService$Binder$broadcast$2":I
    :try_start_0
    iget-object v7, v5, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->callbacks:Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;->beginBroadcast()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    .local v7, "count":I
    nop

    .line 124
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    move v9, v8

    .local v9, "it":I
    const/4 v10, 0x0

    .line 125
    .local v10, "$i$a$-repeat-BaseService$Binder$broadcast$2$1":I
    nop

    .line 126
    :try_start_1
    iget-object v11, v5, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->callbacks:Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;

    invoke-virtual {v11, v9}, Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    const-string v12, "getBroadcastItem(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 132
    .end local v4    # "work":Lkotlin/jvm/functions/Function1;
    .end local v7    # "count":I
    .end local v9    # "it":I
    .end local v10    # "$i$a$-repeat-BaseService$Binder$broadcast$2$1":I
    :catchall_0
    move-exception v4

    :try_start_2
    iget-object v7, v5, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->callbacks:Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;->finishBroadcast()V

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "owner$iv":Ljava/lang/Object;
    .end local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local p1    # "$i$f$withLock":I
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v4

    .line 128
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v2    # "owner$iv":Ljava/lang/Object;
    .restart local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v4    # "work":Lkotlin/jvm/functions/Function1;
    .restart local v7    # "count":I
    .restart local v10    # "$i$a$-repeat-BaseService$Binder$broadcast$2$1":I
    .restart local p1    # "$i$f$withLock":I
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catch_0
    move-exception v9

    goto :goto_3

    .line 127
    :catch_1
    move-exception v9

    .line 130
    :goto_3
    nop

    .line 124
    .end local v10    # "$i$a$-repeat-BaseService$Binder$broadcast$2$1":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 132
    .end local v4    # "work":Lkotlin/jvm/functions/Function1;
    .end local v7    # "count":I
    :cond_2
    iget-object v4, v5, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->callbacks:Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;->finishBroadcast()V

    .line 133
    .end local v5    # "this":Lio/nekohasekai/sagernet/bg/BaseService$Binder;
    nop

    .line 134
    nop

    .end local v6    # "$i$a$-withLock$default-BaseService$Binder$broadcast$2":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 411
    nop

    .line 413
    invoke-interface {v3, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 411
    .end local v2    # "owner$iv":Ljava/lang/Object;
    .end local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 135
    .end local p1    # "$i$f$withLock":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 413
    .restart local v2    # "owner$iv":Ljava/lang/Object;
    .restart local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local p1    # "$i$f$withLock":I
    :catchall_1
    move-exception v4

    invoke-interface {v3, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 3

    .line 166
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->callbacks:Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;->kill()V

    .line 167
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 168
    iput-object v2, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    .line 169
    return-void
.end method

.method public final getCallbackIdMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->callbackIdMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 102
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getProxy()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getDisplayProfileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Idle"

    :cond_1
    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 104
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lio/nekohasekai/sagernet/bg/BaseService$State;->Idle:Lio/nekohasekai/sagernet/bg/BaseService$State;

    :cond_1
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$State;->ordinal()I

    move-result v0

    return v0
.end method

.method public final missingPlugin(Ljava/lang/String;)Lkotlinx/coroutines/Job;
    .locals 7
    .param p1, "pluginName"    # Ljava/lang/String;

    const-string v0, "pluginName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$missingPlugin$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lio/nekohasekai/sagernet/bg/BaseService$Binder$missingPlugin$1;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Binder;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 163
    return-object v0
.end method

.method public registerCallback(Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;I)V
    .locals 2
    .param p1, "cb"    # Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;
    .param p2, "id"    # I

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 109
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    .line 110
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->callbackIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->callbacks:Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;

    move-object v1, p1

    check-cast v1, Landroid/os/IInterface;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;->register(Landroid/os/IInterface;)Z

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->callbackIdMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public final stateChanged(Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;)Lkotlinx/coroutines/Job;
    .locals 7
    .param p1, "s"    # Lio/nekohasekai/sagernet/bg/BaseService$State;
    .param p2, "msg"    # Ljava/lang/String;

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder$stateChanged$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lio/nekohasekai/sagernet/bg/BaseService$Binder$stateChanged$1;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Binder;Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 158
    return-object v0
.end method

.method public unregisterCallback(Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;)V
    .locals 2
    .param p1, "cb"    # Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->callbackIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->callbacks:Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;

    move-object v1, p1

    check-cast v1, Landroid/os/IInterface;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Binder$callbacks$1;->unregister(Landroid/os/IInterface;)Z

    .line 140
    return-void
.end method

.method public urlTest()I
    .locals 4

    .line 143
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getProxy()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getBox()Llibcore/BoxInstance;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 146
    nop

    .line 148
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getProxy()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getBox()Llibcore/BoxInstance;

    move-result-object v0

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getConnectionTestURL()Ljava/lang/String;

    move-result-object v1

    .line 147
    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Llibcore/Libcore;->urlTest(Llibcore/BoxInstance;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmoe/matsuri/nb4a/Protocols;->INSTANCE:Lmoe/matsuri/nb4a/Protocols;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<get-readableMessage>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lmoe/matsuri/nb4a/Protocols;->genFriendlyMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 144
    const-string v1, "core not started"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
