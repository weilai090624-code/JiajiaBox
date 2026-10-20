.class public final Lio/nekohasekai/sagernet/ui/GroupFragment;
.super Lio/nekohasekai/sagernet/ui/ToolbarFragment;
.source "GroupFragment.kt"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;,
        Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGroupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupFragment.kt\nio/nekohasekai/sagernet/ui/GroupFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,562:1\n298#2,2:563\n774#3:565\n865#3,2:566\n1863#3,2:568\n*S KotlinDebug\n*F\n+ 1 GroupFragment.kt\nio/nekohasekai/sagernet/ui/GroupFragment\n*L\n54#1:563,2\n129#1:565\n129#1:566,2\n130#1:568,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u000245B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001a\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0010\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0016J\u0008\u00103\u001a\u00020%H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0017\u001a\u00060\u0018R\u00020\u0000X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR \u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u000e\u0010.\u001a\u00020\u001fX\u0082.\u00a2\u0006\u0002\n\u0000R\u001c\u0010/\u001a\u0010\u0012\u000c\u0012\n 2*\u0004\u0018\u0001010100X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/GroupFragment;",
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
        "groupListView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getGroupListView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setGroupListView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "layoutManager",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "getLayoutManager",
        "()Landroidx/recyclerview/widget/LinearLayoutManager;",
        "setLayoutManager",
        "(Landroidx/recyclerview/widget/LinearLayoutManager;)V",
        "groupAdapter",
        "Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;",
        "getGroupAdapter",
        "()Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;",
        "setGroupAdapter",
        "(Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;)V",
        "undoManager",
        "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;",
        "Lio/nekohasekai/sagernet/database/ProxyGroup;",
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
        "onMenuItemClick",
        "",
        "item",
        "Landroid/view/MenuItem;",
        "selectedGroup",
        "exportProfiles",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "kotlin.jvm.PlatformType",
        "onDestroy",
        "GroupAdapter",
        "GroupHolder",
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

.field private final exportProfiles:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public groupAdapter:Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;

.field public groupListView:Landroidx/recyclerview/widget/RecyclerView;

.field public layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private selectedGroup:Lio/nekohasekai/sagernet/database/ProxyGroup;

