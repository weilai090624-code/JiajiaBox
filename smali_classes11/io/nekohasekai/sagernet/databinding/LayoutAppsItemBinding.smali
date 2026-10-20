.class public final Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;
.super Ljava/lang/Object;
.source "LayoutAppsItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final content:Lcom/google/android/material/card/MaterialCardView;

.field public final desc:Landroid/widget/TextView;

.field public final itemcheck:Landroidx/appcompat/widget/SwitchCompat;

.field public final itemicon:Landroid/widget/ImageView;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Lcom/google/android/material/card/MaterialCardView;
    .param p2, "content"    # Lcom/google/android/material/card/MaterialCardView;
    .param p3, "desc"    # Landroid/widget/TextView;
    .param p4, "itemcheck"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p5, "itemicon"    # Landroid/widget/ImageView;
    .param p6, "title"    # Landroid/widget/TextView;
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
            "content",
            "desc",
            "itemcheck",
            "itemicon",
            "title"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    .line 43
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->content:Lcom/google/android/material/card/MaterialCardView;

    .line 44
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->desc:Landroid/widget/TextView;

    .line 45
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->itemcheck:Landroidx/appcompat/widget/SwitchCompat;

    .line 46
    iput-object p5, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->itemicon:Landroid/widget/ImageView;

    .line 47
    iput-object p6, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->title:Landroid/widget/TextView;

    .line 48
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;
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

    .line 77
    move-object v7, p0

    check-cast v7, Lcom/google/android/material/card/MaterialCardView;

    .line 79
    .local v7, "content":Lcom/google/android/material/card/MaterialCardView;
    const v0, 0x7f0a00f6

    .line 80
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 81
    .local v8, "desc":Landroid/widget/TextView;
    if-eqz v8, :cond_3

    .line 85
    const v0, 0x7f0a016d

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/SwitchCompat;

    .line 87
    .local v9, "itemcheck":Landroidx/appcompat/widget/SwitchCompat;
    if-eqz v9, :cond_2

    .line 91
    const v0, 0x7f0a016e

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    .line 93
    .local v10, "itemicon":Landroid/widget/ImageView;
    if-eqz v10, :cond_1

    .line 97
    const v11, 0x7f0a02b6

    .line 98
    .end local v0    # "id":I
    .local v11, "id":I
    invoke-static {p0, v11}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 99
    .local v12, "title":Landroid/widget/TextView;
    if-eqz v12, :cond_0

    .line 103
    new-instance v13, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;

    move-object v1, p0

    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    move-object v0, v13

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v13

    .line 100
    :cond_0
    move v0, v11

    goto :goto_0

    .line 94
    .end local v11    # "id":I
    .end local v12    # "title":Landroid/widget/TextView;
    .restart local v0    # "id":I
    :cond_1
    goto :goto_0

    .line 88
    .end local v10    # "itemicon":Landroid/widget/ImageView;
    :cond_2
    goto :goto_0

    .line 82
    .end local v9    # "itemcheck":Landroidx/appcompat/widget/SwitchCompat;
    :cond_3
    nop

    .line 106
    .end local v7    # "content":Lcom/google/android/material/card/MaterialCardView;
    .end local v8    # "desc":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;
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

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;
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

    .line 64
    const v0, 0x7f0d003a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object v0
.end method
