.class public Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;,
        Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x534

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 7.5f

.field private static final CENTER_RADIUS_LARGE:F = 11.0f

.field private static final COLORS:[I

.field private static final COLOR_CHANGE_OFFSET:F = 0.75f

.field public static final DEFAULT:I = 0x1

.field private static final GROUP_FULL_ROTATION:F = 216.0f

.field public static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final MIN_PROGRESS_ARC:F = 0.01f

.field private static final RING_ROTATION:F = 0.20999998f

.field private static final SHRINK_OFFSET:F = 0.5f

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field mFinishing:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

.field private mRotation:F

.field mRotationCount:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 68
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 97
    const/high16 v0, -0x1000000

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 138
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 139
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 141
    new-instance v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-direct {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;-><init>()V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    .line 142
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    sget-object v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->COLORS:[I

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColors([I)V

    .line 144
    const/high16 v0, 0x40200000    # 2.5f

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStrokeWidth(F)V

    .line 145
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setupAnimators()V

    .line 146
    return-void
.end method

.method private applyFinishTranslation(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V
    .registers 7
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    .line 519
    invoke-virtual {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->updateRingColor(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    .line 520
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 522
    .local v0, "targetRotation":F
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    .line 523
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    .line 525
    .local v1, "startTrim":F
    invoke-virtual {p2, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 526
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 527
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v2

    .line 528
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v3

    sub-float v3, v0, v3

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    .line 529
    .local v2, "rotation":F
    invoke-virtual {p2, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 530
    return-void
.end method

.method private evaluateColorChange(FII)I
    .registers 14
    .param p1, "fraction"    # F
    .param p2, "startValue"    # I
    .param p3, "endValue"    # I

    .line 479
    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 480
    .local v0, "startA":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 481
    .local v1, "startR":I
    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 482
    .local v2, "startG":I
    and-int/lit16 v3, p2, 0xff

    .line 484
    .local v3, "startB":I
    shr-int/lit8 v4, p3, 0x18

    and-int/lit16 v4, v4, 0xff

    .line 485
    .local v4, "endA":I
    shr-int/lit8 v5, p3, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 486
    .local v5, "endR":I
    shr-int/lit8 v6, p3, 0x8

    and-int/lit16 v6, v6, 0xff

    .line 487
    .local v6, "endG":I
    and-int/lit16 v7, p3, 0xff

    .line 489
    .local v7, "endB":I
    sub-int v8, v4, v0

    int-to-float v8, v8

    mul-float v8, v8, p1

    float-to-int v8, v8

    add-int/2addr v8, v0

    shl-int/lit8 v8, v8, 0x18

    sub-int v9, v5, v1

    int-to-float v9, v9

    mul-float v9, v9, p1

    float-to-int v9, v9

    add-int/2addr v9, v1

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    sub-int v9, v6, v2

    int-to-float v9, v9

    mul-float v9, v9, p1

    float-to-int v9, v9

    add-int/2addr v9, v2

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    sub-int v9, v7, v3

    int-to-float v9, v9

    mul-float v9, v9, p1

    float-to-int v9, v9

    add-int/2addr v9, v3

    or-int/2addr v8, v9

    return v8
.end method

.method private getRotation()F
    .registers 2

    .line 429
    iget v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotation:F

    return v0
.end method

.method private setRotation(F)V
    .registers 2
    .param p1, "rotation"    # F

    .line 424
    iput p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotation:F

    .line 425
    return-void
.end method

.method private setSizeParameters(FFFF)V
    .registers 10
    .param p1, "centerRadius"    # F
    .param p2, "strokeWidth"    # F
    .param p3, "arrowWidth"    # F
    .param p4, "arrowHeight"    # F

    .line 151
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    .line 152
    .local v0, "ring":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 153
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 155
    .local v2, "screenDensity":F
    mul-float v3, p2, v2

    invoke-virtual {v0, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 156
    mul-float v3, p1, v2

    invoke-virtual {v0, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setCenterRadius(F)V

    .line 157
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 158
    mul-float v3, p3, v2

    mul-float v4, p4, v2

    invoke-virtual {v0, v3, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 159
    return-void
.end method

.method private setupAnimators()V
    .registers 4

    .line 569
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    .line 570
    .local v0, "ring":Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_2c

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 571
    .local v1, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;

    invoke-direct {v2, p0, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;-><init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 580
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 581
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 582
    sget-object v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ui/AppMotion;->interpolate(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;)V

    .line 583
    new-instance v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;-><init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 618
    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    .line 619
    return-void

    :array_2c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method applyTransformation(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;Z)V
    .registers 11
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    .param p3, "lastFrame"    # Z

    .line 537
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_8

    .line 538
    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->applyFinishTranslation(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    goto :goto_60

    .line 541
    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_10

    if-eqz p3, :cond_60

    .line 542
    :cond_10
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v1

    .line 545
    .local v1, "startingRotation":F
    const v2, 0x3c23d70a    # 0.01f

    const v3, 0x3f4a3d71    # 0.79f

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v5, p1, v4

    if-gez v5, :cond_31

    .line 546
    div-float v0, p1, v4

    .line 547
    .local v0, "scaledTime":F
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v4

    .line 548
    .local v4, "startTrim":F
    sget-object v5, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 549
    invoke-interface {v5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float v5, v5, v3

    add-float/2addr v5, v2

    add-float/2addr v5, v4

    .line 550
    .end local v0    # "scaledTime":F
    .local v5, "endTrim":F
    goto :goto_47

    .line 551
    .end local v4    # "startTrim":F
    .end local v5    # "endTrim":F
    :cond_31
    sub-float v5, p1, v4

    div-float/2addr v5, v4

    .line 552
    .local v5, "scaledTime":F
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v4

    add-float/2addr v4, v3

    .line 553
    .local v4, "endTrim":F
    sget-object v6, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 554
    invoke-interface {v6, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    sub-float/2addr v0, v6

    mul-float v0, v0, v3

    add-float/2addr v0, v2

    sub-float v0, v4, v0

    move v5, v4

    move v4, v0

    .line 558
    .local v4, "startTrim":F
    .local v5, "endTrim":F
    :goto_47
    const v0, 0x3e570a3c    # 0.20999998f

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    .line 559
    .local v0, "rotation":F
    iget v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    add-float/2addr v2, p1

    const/high16 v3, 0x43580000    # 216.0f

    mul-float v2, v2, v3

    .line 561
    .local v2, "groupRotation":F
    invoke-virtual {p2, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 562
    invoke-virtual {p2, v5}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 563
    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 564
    invoke-direct {p0, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setRotation(F)V

    .line 566
    .end local v0    # "rotation":F
    .end local v1    # "startingRotation":F
    .end local v2    # "groupRotation":F
    .end local v4    # "startTrim":F
    .end local v5    # "endTrim":F
    :cond_60
    :goto_60
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 399
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 400
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 401
    iget v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 402
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1, p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 403
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 404
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 414
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getArrowEnabled()Z
    .registers 2

    .line 271
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getShowArrow()Z

    move-result v0

    return v0
.end method

.method public getArrowHeight()F
    .registers 2

    .line 251
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getArrowHeight()F

    move-result v0

    return v0
.end method

.method public getArrowScale()F
    .registers 2

    .line 290
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getArrowScale()F

    move-result v0

    return v0
.end method

.method public getArrowWidth()F
    .registers 2

    .line 242
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getArrowWidth()F

    move-result v0

    return v0
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 360
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getCenterRadius()F
    .registers 2

    .line 202
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getCenterRadius()F

    move-result v0

    return v0
.end method

.method public getColorSchemeColors()[I
    .registers 2

    .line 382
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getColors()[I

    move-result-object v0

    return-object v0
.end method

.method public getEndTrim()F
    .registers 2

    .line 318
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 436
    const/4 v0, -0x3

    return v0
.end method

.method public getProgressRotation()F
    .registers 2

    .line 341
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getRotation()F

    move-result v0

    return v0
.end method

.method public getStartTrim()F
    .registers 2

    .line 309
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartTrim()F

    move-result v0

    return v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .registers 2

    .line 233
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeWidth()F
    .registers 2

    .line 183
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 441
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 408
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setAlpha(I)V

    .line 409
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 410
    return-void
.end method

.method public setArrowDimensions(FF)V
    .registers 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 261
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 262
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 263
    return-void
.end method

.method public setArrowEnabled(Z)V
    .registers 3
    .param p1, "show"    # Z

    .line 280
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 281
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 282
    return-void
.end method

.method public setArrowScale(F)V
    .registers 3
    .param p1, "scale"    # F

    .line 299
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setArrowScale(F)V

    .line 300
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 301
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 371
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 372
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 373
    return-void
.end method

.method public setCenterRadius(F)V
    .registers 3
    .param p1, "centerRadius"    # F

    .line 212
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setCenterRadius(F)V

    .line 213
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 214
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 419
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 420
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 421
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .registers 4
    .param p1, "colors"    # [I

    .line 392
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColors([I)V

    .line 393
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 394
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 395
    return-void
.end method

.method public setProgressRotation(F)V
    .registers 3
    .param p1, "rotation"    # F

    .line 350
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 351
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 352
    return-void
.end method

.method public setStartEndTrim(FF)V
    .registers 4
    .param p1, "start"    # F
    .param p2, "end"    # F

    .line 330
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 331
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 332
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 333
    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .registers 3
    .param p1, "strokeCap"    # Landroid/graphics/Paint$Cap;

    .line 222
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 223
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 224
    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 3
    .param p1, "strokeWidth"    # F

    .line 192
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 193
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 194
    return-void
.end method

.method public setStyle(I)V
    .registers 6
    .param p1, "size"    # I

    .line 168
    if-nez p1, :cond_e

    .line 169
    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x41300000    # 11.0f

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setSizeParameters(FFFF)V

    goto :goto_19

    .line 172
    :cond_e
    const/high16 v0, 0x41200000    # 10.0f

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x40f00000    # 7.5f

    const/high16 v3, 0x40200000    # 2.5f

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setSizeParameters(FFFF)V

    .line 174
    :goto_19
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 175
    return-void
.end method

.method public start()V
    .registers 4

    .line 449
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 450
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->storeOriginals()V

    .line 452
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2d

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFinishing:Z

    .line 454
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 455
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->prepare(Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_47

    .line 457
    :cond_2d
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 458
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->resetOriginals()V

    .line 459
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 460
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->prepare(Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 462
    :goto_47
    return-void
.end method

.method public stop()V
    .registers 3

    .line 469
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 470
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setRotation(F)V

    .line 471
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 472
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 473
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->resetOriginals()V

    .line 474
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 475
    return-void
.end method

.method updateRingColor(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V
    .registers 6
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    .line 502
    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1b

    .line 503
    sub-float v0, p1, v0

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    .line 504
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingColor()I

    move-result v1

    .line 505
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getNextColor()I

    move-result v2

    .line 503
    invoke-direct {p0, v0, v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->evaluateColorChange(FII)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColor(I)V

    goto :goto_22

    .line 507
    :cond_1b
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColor(I)V

    .line 509
    :goto_22
    return-void
.end method
