.class public final Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;
.super Ljava/lang/Object;
.source "LayoutAppsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appPlaceholder:Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;

.field public final appProxyModeBypass:Lcom/google/android/material/chip/Chip;

.field public final appProxyModeDisable:Lcom/google/android/material/chip/Chip;

.field public final appProxyModeOn:Lcom/google/android/material/chip/Chip;

.field public final appbar:Lcom/google/android/material/appbar/AppBarLayout;

.field public final autoSelectProxyApps:Lcom/google/android/material/chip/Chip;

.field public final bypassGroup:Lcom/google/android/material/chip/ChipGroup;

.field public final list:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

.field public final loading:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final search:Lcom/google/android/material/textfield/TextInputEditText;

.field public final showSystemApps:Lcom/google/android/material/chip/Chip;

.field public final toolbar:Lcom/google/android/material/appbar/MaterialToolbar;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/ChipGroup;Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;Landroid/widget/LinearLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/appbar/MaterialToolbar;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "appPlaceholder"    # Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;
    .param p3, "appProxyModeBypass"    # Lcom/google/android/material/chip/Chip;
    .param p4, "appProxyModeDisable"    # Lcom/google/android/material/chip/Chip;
    .param p5, "appProxyModeOn"    # Lcom/google/android/material/chip/Chip;
    .param p6, "appbar"    # Lcom/google/android/material/appbar/AppBarLayout;
    .param p7, "autoSelectProxyApps"    # Lcom/google/android/material/chip/Chip;
    .param p8, "bypassGroup"    # Lcom/google/android/material/chip/ChipGroup;
    .param p9, "list"    # Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;
    .param p10, "loading"    # Landroid/widget/LinearLayout;
    .param p11, "search"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p12, "showSystemApps"    # Lcom/google/android/material/chip/Chip;
    .param p13, "toolbar"    # Lcom/google/android/material/appbar/MaterialToolbar;
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "appPlaceholder",
            "appProxyModeBypass",
            "appProxyModeDisable",
            "appProxyModeOn",
            "appbar",
            "autoSelectProxyApps",
            "bypassGroup",
            "list",
            "loading",
            "search",
            "showSystemApps",
            "toolbar"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 72
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->appPlaceholder:Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;

    .line 73
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->appProxyModeBypass:Lcom/google/android/material/chip/Chip;

    .line 74
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->appProxyModeDisable:Lcom/google/android/material/chip/Chip;

    .line 75
    iput-object p5, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->appProxyModeOn:Lcom/google/android/material/chip/Chip;

    .line 76
    iput-object p6, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 77
    iput-object p7, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->autoSelectProxyApps:Lcom/google/android/material/chip/Chip;

    .line 78
    iput-object p8, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->bypassGroup:Lcom/google/android/material/chip/ChipGroup;

    .line 79
    iput-object p9, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->list:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 80
    iput-object p10, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->loading:Landroid/widget/LinearLayout;

    .line 81
    iput-object p11, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->search:Lcom/google/android/material/textfield/TextInputEditText;

    .line 82
    iput-object p12, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->showSystemApps:Lcom/google/android/material/chip/Chip;

    .line 83
    iput-object p13, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 84
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;
    .locals 30
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 113
    move-object/from16 v0, p0

    const v1, 0x7f0a009d

    .line 114
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 115
    .local v2, "appPlaceholder":Landroid/view/View;
    if-eqz v2, :cond_b

    .line 118
    invoke-static {v2}, Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;

    move-result-object v17

    .line 120
    .local v17, "binding_appPlaceholder":Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;
    const v1, 0x7f0a009a

    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/google/android/material/chip/Chip;

    .line 122
    .local v18, "appProxyModeBypass":Lcom/google/android/material/chip/Chip;
    if-eqz v18, :cond_a

    .line 126
    const v1, 0x7f0a009b

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/google/android/material/chip/Chip;

    .line 128
    .local v19, "appProxyModeDisable":Lcom/google/android/material/chip/Chip;
    if-eqz v19, :cond_9

    .line 132
    const v1, 0x7f0a009c

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Lcom/google/android/material/chip/Chip;

    .line 134
    .local v20, "appProxyModeOn":Lcom/google/android/material/chip/Chip;
    if-eqz v20, :cond_8

    .line 138
    const v1, 0x7f0a009e

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Lcom/google/android/material/appbar/AppBarLayout;

    .line 140
    .local v21, "appbar":Lcom/google/android/material/appbar/AppBarLayout;
    if-eqz v21, :cond_7

    .line 144
    const v1, 0x7f0a00a8

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lcom/google/android/material/chip/Chip;

    .line 146
    .local v22, "autoSelectProxyApps":Lcom/google/android/material/chip/Chip;
    if-eqz v22, :cond_6

    .line 150
    const v1, 0x7f0a00bd

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Lcom/google/android/material/chip/ChipGroup;

    .line 152
    .local v23, "bypassGroup":Lcom/google/android/material/chip/ChipGroup;
    if-eqz v23, :cond_5

    .line 156
    const v1, 0x7f0a018e

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 158
    .local v24, "list":Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;
    if-eqz v24, :cond_4

    .line 162
    const v1, 0x7f0a0192

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/LinearLayout;

    .line 164
    .local v25, "loading":Landroid/widget/LinearLayout;
    if-eqz v25, :cond_3

    .line 168
    const v1, 0x7f0a0243

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Lcom/google/android/material/textfield/TextInputEditText;

    .line 170
    .local v26, "search":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v26, :cond_2

    .line 174
    const v1, 0x7f0a026d

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Lcom/google/android/material/chip/Chip;

    .line 176
    .local v27, "showSystemApps":Lcom/google/android/material/chip/Chip;
    if-eqz v27, :cond_1

    .line 180
    const v1, 0x7f0a02ba

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 182
    .local v28, "toolbar":Lcom/google/android/material/appbar/MaterialToolbar;
    if-eqz v28, :cond_0

    .line 186
    new-instance v29, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;

    move-object v4, v0

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object/from16 v3, v29

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    move-object/from16 v16, v28

    invoke-direct/range {v3 .. v16}, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/ChipGroup;Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;Landroid/widget/LinearLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/appbar/MaterialToolbar;)V

    return-object v29

    .line 183
    :cond_0
    goto :goto_0

    .line 177
    .end local v28    # "toolbar":Lcom/google/android/material/appbar/MaterialToolbar;
    :cond_1
    goto :goto_0

    .line 171
    .end local v27    # "showSystemApps":Lcom/google/android/material/chip/Chip;
    :cond_2
    goto :goto_0

    .line 165
    .end local v26    # "search":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_3
    goto :goto_0

    .line 159
    .end local v25    # "loading":Landroid/widget/LinearLayout;
    :cond_4
    goto :goto_0

    .line 153
    .end local v24    # "list":Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;
    :cond_5
    goto :goto_0

    .line 147
    .end local v23    # "bypassGroup":Lcom/google/android/material/chip/ChipGroup;
    :cond_6
    goto :goto_0

    .line 141
    .end local v22    # "autoSelectProxyApps":Lcom/google/android/material/chip/Chip;
    :cond_7
    goto :goto_0

    .line 135
    .end local v21    # "appbar":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_8
    goto :goto_0

    .line 129
    .end local v20    # "appProxyModeOn":Lcom/google/android/material/chip/Chip;
    :cond_9
    goto :goto_0

    .line 123
    .end local v19    # "appProxyModeDisable":Lcom/google/android/material/chip/Chip;
    :cond_a
    goto :goto_0

    .line 116
    .end local v17    # "binding_appPlaceholder":Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;
    .end local v18    # "appProxyModeBypass":Lcom/google/android/material/chip/Chip;
    :cond_b
    nop

    .line 190
    .end local v2    # "appPlaceholder":Landroid/view/View;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;
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

    .line 94
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;
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

    .line 100
    const v0, 0x7f0d0039

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 1

    .line 89
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object v0
.end method
