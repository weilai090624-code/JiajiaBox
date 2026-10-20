.class public final Lio/nekohasekai/sagernet/ui/RouteFragment;
.super Lio/nekohasekai/sagernet/ui/ToolbarFragment;
.source "RouteFragment.kt"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001)B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001a\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0008\u0010$\u001a\u00020\u001fH\u0016J\u0010\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00060\u0012R\u00020\u0000X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R \u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006*"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/RouteFragment;",
        "Lio/nekohasekai/sagernet/ui/ToolbarFragment;",
        "Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;",
        "<init>",
        "()V",
        "activity",
        "Lio/nekohasekai/sagernet/ui/MainActivity;",
        "getActivity",
        "()Lio/nekohasekai/sagernet/ui/MainActivity;",
        "setActivity",
        "(Lio/nekohasekai/sagernet/ui/MainActivity;)V",
        "ruleListView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getRuleListView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setRuleListView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "ruleAdapter",
        "Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;",
        "getRuleAdapter",
        "()Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;",
        "setRuleAdapter",
        "(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;)V",
        "undoManager",
        "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;",
        "Lio/nekohasekai/sagernet/database/RuleEntity;",
        "getUndoManager",
        "()Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;",
        "setUndoManager",
        "(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;)V",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onMenuItemClick",
        "",
        "item",
        "Landroid/view/MenuItem;",
        "RuleAdapter",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public activity:Lio/nekohasekai/sagernet/ui/MainActivity;

.field public ruleAdapter:Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

.field public ruleListView:Landroidx/recyclerview/widget/RecyclerView;

.field public undoManager:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager<",
            "-",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$btZIiUWyJs_6R_CYIg_pQtKoZG8(Lio/nekohasekai/sagernet/ui/RouteFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/RouteFragment;->onMenuItemClick$lambda$0(Lio/nekohasekai/sagernet/ui/RouteFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    const v0, 0x7f0d0058

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;-><init>(I)V

    return-void
.end method

.method private static final onMenuItemClick$lambda$0(Lio/nekohasekai/sagernet/ui/RouteFragment;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/RouteFragment;

    .line 112
    new-instance p1, Lio/nekohasekai/sagernet/ui/RouteFragment$onMenuItemClick$1$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/nekohasekai/sagernet/ui/RouteFragment$onMenuItemClick$1$1;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 117
    return-void
.end method


# virtual methods
.method public final getActivity()Lio/nekohasekai/sagernet/ui/MainActivity;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment;->activity:Lio/nekohasekai/sagernet/ui/MainActivity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "activity"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRuleAdapter()Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment;->ruleAdapter:Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ruleAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRuleListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment;->ruleListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ruleListView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUndoManager()Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment;->undoManager:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "undoManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 97
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment;->ruleAdapter:Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleAdapter()Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/ProfileManager;->removeListener(Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;)V

    .line 100
    :cond_0
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->onDestroy()V

    .line 101
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 109
    :sswitch_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getActivity()Lio/nekohasekai/sagernet/ui/MainActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13009e

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 110
    const v1, 0x7f130095

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 111
    new-instance v1, Lio/nekohasekai/sagernet/ui/RouteFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/RouteFragment$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment;)V

    const v2, 0x7f1302e1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 118
    const v1, 0x7f1301f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 106
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/nekohasekai/sagernet/ui/AssetsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->startActivity(Landroid/content/Intent;)V

    .line 125
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a005a -> :sswitch_2
        0x7f0a006a -> :sswitch_1
        0x7f0a007c -> :sswitch_0
    .end sparse-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-super {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type io.nekohasekai.sagernet.ui.MainActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->setActivity(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    .line 36
    sget-object v0, Lio/nekohasekai/sagernet/widget/ListListener;->INSTANCE:Lio/nekohasekai/sagernet/widget/ListListener;

    check-cast v0, Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 37
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f13019e

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 38
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 39
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 41
    const v0, 0x7f0a0232

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->setRuleListView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 42
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lio/nekohasekai/sagernet/ktx/FixedLinearLayoutManager;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/nekohasekai/sagernet/ktx/FixedLinearLayoutManager;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 43
    new-instance v0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->setRuleAdapter(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;)V

    .line 44
    sget-object v0, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleAdapter()Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/ProfileManager;->addListener(Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;)V

    .line 45
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleAdapter()Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 46
    new-instance v0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getActivity()Lio/nekohasekai/sagernet/ui/MainActivity;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/ui/ThemedActivity;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleAdapter()Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;

    invoke-direct {v0, v1, v2}, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;-><init>(Lio/nekohasekai/sagernet/ui/ThemedActivity;Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->setUndoManager(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;)V

    .line 48
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lio/nekohasekai/sagernet/ui/RouteFragment$onViewCreated$1;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/RouteFragment$onViewCreated$1;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment;)V

    check-cast v1, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 93
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 94
    return-void
.end method

.method public final setActivity(Lio/nekohasekai/sagernet/ui/MainActivity;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment;->activity:Lio/nekohasekai/sagernet/ui/MainActivity;

    return-void
.end method

.method public final setRuleAdapter(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment;->ruleAdapter:Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    return-void
.end method

.method public final setRuleListView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment;->ruleListView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final setUndoManager(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager<",
            "-",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment;->undoManager:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

    return-void
.end method
