.class final Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigurationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.nekohasekai.sagernet.ui.ConfigurationFragment$urlTest$mainJob$1$1$1"
    f = "ConfigurationFragment.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x36a
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "urlTest",
        "profile"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $profiles:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->$profiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->$test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

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

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->$profiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->$test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-direct {v0, v1, v2, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 867
    iget v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .end local p0    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local p0    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;
    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .local v1, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/nekohasekai/sagernet/bg/proto/UrlTest;

    .local v3, "urlTest":Lio/nekohasekai/sagernet/bg/proto/UrlTest;
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .local v4, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lio/nekohasekai/sagernet/plugin/PluginManager$PluginNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    move-object v6, v4

    move-object v1, v0

    move-object v4, v3

    move-object v3, p0

    move-object v0, p1

    goto :goto_1

    .line 880
    :catch_0
    move-exception v5

    move-object v6, v4

    move-object v4, v3

    move-object v3, p0

    goto/16 :goto_2

    .line 877
    :catch_1
    move-exception v5

    move-object v6, v4

    move-object v4, v3

    move-object v3, p0

    goto/16 :goto_3

    .line 867
    .end local v1    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v3    # "urlTest":Lio/nekohasekai/sagernet/bg/proto/UrlTest;
    .end local v4    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 868
    .local v1, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    new-instance v3, Lio/nekohasekai/sagernet/bg/proto/UrlTest;

    invoke-direct {v3}, Lio/nekohasekai/sagernet/bg/proto/UrlTest;-><init>()V

    move-object v4, v1

    move-object v1, p0

    .line 869
    .end local p0    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;
    .local v1, "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;
    .restart local v3    # "urlTest":Lio/nekohasekai/sagernet/bg/proto/UrlTest;
    .restart local v4    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :goto_0
    invoke-static {v4}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 870
    iget-object v5, v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->$profiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/nekohasekai/sagernet/database/ProxyEntity;

    if-nez v5, :cond_0

    goto/16 :goto_5

    .line 871
    .local v5, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setStatus(I)V

    .line 873
    nop

    .line 874
    :try_start_1
    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->L$2:Ljava/lang/Object;

    iput v2, v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->label:I

    invoke-virtual {v3, v5, v6}, Lio/nekohasekai/sagernet/bg/proto/UrlTest;->doTest(Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Lio/nekohasekai/sagernet/plugin/PluginManager$PluginNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-ne v6, v0, :cond_1

    .line 867
    return-object v0

    .line 874
    :cond_1
    move-object v8, v0

    move-object v0, p1

    move-object p1, v6

    move-object v6, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v8

    .end local v1    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v3, "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;
    .local v4, "urlTest":Lio/nekohasekai/sagernet/bg/proto/UrlTest;
    .local v6, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :goto_1
    :try_start_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 875
    .local p1, "result":I
    invoke-virtual {v5, v2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setStatus(I)V

    .line 876
    invoke-virtual {v5, p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setPing(I)V
    :try_end_2
    .catch Lio/nekohasekai/sagernet/plugin/PluginManager$PluginNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v6

    .end local p1    # "result":I
    goto/16 :goto_4

    .line 880
    :catch_2
    move-exception p1

    move-object v8, v5

    move-object v5, p1

    move-object p1, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2

    .line 877
    :catch_3
    move-exception p1

    move-object v8, v5

    move-object v5, p1

    move-object p1, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3

    .line 880
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v6    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .restart local v1    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;
    .local v3, "urlTest":Lio/nekohasekai/sagernet/bg/proto/UrlTest;
    .local v4, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local p1, "$result":Ljava/lang/Object;
    :catch_4
    move-exception v6

    move-object v8, v3

    move-object v3, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v4

    move-object v4, v8

    .line 881
    .local v1, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .local v3, "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;
    .local v4, "urlTest":Lio/nekohasekai/sagernet/bg/proto/UrlTest;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v6    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :goto_2
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setStatus(I)V

    .line 882
    move-object v7, v5

    check-cast v7, Ljava/lang/Throwable;

    invoke-static {v7}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setError(Ljava/lang/String;)V

    move-object v5, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v6

    goto :goto_4

    .line 877
    .end local v6    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v1, "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;
    .local v3, "urlTest":Lio/nekohasekai/sagernet/bg/proto/UrlTest;
    .local v4, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v5, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    :catch_5
    move-exception v6

    move-object v8, v3

    move-object v3, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v4

    move-object v4, v8

    .line 878
    .local v1, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .local v3, "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;
    .local v4, "urlTest":Lio/nekohasekai/sagernet/bg/proto/UrlTest;
    .local v5, "e":Lio/nekohasekai/sagernet/plugin/PluginManager$PluginNotFoundException;
    .restart local v6    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :goto_3
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setStatus(I)V

    .line 879
    move-object v7, v5

    check-cast v7, Ljava/lang/Throwable;

    invoke-static {v7}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setError(Ljava/lang/String;)V

    move-object v5, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v6

    .line 885
    .end local v6    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v1, "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;
    .local v3, "urlTest":Lio/nekohasekai/sagernet/bg/proto/UrlTest;
    .local v4, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v5, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    :goto_4
    iget-object v6, v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1$1$1;->$test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-virtual {v6, v5}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->update(Lio/nekohasekai/sagernet/database/ProxyEntity;)V

    .end local v5    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    goto/16 :goto_0

    .line 887
    .end local v3    # "urlTest":Lio/nekohasekai/sagernet/bg/proto/UrlTest;
    .end local v4    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :cond_2
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
