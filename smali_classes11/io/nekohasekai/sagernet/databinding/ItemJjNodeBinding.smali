.class public final Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;
.super Ljava/lang/Object;
.source "ItemJjNodeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itemJjCheck:Landroid/widget/ImageView;

.field public final itemJjEmblem:Landroid/widget/TextView;

.field public final itemJjName:Landroid/widget/TextView;

.field public final itemJjPing:Landroid/widget/TextView;

.field public final itemJjRoot:Landroid/widget/LinearLayout;

.field public final itemJjSubtitle:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "itemJjCheck"    # Landroid/widget/ImageView;
    .param p3, "itemJjEmblem"    # Landroid/widget/TextView;
    .param p4, "itemJjName"    # Landroid/widget/TextView;
    .param p5, "itemJjPing"    # Landroid/widget/TextView;
    .param p6, "itemJjRoot"    # Landroid/widget/LinearLayout;
    .param p7, "itemJjSubtitle"    # Landroid/widget/TextView;
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
            "itemJjCheck",
            "itemJjEmblem",
            "itemJjName",
            "itemJjPing",
            "itemJjRoot",
            "itemJjSubtitle"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;->rootView:Landroid/widget/LinearLayout;

    .line 45
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;->itemJjCheck:Landroid/widget/ImageView;

    .line 46
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;->itemJjEmblem:Landroid/widget/TextView;

    .line 47
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;->itemJjName:Landroid/widget/TextView;

    .line 48
    iput-object p5, p0, Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;->itemJjPing:Landroid/widget/TextView;

    .line 49
    iput-object p6, p0, Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;->itemJjRoot:Landroid/widget/LinearLayout;

    .line 50
    iput-object p7, p0, Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;->itemJjSubtitle:Landroid/widget/TextView;

    .line 51
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;
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

    .line 80
    move-object/from16 v0, p0

    const v1, 0x7f0a0165

    .line 81
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 82
    .local v2, "itemJjCheck":Landroid/widget/ImageView;
    if-eqz v2, :cond_4

    .line 86
    const v1, 0x7f0a0166

    .line 87
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    .line 88
    .local v11, "itemJjEmblem":Landroid/widget/TextView;
    if-eqz v11, :cond_3

    .line 92
    const v1, 0x7f0a0167

    .line 93
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    .line 94
    .local v12, "itemJjName":Landroid/widget/TextView;
    if-eqz v12, :cond_2

    .line 98
    const v1, 0x7f0a0168

    .line 99
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    .line 100
    .local v13, "itemJjPing":Landroid/widget/TextView;
    if-eqz v13, :cond_1

    .line 104
    move-object v14, v0

    check-cast v14, Landroid/widget/LinearLayout;

    .line 106
    .local v14, "itemJjRoot":Landroid/widget/LinearLayout;
    const v1, 0x7f0a016a

    .line 107
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 108
    .local v15, "itemJjSubtitle":Landroid/widget/TextView;
    if-eqz v15, :cond_0

    .line 112
    new-instance v16, Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object v16

    .line 109
    :cond_0
    goto :goto_0

    .line 101
    .end local v14    # "itemJjRoot":Landroid/widget/LinearLayout;
    .end local v15    # "itemJjSubtitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 95
    .end local v13    # "itemJjPing":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 89
    .end local v12    # "itemJjName":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 83
    .end local v11    # "itemJjEmblem":Landroid/widget/TextView;
    :cond_4
    nop

    .line 115
    .end local v2    # "itemJjCheck":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;
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

    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;
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

    .line 67
    const v0, 0x7f0d0032

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/ItemJjNodeBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
