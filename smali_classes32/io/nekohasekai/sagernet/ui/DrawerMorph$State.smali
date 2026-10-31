.class public final Lio/nekohasekai/sagernet/ui/DrawerMorph$State;
.super Ljava/lang/Object;
.source "DrawerMorph.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerMorph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# instance fields
.field final animator:Landroid/animation/ValueAnimator;

.field backgroundLayout:Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;

.field final bottom:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

.field final capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

.field final clip:Landroid/graphics/Rect;

.field final current:Landroid/graphics/Rect;

.field final expanding:Z

.field finished:Z

.field fraction:F

.field final from:Landroid/graphics/Rect;

.field final layout:Landroid/graphics/Rect;

.field final left:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

.field final menu:Landroid/view/View;

.field final menuBounds:Landroid/graphics/Rect;

.field menuLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

.field final menuOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

.field final menuWidth:I

.field motionLease:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

.field observer:Landroid/view/ViewTreeObserver;

.field final onEnd:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "*>;"
        }
    .end annotation
.end field

.field final opacity:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

.field outline:Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;

.field final overlay:Landroid/view/ViewGroup;

.field final page:Landroid/view/View;

.field pageLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

.field final pageOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

.field final right:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

.field final shield:Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;

.field final startPageAlpha:F

.field stopped:Z

.field final target:Landroid/graphics/Rect;

