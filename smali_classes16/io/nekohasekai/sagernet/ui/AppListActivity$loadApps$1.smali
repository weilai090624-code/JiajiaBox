.class final Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/AppListActivity;->loadApps()V
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
    c = "io.nekohasekai.sagernet.ui.AppListActivity$loadApps$1"
    f = "AppListActivity.kt"
    i = {
        0x0
    }
    l = {
        0xb4
    }
    m = "invokeSuspend"
    n = {
        "adapter"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/AppListActivity;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/AppListActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

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

    new-instance v0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    invoke-direct {v0, v1, p2}, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 177
    iget v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->label:I

    const-string v2, "list"

    const-string v3, "access$getLoading(...)"

    const-string v4, "binding"

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_106

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_18
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;

    .local v0, "adapter":Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_78

    .end local v0    # "adapter":Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 178
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    # invokes: Lio/nekohasekai/sagernet/ui/AppListActivity;->getLoading()Landroid/view/View;
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getLoading(Lio/nekohasekai/sagernet/ui/AppListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    # getter for: Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;
    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getBinding$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    move-result-object v6

    if-nez v6, :cond_38

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v5

    :cond_38
    iget-object v6, v6, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->list:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    invoke-static {v1, v6}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->crossFadeFrom(Landroid/view/View;Landroid/view/View;)V

    .line 179
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    # getter for: Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getBinding$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    move-result-object v1

    if-nez v1, :cond_4e

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_4e
    iget-object v1, v1, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->list:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    invoke-virtual {v1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    const-string v6, "null cannot be cast to non-null type io.nekohasekai.sagernet.ui.AppListActivity.AppsAdapter"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;

    .line 180
    .local v1, "adapter":Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v6

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1$1;

    invoke-direct {v7, v1, v5}, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1$1;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->L$0:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->label:I

    invoke-static {v6, v7, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_77

    .line 177
    return-object v0

    .line 180
    :cond_77
    move-object v0, v1

    .line 181
    .end local v1    # "adapter":Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;
    .restart local v0    # "adapter":Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;
    :goto_78
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    # getter for: Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;
    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getBinding$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    move-result-object v0

    .end local v0    # "adapter":Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;
    if-nez v0, :cond_88

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_88
    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->search:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_96

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_98

    :cond_96
    const-string v0, ""

    :cond_98
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    # getter for: Lio/nekohasekai/sagernet/ui/AppListActivity;->apps:Ljava/util/List;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getApps$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 183
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    # getter for: Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getBinding$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    move-result-object v0

    if-nez v0, :cond_b5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_b5
    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->list:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    # getter for: Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getBinding$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    move-result-object v0

    if-nez v0, :cond_c8

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_c9

    :cond_c8
    move-object v5, v0

    :goto_c9
    iget-object v0, v5, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->appPlaceholder:Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    # invokes: Lio/nekohasekai/sagernet/ui/AppListActivity;->getLoading()Landroid/view/View;
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getLoading(Lio/nekohasekai/sagernet/ui/AppListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->crossFadeFrom(Landroid/view/View;Landroid/view/View;)V

    goto :goto_103

    .line 186
    :cond_e3
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    # getter for: Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getBinding$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    move-result-object v0

    if-nez v0, :cond_ef

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_f0

    :cond_ef
    move-object v5, v0

    :goto_f0
    iget-object v0, v5, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->list:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    # invokes: Lio/nekohasekai/sagernet/ui/AppListActivity;->getLoading()Landroid/view/View;
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getLoading(Lio/nekohasekai/sagernet/ui/AppListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->crossFadeFrom(Landroid/view/View;Landroid/view/View;)V

    .line 188
    :goto_103
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_20
        :pswitch_18
    .end packed-switch
.end method
