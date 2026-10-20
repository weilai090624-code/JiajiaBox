.class final Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JJHomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.nekohasekai.sagernet.ui.JJHomeFragment$speedTest$1$1$workers$1$1"
    f = "JJHomeFragment.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2
    }
    l = {
        0x347,
        0x349,
        0x34f
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "profile",
        "$this$launch",
        "profile",
        "$this$launch"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $urlTest:Lio/nekohasekai/sagernet/bg/proto/UrlTest;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/bg/proto/UrlTest;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment;",
            "Lio/nekohasekai/sagernet/bg/proto/UrlTest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->$urlTest:Lio/nekohasekai/sagernet/bg/proto/UrlTest;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->$urlTest:Lio/nekohasekai/sagernet/bg/proto/UrlTest;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/bg/proto/UrlTest;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 835
    iget v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .end local p0    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local p0    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;
    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .local v1, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p0

    goto/16 :goto_5

    .end local v1    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :pswitch_1
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lio/nekohasekai/sagernet/database/ProxyEntity;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .local v4, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    .local v5, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, p0

    move-object v7, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_2

    .line 843
    :catch_0
    move-exception v1

    move-object v6, p0

    goto/16 :goto_3

    .line 835
    .end local v4    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v5    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :pswitch_2
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .local v1, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .local v4, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v4

    move-object v4, p0

    goto :goto_1

    .end local v1    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v4    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    move-object v4, p0

    .line 836
    .end local p0    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;
    .local v1, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v4, "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 837
    iget-object v5, v4, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->$queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/nekohasekai/sagernet/database/ProxyEntity;

    if-nez v5, :cond_0

    goto/16 :goto_6

    .line 838
    .local v5, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setStatus(I)V

    .line 839
    iget-object v6, v4, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    move-object v7, v4

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v1, v4, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, v4, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->L$1:Ljava/lang/Object;

    iput v3, v4, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->label:I

    invoke-static {v6, v5, v7}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$notifyRowChanged(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_1

    .line 835
    return-object v0

    .line 839
    :cond_1
    move-object v9, v5

    move-object v5, v1

    move-object v1, v9

    .line 840
    .local v1, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .local v5, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :goto_1
    nop

    .line 841
    :try_start_1
    iget-object v6, v4, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->$urlTest:Lio/nekohasekai/sagernet/bg/proto/UrlTest;

    move-object v7, v4

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v5, v4, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, v4, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->L$1:Ljava/lang/Object;

    iput-object v1, v4, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->L$2:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v4, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->label:I

    invoke-virtual {v6, v1, v7}, Lio/nekohasekai/sagernet/bg/proto/UrlTest;->doTest(Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v6, v0, :cond_2

    .line 835
    return-object v0

    .line 841
    :cond_2
    move-object v7, v5

    move-object v5, v1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v6

    move-object v6, v4

    move-object v4, v5

    .end local v1    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v4    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v5, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .local v6, "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;
    .local v7, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :goto_2
    :try_start_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v4, p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setPing(I)V

    .line 842
    invoke-virtual {v5, v3}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setStatus(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object p1, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_4

    .line 843
    :catch_1
    move-exception p1

    move-object v4, v5

    move-object v5, v7

    move-object v9, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v9

    goto :goto_3

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v6    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;
    .end local v7    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .restart local v1    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .restart local v4    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;
    .local v5, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_2
    move-exception v6

    move-object v9, v4

    move-object v4, v1

    move-object v1, v6

    move-object v6, v9

    .line 844
    .local v1, "e":Ljava/lang/Exception;
    .local v4, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .restart local v6    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;
    :goto_3
    invoke-virtual {v4, v2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setStatus(I)V

    .line 845
    move-object v7, v1

    check-cast v7, Ljava/lang/Throwable;

    invoke-static {v7}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setError(Ljava/lang/String;)V

    move-object v1, v5

    move-object v5, v4

    .line 847
    .end local v4    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .local v1, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v5, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    :goto_4
    iget-object v4, v6, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    move-object v7, v6

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v1, v6, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v6, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->L$1:Ljava/lang/Object;

    iput-object v8, v6, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->L$2:Ljava/lang/Object;

    iput v2, v6, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;->label:I

    invoke-static {v4, v5, v7}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$notifyRowChanged(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v5    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    if-ne v4, v0, :cond_3

    .line 835
    return-object v0

    .line 847
    :cond_3
    move-object v4, v6

    .end local v6    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;
    .local v4, "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;
    :goto_5
    goto/16 :goto_0

    .line 849
    .end local v1    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :cond_4
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
