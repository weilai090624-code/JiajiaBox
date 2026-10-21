.class final Lio/nekohasekai/sagernet/ui/ConnectionCard$LocalList;
.super Landroid/widget/ListView;
.source "ConnectionCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/ConnectionCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalList"
.end annotation


# instance fields
.field x:F

.field y:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionCard$LocalList;->setNestedScrollingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$LocalList;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$LocalList;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$LocalList;->y:F

    if-eqz v1, :cond_5d

    :goto_19
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_5d

    :cond_1d
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_53

    if-eqz v1, :cond_5d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$LocalList;->y:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v5, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$LocalList;->x:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_51

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$LocalList;->y:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_49

    const/4 v0, -0x1

    goto :goto_4a

    :cond_49
    const/4 v0, 0x1

    :goto_4a
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$LocalList;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_19

    :cond_51
    const/4 v2, 0x0

    goto :goto_19

    :cond_53
    if-eq v0, v2, :cond_58

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5d

    :cond_58
    if-eqz v1, :cond_5d

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5d
    :goto_5d
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
