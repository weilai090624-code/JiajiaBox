.class final Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigurationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->urlTest()V
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
    value = "SMAP\nConfigurationFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigurationFragment.kt\nio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1764:1\n1863#2,2:1765\n1863#2,2:1767\n*S KotlinDebug\n*F\n+ 1 ConfigurationFragment.kt\nio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1\n*L\n901#1:1765,2\n902#1:1767,2\n*E\n"
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
    c = "io.nekohasekai.sagernet.ui.ConfigurationFragment$urlTest$1$1"
    f = "ConfigurationFragment.kt"
    i = {}
    l = {
        0x388,
        0x38d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $mainJob:Lkotlinx/coroutines/Job;

.field final synthetic $test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

.field final synthetic $testJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/Job;Ljava/util/List;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Job;",
            "Ljava/util/List<",
            "Lkotlinx/coroutines/Job;",
            ">;",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->$mainJob:Lkotlinx/coroutines/Job;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->$testJobs:Ljava/util/List;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->$test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

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

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->$mainJob:Lkotlinx/coroutines/Job;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->$testJobs:Ljava/util/List;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->$test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;-><init>(Lkotlinx/coroutines/Job;Ljava/util/List;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 899
    iget v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .end local p0    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local p0    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;
    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p0

    goto/16 :goto_5

    :pswitch_1
    const/4 v1, 0x0

    .local v1, "$i$f$forEach":I
    const/4 v4, 0x0

    .local v4, "$i$a$-forEach-ConfigurationFragment$urlTest$1$1$2":I
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v5

    move-object v5, p0

    goto :goto_2

    .line 905
    :catch_0
    move-exception v6

    move-object v7, v6

    move-object v6, v5

    move-object v5, p0

    goto :goto_3

    .line 899
    .end local v1    # "$i$f$forEach":I
    .end local v4    # "$i$a$-forEach-ConfigurationFragment$urlTest$1$1$2":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 900
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->$mainJob:Lkotlinx/coroutines/Job;

    invoke-static {v1, v3, v2, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 901
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->$testJobs:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1765
    .local v4, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v6, v1

    check-cast v6, Lkotlinx/coroutines/Job;

    .local v6, "it":Lkotlinx/coroutines/Job;
    const/4 v7, 0x0

    .line 901
    .local v7, "$i$a$-forEach-ConfigurationFragment$urlTest$1$1$1":I
    invoke-static {v6, v3, v2, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1765
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v6    # "it":Lkotlinx/coroutines/Job;
    .end local v7    # "$i$a$-forEach-ConfigurationFragment$urlTest$1$1$1":I
    goto :goto_0

    .line 1766
    :cond_0
    nop

    .line 902
    .end local v4    # "$i$f$forEach":I
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->$test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getResults()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1767
    .restart local v4    # "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v4

    move-object v4, p0

    .end local p0    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;
    .local v1, "$i$f$forEach":I
    .local v4, "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    check-cast v6, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .local v6, "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    const/4 v7, 0x0

    .line 903
    .local v7, "$i$a$-forEach-ConfigurationFragment$urlTest$1$1$2":I
    nop

    .line 904
    :try_start_1
    sget-object v8, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    iput-object v5, v4, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->L$0:Ljava/lang/Object;

    iput v2, v4, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->label:I

    invoke-virtual {v8, v6, v4}, Lio/nekohasekai/sagernet/database/ProfileManager;->updateProfile(Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6    # "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    if-ne v8, v0, :cond_1

    .line 899
    return-object v0

    .line 904
    :cond_1
    move-object v6, v5

    move-object v5, v4

    move v4, v7

    .end local v7    # "$i$a$-forEach-ConfigurationFragment$urlTest$1$1$2":I
    .local v4, "$i$a$-forEach-ConfigurationFragment$urlTest$1$1$2":I
    .local v5, "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;
    :goto_2
    goto :goto_4

    .line 905
    .end local v5    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;
    .local v4, "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;
    .restart local v7    # "$i$a$-forEach-ConfigurationFragment$urlTest$1$1$2":I
    :catch_1
    move-exception v6

    move-object v10, v5

    move-object v5, v4

    move v4, v7

    move-object v7, v6

    move-object v6, v10

    .line 906
    .local v4, "$i$a$-forEach-ConfigurationFragment$urlTest$1$1$2":I
    .restart local v5    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;
    .local v7, "e":Ljava/lang/Exception;
    :goto_3
    sget-object v8, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v9, v7

    check-cast v9, Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 908
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_4
    nop

    .line 1767
    .end local v4    # "$i$a$-forEach-ConfigurationFragment$urlTest$1$1$2":I
    move-object v4, v5

    move-object v5, v6

    goto :goto_1

    .line 1768
    .end local v5    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;
    .local v4, "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;
    :cond_2
    nop

    .line 909
    .end local v1    # "$i$f$forEach":I
    sget-object v1, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->currentGroupId()J

    move-result-wide v5

    move-object v2, v4

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object v3, v4, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v4, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;->label:I

    invoke-virtual {v1, v5, v6, v2}, Lio/nekohasekai/sagernet/database/GroupManager;->postReload(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    .line 899
    return-object v0

    .line 910
    :cond_3
    :goto_5
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setRunningTest(Z)V

    .line 911
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
