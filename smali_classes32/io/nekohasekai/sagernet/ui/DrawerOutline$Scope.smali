.class public final Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;
.super Landroid/view/ViewOutlineProvider;
.source "DrawerOutline.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerOutline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scope"
.end annotation


# instance fields
.field private capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

.field private final clipped:Z

.field private final previous:Landroid/view/ViewOutlineProvider;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;->previous:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getClipToOutline()Z

    move-result p1

    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;->clipped:Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 30
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-nez v0, :cond_5

    goto :goto_24

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    .line 31
    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const v2, 0x7f0a0f80

    .line 32
    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_24

    .line 33
    invoke-virtual {v0, v2, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setTag(ILjava/lang/Object;)V

    .line 34
    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;->clipped:Z

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setClipToOutline(Z)V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;->previous:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->invalidateOutline()V

    :cond_24
    :goto_24
    return-void
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 12

    .line 21
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-nez p1, :cond_8

    .line 22
    invoke-virtual {p2}, Landroid/graphics/Outline;->setEmpty()V

    return-void

    .line 23
    :cond_8
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getMorphClipForBackdrop()Landroid/graphics/Rect;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getCornerRadiusDp()F

    move-result v1

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1f

    goto :goto_2f

    .line 25
    :cond_1f
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_2f
    move v8, v2

    if-nez v0, :cond_41

    .line 26
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    :cond_41
    move-object v3, p2

    .line 27
    invoke-virtual {v3, v0, v8}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 38
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;->close()V

    return-void
.end method
