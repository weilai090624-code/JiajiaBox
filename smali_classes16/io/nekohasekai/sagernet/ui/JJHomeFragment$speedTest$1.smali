.class final Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JJHomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/JJHomeFragment;->speedTest(Ljava/util/List;J)V
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
    c = "io.nekohasekai.sagernet.ui.JJHomeFragment$speedTest$1"
    f = "JJHomeFragment.kt"
    i = {}
    l = {
        0x33f,
        0x357
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $groupId:J

.field final synthetic $profiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Ljava/util/List;JLkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment;",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->$profiles:Ljava/util/List;

    iput-wide p3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->$groupId:J

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
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

    new-instance v6, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->$profiles:Ljava/util/List;

    iget-wide v3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->$groupId:J

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;-><init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Ljava/util/List;JLkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 829
    iget v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->label:I

    const-string v2, "getString(...)"

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_11a

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_15
    :try_start_15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1a
    .catchall {:try_start_15 .. :try_end_18} :catchall_20

    move-object v0, p1

    goto :goto_67

    .line 858
    :catch_1a
    move-exception v0

    goto :goto_74

    .line 829
    :pswitch_1c
    :try_start_1c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_23
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_48

    .line 872
    :catchall_20
    move-exception v0

    goto/16 :goto_113

    .line 867
    :catch_23
    move-exception v0

    goto/16 :goto_d1

    .line 829
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 830
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 831
    :try_start_2a
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->$profiles:Ljava/util/List;

    iget-object v7, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-direct {v5, v6, v7, v4}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;-><init>(Ljava/util/List;Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x1

    iput v7, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->label:I

    invoke-static {v1, v5, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_45} :catch_23
    .catchall {:try_start_2a .. :try_end_45} :catchall_20

    if-ne v1, v0, :cond_48

    .line 829
    return-object v0

    .line 854
    :cond_48
    :goto_48
    nop

    .line 855
    :try_start_49
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$refreshed$1;

    iget-wide v6, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->$groupId:J

    invoke-direct {v5, v6, v7, v4}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$refreshed$1;-><init>(JLkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x2

    iput v7, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->label:I

    invoke-static {v1, v5, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_62} :catch_1a
    .catchall {:try_start_49 .. :try_end_62} :catchall_20

    if-ne v1, v0, :cond_65

    .line 829
    return-object v0

    .line 855
    :cond_65
    move-object v0, p1

    move-object p1, v1

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_67
    :try_start_67
    check-cast p1, Ljava/util/List;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_69} :catch_70
    .catchall {:try_start_67 .. :try_end_69} :catchall_6a

    goto :goto_7e

    .line 872
    :catchall_6a
    move-exception p1

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto/16 :goto_113

    .line 858
    :catch_70
    move-exception p1

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    .line 859
    .local v0, "e":Ljava/lang/Exception;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_74
    :try_start_74
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7c} :catch_23
    .catchall {:try_start_74 .. :try_end_7c} :catchall_20

    .line 860
    move-object v0, p1

    move-object p1, v4

    .line 854
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_7e
    nop

    .line 862
    .local p1, "refreshed":Ljava/util/List;
    if-eqz p1, :cond_95

    :try_start_81
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 863
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    # getter for: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->adapter:Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$getAdapter$p(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;

    move-result-object v1

    if-eqz v1, :cond_95

    invoke-virtual {v1, p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->submit(Ljava/util/List;)V

    nop

    .line 865
    .end local p1    # "refreshed":Ljava/util/List;
    :cond_95
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v1

    # invokes: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->renderConnection(Lio/nekohasekai/sagernet/bg/BaseService$State;)V
    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$renderConnection(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/bg/BaseService$State;)V

    .line 866
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v1, p1, Lio/nekohasekai/sagernet/ui/MainActivity;

    if-eqz v1, :cond_ad

    check-cast p1, Lio/nekohasekai/sagernet/ui/MainActivity;

    goto :goto_ae

    :cond_ad
    move-object p1, v4

    :goto_ae
    if-eqz p1, :cond_c7

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    const v5, 0x7f130162

    invoke-virtual {v1, v5}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->snackbar(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    if-eqz p1, :cond_c7

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_c7} :catch_cd
    .catchall {:try_start_81 .. :try_end_c7} :catchall_6a

    .line 872
    :cond_c7
    sget-object p1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1, v3}, Lio/nekohasekai/sagernet/database/DataStore;->setRunningTest(Z)V

    .line 873
    goto :goto_110

    .line 867
    :catch_cd
    move-exception p1

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    .line 868
    .local v0, "e":Ljava/lang/Exception;
    .local p1, "$result":Ljava/lang/Object;
    :goto_d1
    :try_start_d1
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 869
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v1

    # invokes: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->renderConnection(Lio/nekohasekai/sagernet/bg/BaseService$State;)V
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$renderConnection(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/bg/BaseService$State;)V

    .line 870
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lio/nekohasekai/sagernet/ui/MainActivity;

    if-eqz v1, :cond_f1

    move-object v4, v0

    check-cast v4, Lio/nekohasekai/sagernet/ui/MainActivity;

    :cond_f1
    if-eqz v4, :cond_10a

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    const v1, 0x7f130163

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->snackbar(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_10a

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_10a
    .catchall {:try_start_d1 .. :try_end_10a} :catchall_20

    .line 872
    :cond_10a
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/database/DataStore;->setRunningTest(Z)V

    .line 873
    move-object v0, p1

    .line 874
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_110
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 872
    .end local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_113
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/database/DataStore;->setRunningTest(Z)V

    throw v0

    nop

    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_1c
        :pswitch_15
    .end packed-switch
.end method
