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
.field private static final exclusiveTouches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static movingControllers:I


# instance fields
.field private active:Z

.field private final activity:Landroid/app/Activity;

.field private animator:Landroid/animation/ValueAnimator;

.field private distance:F

.field private eligible:Z

.field private final host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

.field private incoming:Landroid/view/View;

.field private motionLease:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

.field private motionRegistered:Z

.field private outgoing:Landroid/view/View;

.field private settling:Z

.field private startX:F

.field private startY:F

.field private toBlank:Z

.field private final touchSlop:F

.field private width:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->exclusiveTouches:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->activity:Landroid/app/Activity;

    .line 70
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    .line 71
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->touchSlop:F

    return-void
.end method

.method static synthetic access$000(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Landroid/view/View;
    .registers 1

    .line 29
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 29
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Landroid/view/View;
    .registers 1

    .line 29
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 29
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->endMotion()V

    return-void
.end method

.method static synthetic access$300(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    return p0
.end method

.method static synthetic access$400(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;
    .registers 1

    .line 29
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    return-object p0
.end method

.method static synthetic access$502(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    .line 29
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$602(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Z)Z
    .registers 2

    .line 29
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    return p1
.end method

.method static synthetic access$702(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Z)Z
    .registers 2

    .line 29
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    return p1
.end method

.method static synthetic access$802(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Z)Z
    .registers 2

    .line 29
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z

    return p1
.end method

.method private apply(F)V
    .registers 5

    .line 176
    iput p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->distance:F

    .line 177
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    if-eqz v1, :cond_a

    neg-float v1, p1

    goto :goto_b

    :cond_a
    move v1, p1

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 178
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

    return-void
.end method

.method private beginMotion()V
    .registers 3

    .line 51
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->motionRegistered:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->motionRegistered:Z

    sget v1, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->movingControllers:I

    add-int/2addr v1, v0

    sput v1, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->movingControllers:I

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->begin(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->motionLease:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    :cond_1c
    return-void
.end method

.method private static childOwnsGesture(Landroid/view/View;FF)Z
    .registers 7

    .line 35
    sget-object v0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->exclusiveTouches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-ne v3, p0, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_a

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method private endMotion()V
    .registers 2

    .line 52
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->motionRegistered:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->motionRegistered:Z

    sget v0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->movingControllers:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->movingControllers:I

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->motionLease:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->motionLease:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    :cond_17
    return-void
.end method

.method public static exclusiveTouch(Landroid/view/View;Z)V
    .registers 3

    if-eqz p1, :cond_d

    .line 33
    sget-object p1, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->exclusiveTouches:Ljava/util/Map;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_d
    sget-object p1, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->exclusiveTouches:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static isMoving()Z
    .registers 1

    .line 50
    sget v0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->movingControllers:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private settle(Z)V
    .registers 7

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z

    .line 183
    iget v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->distance:F

    if-eqz p1, :cond_a

    .line 184
    iget v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    const/4 v3, 0x2

    .line 185
    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    sub-float/2addr v2, v1

    .line 186
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

    .line 187
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 188
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lio/nekohasekai/sagernet/ui/HomeSwipeController$0;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$0;-><init>(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 189
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;

    invoke-direct {v1, p0, p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;-><init>(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public backToHome()V
    .registers 5

    .line 157
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z

    if-nez v0, :cond_5e

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    if-nez v0, :cond_5e

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->canSwipe(Z)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_5e

    .line 158
    :cond_12
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    invoke-interface {v0, v1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->prepareSwipe(Z)[Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 159
    aget-object v2, v0, v1

    if-eqz v2, :cond_5e

    const/4 v3, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_24

    goto :goto_5e

    .line 160
    :cond_24
    iput-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    .line 161
    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    .line 162
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    .line 163
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_53

    .line 165
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    invoke-interface {v0, v1, v1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->finishSwipe(ZZ)V

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    return-void

    .line 169
    :cond_53
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->beginMotion()V

    .line 170
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    .line 171
    invoke-direct {p0, v2}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->apply(F)V

    .line 172
    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settle(Z)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method synthetic lambda$settle$0$io-nekohasekai-sagernet-ui-HomeSwipeController(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 188
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

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 94
    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_94

    .line 96
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->reset()V

    .line 97
    :cond_15
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    .line 98
    iput v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->distance:F

    .line 99
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    invoke-interface {v0, v2}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->canSwipe(Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    if-nez v0, :cond_2b

    .line 100
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    invoke-interface {v0, v3}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->canSwipe(Z)Z

    move-result v0

    if-eqz v0, :cond_84

    :cond_2b
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->activity:Landroid/app/Activity;

    .line 101
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v0, v1, v4}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->childOwnsGesture(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_84

    .line 102
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

    if-lez v0, :cond_84

    .line 103
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

    .line 104
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41c00000    # 24.0f

    mul-float v4, v4, v5

    sub-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_84

    goto :goto_85

    :cond_84
    const/4 v2, 0x0

    :goto_85
    iput-boolean v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startX:F

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startY:F

    return v3

    .line 109
    :cond_94
    iget-boolean v4, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    if-nez v4, :cond_9d

    iget-boolean v4, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    if-nez v4, :cond_9d

    return v3

    :cond_9d
    const/4 v4, 0x2

    if-ne v0, v4, :cond_168

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v5, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startX:F

    sub-float/2addr v0, v5

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startY:F

    sub-float/2addr v5, v6

    .line 113
    iget-boolean v6, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    if-nez v6, :cond_14e

    .line 114
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v6, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->touchSlop:F

    cmpl-float p1, p1, v6

    if-lez p1, :cond_cb

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float p1, p1, v6

    if-lez p1, :cond_cb

    .line 115
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    return v3

    .line 118
    :cond_cb
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v6, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->touchSlop:F

    cmpg-float p1, p1, v6

    if-ltz p1, :cond_14d

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3fa66666    # 1.3f

    mul-float v5, v5, v6

    cmpg-float p1, p1, v5

    if-gez p1, :cond_e7

    goto :goto_14d

    .line 119
    :cond_e7
    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    if-eqz p1, :cond_f0

    cmpl-float v5, v0, v1

    if-ltz v5, :cond_f7

    goto :goto_f4

    :cond_f0
    cmpg-float v5, v0, v1

    if-gtz v5, :cond_f7

    .line 120
    :goto_f4
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    return v3

    .line 123
    :cond_f7
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    invoke-interface {v5, p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->prepareSwipe(Z)[Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_14b

    .line 124
    aget-object v5, p1, v3

    if-eqz v5, :cond_14b

    aget-object p1, p1, v2

    if-nez p1, :cond_108

    goto :goto_14b

    .line 128
    :cond_108
    iput-object v5, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    .line 129
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    .line 130
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

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

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_138

    .line 132
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    invoke-interface {p1, v0, v3}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->finishSwipe(ZZ)V

    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    .line 134
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    return v3

    .line 137
    :cond_138
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->beginMotion()V

    .line 138
    iput-boolean v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    .line 139
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->apply(F)V

    return v4

    .line 125
    :cond_14b
    :goto_14b
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    :cond_14d
    :goto_14d
    return v3

    .line 142
    :cond_14e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startX:F

    sub-float/2addr p1, v0

    .line 143
    iget v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    if-eqz v3, :cond_15c

    neg-float p1, p1

    :cond_15c
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->apply(F)V

    return v2

    .line 146
    :cond_168
    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    const/4 v1, 0x5

    const/4 v4, 0x3

    if-eqz p1, :cond_188

    if-eq v0, v2, :cond_174

    if-eq v0, v4, :cond_174

    if-ne v0, v1, :cond_188

    :cond_174
    if-ne v0, v2, :cond_184

    .line 148
    iget p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->distance:F

    iget v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    const v1, 0x3df5c28f    # 0.12f

    mul-float v0, v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_184

    const/4 v3, 0x1

    :cond_184
    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settle(Z)V

    return v2

    :cond_188
    if-eq v0, v2, :cond_18e

    if-eq v0, v4, :cond_18e

    if-ne v0, v1, :cond_190

    .line 152
    :cond_18e
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    :cond_190
    return v3
.end method

.method public reset()V
    .registers 5

    .line 75
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 76
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 77
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 78
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 79
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    .line 81
    :cond_14
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->endMotion()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    .line 83
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    .line 84
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z

    .line 85
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 86
    :cond_26
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    if-eqz v2, :cond_2d

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 87
    :cond_2d
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    invoke-interface {v2, v3, v0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->finishSwipe(ZZ)V

    .line 88
    :cond_3c
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    .line 89
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    return-void
.end method
