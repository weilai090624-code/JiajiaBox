.class final Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;
.super Landroid/view/View;
.source "DrawerMorph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerMorph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchShield"
.end annotation


# instance fields
.field downTime:J

.field finishRequested:Z

.field final here:[I

.field lastX:F

.field lastY:F

.field final owner:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

.field target:Landroid/view/View;

.field final there:[I

.field tracking:Z


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerMorph$State;)V
    .registers 4

    .line 85
    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 80
    new-array v1, v0, [I

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->here:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->there:[I

    .line 85
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->owner:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method cancelGesture()V
    .registers 10

    .line 88
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->tracking:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->target:Landroid/view/View;

    if-nez v0, :cond_9

    goto :goto_2a

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->tracking:Z

    .line 89
    iget-wide v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->downTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget v6, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->lastX:F

    iget v7, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->lastY:F

    const/4 v8, 0x0

    const/4 v5, 0x3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 90
    :try_start_1c
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->target:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_25

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    throw v0

    :cond_2a
    :goto_2a
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_b5

    .line 95
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->owner:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    iget-boolean v3, v3, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->expanding:Z

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->owner:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    if-eqz v3, :cond_13

    iget-object v3, v4, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    goto :goto_15

    :cond_13
    iget-object v3, v4, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    :goto_15
    iput-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->target:Landroid/view/View;

    if-eqz v3, :cond_b4

    .line 96
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->owner:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    iget-boolean v3, v3, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    if-eqz v3, :cond_21

    goto/16 :goto_b4

    .line 97
    :cond_21
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->here:[I

    invoke-virtual {p0, v3}, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->getLocationInWindow([I)V

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->owner:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    iget-object v3, v3, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->there:[I

    invoke-virtual {v3, v4}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getLocationInWindow([I)V

    .line 98
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->owner:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    iget-object v3, v3, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getMorphClipForBackdrop()Landroid/graphics/Rect;

    move-result-object v3

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->here:[I

    aget v5, v5, v1

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->there:[I

    aget v5, v5, v1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->here:[I

    aget v6, v6, v2

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->there:[I

    aget v6, v6, v2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    if-eqz v3, :cond_62

    float-to-int v4, v4

    float-to-int v5, v5

    .line 100
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_62

    return v2

    .line 101
    :cond_62
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->target:Landroid/view/View;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->there:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->here:[I

    aget v4, v4, v1

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->there:[I

    aget v4, v4, v1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->here:[I

    aget v5, v5, v2

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->there:[I

    aget v5, v5, v2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-ltz v6, :cond_aa

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_aa

    .line 103
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->target:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_aa

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->target:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v4, v3

    if-gez v3, :cond_aa

    const/4 v3, 0x1

    goto :goto_ab

    :cond_aa
    const/4 v3, 0x0

    :goto_ab
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->tracking:Z

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->downTime:J

    goto :goto_b5

    :cond_b4
    :goto_b4
    return v2

    .line 106
    :cond_b5
    :goto_b5
    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->tracking:Z

    if-eqz v3, :cond_10a

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->target:Landroid/view/View;

    if-eqz v3, :cond_10a

    .line 107
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->here:[I

    invoke-virtual {p0, v3}, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->getLocationInWindow([I)V

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->target:Landroid/view/View;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->there:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 108
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 109
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->here:[I

    aget v4, v3, v1

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->there:[I

    aget v6, v5, v1

    sub-int/2addr v4, v6

    int-to-float v4, v4

    aget v3, v3, v2

    aget v5, v5, v2

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->lastY:F

    .line 111
    :try_start_ec
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->target:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_f1
    .catchall {:try_start_ec .. :try_end_f1} :catchall_105

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    if-eq v0, v2, :cond_f9

    const/4 p1, 0x3

    if-ne v0, p1, :cond_10a

    .line 113
    :cond_f9
    iput-boolean v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->tracking:Z

    .line 114
    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->finishRequested:Z

    if-eqz p1, :cond_10a

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->owner:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->finish()V

    goto :goto_10a

    :catchall_105
    move-exception v0

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    throw v0

    :cond_10a
    :goto_10a
    return v2
.end method

.method finishWhenIdle()V
    .registers 2

    .line 86
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->tracking:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->finishRequested:Z

    return-void

    :cond_8
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->owner:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->finish()V

    return-void
.end method
