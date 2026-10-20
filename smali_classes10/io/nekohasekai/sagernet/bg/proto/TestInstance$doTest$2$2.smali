.class final Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TestInstance.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/bg/proto/TestInstance;->doTest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "io.nekohasekai.sagernet.bg.proto.TestInstance$doTest$2$2"
    f = "TestInstance.kt"
    i = {}
    l = {
        0x1c,
        0x20
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $c:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/bg/proto/TestInstance;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/bg/proto/TestInstance;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/bg/proto/TestInstance;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->this$0:Lio/nekohasekai/sagernet/bg/proto/TestInstance;

    iput-object p2, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->$c:Lkotlin/coroutines/Continuation;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance v0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;

    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->this$0:Lio/nekohasekai/sagernet/bg/proto/TestInstance;

    iget-object v2, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->$c:Lkotlin/coroutines/Continuation;

    invoke-direct {v0, v1, v2, p2}, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;-><init>(Lio/nekohasekai/sagernet/bg/proto/TestInstance;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 25
    iget v1, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "$i$a$-use-TestInstance$doTest$2$2$1":I
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/coroutines/Continuation;

    iget-object v2, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/nekohasekai/sagernet/bg/proto/TestInstance;

    iget-object v3, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_1

    .line 35
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 25
    .end local v0    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    :pswitch_1
    const/4 v1, 0x0

    .local v1, "$i$a$-use-TestInstance$doTest$2$2$1":I
    iget-object v2, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/coroutines/Continuation;

    iget-object v3, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/nekohasekai/sagernet/bg/proto/TestInstance;

    iget-object v4, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/io/Closeable;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    .end local v1    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    :catchall_0
    move-exception v0

    move-object v3, v4

    goto/16 :goto_5

    .line 35
    .restart local v1    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    :catch_1
    move-exception v0

    move-object v3, v4

    move-object v7, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v7

    goto/16 :goto_3

    .line 25
    .end local v1    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->this$0:Lio/nekohasekai/sagernet/bg/proto/TestInstance;

    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->this$0:Lio/nekohasekai/sagernet/bg/proto/TestInstance;

    iget-object v2, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->$c:Lkotlin/coroutines/Continuation;

    :try_start_2
    move-object v4, v3

    check-cast v4, Lio/nekohasekai/sagernet/bg/proto/TestInstance;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x0

    .line 27
    .local v4, "$i$a$-use-TestInstance$doTest$2$2$1":I
    nop

    .line 28
    :try_start_3
    iput-object v3, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->L$1:Ljava/lang/Object;

    iput-object v2, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->L$2:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->label:I

    invoke-virtual {v1, p0}, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->init(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v5, v0, :cond_0

    .line 25
    return-object v0

    .line 28
    :cond_0
    move-object v7, v3

    move-object v3, v1

    move v1, v4

    move-object v4, v7

    .line 29
    .end local v4    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    .restart local v1    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    :goto_0
    :try_start_4
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->launch()V

    .line 30
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->getProcesses()Lio/nekohasekai/sagernet/bg/GuardedProcessPool;

    move-result-object v5

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;->getProcessCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 32
    iput-object v4, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->L$1:Ljava/lang/Object;

    iput-object v2, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->L$2:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;->label:I

    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v5, v0, :cond_1

    .line 25
    return-object v0

    .line 32
    :cond_1
    move v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .line 34
    .end local v1    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    .restart local v0    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    :goto_1
    move-object v4, v3

    move-object v3, v2

    goto :goto_2

    .line 30
    .end local v0    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    .restart local v1    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    :cond_2
    move v0, v1

    move-object v1, v2

    .line 34
    .end local v1    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    .restart local v0    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->getBox()Llibcore/BoxInstance;

    move-result-object v2

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->getLink()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->access$getTimeout$p(Lio/nekohasekai/sagernet/bg/proto/TestInstance;)I

    move-result v3

    invoke-static {v2, v5, v3}, Llibcore/Libcore;->urlTest(Llibcore/BoxInstance;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->tryResume(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v3, v4

    goto :goto_4

    .line 35
    :catch_2
    move-exception v2

    move-object v3, v4

    goto :goto_3

    .end local v0    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    .restart local v4    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    :catch_3
    move-exception v0

    move-object v1, v2

    move-object v2, v0

    move v0, v4

    .line 36
    .end local v4    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    .restart local v0    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v1, v4}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->tryResumeWithException(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;)V

    .line 38
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    nop

    .end local v0    # "$i$a$-use-TestInstance$doTest$2$2$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 26
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 39
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 26
    :catchall_1
    move-exception v0

    .end local p1    # "$result":Ljava/lang/Object;
    :goto_5
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v1

    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
