.class public final Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;
.super Ljava/lang/Object;
.source "LayoutScannerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivFlashlight:Landroid/widget/ImageView;

.field public final previewView:Landroidx/camera/view/PreviewView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final viewfinderView:Lcom/king/zxing/ViewfinderView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroidx/camera/view/PreviewView;Lcom/king/zxing/ViewfinderView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "ivFlashlight"    # Landroid/widget/ImageView;
    .param p3, "previewView"    # Landroidx/camera/view/PreviewView;
    .param p4, "viewfinderView"    # Lcom/king/zxing/ViewfinderView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "ivFlashlight",
            "previewView",
            "viewfinderView"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;->rootView:Landroid/widget/FrameLayout;

    .line 36
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;->ivFlashlight:Landroid/widget/ImageView;

    .line 37
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;->previewView:Landroidx/camera/view/PreviewView;

    .line 38
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;->viewfinderView:Lcom/king/zxing/ViewfinderView;

    .line 39
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;
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
    const v0, 0x7f0a016f

    .line 69
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 70
    .local v1, "ivFlashlight":Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    .line 74
    const v0, 0x7f0a021c

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/camera/view/PreviewView;

    .line 76
    .local v2, "previewView":Landroidx/camera/view/PreviewView;
    if-eqz v2, :cond_1

    .line 80
    const v0, 0x7f0a02d7

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/king/zxing/ViewfinderView;

    .line 82
    .local v3, "viewfinderView":Lcom/king/zxing/ViewfinderView;
    if-eqz v3, :cond_0

    .line 86
    new-instance v4, Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroidx/camera/view/PreviewView;Lcom/king/zxing/ViewfinderView;)V

    return-object v4

    .line 83
    :cond_0
    goto :goto_0

    .line 77
    .end local v3    # "viewfinderView":Lcom/king/zxing/ViewfinderView;
    :cond_1
    goto :goto_0

    .line 71
    .end local v2    # "previewView":Landroidx/camera/view/PreviewView;
    :cond_2
    nop

    .line 89
    .end local v1    # "ivFlashlight":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;
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

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;
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
    const v0, 0x7f0d005a

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
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
