.class public final Lio/nekohasekai/sagernet/ui/ToolsFragment;
.super Lio/nekohasekai/sagernet/ui/ToolbarFragment;
.source "ToolsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/ToolsFragment$ToolsAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\nB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/ToolsFragment;",
        "Lio/nekohasekai/sagernet/ui/ToolbarFragment;",
        "<init>",
        "()V",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "ToolsAdapter",
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


# direct methods
.method public static synthetic $r8$lambda$Dg8J4rnezClAiZOkGMh3F2X4SAc(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ToolsFragment;->onViewCreated$lambda$1$lambda$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nbVjONIqBuqagGkweHPi7lmgBsw(Ljava/util/List;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ToolsFragment;->onViewCreated$lambda$1(Ljava/util/List;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    const v0, 0x7f0d005d

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;-><init>(I)V

    return-void
.end method

.method private static final onViewCreated$lambda$1(Ljava/util/List;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 2
    .param p0, "$tools"    # Ljava/util/List;
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;
    .param p2, "position"    # I

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/NamedFragment;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/NamedFragment;->name()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 26
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    new-instance v1, Lio/nekohasekai/sagernet/ui/ToolsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/ui/ToolsFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 29
    return-void
.end method

.method private static final onViewCreated$lambda$1$lambda$0(Landroid/view/View;)Z
    .locals 1
    .param p0, "it"    # Landroid/view/View;

    .line 27
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-super {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ToolsFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f13019f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 18
    .local v0, "tools":Ljava/util/List;
    new-instance v1, Lio/nekohasekai/sagernet/ui/NetworkFragment;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/ui/NetworkFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Lio/nekohasekai/sagernet/ui/BackupFragment;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/ui/BackupFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {p1}, Lio/nekohasekai/sagernet/databinding/LayoutToolsBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutToolsBinding;

    move-result-object v1

    const-string v2, "bind(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .local v1, "binding":Lio/nekohasekai/sagernet/databinding/LayoutToolsBinding;
    iget-object v2, v1, Lio/nekohasekai/sagernet/databinding/LayoutToolsBinding;->toolsPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lio/nekohasekai/sagernet/ui/ToolsFragment$ToolsAdapter;

    invoke-direct {v3, p0, v0}, Lio/nekohasekai/sagernet/ui/ToolsFragment$ToolsAdapter;-><init>(Lio/nekohasekai/sagernet/ui/ToolsFragment;Ljava/util/List;)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 24
    new-instance v2, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v3, v1, Lio/nekohasekai/sagernet/databinding/LayoutToolsBinding;->toolsTab:Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, v1, Lio/nekohasekai/sagernet/databinding/LayoutToolsBinding;->toolsPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 29
    new-instance v5, Lio/nekohasekai/sagernet/ui/ToolsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lio/nekohasekai/sagernet/ui/ToolsFragment$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 24
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 29
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 30
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->install(Landroid/view/View;)V

    return-void
.end method
