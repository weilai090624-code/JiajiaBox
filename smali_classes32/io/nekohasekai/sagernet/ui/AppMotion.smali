.class public final Lio/nekohasekai/sagernet/ui/AppMotion;
.super Ljava/lang/Object;
.source "AppMotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/AppMotion$Curve;
    }
.end annotation


# static fields
.field public static final CURVE:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lio/nekohasekai/sagernet/ui/AppMotion$Curve;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/AppMotion$Curve;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/AppMotion;->CURVE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .registers 2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lio/nekohasekai/sagernet/ui/AppMotion;->CURVE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static dialogAnimations(Landroid/content/Context;)I
    .registers 4

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "style"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Animation.AppCompat.Dialog"

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static ease(F)F
    .registers 7

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-gtz v1, :cond_6

    return v0

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_d

    return v0

    .line 37
    :cond_d
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AppMotion;->parameter(F)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    mul-double v4, v0, v0

    mul-double v4, v4, v0

    sub-double/2addr v2, v4

    double-to-float p0, v2

    return p0
.end method

.method public static interpolate(Landroid/view/ViewPropertyAnimator;Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;
    .registers 2

    .line 50
    sget-object p1, Lio/nekohasekai/sagernet/ui/AppMotion;->CURVE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static interpolate(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;)V
    .registers 2

    .line 54
    sget-object p1, Lio/nekohasekai/sagernet/ui/AppMotion;->CURVE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public static interpolate(Landroid/view/animation/Animation;Landroid/view/animation/Interpolator;)V
    .registers 2

    .line 58
    sget-object p1, Lio/nekohasekai/sagernet/ui/AppMotion;->CURVE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private static parameter(F)D
    .registers 21

    move/from16 v0, p0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    move-wide v7, v0

    move-wide v9, v2

    :goto_a
    const/16 v11, 0xc

    if-ge v6, v11, :cond_60

    const-wide v11, 0x3fe28f5c28f5c28fL    # 0.58

    mul-double v11, v11, v7

    const-wide v13, 0x3faeb851eb851eb8L    # 0.06

    sub-double/2addr v11, v13

    mul-double v11, v11, v7

    const-wide v13, 0x3fdeb851eb851eb8L    # 0.48

    add-double/2addr v11, v13

    mul-double v11, v11, v7

    sub-double/2addr v11, v0

    .line 26
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    const-wide v17, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v19, v15, v17

    if-gez v19, :cond_34

    goto :goto_60

    :cond_34
    cmpl-double v15, v11, v2

    if-lez v15, :cond_3a

    move-wide v4, v7

    goto :goto_3b

    :cond_3a
    move-wide v9, v7

    :goto_3b
    const-wide v15, 0x3ffbd70a3d70a3d7L    # 1.74

    mul-double v15, v15, v7

    const-wide v17, 0x3fbeb851eb851eb8L    # 0.12

    sub-double v15, v15, v17

    mul-double v15, v15, v7

    add-double/2addr v15, v13

    div-double/2addr v11, v15

    sub-double/2addr v7, v11

    cmpl-double v11, v7, v9

    if-lez v11, :cond_57

    cmpg-double v11, v7, v4

    if-gez v11, :cond_57

    goto :goto_5d

    :cond_57
    add-double v7, v9, v4

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double v7, v7, v11

    :goto_5d
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_60
    :goto_60
    return-wide v7
.end method

.method public static prepare(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .registers 3

    .line 68
    sget-object v0, Lio/nekohasekai/sagernet/ui/AppMotion;->CURVE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 69
    instance-of v0, p0, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_24

    .line 70
    move-object v0, p0

    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppMotion;->prepare(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    goto :goto_14

    :cond_24
    return-object p0
.end method

.method public static prepare(Landroid/animation/Animator;)V
    .registers 2

    .line 62
    sget-object v0, Lio/nekohasekai/sagernet/ui/AppMotion;->CURVE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 63
    instance-of v0, p0, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_23

    .line 64
    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->prepare(Landroid/animation/Animator;)V

    goto :goto_13

    :cond_23
    return-void
.end method

.method public static settle(Landroid/widget/OverScroller;IIIII)V
    .registers 6

    .line 83
    invoke-static {p5}, Lio/nekohasekai/sagernet/ui/AppMotion;->settleDuration(I)I

    move-result p5

    invoke-virtual/range {p0 .. p5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public static settle(Landroid/widget/Scroller;IIIII)V
    .registers 6

    .line 87
    invoke-static {p5}, Lio/nekohasekai/sagernet/ui/AppMotion;->settleDuration(I)I

    move-result p5

    invoke-virtual/range {p0 .. p5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public static settleDuration(I)I
    .registers 5

    int-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double v0, v0, v2

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static show(Landroid/app/Dialog;)V
    .registers 4

    .line 95
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 99
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ui/PopupBackdrop;->bind(Landroid/view/View;Landroid/content/Context;)V

    .line 100
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v1, :cond_1e

    ushr-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 102
    :cond_1e
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppMotion;->dialogAnimations(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 104
    :cond_29
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static start(Landroid/view/View;Landroid/view/animation/Animation;)V
    .registers 2

    .line 75
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/AppMotion;->prepare(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
