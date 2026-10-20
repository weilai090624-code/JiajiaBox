.class public final Lio/nekohasekai/sagernet/databinding/LayoutChainSettingsBinding;
.super Ljava/lang/Object;
.source "LayoutChainSettingsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final configurationList:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

.field public final listCell:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final settings:Landroidx/fragment/app/FragmentContainerView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;Landroid/widget/LinearLayout;Landroidx/fragment/app/FragmentContainerView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "configurationList"    # Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;
    .param p3, "listCell"    # Landroid/widget/LinearLayout;
    .param p4, "settings"    # Landroidx/fragment/app/FragmentContainerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "configurationList",
            "listCell",
            "settings"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutChainSettingsBinding;->rootView:Landroid/widget/LinearLayout;

    .line 36
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutChainSettingsBinding;->configurationList:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 37
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutChainSettingsBinding;->listCell:Landroid/widget/LinearLayout;

    .line 38
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutChainSettingsBinding;->settings:Landroidx/fragment/app/FragmentContainerView;

    .line 39
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutChainSettingsBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 68
    const v0, 0x7f0a00d8

    .line 69
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 70
    .local v1, "configurationList":Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;
    if-eqz v1, :cond_2

    .line 74
    const v0, 0x7f0a0190

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 76
    .local v2, "listCell":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_1

    .line 80
    const v0, 0x7f0a0263

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentContainerView;

    .line 82
    .local v3, "settings":Landroidx/fragment/app/FragmentContainerView;
    if-eqz v3, :cond_0

    .line 86
    new-instance v4, Lio/nekohasekai/sagernet/databinding/LayoutChainSettingsBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lio/nekohasekai/sagernet/databinding/LayoutChainSettingsBinding;-><init>(Landroid/widget/LinearLayout;Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;Landroid/widget/LinearLayout;Landroidx/fragment/app/FragmentContainerView;)V

    return-object v4

    .line 83
    :cond_0
    goto :goto_0

    .line 77
    .end local v3    # "settings":Landroidx/fragment/app/FragmentContainerView;
    :cond_1
    goto :goto_0

    .line 71
    .end local v2    # "listCell":Landroid/widget/LinearLayout;
    :cond_2
    nop

    .line 89
    .end local v1    # "configurationList":Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutChainSettingsBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutChainSettingsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutChainSettingsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutChainSettingsBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "attachToParent"
        }
    .end annotation

    .line 55
    const v0, 0x7f0d003e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutChainSettingsBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutChainSettingsBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutChainSettingsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutChainSettingsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