.field public undoManager:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager<",
            "-",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5WvNGbLJu3PvQ7CmGrVHuWpF7Ig(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/GroupFragment;->onMenuItemClick$lambda$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JC-a5mmi37kh4NGZPercO9iT_TE(Lio/nekohasekai/sagernet/ui/GroupFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/GroupFragment;->exportProfiles$lambda$3(Lio/nekohasekai/sagernet/ui/GroupFragment;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    const v0, 0x7f0d0045

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;-><init>(I)V

    .line 144
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$CreateDocument;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$CreateDocument;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lio/nekohasekai/sagernet/ui/GroupFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/GroupFragment$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/GroupFragment;)V

    invoke-virtual {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/GroupFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment;->exportProfiles:Landroidx/activity/result/ActivityResultLauncher;

    .line 35
    return-void
.end method

.method public static final synthetic access$getExportProfiles$p(Lio/nekohasekai/sagernet/ui/GroupFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/GroupFragment;

    .line 35
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment;->exportProfiles:Landroidx/activity/result/ActivityResultLauncher;

    return-object v0
.end method

.method public static final synthetic access$getSelectedGroup$p(Lio/nekohasekai/sagernet/ui/GroupFragment;)Lio/nekohasekai/sagernet/database/ProxyGroup;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/GroupFragment;

    .line 35
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment;->selectedGroup:Lio/nekohasekai/sagernet/database/ProxyGroup;

    return-object v0
.end method

.method public static final synthetic access$setSelectedGroup$p(Lio/nekohasekai/sagernet/ui/GroupFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;)V
    .locals 0
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/GroupFragment;
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 35
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment;->selectedGroup:Lio/nekohasekai/sagernet/database/ProxyGroup;

    return-void
.end method

.method private static final exportProfiles$lambda$3(Lio/nekohasekai/sagernet/ui/GroupFragment;Landroid/net/Uri;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/GroupFragment;
    .param p1, "data"    # Landroid/net/Uri;

    .line 145
    if-eqz p1, :cond_0

    .line 146
    new-instance v0, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;-><init>(Lio/nekohasekai/sagernet/ui/GroupFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 167
    :cond_0
    return-void
.end method

.method private static final onMenuItemClick$lambda$2(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 128
    sget-object p0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object p0

    invoke-interface {p0}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->allGroups()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 129
    nop

    .local p0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 p1, 0x0

    .line 565
    .local p1, "$i$f$filter":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .local v0, "destination$iv$iv":Ljava/util/Collection;
    move-object v1, p0

    .local v1, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 566
    .local v2, "$i$f$filterTo":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v6, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v7, 0x0

    .line 129
    .local v7, "$i$a$-filter-GroupFragment$onMenuItemClick$1$1":I
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getType()I

    move-result v8

    if-ne v8, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 566
    .end local v6    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v7    # "$i$a$-filter-GroupFragment$onMenuItemClick$1$1":I
    :goto_1
    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 567
    .end local v4    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    .end local v1    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filterTo":I
    check-cast v0, Ljava/util/List;

    .line 565
    nop

    .end local p0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local p1    # "$i$f$filter":I
    check-cast v0, Ljava/lang/Iterable;

    .line 130
    move-object p0, v0

    .local p0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 p1, 0x0

    .line 568
    .local p1, "$i$f$forEach":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v2, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v3, 0x0

    .line 131
    .local v3, "$i$a$-forEach-GroupFragment$onMenuItemClick$1$2":I
    sget-object v4, Lio/nekohasekai/sagernet/group/GroupUpdater;->Companion:Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;

    invoke-virtual {v4, v2, v5}, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;->startUpdate(Lio/nekohasekai/sagernet/database/ProxyGroup;Z)V

    .line 132
    nop

    .line 568
    .end local v2    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v3    # "$i$a$-forEach-GroupFragment$onMenuItemClick$1$2":I
    nop

    .end local v1    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 569
    :cond_3
    nop

    .line 133
    .end local p0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local p1    # "$i$f$forEach":I
    return-void
.end method


# virtual methods
.method public final getActivity()Lio/nekohasekai/sagernet/ui/MainActivity;
    .locals 1

    .line 38
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment;->activity:Lio/nekohasekai/sagernet/ui/MainActivity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "activity"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGroupAdapter()Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment;->groupAdapter:Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "groupAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGroupListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment;->groupListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "groupListView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "layoutManager"

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
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment;->undoManager:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

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

    .line 320
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment;->groupAdapter:Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;

    if-eqz v0, :cond_0

    .line 321
    sget-object v0, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getGroupAdapter()Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/database/GroupManager$Listener;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/GroupManager;->removeListener(Lio/nekohasekai/sagernet/database/GroupManager$Listener;)V

    .line 324
    :cond_0
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->onDestroy()V

    .line 326
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment;->undoManager:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

    if-nez v0, :cond_1

    return-void

    .line 327
    :cond_1
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getUndoManager()Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->flush()Lkotlin/Unit;

    .line 328
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 125
    :sswitch_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13009e

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 126
    const v1, 0x7f1302c1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 127
    new-instance v1, Lio/nekohasekai/sagernet/ui/GroupFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/ui/GroupFragment$$ExternalSyntheticLambda0;-><init>()V

    const v2, 0x7f1302e1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 134
    const v1, 0x7f1301f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 121
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->startActivity(Landroid/content/Intent;)V

    .line 138
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0065 -> :sswitch_1
        0x7f0a008a -> :sswitch_0
    .end sparse-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type io.nekohasekai.sagernet.ui.MainActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->setActivity(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    .line 48
    sget-object v0, Lio/nekohasekai/sagernet/widget/ListListener;->INSTANCE:Lio/nekohasekai/sagernet/widget/ListListener;

    check-cast v0, Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 49
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    .line 53
    .local v0, "nestedInConfiguration":Z
    if-eqz v0, :cond_0

    .line 54
    const v1, 0x7f0a009e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .local v1, "$this$isGone$iv":Landroid/view/View;
    .local v2, "value$iv":Z
    const/4 v3, 0x0

    .line 563
    .local v3, "$i$f$setGone":I
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 564
    nop

    .end local v1    # "$this$isGone$iv":Landroid/view/View;
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$setGone":I
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    const v2, 0x7f13019b

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 57
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    const/high16 v2, 0x7f0f0000

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 58
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 61
    :cond_1
    :goto_0
    const v1, 0x7f0a0141

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/GroupFragment;->setGroupListView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 62
    new-instance v1, Lio/nekohasekai/sagernet/ktx/FixedLinearLayoutManager;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getGroupListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/nekohasekai/sagernet/ktx/FixedLinearLayoutManager;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/GroupFragment;->setLayoutManager(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 63
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getGroupListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    new-instance v1, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;-><init>(Lio/nekohasekai/sagernet/ui/GroupFragment;)V

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/GroupFragment;->setGroupAdapter(Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;)V

    .line 65
    sget-object v1, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getGroupAdapter()Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/database/GroupManager$Listener;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/GroupManager;->addListener(Lio/nekohasekai/sagernet/database/GroupManager$Listener;)V

    .line 66
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getGroupListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getGroupAdapter()Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 68
    new-instance v1, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getActivity()Lio/nekohasekai/sagernet/ui/MainActivity;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/ui/ThemedActivity;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getGroupAdapter()Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;

    move-result-object v3

    check-cast v3, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;

    invoke-direct {v1, v2, v3}, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;-><init>(Lio/nekohasekai/sagernet/ui/ThemedActivity;Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;)V

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/GroupFragment;->setUndoManager(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;)V

    .line 70
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lio/nekohasekai/sagernet/ui/GroupFragment$onViewCreated$1;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/GroupFragment$onViewCreated$1;-><init>(Lio/nekohasekai/sagernet/ui/GroupFragment;)V

    check-cast v2, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 114
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getGroupListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 116
    return-void
.end method

.method public final setActivity(Lio/nekohasekai/sagernet/ui/MainActivity;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment;->activity:Lio/nekohasekai/sagernet/ui/MainActivity;

    return-void
.end method

.method public final setGroupAdapter(Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment;->groupAdapter:Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;

    return-void
.end method

.method public final setGroupListView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment;->groupListView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final setLayoutManager(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/recyclerview/widget/LinearLayoutManager;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

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
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment;->undoManager:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

    return-void
.end method
