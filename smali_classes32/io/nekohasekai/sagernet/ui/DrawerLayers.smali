.class public final Lio/nekohasekai/sagernet/ui/DrawerLayers;
.super Ljava/lang/Object;
.source "DrawerLayers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;,
        Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;
    }
.end annotation


# static fields
.field private static final BIND_TAG:I = 0x7f0a0f7e

.field private static final LEASE_TAG:I = 0x7f0a0f7f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquire(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4f

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_4f

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1c

    goto :goto_4f

    :cond_1c
    const v1, 0x7f0a0f7f

    .line 30
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 31
    instance-of v3, v2, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    if-eqz v3, :cond_2d

    check-cast v2, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    # operator++ for: Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->users:I
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->access$008(Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;)I

    return-object v2

    .line 33
    :cond_2d
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v2

    if-eqz v2, :cond_34

    return-object v0

    .line 34
    :cond_34
    new-instance v2, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    invoke-direct {v2, p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;-><init>(Landroid/view/View;Lio/nekohasekai/sagernet/ui/DrawerLayers$1;)V

    const/4 v3, 0x2

    .line 36
    :try_start_3a
    invoke-virtual {p0, v3, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 37
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_43} :catch_44

    return-object v2

    :catch_44
    move-exception p0

    .line 40
    # invokes: Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->release()V
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->access$200(Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;)V

    const-string v1, "DrawerLayers"

    const-string v2, "Optional layer unavailable"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4f
    :goto_4f
    return-object v0
.end method

.method public static bind(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f0a0f7e

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    goto :goto_1e

    .line 47
    :cond_a
    new-instance v1, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v1, p0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_1e
    :goto_1e
    return-void
.end method
