.class public final Lio/nekohasekai/sagernet/ui/HomeSwipeController;
.super Ljava/lang/Object;
.source "HomeSwipeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;
    }
.end annotation


# static fields
.field private static movingControllers:I


# instance fields
.field private active:Z

.field private final activity:Landroid/app/Activity;

.field private animator:Landroid/animation/ValueAnimator;

.field private distance:F

.field private eligible:Z

.field private final host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

.field private incoming:Landroid/view/View;

.field private motionRegistered:Z

.field private outgoing:Landroid/view/View;

.field private settling:Z

.field private startX:F

.field private startY:F

.field private toBlank:Z

.field private final touchSlop:F

.field private width:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->activity:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    .line 42
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->touchSlop:F

    .line 43
    return-void
.end method

.method static synthetic access$000(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Landroid/view/View;
    .registers 1

    .line 12
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 12
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Landroid/view/View;
    .registers 1

    .line 12
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 12
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)V
    .registers 1

    .line 12
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->endMotion()V

    return-void
.end method

.method static synthetic access$300(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Z
    .registers 1

    .line 12
    iget-boolean p0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    return p0
.end method

.method static synthetic access$400(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;
    .registers 1

    .line 12
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    return-object p0
.end method

.method static synthetic access$502(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    .line 12
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$602(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    return p1
.end method

.method static synthetic access$702(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    return p1
.end method

.method static synthetic access$802(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z

    return p1
.end method

.method private apply(F)V
    .registers 5

    .line 146
    iput p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->distance:F

    .line 147
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    if-eqz v1, :cond_a

    neg-float v1, p1

    goto :goto_b

    :cond_a
    move v1, p1

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 148
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    iget v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    if-eqz v1, :cond_18

    sub-float/2addr v2, p1

    goto :goto_1a

    :cond_18
    sub-float v2, p1, v2

    :goto_1a
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 149
    return-void
.end method

.method private beginMotion()V
    .registers 3

    .line 22
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->motionRegistered:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->motionRegistered:Z

    sget v1, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->movingControllers:I

    add-int/2addr v1, v0

    sput v1, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->movingControllers:I

    :cond_c
    return-void
.end method

.method private endMotion()V
    .registers 2

    .line 23
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->motionRegistered:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->motionRegistered:Z

    sget v0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->movingControllers:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->movingControllers:I

    :cond_d
    return-void
.end method

.method public static isMoving()Z
    .registers 1

    .line 21
    sget v0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->movingControllers:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private settle(Z)V
    .registers 7

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z

    .line 153
    iget v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->distance:F

    .line 154
    if-eqz p1, :cond_a

    iget v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    .line 155
    :goto_b
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    .line 156
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43820000    # 260.0f

    mul-float v1, v1, v2

    iget v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v2, 0x6e

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 157
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 158
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lio/nekohasekai/sagernet/ui/HomeSwipeController$0;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$0;-><init>(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 159
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;

    invoke-direct {v1, p0, p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;-><init>(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 174
    return-void
.end method


# virtual methods
.method public backToHome()V
    .registers 5

    .line 127
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z

    if-nez v0, :cond_68

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    if-nez v0, :cond_68

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->canSwipe(Z)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_68

    .line 128
    :cond_12
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    invoke-interface {v0, v1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->prepareSwipe(Z)[Landroid/view/View;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_67

    aget-object v2, v0, v1

    if-eqz v2, :cond_67

    const/4 v2, 0x1

    aget-object v3, v0, v2

    if-nez v3, :cond_24

    goto :goto_67

    .line 130
    :cond_24
    iput-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    .line 131
    aget-object v3, v0, v1

    iput-object v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    .line 132
    aget-object v0, v0, v2

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    .line 134
    iget v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_5b

    .line 135
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    invoke-interface {v0, v1, v1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->finishSwipe(ZZ)V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    .line 137
    return-void

    .line 139
    :cond_5b
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->beginMotion()V

    .line 140
    iput-boolean v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    .line 141
    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->apply(F)V

    .line 142
    invoke-direct {p0, v2}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settle(Z)V

    .line 143
    return-void

    .line 129
    :cond_67
    :goto_67
    return-void

    .line 127
    :cond_68
    :goto_68
    return-void
.end method

.method synthetic lambda$settle$0$io-nekohasekai-sagernet-ui-HomeSwipeController(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 158
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->apply(F)V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)I
    .registers 9

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 65
    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    return v2

    .line 66
    :cond_a
    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_7e

    .line 67
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->reset()V

    .line 68
    :cond_15
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    .line 69
    iput v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->distance:F

    .line 70
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    invoke-interface {v0, v2}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->canSwipe(Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    .line 71
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    invoke-interface {v0, v3}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->canSwipe(Z)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 72
    :cond_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42000000    # 32.0f

    mul-float v1, v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6e

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->activity:Landroid/app/Activity;

    .line 74
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41c00000    # 24.0f

    mul-float v4, v4, v5

    sub-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v2, 0x0

    :goto_6f
    iput-boolean v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startX:F

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startY:F

    .line 77
    return v3

    .line 79
    :cond_7e
    iget-boolean v4, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    if-nez v4, :cond_87

    iget-boolean v4, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    if-nez v4, :cond_87

    return v3

    .line 80
    :cond_87
    const/4 v4, 0x2

    if-ne v0, v4, :cond_15d

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v5, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startX:F

    sub-float/2addr v0, v5

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startY:F

    sub-float/2addr v5, v6

    .line 83
    iget-boolean v6, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    if-nez v6, :cond_143

    .line 84
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v6, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->touchSlop:F

    cmpl-float p1, p1, v6

    if-lez p1, :cond_b5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float p1, p1, v6

    if-lez p1, :cond_b5

    .line 85
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    .line 86
    return v3

    .line 88
    :cond_b5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v6, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->touchSlop:F

    cmpg-float p1, p1, v6

    if-ltz p1, :cond_142

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3fa66666    # 1.3f

    mul-float v5, v5, v6

    cmpg-float p1, p1, v5

    if-gez p1, :cond_d1

    goto :goto_142

    .line 89
    :cond_d1
    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    if-eqz p1, :cond_da

    cmpl-float p1, v0, v1

    if-ltz p1, :cond_e1

    goto :goto_de

    :cond_da
    cmpg-float p1, v0, v1

    if-gtz p1, :cond_e1

    .line 90
    :goto_de
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    .line 91
    return v3

    .line 93
    :cond_e1
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    iget-boolean v5, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    invoke-interface {p1, v5}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->prepareSwipe(Z)[Landroid/view/View;

    move-result-object p1

    .line 94
    if-eqz p1, :cond_13f

    aget-object v5, p1, v3

    if-eqz v5, :cond_13f

    aget-object v5, p1, v2

    if-nez v5, :cond_f4

    goto :goto_13f

    .line 98
    :cond_f4
    aget-object v5, p1, v3

    iput-object v5, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    .line 99
    aget-object p1, p1, v2

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    .line 100
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    .line 101
    iget p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_12c

    .line 102
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    invoke-interface {p1, v0, v3}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->finishSwipe(ZZ)V

    .line 103
    const/4 p1, 0x0

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    .line 104
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    .line 105
    return v3

    .line 107
    :cond_12c
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->beginMotion()V

    .line 108
    iput-boolean v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    .line 109
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->apply(F)V

    .line 110
    return v4

    .line 95
    :cond_13f
    :goto_13f
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    .line 96
    return v3

    .line 88
    :cond_142
    :goto_142
    return v3

    .line 112
    :cond_143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startX:F

    sub-float/2addr p1, v0

    .line 113
    iget v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    if-eqz v3, :cond_151

    neg-float p1, p1

    :cond_151
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->apply(F)V

    .line 114
    return v2

    .line 116
    :cond_15d
    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    const/4 v1, 0x5

    const/4 v4, 0x3

    if-eqz p1, :cond_17d

    if-eq v0, v2, :cond_169

    if-eq v0, v4, :cond_169

    if-ne v0, v1, :cond_17d

    .line 118
    :cond_169
    if-ne v0, v2, :cond_179

    iget p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->distance:F

    iget v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    const v1, 0x3df5c28f    # 0.12f

    mul-float v0, v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_179

    const/4 v3, 0x1

    :cond_179
    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settle(Z)V

    .line 119
    return v2

    .line 121
    :cond_17d
    if-eq v0, v2, :cond_183

    if-eq v0, v4, :cond_183

    if-ne v0, v1, :cond_185

    .line 122
    :cond_183
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    .line 123
    :cond_185
    return v3
.end method

.method public reset()V
    .registers 5

    .line 46
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 47
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 48
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 49
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 50
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    .line 52
    :cond_16
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->endMotion()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    .line 54
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    .line 55
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z

    .line 56
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 57
    :cond_2a
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 58
    :cond_33
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    if-eqz v2, :cond_42

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    if-eqz v2, :cond_42

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    invoke-interface {v2, v3, v0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->finishSwipe(ZZ)V

    .line 59
    :cond_42
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    .line 60
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    .line 61
    return-void
.end method
