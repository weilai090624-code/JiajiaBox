.class final Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JJHomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/JJHomeFragment;->reload()V
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
    value = "SMAP\nJJHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JJHomeFragment.kt\nio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1013:1\n2632#2,3:1014\n*S KotlinDebug\n*F\n+ 1 JJHomeFragment.kt\nio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1\n*L\n769#1:1014,3\n*E\n"
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
    c = "io.nekohasekai.sagernet.ui.JJHomeFragment$reload$1"
    f = "JJHomeFragment.kt"
    i = {}
    l = {
        0x2f8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
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

    new-instance v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-direct {v0, v1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;-><init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 759
    iget v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_168

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p1

    goto :goto_38

    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 760
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1$loaded$1;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-direct {v4, v5, v3}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1$loaded$1;-><init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->label:I

    invoke-static {v1, v4, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_36

    .line 759
    return-object v0

    .line 760
    :cond_36
    move-object v0, p1

    move-object p1, v1

    .line 759
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_38
    check-cast p1, Lkotlin/Pair;

    .line 763
    .local p1, "loaded":Lkotlin/Pair;
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_45

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 764
    :cond_45
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 765
    .local v1, "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    move-object p1, v4

    check-cast p1, Ljava/util/List;

    .line 766
    .local p1, "list":Ljava/util/List;
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v7

    goto :goto_5e

    :cond_5d
    move-wide v7, v5

    :goto_5e
    invoke-static {v4, v7, v8}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$setCurrentGroupId$p(Lio/nekohasekai/sagernet/ui/JJHomeFragment;J)V

    .line 767
    move-object v4, p1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_bf

    .line 768
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedProxy()J

    move-result-wide v8

    cmp-long v4, v8, v5

    if-eqz v4, :cond_b0

    .line 769
    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$none$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1014
    .local v5, "$i$f$none":I
    instance-of v6, v4, Ljava/util/Collection;

    if-eqz v6, :cond_87

    move-object v6, v4

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_87

    goto :goto_ae

    .line 1015
    :cond_87
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v4    # "$this$none$iv":Ljava/lang/Iterable;
    :cond_8b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ad

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    check-cast v4, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .local v4, "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    const/4 v8, 0x0

    .line 769
    .local v8, "$i$a$-none-JJHomeFragment$reload$1$1":I
    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v9

    sget-object v11, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v11}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedProxy()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-nez v13, :cond_a8

    const/4 v4, 0x1

    goto :goto_a9

    :cond_a8
    const/4 v4, 0x0

    .line 1015
    .end local v4    # "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v8    # "$i$a$-none-JJHomeFragment$reload$1$1":I
    :goto_a9
    if-eqz v4, :cond_8b

    const/4 v2, 0x0

    goto :goto_ae

    .line 1016
    :cond_ad
    nop

    .line 769
    .end local v5    # "$i$f$none":I
    :goto_ae
    if-eqz v2, :cond_bf

    .line 771
    :cond_b0
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedProxy(J)V

    .line 773
    :cond_bf
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    # getter for: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->adapter:Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$getAdapter$p(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;

    move-result-object v2

    if-eqz v2, :cond_ca

    invoke-virtual {v2, p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->submit(Ljava/util/List;)V

    .line 774
    :cond_ca
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v4, "stateView"

    const/16 v5, 0x8

    const-string v6, "nodeList"

    if-eqz v2, :cond_13a

    .line 775
    .end local p1    # "list":Ljava/util/List;
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    # getter for: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->nodeList:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$getNodeList$p(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-nez p1, :cond_e2

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_e2
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 776
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    # getter for: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->stateView:Landroid/view/View;
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$getStateView$p(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_f1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_f1
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 777
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    # getter for: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->stateTitle:Landroid/widget/TextView;
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$getStateTitle$p(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_102

    const-string p1, "stateTitle"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_102
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    const v4, 0x7f130140

    invoke-virtual {v2, v4}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    # getter for: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->stateHint:Landroid/widget/TextView;
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$getStateHint$p(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_11e

    const-string p1, "stateHint"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_11e
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    .line 779
    if-eqz v1, :cond_127

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v3

    nop

    .end local v1    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :cond_127
    if-eqz v3, :cond_12d

    .line 780
    const v1, 0x7f13013e

    goto :goto_130

    .line 782
    :cond_12d
    const v1, 0x7f13013f

    .line 778
    :goto_130
    invoke-virtual {v2, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_159

    .line 786
    :cond_13a
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    # getter for: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->nodeList:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$getNodeList$p(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-nez p1, :cond_146

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_146
    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 787
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    # getter for: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->stateView:Landroid/view/View;
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$getStateView$p(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_155

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_156

    :cond_155
    move-object v3, p1

    :goto_156
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 789
    :goto_159
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v1

    # invokes: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->renderConnection(Lio/nekohasekai/sagernet/bg/BaseService$State;)V
    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$renderConnection(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/bg/BaseService$State;)V

    .line 790
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_18
        :pswitch_13
    .end packed-switch
.end method
