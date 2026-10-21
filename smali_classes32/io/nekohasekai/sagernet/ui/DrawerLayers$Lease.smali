.class public final Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;
.super Ljava/lang/Object;
.source "DrawerLayers.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerLayers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lease"
.end annotation


# instance fields
.field private users:I

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->users:I

    .line 14
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->view:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lio/nekohasekai/sagernet/ui/DrawerLayers$1;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$008(Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;)I
    .registers 3

    .line 11
    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->users:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->users:I

    return v0
.end method

.method static synthetic access$200(Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->release()V

    return-void
.end method

.method private release()V
    .registers 5

    .line 17
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->view:Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_22

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->view:Landroid/view/View;

    .line 18
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const v2, 0x7f0a0f7f

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_22

    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 15
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->view:Landroid/view/View;

    if-eqz v0, :cond_f

    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->users:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->users:I

    if-nez v0, :cond_f

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->release()V

    :cond_f
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->release()V

    return-void
.end method
