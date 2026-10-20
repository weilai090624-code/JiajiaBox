.class public final Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;
.super Ljava/lang/Object;
.source "LayoutAppListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appPlaceholder:Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;

.field public final appbar:Lcom/google/android/material/appbar/AppBarLayout;

.field public final list:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

.field public final loading:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final search:Lcom/google/android/material/textfield/TextInputEditText;

.field public final searchLayout:Landroid/widget/LinearLayout;

.field public final showSystemApps:Lcom/google/android/material/chip/Chip;

.field public final toolbar:Lcom/google/android/material/appbar/MaterialToolbar;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;Lcom/google/android/material/appbar/AppBarLayout;Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;Landroid/widget/LinearLayout;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/LinearLayout;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/appbar/MaterialToolbar;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "appPlaceholder"    # Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;
    .param p3, "appbar"    # Lcom/google/android/material/appbar/AppBarLayout;
    .param p4, "list"    # Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;
    .param p5, "loading"    # Landroid/widget/LinearLayout;
    .param p6, "search"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p7, "searchLayout"    # Landroid/widget/LinearLayout;
    .param p8, "showSystemApps"    # Lcom/google/android/material/chip/Chip;
    .param p9, "toolbar"    # Lcom/google/android/material/appbar/MaterialToolbar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "appPlaceholder",
            "appbar",
            "list",
            "loading",
            "search",
            "searchLayout",
            "showSystemApps",
            "toolbar"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 57
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->appPlaceholder:Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;

    .line 58
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 59
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->list:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 60
    iput-object p5, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->loading:Landroid/widget/LinearLayout;

    .line 61
    iput-object p6, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->search:Lcom/google/android/material/textfield/TextInputEditText;

    .line 62
    iput-object p7, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->searchLayout:Landroid/widget/LinearLayout;

    .line 63
    iput-object p8, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->showSystemApps:Lcom/google/android/material/chip/Chip;

    .line 64
    iput-object p9, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 65
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;
    .locals 22
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 94
    move-object/from16 v0, p0

    const v1, 0x7f0a009d

    .line 95
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 96
    .local v2, "appPlaceholder":Landroid/view/View;
    if-eqz v2, :cond_7

    .line 99
    invoke-static {v2}, Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;

    move-result-object v13

    .line 101
    .local v13, "binding_appPlaceholder":Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;
    const v1, 0x7f0a009e

    .line 102
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/google/android/material/appbar/AppBarLayout;

    .line 103
    .local v14, "appbar":Lcom/google/android/material/appbar/AppBarLayout;
    if-eqz v14, :cond_6

    .line 107
    const v1, 0x7f0a018e

    .line 108
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 109
    .local v15, "list":Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;
    if-eqz v15, :cond_5

    .line 113
    const v1, 0x7f0a0192

    .line 114
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/LinearLayout;

    .line 115
    .local v16, "loading":Landroid/widget/LinearLayout;
    if-eqz v16, :cond_4

    .line 119
    const v1, 0x7f0a0243

    .line 120
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lcom/google/android/material/textfield/TextInputEditText;

    .line 121
    .local v17, "search":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v17, :cond_3

    .line 125
    const v1, 0x7f0a024b

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/LinearLayout;

    .line 127
    .local v18, "searchLayout":Landroid/widget/LinearLayout;
    if-eqz v18, :cond_2

    .line 131
    const v1, 0x7f0a026d

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/google/android/material/chip/Chip;

    .line 133
    .local v19, "showSystemApps":Lcom/google/android/material/chip/Chip;
    if-eqz v19, :cond_1

    .line 137
    const v1, 0x7f0a02ba

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 139
    .local v20, "toolbar":Lcom/google/android/material/appbar/MaterialToolbar;
    if-eqz v20, :cond_0

    .line 143
    new-instance v21, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    move-object v4, v0

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object/from16 v3, v21

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    invoke-direct/range {v3 .. v12}, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;Lcom/google/android/material/appbar/AppBarLayout;Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;Landroid/widget/LinearLayout;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/LinearLayout;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/appbar/MaterialToolbar;)V

    return-object v21

    .line 140
    :cond_0
    goto :goto_0

    .line 134
    .end local v20    # "toolbar":Lcom/google/android/material/appbar/MaterialToolbar;
    :cond_1
    goto :goto_0

    .line 128
    .end local v19    # "showSystemApps":Lcom/google/android/material/chip/Chip;
    :cond_2
    goto :goto_0

    .line 122
    .end local v18    # "searchLayout":Landroid/widget/LinearLayout;
    :cond_3
    goto :goto_0

    .line 116
    .end local v17    # "search":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_4
    goto :goto_0

    .line 110
    .end local v16    # "loading":Landroid/widget/LinearLayout;
    :cond_5
    goto :goto_0

    .line 104
    .end local v15    # "list":Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;
    :cond_6
    goto :goto_0

    .line 97
    .end local v13    # "binding_appPlaceholder":Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;
    .end local v14    # "appbar":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_7
    nop

    .line 146
    .end local v2    # "appPlaceholder":Landroid/view/View;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;
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

    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;
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

    .line 81
    const v0, 0x7f0d0036

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 1

    .line 70
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object v0
.end method
