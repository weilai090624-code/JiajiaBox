.class final Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JJHomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/JJHomeFragment;->performDeleteGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;)V
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
    c = "io.nekohasekai.sagernet.ui.JJHomeFragment$performDeleteGroup$1"
    f = "JJHomeFragment.kt"
    i = {}
    l = {
        0x256
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $group:Lio/nekohasekai/sagernet/database/ProxyGroup;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment;",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

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

    new-instance v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-direct {v0, v1, v2, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;-><init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 597
    iget v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p1

    goto :goto_0

    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 598
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1$remaining$1;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-direct {v3, v4, v2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1$remaining$1;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->label:I

    invoke-static {v1, v3, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 597
    return-object v0

    .line 598
    :cond_0
    move-object v0, p1

    move-object p1, v1

    .line 597
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 608
    .local p1, "remaining":Ljava/util/List;
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 609
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v3, "getString(...)"

    if-eqz v1, :cond_4

    .line 610
    .end local p1    # "remaining":Ljava/util/List;
    nop

    .line 612
    nop

    .line 610
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v1, p1, Lio/nekohasekai/sagernet/ui/MainActivity;

    if-eqz v1, :cond_2

    move-object v2, p1

    check-cast v2, Lio/nekohasekai/sagernet/ui/MainActivity;

    :cond_2
    if-eqz v2, :cond_3

    .line 611
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    const v1, 0x7f130142

    invoke-virtual {p1, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    .line 610
    invoke-virtual {v2, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->snackbar(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 612
    if-eqz p1, :cond_3

    .line 610
    nop

    .line 612
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_1

    .line 610
    :cond_3
    nop

    .line 613
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 615
    .restart local p1    # "remaining":Ljava/util/List;
    :cond_4
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedGroup()J

    move-result-wide v4

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    .line 616
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedGroup(J)V

    .line 618
    .end local p1    # "remaining":Ljava/util/List;
    :cond_5
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v1, p1, Lio/nekohasekai/sagernet/ui/MainActivity;

    if-eqz v1, :cond_6

    move-object v2, p1

    check-cast v2, Lio/nekohasekai/sagernet/ui/MainActivity;

    :cond_6
    if-eqz v2, :cond_7

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    const v1, 0x7f130148

    invoke-virtual {p1, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->snackbar(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 619
    :cond_7
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$performDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$reload(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)V

    .line 620
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
