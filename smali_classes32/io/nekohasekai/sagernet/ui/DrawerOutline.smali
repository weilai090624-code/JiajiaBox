.class public final Lio/nekohasekai/sagernet/ui/DrawerOutline;
.super Ljava/lang/Object;
.source "DrawerOutline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;
    }
.end annotation


# static fields
.field private static final TAG:I = 0x7f0a0f80


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquire(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;)Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;
    .registers 3

    .line 42
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_26

    const v0, 0x7f0a0f80

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    goto :goto_26

    .line 43
    :cond_10
    new-instance v1, Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;-><init>(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;)V

    invoke-virtual {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setTag(ILjava/lang/Object;)V

    .line 44
    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setClipToOutline(Z)V

    .line 45
    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->invalidateOutline()V

    return-object v1

    :cond_26
    :goto_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public static changed(Landroid/view/View;)V
    .registers 2

    const v0, 0x7f0a0f80

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    :cond_e
    return-void
.end method

.method public static nativeClip(Landroid/view/View;Landroid/graphics/Canvas;)Z
    .registers 3

    const v0, 0x7f0a0f80

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_1f

    instance-of p1, v0, Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object p0

    if-ne p0, v0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method
