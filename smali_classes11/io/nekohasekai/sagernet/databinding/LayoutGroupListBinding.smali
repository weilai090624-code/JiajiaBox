.class public final Lio/nekohasekai/sagernet/databinding/LayoutGroupListBinding;
.super Ljava/lang/Object;
.source "LayoutGroupListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final groupPager:Landroidx/viewpager2/widget/ViewPager2;

.field public final groupTab:Lcom/google/android/material/tabs/TabLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final topGlass:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "groupPager"    # Landroidx/viewpager2/widget/ViewPager2;
    .param p3, "groupTab"    # Lcom/google/android/material/tabs/TabLayout;
    .param p4, "topGlass"    # Landroid/widget/LinearLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "groupPager",
            "groupTab",
            "topGlass"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutGroupListBinding;->rootView:Landroid/widget/FrameLayout;

    .line 36
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutGroupListBinding;->groupPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 37
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutGroupListBinding;->groupTab:Lcom/google/android/material/tabs/TabLayout;

    .line 38
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutGroupListBinding;->topGlass:Landroid/widget/LinearLayout;

    .line 39
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutGroupListBinding;
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
    const v0, 0x7f0a0144

    .line 69
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    .line 70
    .local v1, "groupPager":Landroidx/viewpager2/widget/ViewPager2;
    if-eqz v1, :cond_2

    .line 74
    const v0, 0x7f0a0147

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout;

    .line 76
    .local v2, "groupTab":Lcom/google/android/material/tabs/TabLayout;
    if-eqz v2, :cond_1

    .line 80
    const v0, 0x7f0a02bf

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 82
    .local v3, "topGlass":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_0

    .line 86
    new-instance v4, Lio/nekohasekai/sagernet/databinding/LayoutGroupListBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lio/nekohasekai/sagernet/databinding/LayoutGroupListBinding;-><init>(Landroid/widget/FrameLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/LinearLayout;)V

    return-object v4

    .line 83
    :cond_0
    goto :goto_0

    .line 77
    .end local v3    # "topGlass":Landroid/widget/LinearLayout;
    :cond_1
    goto :goto_0

    .line 71
    .end local v2    # "groupTab":Lcom/google/android/material/tabs/TabLayout;
    :cond_2
    nop

    .line 88
    .end local v1    # "groupPager":Landroidx/viewpager2/widget/ViewPager2;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutGroupListBinding;
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

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutGroupListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutGroupListBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutGroupListBinding;
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
    const v0, 0x7f0d0047

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
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutGroupListBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutGroupListBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutGroupListBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutGroupListBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
