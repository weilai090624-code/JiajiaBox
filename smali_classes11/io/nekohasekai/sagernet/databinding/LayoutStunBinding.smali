.class public final Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;
.super Ljava/lang/Object;
.source "LayoutStunBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final mainLayout:Landroidx/core/widget/NestedScrollView;

.field public final natResult:Landroid/widget/TextView;

.field public final natStunServer:Landroid/widget/EditText;

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final stunTest:Landroid/widget/Button;

.field public final waitLayout:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "coordinator"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "mainLayout"    # Landroidx/core/widget/NestedScrollView;
    .param p4, "natResult"    # Landroid/widget/TextView;
    .param p5, "natStunServer"    # Landroid/widget/EditText;
    .param p6, "stunTest"    # Landroid/widget/Button;
    .param p7, "waitLayout"    # Landroid/widget/LinearLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "coordinator",
            "mainLayout",
            "natResult",
            "natStunServer",
            "stunTest",
            "waitLayout"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 49
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;->coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 50
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;->mainLayout:Landroidx/core/widget/NestedScrollView;

    .line 51
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;->natResult:Landroid/widget/TextView;

    .line 52
    iput-object p5, p0, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;->natStunServer:Landroid/widget/EditText;

    .line 53
    iput-object p6, p0, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;->stunTest:Landroid/widget/Button;

    .line 54
    iput-object p7, p0, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;->waitLayout:Landroid/widget/LinearLayout;

    .line 55
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 84
    move-object/from16 v0, p0

    move-object v9, v0

    check-cast v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 86
    .local v9, "coordinator":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    const v1, 0x7f0a0197

    .line 87
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/core/widget/NestedScrollView;

    .line 88
    .local v10, "mainLayout":Landroidx/core/widget/NestedScrollView;
    if-eqz v10, :cond_4

    .line 92
    const v1, 0x7f0a01dc

    .line 93
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    .line 94
    .local v11, "natResult":Landroid/widget/TextView;
    if-eqz v11, :cond_3

    .line 98
    const v1, 0x7f0a01dd

    .line 99
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/EditText;

    .line 100
    .local v12, "natStunServer":Landroid/widget/EditText;
    if-eqz v12, :cond_2

    .line 104
    const v1, 0x7f0a028e

    .line 105
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/Button;

    .line 106
    .local v13, "stunTest":Landroid/widget/Button;
    if-eqz v13, :cond_1

    .line 110
    const v14, 0x7f0a02da

    .line 111
    .end local v1    # "id":I
    .local v14, "id":I
    invoke-static {v0, v14}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/LinearLayout;

    .line 112
    .local v15, "waitLayout":Landroid/widget/LinearLayout;
    if-eqz v15, :cond_0

    .line 116
    new-instance v16, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;

    move-object v2, v0

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object/from16 v1, v16

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object v8, v15

    invoke-direct/range {v1 .. v8}, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/LinearLayout;)V

    return-object v16

    .line 113
    :cond_0
    move v1, v14

    goto :goto_0

    .line 107
    .end local v14    # "id":I
    .end local v15    # "waitLayout":Landroid/widget/LinearLayout;
    .restart local v1    # "id":I
    :cond_1
    goto :goto_0

    .line 101
    .end local v13    # "stunTest":Landroid/widget/Button;
    :cond_2
    goto :goto_0

    .line 95
    .end local v12    # "natStunServer":Landroid/widget/EditText;
    :cond_3
    goto :goto_0

    .line 89
    .end local v11    # "natResult":Landroid/widget/TextView;
    :cond_4
    nop

    .line 119
    .end local v9    # "coordinator":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .end local v10    # "mainLayout":Landroidx/core/widget/NestedScrollView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;
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

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;
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

    .line 71
    const v0, 0x7f0d005c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object v0
.end method
