.class public final Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;
.super Ljava/lang/Object;
.source "LayoutJjHomeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final jjCapsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

.field public final jjConnectBtn:Landroid/widget/TextView;

.field public final jjNodeList:Landroidx/recyclerview/widget/RecyclerView;

.field public final jjStateHint:Landroid/widget/TextView;

.field public final jjStateTitle:Landroid/widget/TextView;

.field public final jjStateView:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final toolbar:Lio/nekohasekai/sagernet/ui/JJGlassToolbar;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lio/nekohasekai/sagernet/ui/JJGlassToolbar;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "jjCapsule"    # Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    .param p3, "jjConnectBtn"    # Landroid/widget/TextView;
    .param p4, "jjNodeList"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p5, "jjStateHint"    # Landroid/widget/TextView;
    .param p6, "jjStateTitle"    # Landroid/widget/TextView;
    .param p7, "jjStateView"    # Landroid/widget/LinearLayout;
    .param p8, "toolbar"    # Lio/nekohasekai/sagernet/ui/JJGlassToolbar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "jjCapsule",
            "jjConnectBtn",
            "jjNodeList",
            "jjStateHint",
            "jjStateTitle",
            "jjStateView",
            "toolbar"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;->rootView:Landroid/widget/FrameLayout;

    .line 52
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;->jjCapsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    .line 53
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;->jjConnectBtn:Landroid/widget/TextView;

    .line 54
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;->jjNodeList:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    iput-object p5, p0, Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;->jjStateHint:Landroid/widget/TextView;

    .line 56
    iput-object p6, p0, Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;->jjStateTitle:Landroid/widget/TextView;

    .line 57
    iput-object p7, p0, Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;->jjStateView:Landroid/widget/LinearLayout;

    .line 58
    iput-object p8, p0, Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;->toolbar:Lio/nekohasekai/sagernet/ui/JJGlassToolbar;

    .line 59
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;
    .locals 19
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 88
    move-object/from16 v0, p0

    const v1, 0x7f0a0174

    .line 89
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    .line 90
    .local v2, "jjCapsule":Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    if-eqz v2, :cond_6

    .line 94
    const v1, 0x7f0a0175

    .line 95
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    .line 96
    .local v12, "jjConnectBtn":Landroid/widget/TextView;
    if-eqz v12, :cond_5

    .line 100
    const v1, 0x7f0a0177

    .line 101
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .local v13, "jjNodeList":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v13, :cond_4

    .line 106
    const v1, 0x7f0a017a

    .line 107
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 108
    .local v14, "jjStateHint":Landroid/widget/TextView;
    if-eqz v14, :cond_3

    .line 112
    const v1, 0x7f0a017b

    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 114
    .local v15, "jjStateTitle":Landroid/widget/TextView;
    if-eqz v15, :cond_2

    .line 118
    const v1, 0x7f0a017c

    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/LinearLayout;

    .line 120
    .local v16, "jjStateView":Landroid/widget/LinearLayout;
    if-eqz v16, :cond_1

    .line 124
    const v1, 0x7f0a02ba

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;

    .line 126
    .local v17, "toolbar":Lio/nekohasekai/sagernet/ui/JJGlassToolbar;
    if-eqz v17, :cond_0

    .line 130
    new-instance v18, Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    move-object/from16 v3, v18

    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;-><init>(Landroid/widget/FrameLayout;Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lio/nekohasekai/sagernet/ui/JJGlassToolbar;)V

    return-object v18

    .line 127
    :cond_0
    goto :goto_0

    .line 121
    .end local v17    # "toolbar":Lio/nekohasekai/sagernet/ui/JJGlassToolbar;
    :cond_1
    goto :goto_0

    .line 115
    .end local v16    # "jjStateView":Landroid/widget/LinearLayout;
    :cond_2
    goto :goto_0

    .line 109
    .end local v15    # "jjStateTitle":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 103
    .end local v14    # "jjStateHint":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 97
    .end local v13    # "jjNodeList":Landroidx/recyclerview/widget/RecyclerView;
    :cond_5
    goto :goto_0

    .line 91
    .end local v12    # "jjConnectBtn":Landroid/widget/TextView;
    :cond_6
    nop

    .line 133
    .end local v2    # "jjCapsule":Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;
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

    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;
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

    .line 75
    const v0, 0x7f0d004b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutJjHomeBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