.field final top:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFILkotlin/jvm/functions/Function0;Lio/nekohasekai/sagernet/ui/DrawerMorph$State;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/JJGlassCapsule;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "ZFI",
            "Lkotlin/jvm/functions/Function0<",
            "*>;",
            "Lio/nekohasekai/sagernet/ui/DrawerMorph$State;",
            ")V"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->clip:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 162
    new-array v0, v0, [F

    fill-array-data v0, :array_116

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 163
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->animator:Landroid/animation/ValueAnimator;

    .line 164
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    .line 165
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->overlay:Landroid/view/ViewGroup;

    .line 166
    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    .line 167
    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    .line 168
    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->from:Landroid/graphics/Rect;

    .line 169
    iput-object p6, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->target:Landroid/graphics/Rect;

    .line 170
    iput-object p7, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    .line 171
    iput-object p8, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuBounds:Landroid/graphics/Rect;

    .line 172
    iput-boolean p9, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->expanding:Z

    .line 173
    iput p10, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->startPageAlpha:F

    .line 174
    iput p11, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuWidth:I

    .line 175
    iput-object p12, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->onEnd:Lkotlin/jvm/functions/Function0;

    .line 176
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->current:Landroid/graphics/Rect;

    .line 177
    new-instance p2, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;

    invoke-direct {p2, p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;-><init>(Lio/nekohasekai/sagernet/ui/DrawerMorph$State;)V

    .line 178
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->shield:Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;

    const/4 p3, 0x1

    .line 179
    invoke-virtual {p2, p3}, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->setClickable(Z)V

    if-eqz p9, :cond_45

    const-wide/16 p2, 0x276

    goto :goto_47

    :cond_45
    const-wide/16 p2, 0x1e0

    :goto_47
    const/4 p4, 0x0

    const/high16 p7, 0x3f800000    # 1.0f

    if-eqz p13, :cond_6b

    long-to-float p2, p2

    if-eqz p9, :cond_52

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_53

    :cond_52
    const/4 p3, 0x0

    :goto_53
    sub-float/2addr p3, p10

    .line 182
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    float-to-double p11, p3

    invoke-static {p11, p12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p11

    double-to-float p3, p11

    mul-float p2, p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/16 p3, 0x8c

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-long p2, p2

    :cond_6b
    if-nez p13, :cond_6f

    const/4 p8, 0x0

    goto :goto_71

    .line 184
    :cond_6f
    iget p8, p13, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->fraction:F

    .line 185
    :goto_71
    new-instance p11, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    iget p12, p5, Landroid/graphics/Rect;->left:I

    int-to-float p12, p12

    iget v1, p6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-direct {p11, p12, v1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FF)V

    iput-object p11, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->left:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 186
    new-instance p11, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    iget p12, p5, Landroid/graphics/Rect;->top:I

    int-to-float p12, p12

    iget v1, p6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p11, p12, v1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FF)V

    iput-object p11, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->top:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 187
    new-instance p11, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    iget p12, p5, Landroid/graphics/Rect;->right:I

    int-to-float p12, p12

    iget v1, p6, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-direct {p11, p12, v1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FF)V

    iput-object p11, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->right:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 188
    new-instance p11, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    int-to-float p5, p5

    iget p6, p6, Landroid/graphics/Rect;->bottom:I

    int-to-float p6, p6

    invoke-direct {p11, p5, p6}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FF)V

    iput-object p11, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->bottom:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 189
    new-instance p5, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    if-eqz p9, :cond_aa

    goto :goto_ab

    :cond_aa
    const/4 p7, 0x0

    :goto_ab
    invoke-direct {p5, p10, p7}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FF)V

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->opacity:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 190
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 191
    new-instance p5, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    if-nez p13, :cond_cb

    if-eqz p9, :cond_c9

    const/high16 p6, 0x41200000    # 10.0f

    mul-float p6, p6, p1

    goto :goto_d1

    :cond_c9
    const/4 p6, 0x0

    goto :goto_d1

    :cond_cb
    iget-object p6, p13, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->pageOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {p6, p8}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->value(F)F

    move-result p6

    :goto_d1
    if-eqz p9, :cond_d5

    const/4 p7, 0x0

    goto :goto_d9

    :cond_d5
    const/high16 p7, 0x40c00000    # 6.0f

    mul-float p7, p7, p1

    :goto_d9
    invoke-direct {p5, p6, p7}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FF)V

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->pageOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 192
    new-instance p5, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    const/high16 p6, -0x3f800000    # -4.0f

    if-nez p13, :cond_eb

    if-eqz p9, :cond_e8

    const/4 p7, 0x0

    goto :goto_f1

    :cond_e8
    mul-float p7, p1, p6

    goto :goto_f1

    :cond_eb
    iget-object p7, p13, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {p7, p8}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->value(F)F

    move-result p7

    :goto_f1
    if-eqz p9, :cond_f5

    mul-float p4, p1, p6

    :cond_f5
    invoke-direct {p5, p7, p4}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FF)V

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 193
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 194
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 195
    new-instance p1, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$1;

    invoke-direct {p1, p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$1;-><init>(Lio/nekohasekai/sagernet/ui/DrawerMorph$State;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 201
    new-instance p1, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$2;

    invoke-direct {p1, p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$2;-><init>(Lio/nekohasekai/sagernet/ui/DrawerMorph$State;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_116
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method finish()V
    .registers 5

    .line 306
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->finished:Z

    if-nez v0, :cond_9f

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    if-eqz v0, :cond_a

    goto/16 :goto_9f

    :cond_a
    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->finished:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 310
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->frame(F)V

    .line 311
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->removePreDraw()V

    .line 312
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 313
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->shield:Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->cancelGesture()V

    .line 314
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->overlay:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->shield:Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const v1, 0x7f0a0f48

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setTag(ILjava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setMorphClip(Landroid/graphics/Rect;)V

    .line 317
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->resetTransform(Landroid/view/View;)V

    .line 318
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz v0, :cond_48

    .line 319
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->restoreMenuWidth()V

    .line 320
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->resetTransform(Landroid/view/View;)V

    .line 322
    :cond_48
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 323
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->target:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->target:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-static {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->setPhysicalMargins(Landroid/widget/FrameLayout$LayoutParams;IILandroid/view/View;)V

    .line 324
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->target:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 325
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->target:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 326
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v1, v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->expanding:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_7d

    const/4 v1, 0x0

    goto :goto_7f

    :cond_7d
    const/16 v1, 0x8

    :goto_7f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz v0, :cond_8f

    .line 330
    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->expanding:Z

    if-eqz v1, :cond_8c

    const/16 v2, 0x8

    :cond_8c
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 333
    :cond_8f
    :try_start_8f
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->onEnd:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_96

    .line 335
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_9a

    .line 338
    :cond_96
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->releaseMotion()V

    return-void

    :catchall_9a
    move-exception v0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->releaseMotion()V

    .line 339
    throw v0

    :cond_9f
    :goto_9f
    return-void
.end method

.method frame(F)V
    .registers 7

    .line 285
    iput p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->fraction:F

    .line 286
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/AppMotion;->ease(F)F

    move-result p1

    .line 287
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->current:Landroid/graphics/Rect;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->left:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v1, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->at(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->top:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v2, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->at(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->right:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v3, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->at(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->bottom:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v4, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->at(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 288
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->clip:Landroid/graphics/Rect;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->current:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 289
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->clip:Landroid/graphics/Rect;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 290
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->clip:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setMorphClip(Landroid/graphics/Rect;)V

    .line 291
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->current:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 292
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->current:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 293
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 294
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->pageOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v3, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->at(F)F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 295
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->opacity:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v2, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->at(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 296
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 297
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz v4, :cond_a4

    .line 299
    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 300
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v4, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->at(F)F

    move-result p1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 301
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    sub-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_a4
    return-void
.end method

.method m31lambda$new$0$ionekohasekaisagernetuiDrawerMorph$State(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 219
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    if-eqz v0, :cond_5

    return-void

    .line 222
    :cond_5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->frame(F)V

    return-void
.end method

.method public onPreDraw()Z
    .registers 2

    .line 267
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->removePreDraw()V

    .line 268
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->state(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    move-result-object v0

    if-ne v0, p0, :cond_24

    .line 269
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers;->acquire(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->pageLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    .line 270
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers;->acquire(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    .line 271
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    .line 402
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stop(Z)V

    return-void
.end method

.method prepare()V
    .registers 5

    .line 226
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard;->background(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->backgroundLayout:Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;

    .line 227
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->begin(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->motionLease:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    .line 228
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerOutline;->acquire(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;)Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->outline:Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;

    .line 229
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/RosePalette;->prepareForDisplay(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz v0, :cond_24

    .line 232
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/RosePalette;->prepareForDisplay(Landroid/view/View;)V

    .line 234
    :cond_24
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 235
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz v0, :cond_76

    .line 238
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 239
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 242
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v1, :cond_76

    .line 243
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 244
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    :cond_76
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x33

    .line 248
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 249
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 250
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 251
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 252
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 253
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-static {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->setPhysicalMargins(Landroid/widget/FrameLayout$LayoutParams;IILandroid/view/View;)V

    .line 254
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 255
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 256
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v1, v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->overlay:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->shield:Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->frame(F)V

    .line 260
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 261
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->observer:Landroid/view/ViewTreeObserver;

    .line 262
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method releaseMotion()V
    .registers 3

    .line 377
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->backgroundLayout:Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;->close()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->backgroundLayout:Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;

    .line 378
    :cond_a
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->outline:Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;

    if-eqz v0, :cond_13

    .line 380
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;->close()V

    .line 381
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->outline:Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;

    .line 383
    :cond_13
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->pageLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    if-eqz v0, :cond_1c

    .line 385
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->close()V

    .line 386
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->pageLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    .line 388
    :cond_1c
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    if-eqz v0, :cond_25

    .line 390
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->close()V

    .line 391
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    .line 393
    :cond_25
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->motionLease:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    if-eqz v0, :cond_2e

    .line 395
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;->close()V

    .line 396
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->motionLease:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    :cond_2e
    return-void
.end method

.method removePreDraw()V
    .registers 2

    .line 277
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->observer:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_f

    .line 278
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 279
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_f
    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->observer:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method restoreMenuWidth()V
    .registers 4

    .line 367
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 368
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 369
    iget v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuWidth:I

    if-eq v1, v2, :cond_13

    .line 371
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 372
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    return-void
.end method

.method stop(Z)V
    .registers 4

    .line 343
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->finished:Z

    if-eqz v0, :cond_5

    goto :goto_4c

    .line 346
    :cond_5
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    if-nez v0, :cond_28

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    .line 348
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->removePreDraw()V

    .line 349
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 350
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->shield:Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->cancelGesture()V

    .line 351
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->overlay:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->shield:Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 352
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 353
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->releaseMotion()V

    :cond_28
    if-eqz p1, :cond_4c

    .line 356
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const v0, 0x7f0a0f48

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setTag(ILjava/lang/Object;)V

    .line 357
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setMorphClip(Landroid/graphics/Rect;)V

    .line 358
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->resetTransform(Landroid/view/View;)V

    .line 359
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz p1, :cond_4c

    .line 360
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->restoreMenuWidth()V

    .line 361
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->resetTransform(Landroid/view/View;)V

    :cond_4c
    :goto_4c
    return-void
.end method
