.class final Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigurationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->pingTest(Z)V
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
    value = "SMAP\nConfigurationFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigurationFragment.kt\nio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1764:1\n774#2:1765\n865#2,2:1766\n*S KotlinDebug\n*F\n+ 1 ConfigurationFragment.kt\nio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1\n*L\n722#1:1765\n722#1:1766,2\n*E\n"
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
    c = "io.nekohasekai.sagernet.ui.ConfigurationFragment$pingTest$mainJob$1"
    f = "ConfigurationFragment.kt"
    i = {}
    l = {
        0x335
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $group:Lio/nekohasekai/sagernet/database/ProxyGroup;

.field final synthetic $icmpPing:Z

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

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Ljava/util/List;ZLio/nekohasekai/sagernet/ui/ConfigurationFragment;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;",
            "Ljava/util/List<",
            "Lkotlinx/coroutines/Job;",
            ">;Z",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->$test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->$testJobs:Ljava/util/List;

    iput-boolean p4, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->$icmpPing:Z

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->$test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->$testJobs:Ljava/util/List;

    iget-boolean v4, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->$icmpPing:Z

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Ljava/util/List;ZLio/nekohasekai/sagernet/ui/ConfigurationFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 721
    iget v2, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    move-object/from16 v1, p1

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 722
    .local v3, "$this$runOnDefaultDispatcher":Lkotlinx/coroutines/CoroutineScope;
    sget-object v4, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v4

    iget-object v5, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getByGroup(J)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$filter$iv":Ljava/lang/Iterable;
    iget-boolean v5, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->$icmpPing:Z

    const/4 v6, 0x0

    .line 1765
    .local v6, "$i$f$filter":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v7, "destination$iv$iv":Ljava/util/Collection;
    const/4 v8, 0x0

    .line 1766
    .local v8, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v4

    check-cast v12, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .local v12, "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    const/4 v13, 0x0

    .line 723
    .local v13, "$i$a$-filter-ConfigurationFragment$pingTest$mainJob$1$profilesList$1":I
    if-eqz v5, :cond_1

    .line 724
    invoke-virtual {v12}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v14

    invoke-virtual {v14}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->canICMPing()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 725
    .end local v12    # "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    const/4 v10, 0x1

    goto :goto_1

    .line 728
    .restart local v12    # "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    :cond_1
    invoke-virtual {v12}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v14

    invoke-virtual {v14}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->canTCPing()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 729
    .end local v12    # "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    const/4 v10, 0x1

    goto :goto_1

    .line 732
    :cond_2
    nop

    .line 1766
    .end local v13    # "$i$a$-filter-ConfigurationFragment$pingTest$mainJob$1$profilesList$1":I
    :goto_1
    if-eqz v10, :cond_0

    invoke-interface {v7, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1767
    .end local v4    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$filterTo":I
    move-object v4, v7

    check-cast v4, Ljava/util/List;

    .line 1765
    nop

    .line 722
    .end local v6    # "$i$f$filter":I
    nop

    .line 734
    .local v4, "profilesList":Ljava/util/List;
    iget-object v5, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->$test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->setProxyN(I)V

    .line 735
    new-instance v13, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v13, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    .line 736
    .end local v4    # "profilesList":Ljava/util/List;
    .local v13, "profiles":Ljava/util/concurrent/ConcurrentLinkedQueue;
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getConnectionTestConcurrent()I

    move-result v9

    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->$testJobs:Ljava/util/List;

    iget-object v7, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->$test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    iget-boolean v6, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->$icmpPing:Z

    iget-object v5, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    :goto_2
    if-ge v10, v9, :cond_4

    const/16 v18, 0x0

    .line 737
    .local v18, "$i$a$-repeat-ConfigurationFragment$pingTest$mainJob$1$1":I
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;

    const/16 v17, 0x0

    move-object v12, v4

    move-object v14, v7

    move v15, v6

    move-object/from16 v16, v5

    invoke-direct/range {v12 .. v17}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;ZLio/nekohasekai/sagernet/ui/ConfigurationFragment;Lkotlin/coroutines/Continuation;)V

    move-object v12, v4

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v4, v3

    move-object/from16 v17, v5

    move-object/from16 v5, v19

    move/from16 v19, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move-object v7, v12

    move-object v12, v8

    move v8, v14

    move v14, v9

    move-object v9, v15

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    nop

    .line 736
    .end local v18    # "$i$a$-repeat-ConfigurationFragment$pingTest$mainJob$1$1":I
    add-int/lit8 v10, v10, 0x1

    move-object v8, v12

    move v9, v14

    move-object/from16 v7, v16

    move-object/from16 v5, v17

    move/from16 v6, v19

    goto :goto_2

    .line 821
    .end local v3    # "$this$runOnDefaultDispatcher":Lkotlinx/coroutines/CoroutineScope;
    .end local v13    # "profiles":Ljava/util/concurrent/ConcurrentLinkedQueue;
    :cond_4
    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->$testJobs:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v11, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->label:I

    invoke-static {v3, v4}, Lkotlinx/coroutines/AwaitKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_5

    .line 721
    return-object v1

    .line 821
    :cond_5
    move-object v1, v2

    .line 823
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :goto_3
    new-instance v2, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$2;

    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->$test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$2;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnMainDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 826
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
