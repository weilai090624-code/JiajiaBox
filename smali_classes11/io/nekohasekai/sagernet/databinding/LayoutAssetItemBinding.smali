.class public final Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;
.super Ljava/lang/Object;
.source "LayoutAssetItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final assetName:Landroid/widget/TextView;

.field public final assetStatus:Landroid/widget/TextView;

.field public final content:Lcom/google/android/material/card/MaterialCardView;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;

.field public final rulesUpdate:Lcom/google/android/material/button/MaterialButton;

.field public final subscriptionUpdateProgress:Lcom/google/android/material/progressindicator/LinearProgressIndicator;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/progressindicator/LinearProgressIndicator;)V
    .locals 0
    .param p1, "rootView"    # Lcom/google/android/material/card/MaterialCardView;
    .param p2, "assetName"    # Landroid/widget/TextView;
    .param p3, "assetStatus"    # Landroid/widget/TextView;
    .param p4, "content"    # Lcom/google/android/material/card/MaterialCardView;
    .param p5, "rulesUpdate"    # Lcom/google/android/material/button/MaterialButton;
    .param p6, "subscriptionUpdateProgress"    # Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "assetName",
            "assetStatus",
            "content",
            "rulesUpdate",
            "subscriptionUpdateProgress"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    .line 44
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->assetName:Landroid/widget/TextView;

    .line 45
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->assetStatus:Landroid/widget/TextView;

    .line 46
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->content:Lcom/google/android/material/card/MaterialCardView;

    .line 47
    iput-object p5, p0, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->rulesUpdate:Lcom/google/android/material/button/MaterialButton;

    .line 48
    iput-object p6, p0, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->subscriptionUpdateProgress:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 49
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;
    .locals 14
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 78
    const v0, 0x7f0a00a1

    .line 79
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    .local v1, "assetName":Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 84
    const v0, 0x7f0a00a2

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 86
    .local v9, "assetStatus":Landroid/widget/TextView;
    if-eqz v9, :cond_2

    .line 90
    move-object v10, p0

    check-cast v10, Lcom/google/android/material/card/MaterialCardView;

    .line 92
    .local v10, "content":Lcom/google/android/material/card/MaterialCardView;
    const v0, 0x7f0a0236

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    .line 94
    .local v11, "rulesUpdate":Lcom/google/android/material/button/MaterialButton;
    if-eqz v11, :cond_1

    .line 98
    const v0, 0x7f0a0292

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 100
    .local v12, "subscriptionUpdateProgress":Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    if-eqz v12, :cond_0

    .line 104
    new-instance v13, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;

    move-object v3, p0

    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    move-object v2, v13

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/progressindicator/LinearProgressIndicator;)V

    return-object v13

    .line 101
    :cond_0
    goto :goto_0

    .line 95
    .end local v12    # "subscriptionUpdateProgress":Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    :cond_1
    goto :goto_0

    .line 87
    .end local v10    # "content":Lcom/google/android/material/card/MaterialCardView;
    .end local v11    # "rulesUpdate":Lcom/google/android/material/button/MaterialButton;
    :cond_2
    goto :goto_0

    .line 81
    .end local v9    # "assetStatus":Landroid/widget/TextView;
    :cond_3
    nop

    .line 107
    .end local v1    # "assetName":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;
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

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;
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

    .line 65
    const v0, 0x7f0d003b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object v0
.end method
