.class public final Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;
.super Ljava/lang/Object;
.source "LayoutJjAddSubscriptionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final jjSubCancel:Landroid/widget/TextView;

.field public final jjSubLink:Landroid/widget/EditText;

.field public final jjSubName:Landroid/widget/EditText;

.field public final jjSubOk:Landroid/widget/TextView;

.field private final rootView:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;


# direct methods
.method private constructor <init>(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    .param p2, "jjSubCancel"    # Landroid/widget/TextView;
    .param p3, "jjSubLink"    # Landroid/widget/EditText;
    .param p4, "jjSubName"    # Landroid/widget/EditText;
    .param p5, "jjSubOk"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "jjSubCancel",
            "jjSubLink",
            "jjSubName",
            "jjSubOk"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;->rootView:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    .line 39
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;->jjSubCancel:Landroid/widget/TextView;

    .line 40
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;->jjSubLink:Landroid/widget/EditText;

    .line 41
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;->jjSubName:Landroid/widget/EditText;

    .line 42
    iput-object p5, p0, Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;->jjSubOk:Landroid/widget/TextView;

    .line 43
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 72
    const v0, 0x7f0a017d

    .line 73
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    .local v1, "jjSubCancel":Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 78
    const v0, 0x7f0a017e

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    .line 80
    .local v8, "jjSubLink":Landroid/widget/EditText;
    if-eqz v8, :cond_2

    .line 84
    const v0, 0x7f0a017f

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    .line 86
    .local v9, "jjSubName":Landroid/widget/EditText;
    if-eqz v9, :cond_1

    .line 90
    const v0, 0x7f0a0180

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 92
    .local v10, "jjSubOk":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    .line 96
    new-instance v11, Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;

    move-object v3, p0

    check-cast v3, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    move-object v2, v11

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;-><init>(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-object v11

    .line 93
    :cond_0
    goto :goto_0

    .line 87
    .end local v10    # "jjSubOk":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 81
    .end local v9    # "jjSubName":Landroid/widget/EditText;
    :cond_2
    goto :goto_0

    .line 75
    .end local v8    # "jjSubLink":Landroid/widget/EditText;
    :cond_3
    nop

    .line 99
    .end local v1    # "jjSubCancel":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;
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

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;
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

    .line 59
    const v0, 0x7f0d004a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;->getRoot()Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutJjAddSubscriptionBinding;->rootView:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    return-object v0
.end method
