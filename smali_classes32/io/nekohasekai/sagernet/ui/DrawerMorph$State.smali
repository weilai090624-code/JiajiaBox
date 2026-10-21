.class final Lio/nekohasekai/sagernet/ui/DrawerMorph$State;
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
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field final animator:Landroid/animation/ValueAnimator;

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

.field final shield:Landroid/view/View;

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

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->clip:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 73
    new-array v0, v0, [F

    fill-array-data v0, :array_11c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->animator:Landroid/animation/ValueAnimator;

    .line 82
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->overlay:Landroid/view/ViewGroup;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->from:Landroid/graphics/Rect;

    iput-object p6, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->target:Landroid/graphics/Rect;

    .line 83
    iput-object p7, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iput-object p8, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuBounds:Landroid/graphics/Rect;

    iput-boolean p9, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->expanding:Z

    iput p10, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->startPageAlpha:F

    .line 84
    iput p11, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuWidth:I

    iput-object p12, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->onEnd:Lkotlin/jvm/functions/Function0;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->current:Landroid/graphics/Rect;

    .line 85
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->shield:Landroid/view/View;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setClickable(Z)V

    if-eqz p9, :cond_49

    const-wide/16 p2, 0x276

    goto :goto_4b

    :cond_49
    const-wide/16 p2, 0x1e0

    :goto_4b
    const/4 p4, 0x0

    const/high16 p7, 0x3f800000    # 1.0f

    if-nez p13, :cond_51

    goto :goto_70

    :cond_51
    long-to-float p2, p2

    if-eqz p9, :cond_57

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_58

    :cond_57
    const/4 p3, 0x0

    :goto_58
    sub-float/2addr p3, p10

    .line 87
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

    :goto_70
    if-nez p13, :cond_74

    const/4 p8, 0x0

    goto :goto_76

    .line 88
    :cond_74
    iget p8, p13, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->fraction:F

    .line 89
    :goto_76
    new-instance p11, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    iget p12, p5, Landroid/graphics/Rect;->left:I

    int-to-float p12, p12

    iget v1, p6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-direct {p11, p12, v1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FF)V

    iput-object p11, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->left:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 90
    new-instance p11, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    iget p12, p5, Landroid/graphics/Rect;->top:I

    int-to-float p12, p12

    iget v1, p6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p11, p12, v1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FF)V

    iput-object p11, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->top:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 91
    new-instance p11, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    iget p12, p5, Landroid/graphics/Rect;->right:I

    int-to-float p12, p12

    iget v1, p6, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-direct {p11, p12, v1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FF)V

    iput-object p11, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->right:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 92
    new-instance p11, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    int-to-float p5, p5

    iget p6, p6, Landroid/graphics/Rect;->bottom:I

    int-to-float p6, p6

    invoke-direct {p11, p5, p6}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FF)V

    iput-object p11, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->bottom:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 93
    new-instance p5, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    if-eqz p9, :cond_af

    goto :goto_b0

    :cond_af
    const/4 p7, 0x0

    :goto_b0
    invoke-direct {p5, p10, p7}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FF)V

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->opacity:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 94
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 95
    new-instance p5, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    if-nez p13, :cond_d0

    if-eqz p9, :cond_ce

    const/high16 p6, 0x41200000    # 10.0f

    mul-float p6, p6, p1

    goto :goto_d6

    :cond_ce
    const/4 p6, 0x0

    goto :goto_d6

    :cond_d0
    iget-object p6, p13, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->pageOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {p6, p8}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->value(F)F

    move-result p6

    :goto_d6
    if-eqz p9, :cond_da

    const/4 p7, 0x0

    goto :goto_de

    :cond_da
    const/high16 p7, 0x40c00000    # 6.0f

    mul-float p7, p7, p1

    :goto_de
    invoke-direct {p5, p6, p7}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FF)V

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->pageOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 96
    new-instance p5, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    const/high16 p6, -0x3f800000    # -4.0f

    if-nez p13, :cond_f0

    if-eqz p9, :cond_ed

    const/4 p7, 0x0

    goto :goto_f6

    :cond_ed
    mul-float p7, p1, p6

    goto :goto_f6

    :cond_f0
    iget-object p7, p13, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {p7, p8}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->value(F)F

    move-result p7

    :goto_f6
    if-eqz p9, :cond_fa

    mul-float p4, p1, p6

    :cond_fa
    invoke-direct {p5, p7, p4}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FF)V

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 98
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    new-instance p1, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$0;

    invoke-direct {p1, p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$0;-><init>(Lio/nekohasekai/sagernet/ui/DrawerMorph$State;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 100
    new-instance p1, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$1;

    invoke-direct {p1, p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$1;-><init>(Lio/nekohasekai/sagernet/ui/DrawerMorph$State;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_11c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method finish()V
    .registers 5

    .line 143
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->finished:Z

    if-nez v0, :cond_97

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    if-eqz v0, :cond_a

    goto/16 :goto_97

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->finished:Z

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->frame(F)V

    .line 144
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->removePreDraw()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->overlay:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->shield:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const v1, 0x7f0a0f48

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setMorphClip(Landroid/graphics/Rect;)V

    .line 146
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerMorph;->resetTransform(Landroid/view/View;)V
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->access$200(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->restoreMenuWidth()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerMorph;->resetTransform(Landroid/view/View;)V
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->access$200(Landroid/view/View;)V

    .line 147
    :cond_40
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 148
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->target:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->target:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerMorph;->setPhysicalMargins(Landroid/widget/FrameLayout$LayoutParams;IILandroid/view/View;)V
    invoke-static {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->access$000(Landroid/widget/FrameLayout$LayoutParams;IILandroid/view/View;)V

    .line 149
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->target:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->target:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v1, v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->expanding:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_75

    const/4 v1, 0x0

    goto :goto_77

    :cond_75
    const/16 v1, 0x8

    :goto_77
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz v0, :cond_87

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->expanding:Z

    if-eqz v1, :cond_84

    const/16 v2, 0x8

    :cond_84
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_87
    :try_start_87
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->onEnd:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_8e

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_92

    :cond_8e
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->releaseMotion()V

    return-void

    :catchall_92
    move-exception v0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->releaseMotion()V

    throw v0

    :cond_97
    :goto_97
    return-void
.end method

.method frame(F)V
    .registers 7

    .line 131
    iput p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->fraction:F

    .line 132
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/AppMotion;->ease(F)F

    move-result p1

    .line 133
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

    .line 134
    invoke-virtual {v3, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->at(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->bottom:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v4, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->at(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 133
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 135
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->clip:Landroid/graphics/Rect;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->current:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->clip:Landroid/graphics/Rect;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->clip:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setMorphClip(Landroid/graphics/Rect;)V

    .line 136
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->current:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->current:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 137
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->pageOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v3, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->at(F)F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 138
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->opacity:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v2, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->at(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 139
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz v4, :cond_a4

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v4, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->at(F)F

    move-result p1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    sub-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_a4
    return-void
.end method

.method synthetic lambda$new$0$io-nekohasekai-sagernet-ui-DrawerMorph$State(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 99
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    if-nez v0, :cond_11

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->frame(F)V

    :cond_11
    return-void
.end method

.method public onPreDraw()Z
    .registers 3

    .line 123
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->removePreDraw()V

    .line 124
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    const/4 v1, 0x1

    if-nez v0, :cond_26

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerMorph;->state(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerMorph$State;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->access$100(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    move-result-object v0

    if-eq v0, p0, :cond_11

    goto :goto_26

    .line 126
    :cond_11
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers;->acquire(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->pageLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers;->acquire(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    .line 127
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_26
    :goto_26
    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    .line 170
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stop(Z)V

    return-void
.end method

.method prepare()V
    .registers 5

    .line 106
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->begin(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->motionLease:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    .line 107
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerOutline;->acquire(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;)Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->outline:Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;

    .line 108
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/RosePalette;->prepareForDisplay(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz v0, :cond_1c

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/RosePalette;->prepareForDisplay(Landroid/view/View;)V

    .line 109
    :cond_1c
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz v0, :cond_6e

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

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

    .line 112
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v1, :cond_6e

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    :cond_6e
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x33

    .line 114
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 115
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 116
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerMorph;->setPhysicalMargins(Landroid/widget/FrameLayout$LayoutParams;IILandroid/view/View;)V
    invoke-static {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->access$000(Landroid/widget/FrameLayout$LayoutParams;IILandroid/view/View;)V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 117
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v1, v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->overlay:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->shield:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->frame(F)V

    .line 120
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method releaseMotion()V
    .registers 3

    .line 164
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->outline:Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;->close()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->outline:Lio/nekohasekai/sagernet/ui/DrawerOutline$Scope;

    .line 165
    :cond_a
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->pageLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->close()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->pageLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    .line 166
    :cond_13
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->close()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    .line 167
    :cond_1c
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->motionLease:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;->close()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->motionLease:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    :cond_25
    return-void
.end method

.method removePreDraw()V
    .registers 2

    .line 129
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->observer:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->observer:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method restoreMenuWidth()V
    .registers 4

    .line 162
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuWidth:I

    if-eq v1, v2, :cond_13

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    return-void
.end method

.method stop(Z)V
    .registers 4

    .line 155
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->finished:Z

    if-eqz v0, :cond_5

    goto :goto_44

    .line 156
    :cond_5
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    if-nez v0, :cond_23

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->removePreDraw()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 157
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->overlay:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->shield:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->releaseMotion()V

    :cond_23
    if-eqz p1, :cond_44

    .line 158
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const v0, 0x7f0a0f48

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {p1, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setMorphClip(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerMorph;->resetTransform(Landroid/view/View;)V
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->access$200(Landroid/view/View;)V

    .line 159
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->restoreMenuWidth()V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerMorph;->resetTransform(Landroid/view/View;)V
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->access$200(Landroid/view/View;)V

    :cond_44
    :goto_44
    return-void
.end method
