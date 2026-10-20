.class public final Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;
.super Ljava/lang/Object;
.source "LayoutEditGroupBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final deduplication:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field public final deduplicationCard:Lcom/google/android/material/card/MaterialCardView;

.field public final groupLinksLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final groupName:Lcom/google/android/material/textfield/TextInputEditText;

.field public final groupNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final groupSubscriptionLink:Lcom/google/android/material/textfield/TextInputEditText;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "deduplication"    # Lcom/google/android/material/checkbox/MaterialCheckBox;
    .param p3, "deduplicationCard"    # Lcom/google/android/material/card/MaterialCardView;
    .param p4, "groupLinksLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p5, "groupName"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p6, "groupNameLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p7, "groupSubscriptionLink"    # Lcom/google/android/material/textfield/TextInputEditText;
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
            "deduplication",
            "deduplicationCard",
            "groupLinksLayout",
            "groupName",
            "groupNameLayout",
            "groupSubscriptionLink"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;->rootView:Landroid/widget/LinearLayout;

    .line 48
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;->deduplication:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 49
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;->deduplicationCard:Lcom/google/android/material/card/MaterialCardView;

    .line 50
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;->groupLinksLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 51
    iput-object p5, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;->groupName:Lcom/google/android/material/textfield/TextInputEditText;

    .line 52
    iput-object p6, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;->groupNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 53
    iput-object p7, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;->groupSubscriptionLink:Lcom/google/android/material/textfield/TextInputEditText;

    .line 54
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;
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

    .line 83
    move-object/from16 v0, p0

    const v1, 0x7f0a00f1

    .line 84
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 85
    .local v2, "deduplication":Lcom/google/android/material/checkbox/MaterialCheckBox;
    if-eqz v2, :cond_5

    .line 89
    const v1, 0x7f0a00f2

    .line 90
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/google/android/material/card/MaterialCardView;

    .line 91
    .local v11, "deduplicationCard":Lcom/google/android/material/card/MaterialCardView;
    if-eqz v11, :cond_4

    .line 95
    const v1, 0x7f0a0140

    .line 96
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/google/android/material/textfield/TextInputLayout;

    .line 97
    .local v12, "groupLinksLayout":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v12, :cond_3

    .line 101
    const v1, 0x7f0a0142

    .line 102
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/google/android/material/textfield/TextInputEditText;

    .line 103
    .local v13, "groupName":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v13, :cond_2

    .line 107
    const v1, 0x7f0a0143

    .line 108
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/google/android/material/textfield/TextInputLayout;

    .line 109
    .local v14, "groupNameLayout":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v14, :cond_1

    .line 113
    const v1, 0x7f0a0146

    .line 114
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/google/android/material/textfield/TextInputEditText;

    .line 115
    .local v15, "groupSubscriptionLink":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v15, :cond_0

    .line 119
    new-instance v16, Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;)V

    return-object v16

    .line 116
    :cond_0
    goto :goto_0

    .line 110
    .end local v15    # "groupSubscriptionLink":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_1
    goto :goto_0

    .line 104
    .end local v14    # "groupNameLayout":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_2
    goto :goto_0

    .line 98
    .end local v13    # "groupName":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_3
    goto :goto_0

    .line 92
    .end local v12    # "groupLinksLayout":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_4
    goto :goto_0

    .line 86
    .end local v11    # "deduplicationCard":Lcom/google/android/material/card/MaterialCardView;
    :cond_5
    nop

    .line 122
    .end local v2    # "deduplication":Lcom/google/android/material/checkbox/MaterialCheckBox;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;
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

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;
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

    .line 70
    const v0, 0x7f0d0042

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditGroupBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
