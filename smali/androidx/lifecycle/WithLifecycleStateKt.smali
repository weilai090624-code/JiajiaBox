.class public final Landroidx/lifecycle/WithLifecycleStateKt;
.super Ljava/lang/Object;
.source "WithLifecycleState.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWithLifecycleState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WithLifecycleState.kt\nandroidx/lifecycle/WithLifecycleStateKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,206:1\n154#1,8:207\n154#1,8:215\n154#1,8:223\n154#1,8:231\n43#1,5:239\n154#1,8:244\n43#1,5:252\n154#1,8:257\n154#1,8:265\n154#1,8:273\n154#1,8:281\n314#2,11:289\n*S KotlinDebug\n*F\n+ 1 WithLifecycleState.kt\nandroidx/lifecycle/WithLifecycleStateKt\n*L\n47#1:207,8\n58#1:215,8\n71#1:223,8\n84#1:231,8\n98#1:239,5\n98#1:244,8\n98#1:252,5\n98#1:257,8\n111#1:265,8\n124#1:273,8\n137#1:281,8\n177#1:289,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001aA\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0081@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001a+\u0010\u000c\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001a+\u0010\u000c\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u000e2\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a+\u0010\u0010\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001a+\u0010\u0010\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u000e2\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a+\u0010\u0011\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001a+\u0010\u0011\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u000e2\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a3\u0010\u0012\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013\u001a3\u0010\u0012\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014\u001a3\u0010\u0015\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0081H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "suspendWithStateAtLeastUnchecked",
        "R",
        "Landroidx/lifecycle/Lifecycle;",
        "state",
        "Landroidx/lifecycle/Lifecycle$State;",
        "dispatchNeeded",
        "",
        "lifecycleDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "block",
        "Lkotlin/Function0;",
        "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withCreated",
        "(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withResumed",
        "withStarted",
        "withStateAtLeast",
        "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withStateAtLeastUnchecked",
        "lifecycle-runtime-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final suspendWithStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15
    .param p0, "$this$suspendWithStateAtLeastUnchecked"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;
    .param p2, "dispatchNeeded"    # Z
    .param p3, "lifecycleDispatcher"    # Lkotlinx/coroutines/CoroutineDispatcher;
    .param p4, "block"    # Lkotlin/jvm/functions/Function0;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/Lifecycle;",
            "Landroidx/lifecycle/Lifecycle$State;",
            "Z",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 177
    const/4 v0, 0x0

    .line 289
    .local v0, "$i$f$suspendCancellableCoroutine":I
    move-object v1, p5

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 290
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 296
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 297
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "co":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 178
    .local v5, "$i$a$-suspendCancellableCoroutine-WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2":I
    new-instance v6, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;

    invoke-direct {v6, p1, p0, v4, p4}, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;-><init>(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function0;)V

    .line 190
    .local v6, "observer":Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;
    if-eqz p2, :cond_2b

    .line 191
    nop

    .line 192
    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    .line 191
    new-instance v8, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$1;

    invoke-direct {v8, p0, v6}, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$1;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;)V

    check-cast v8, Ljava/lang/Runnable;

    invoke-virtual {p3, v7, v8}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto :goto_31

    .line 195
    :cond_2b
    move-object v7, v6

    check-cast v7, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p0, v7}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 197
    :goto_31
    new-instance v7, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2;

    invoke-direct {v7, p3, p0, v6}, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v7}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 205
    nop

    .line 297
    .end local v4    # "co":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2":I
    .end local v6    # "observer":Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;
    nop

    .line 298
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 289
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_4a

    invoke-static {p5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 299
    :cond_4a
    nop

    .line 205
    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    return-object v1
.end method

.method public static final withCreated(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .param p0, "$this$withCreated"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/Lifecycle;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    .local v0, "$i$f$withCreated":I
    nop

    .line 59
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 58
    move-object v2, p0

    .local v1, "state$iv":Landroidx/lifecycle/Lifecycle$State;
    .local v2, "$this$withStateAtLeastUnchecked$iv":Landroidx/lifecycle/Lifecycle;
    const/4 v8, 0x0

    .line 215
    .local v8, "$i$f$withStateAtLeastUnchecked":I
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v9

    .line 216
    .local v9, "lifecycleDispatcher$iv":Lkotlinx/coroutines/MainCoroutineDispatcher;
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    invoke-virtual {v9, v3}, Lkotlinx/coroutines/MainCoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v10

    .line 217
    .local v10, "dispatchNeeded$iv":Z
    if-nez v10, :cond_38

    .line 218
    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v3, v4, :cond_32

    .line 219
    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_38

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    goto :goto_4a

    .line 218
    :cond_32
    new-instance v3, Landroidx/lifecycle/LifecycleDestroyedException;

    invoke-direct {v3}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    throw v3

    .line 222
    :cond_38
    move-object v5, v9

    check-cast v5, Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v3, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;

    invoke-direct {v3, p1}, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v3, v1

    move v4, v10

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/WithLifecycleStateKt;->suspendWithStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .line 61
    .end local v1    # "state$iv":Landroidx/lifecycle/Lifecycle$State;
    .end local v2    # "$this$withStateAtLeastUnchecked$iv":Landroidx/lifecycle/Lifecycle;
    .end local v8    # "$i$f$withStateAtLeastUnchecked":I
    .end local v9    # "lifecycleDispatcher$iv":Lkotlinx/coroutines/MainCoroutineDispatcher;
    .end local v10    # "dispatchNeeded$iv":Z
    :goto_4a
    return-object v3
.end method

.method public static final withCreated(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .param p0, "$this$withCreated"    # Landroidx/lifecycle/LifecycleOwner;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 111
    .local v0, "$i$f$withCreated":I
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    .line 112
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 111
    nop

    .local v1, "$this$withStateAtLeastUnchecked$iv":Landroidx/lifecycle/Lifecycle;
    move-object v7, v2

    .local v7, "state$iv":Landroidx/lifecycle/Lifecycle$State;
    const/4 v8, 0x0

    .line 265
    .local v8, "$i$f$withStateAtLeastUnchecked":I
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v9

    .line 266
    .local v9, "lifecycleDispatcher$iv":Lkotlinx/coroutines/MainCoroutineDispatcher;
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-virtual {v9, v2}, Lkotlinx/coroutines/MainCoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v10

    .line 267
    .local v10, "dispatchNeeded$iv":Z
    if-nez v10, :cond_3c

    .line 268
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v2, v3, :cond_36

    .line 269
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    move-object v3, v7

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_3c

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    goto :goto_4e

    .line 268
    :cond_36
    new-instance v2, Landroidx/lifecycle/LifecycleDestroyedException;

    invoke-direct {v2}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    throw v2

    .line 272
    :cond_3c
    move-object v4, v9

    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v2, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;

    invoke-direct {v2, p1}, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v2, v7

    move v3, v10

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/WithLifecycleStateKt;->suspendWithStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .line 114
    .end local v1    # "$this$withStateAtLeastUnchecked$iv":Landroidx/lifecycle/Lifecycle;
    .end local v7    # "state$iv":Landroidx/lifecycle/Lifecycle$State;
    .end local v8    # "$i$f$withStateAtLeastUnchecked":I
    .end local v9    # "lifecycleDispatcher$iv":Lkotlinx/coroutines/MainCoroutineDispatcher;
    .end local v10    # "dispatchNeeded$iv":Z
    :goto_4e
    return-object v2
.end method

.method private static final withCreated$$forInline(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this$withCreated"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/Lifecycle;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 58
    nop

    .line 59
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 58
    nop

    .line 215
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 216
    const/4 p0, 0x0

    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    throw p0
.end method

.method private static final withCreated$$forInline(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this$withCreated"    # Landroidx/lifecycle/LifecycleOwner;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 111
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 112
    .end local p0    # "$this$withCreated":Landroidx/lifecycle/LifecycleOwner;
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 111
    nop

    .line 265
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 266
    const/4 p0, 0x0

    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    throw p0
.end method

.method public static final withResumed(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .param p0, "$this$withResumed"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/Lifecycle;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 84
    .local v0, "$i$f$withResumed":I
    nop

    .line 85
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 84
    move-object v2, p0

    .local v1, "state$iv":Landroidx/lifecycle/Lifecycle$State;
    .local v2, "$this$withStateAtLeastUnchecked$iv":Landroidx/lifecycle/Lifecycle;
    const/4 v8, 0x0

    .line 231
    .local v8, "$i$f$withStateAtLeastUnchecked":I
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v9

    .line 232
    .local v9, "lifecycleDispatcher$iv":Lkotlinx/coroutines/MainCoroutineDispatcher;
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    invoke-virtual {v9, v3}, Lkotlinx/coroutines/MainCoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v10

    .line 233
    .local v10, "dispatchNeeded$iv":Z
    if-nez v10, :cond_38

    .line 234
    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v3, v4, :cond_32

    .line 235
    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_38

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    goto :goto_4a

    .line 234
    :cond_32
    new-instance v3, Landroidx/lifecycle/LifecycleDestroyedException;

    invoke-direct {v3}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    throw v3

    .line 238
    :cond_38
    move-object v5, v9

    check-cast v5, Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v3, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;

    invoke-direct {v3, p1}, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v3, v1

    move v4, v10

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/WithLifecycleStateKt;->suspendWithStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .line 87
    .end local v1    # "state$iv":Landroidx/lifecycle/Lifecycle$State;
    .end local v2    # "$this$withStateAtLeastUnchecked$iv":Landroidx/lifecycle/Lifecycle;
    .end local v8    # "$i$f$withStateAtLeastUnchecked":I
    .end local v9    # "lifecycleDispatcher$iv":Lkotlinx/coroutines/MainCoroutineDispatcher;
    .end local v10    # "dispatchNeeded$iv":Z
    :goto_4a
    return-object v3
.end method

.method public static final withResumed(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .param p0, "$this$withResumed"    # Landroidx/lifecycle/LifecycleOwner;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 137
    .local v0, "$i$f$withResumed":I
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    .line 138
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 137
    nop

    .local v1, "$this$withStateAtLeastUnchecked$iv":Landroidx/lifecycle/Lifecycle;
    move-object v7, v2

    .local v7, "state$iv":Landroidx/lifecycle/Lifecycle$State;
    const/4 v8, 0x0

    .line 281
    .local v8, "$i$f$withStateAtLeastUnchecked":I
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v9

    .line 282
    .local v9, "lifecycleDispatcher$iv":Lkotlinx/coroutines/MainCoroutineDispatcher;
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-virtual {v9, v2}, Lkotlinx/coroutines/MainCoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v10

    .line 283
    .local v10, "dispatchNeeded$iv":Z
    if-nez v10, :cond_3c

    .line 284
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v2, v3, :cond_36

    .line 285
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    move-object v3, v7

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_3c

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    goto :goto_4e

    .line 284
    :cond_36
    new-instance v2, Landroidx/lifecycle/LifecycleDestroyedException;

    invoke-direct {v2}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    throw v2

    .line 288
    :cond_3c
    move-object v4, v9

    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v2, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;

    invoke-direct {v2, p1}, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v2, v7

    move v3, v10

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/WithLifecycleStateKt;->suspendWithStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .line 140
    .end local v1    # "$this$withStateAtLeastUnchecked$iv":Landroidx/lifecycle/Lifecycle;
    .end local v7    # "state$iv":Landroidx/lifecycle/Lifecycle$State;
    .end local v8    # "$i$f$withStateAtLeastUnchecked":I
    .end local v9    # "lifecycleDispatcher$iv":Lkotlinx/coroutines/MainCoroutineDispatcher;
    .end local v10    # "dispatchNeeded$iv":Z
    :goto_4e
    return-object v2
.end method

.method private static final withResumed$$forInline(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this$withResumed"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/Lifecycle;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 84
    nop

    .line 85
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 84
    nop

    .line 231
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 232
    const/4 p0, 0x0

    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    throw p0
.end method

.method private static final withResumed$$forInline(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this$withResumed"    # Landroidx/lifecycle/LifecycleOwner;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 137
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 138
    .end local p0    # "$this$withResumed":Landroidx/lifecycle/LifecycleOwner;
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 137
    nop

    .line 281
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 282
    const/4 p0, 0x0

    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    throw p0
.end method

.method public static final withStarted(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .param p0, "$this$withStarted"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/Lifecycle;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 71
    .local v0, "$i$f$withStarted":I
    nop

    .line 72
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 71
    move-object v2, p0

    .local v1, "state$iv":Landroidx/lifecycle/Lifecycle$State;
    .local v2, "$this$withStateAtLeastUnchecked$iv":Landroidx/lifecycle/Lifecycle;
    const/4 v8, 0x0

    .line 223
    .local v8, "$i$f$withStateAtLeastUnchecked":I
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v9

    .line 224
    .local v9, "lifecycleDispatcher$iv":Lkotlinx/coroutines/MainCoroutineDispatcher;
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    invoke-virtual {v9, v3}, Lkotlinx/coroutines/MainCoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v10

    .line 225
    .local v10, "dispatchNeeded$iv":Z
    if-nez v10, :cond_38

    .line 226
    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v3, v4, :cond_32

    .line 227
    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_38

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    goto :goto_4a

    .line 226
    :cond_32
    new-instance v3, Landroidx/lifecycle/LifecycleDestroyedException;

    invoke-direct {v3}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    throw v3

    .line 230
    :cond_38
    move-object v5, v9

    check-cast v5, Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v3, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;

    invoke-direct {v3, p1}, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v3, v1

    move v4, v10

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/WithLifecycleStateKt;->suspendWithStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .line 74
    .end local v1    # "state$iv":Landroidx/lifecycle/Lifecycle$State;
    .end local v2    # "$this$withStateAtLeastUnchecked$iv":Landroidx/lifecycle/Lifecycle;
    .end local v8    # "$i$f$withStateAtLeastUnchecked":I
    .end local v9    # "lifecycleDispatcher$iv":Lkotlinx/coroutines/MainCoroutineDispatcher;
    .end local v10    # "dispatchNeeded$iv":Z
    :goto_4a
    return-object v3
.end method

.method public static final withStarted(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .param p0, "$this$withStarted"    # Landroidx/lifecycle/LifecycleOwner;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 124
    .local v0, "$i$f$withStarted":I
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    .line 125
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 124
    nop

    .local v1, "$this$withStateAtLeastUnchecked$iv":Landroidx/lifecycle/Lifecycle;
    move-object v7, v2

    .local v7, "state$iv":Landroidx/lifecycle/Lifecycle$State;
    const/4 v8, 0x0

    .line 273
    .local v8, "$i$f$withStateAtLeastUnchecked":I
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v9

    .line 274
    .local v9, "lifecycleDispatcher$iv":Lkotlinx/coroutines/MainCoroutineDispatcher;
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-virtual {v9, v2}, Lkotlinx/coroutines/MainCoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v10

    .line 275
    .local v10, "dispatchNeeded$iv":Z
    if-nez v10, :cond_3c

    .line 276
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v2, v3, :cond_36

    .line 277
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    move-object v3, v7

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_3c

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    goto :goto_4e

    .line 276
    :cond_36
    new-instance v2, Landroidx/lifecycle/LifecycleDestroyedException;

    invoke-direct {v2}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    throw v2

    .line 280
    :cond_3c
    move-object v4, v9

    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v2, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;

    invoke-direct {v2, p1}, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v2, v7

    move v3, v10

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/WithLifecycleStateKt;->suspendWithStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .line 127
    .end local v1    # "$this$withStateAtLeastUnchecked$iv":Landroidx/lifecycle/Lifecycle;
    .end local v7    # "state$iv":Landroidx/lifecycle/Lifecycle$State;
    .end local v8    # "$i$f$withStateAtLeastUnchecked":I
    .end local v9    # "lifecycleDispatcher$iv":Lkotlinx/coroutines/MainCoroutineDispatcher;
    .end local v10    # "dispatchNeeded$iv":Z
    :goto_4e
    return-object v2
.end method

.method private static final withStarted$$forInline(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this$withStarted"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/Lifecycle;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 71
    nop

    .line 72
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 71
    nop

    .line 223
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 224
    const/4 p0, 0x0

    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    throw p0
.end method

.method private static final withStarted$$forInline(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this$withStarted"    # Landroidx/lifecycle/LifecycleOwner;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 124
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 125
    .end local p0    # "$this$withStarted":Landroidx/lifecycle/LifecycleOwner;
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 124
    nop

    .line 273
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 274
    const/4 p0, 0x0

    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    throw p0
.end method

.method public static final withStateAtLeast(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .param p0, "$this$withStateAtLeast"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/Lifecycle;",
            "Landroidx/lifecycle/Lifecycle$State;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    .local v0, "$i$f$withStateAtLeast":I
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_57

    .line 47
    move-object v1, p0

    .local v1, "$this$withStateAtLeastUnchecked$iv":Landroidx/lifecycle/Lifecycle;
    const/4 v7, 0x0

    .line 207
    .local v7, "$i$f$withStateAtLeastUnchecked":I
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v8

    .line 208
    .local v8, "lifecycleDispatcher$iv":Lkotlinx/coroutines/MainCoroutineDispatcher;
    invoke-interface {p3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-virtual {v8, v2}, Lkotlinx/coroutines/MainCoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v9

    .line 209
    .local v9, "dispatchNeeded$iv":Z
    if-nez v9, :cond_44

    .line 210
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v2, v3, :cond_3e

    .line 211
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_44

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    goto :goto_56

    .line 210
    :cond_3e
    new-instance v2, Landroidx/lifecycle/LifecycleDestroyedException;

    invoke-direct {v2}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    throw v2

    .line 214
    :cond_44
    move-object v4, v8

    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v2, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;

    invoke-direct {v2, p2}, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v2, p1

    move v3, v9

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/WithLifecycleStateKt;->suspendWithStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .line 47
    .end local v1    # "$this$withStateAtLeastUnchecked$iv":Landroidx/lifecycle/Lifecycle;
    .end local v7    # "$i$f$withStateAtLeastUnchecked":I
    .end local v8    # "lifecycleDispatcher$iv":Lkotlinx/coroutines/MainCoroutineDispatcher;
    .end local v9    # "dispatchNeeded$iv":Z
    :goto_56
    return-object v2

    .line 43
    :cond_57
    const/4 v1, 0x0

    .line 44
    .local v1, "$i$a$-require-WithLifecycleStateKt$withStateAtLeast$2":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target state must be CREATED or greater, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    .end local v1    # "$i$a$-require-WithLifecycleStateKt$withStateAtLeast$2":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final withStateAtLeast(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16
    .param p0, "$this$withStateAtLeast"    # Landroidx/lifecycle/LifecycleOwner;
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Lifecycle$State;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    .local v0, "$i$f$withStateAtLeast":I
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v7

    .local v7, "$this$withStateAtLeast$iv":Landroidx/lifecycle/Lifecycle;
    const/4 v8, 0x0

    .line 239
    .local v8, "$i$f$withStateAtLeast":I
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_5d

    .line 243
    move-object v1, v7

    .local v1, "$this$withStateAtLeastUnchecked$iv$iv":Landroidx/lifecycle/Lifecycle;
    const/4 v9, 0x0

    .line 244
    .local v9, "$i$f$withStateAtLeastUnchecked":I
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v10

    .line 245
    .local v10, "lifecycleDispatcher$iv$iv":Lkotlinx/coroutines/MainCoroutineDispatcher;
    invoke-interface {p3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-virtual {v10, v2}, Lkotlinx/coroutines/MainCoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v11

    .line 246
    .local v11, "dispatchNeeded$iv$iv":Z
    if-nez v11, :cond_49

    .line 247
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v2, v3, :cond_43

    .line 248
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_49

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    goto :goto_5b

    .line 247
    :cond_43
    new-instance v2, Landroidx/lifecycle/LifecycleDestroyedException;

    invoke-direct {v2}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    throw v2

    .line 251
    :cond_49
    move-object v4, v10

    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v2, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;

    invoke-direct {v2, p2}, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v2, p1

    move v3, v11

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/WithLifecycleStateKt;->suspendWithStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .line 243
    .end local v1    # "$this$withStateAtLeastUnchecked$iv$iv":Landroidx/lifecycle/Lifecycle;
    .end local v9    # "$i$f$withStateAtLeastUnchecked":I
    .end local v10    # "lifecycleDispatcher$iv$iv":Lkotlinx/coroutines/MainCoroutineDispatcher;
    .end local v11    # "dispatchNeeded$iv$iv":Z
    :goto_5b
    nop

    .line 101
    .end local v7    # "$this$withStateAtLeast$iv":Landroidx/lifecycle/Lifecycle;
    .end local v8    # "$i$f$withStateAtLeast":I
    return-object v2

    .line 239
    .restart local v7    # "$this$withStateAtLeast$iv":Landroidx/lifecycle/Lifecycle;
    .restart local v8    # "$i$f$withStateAtLeast":I
    :cond_5d
    const/4 v1, 0x0

    .line 240
    .local v1, "$i$a$-require-WithLifecycleStateKt$withStateAtLeast$2$iv":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target state must be CREATED or greater, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .end local v1    # "$i$a$-require-WithLifecycleStateKt$withStateAtLeast$2$iv":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static final withStateAtLeast$$forInline(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .param p0, "$this$withStateAtLeast"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/Lifecycle;",
            "Landroidx/lifecycle/Lifecycle$State;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    .local v0, "$i$f$withStateAtLeast":I
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    if-nez v1, :cond_2f

    const/4 v1, 0x0

    .line 44
    .local v1, "$i$a$-require-WithLifecycleStateKt$withStateAtLeast$2":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target state must be CREATED or greater, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    .end local v1    # "$i$a$-require-WithLifecycleStateKt$withStateAtLeast$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    .end local v0    # "$i$f$withStateAtLeast":I
    .end local p0    # "$this$withStateAtLeast":Landroidx/lifecycle/Lifecycle;
    .end local p1    # "state":Landroidx/lifecycle/Lifecycle$State;
    .end local p2    # "block":Lkotlin/jvm/functions/Function0;
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :cond_2f
    nop

    .line 207
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 208
    const/4 p0, 0x0

    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    throw p0
.end method

.method private static final withStateAtLeast$$forInline(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .param p0, "$this$withStateAtLeast"    # Landroidx/lifecycle/LifecycleOwner;
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Lifecycle$State;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    .local v0, "$i$f$withStateAtLeast":I
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    .local v1, "$this$withStateAtLeast$iv":Landroidx/lifecycle/Lifecycle;
    const/4 v2, 0x0

    .line 252
    .local v2, "$i$f$withStateAtLeast":I
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {p1, v3}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    if-nez v3, :cond_34

    const/4 v3, 0x0

    .line 253
    .local v3, "$i$a$-require-WithLifecycleStateKt$withStateAtLeast$2$iv":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "target state must be CREATED or greater, found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 252
    .end local v3    # "$i$a$-require-WithLifecycleStateKt$withStateAtLeast$2$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 256
    .end local v0    # "$i$f$withStateAtLeast":I
    .end local v1    # "$this$withStateAtLeast$iv":Landroidx/lifecycle/Lifecycle;
    .end local v2    # "$i$f$withStateAtLeast":I
    .end local p0    # "$this$withStateAtLeast":Landroidx/lifecycle/LifecycleOwner;
    .end local p1    # "state":Landroidx/lifecycle/Lifecycle$State;
    .end local p2    # "block":Lkotlin/jvm/functions/Function0;
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :cond_34
    nop

    .line 257
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 258
    const/4 p0, 0x0

    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    throw p0
.end method

.method public static final withStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13
    .param p0, "$this$withStateAtLeastUnchecked"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/Lifecycle;",
            "Landroidx/lifecycle/Lifecycle$State;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    .local v0, "$i$f$withStateAtLeastUnchecked":I
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    .line 155
    .local v1, "lifecycleDispatcher":Lkotlinx/coroutines/MainCoroutineDispatcher;
    invoke-interface {p3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/MainCoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v2

    .line 156
    .local v2, "dispatchNeeded":Z
    if-nez v2, :cond_33

    .line 157
    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v3, v4, :cond_2d

    .line 158
    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_33

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 157
    :cond_2d
    new-instance v3, Landroidx/lifecycle/LifecycleDestroyedException;

    invoke-direct {v3}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    throw v3

    .line 161
    :cond_33
    move-object v6, v1

    check-cast v6, Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v3, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;

    invoke-direct {v3, p2}, Landroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object v3, p0

    move-object v4, p1

    move v5, v2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/WithLifecycleStateKt;->suspendWithStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method private static final withStateAtLeastUnchecked$$forInline(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p0, "$this$withStateAtLeastUnchecked"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/Lifecycle;",
            "Landroidx/lifecycle/Lifecycle$State;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 154
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 155
    const/4 p0, 0x0

    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    throw p0
.end method
