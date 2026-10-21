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

.field private final cacheAfterLayout:Ljava/lang/Runnable;

.field private distance:F

.field private eligible:Z

.field private final host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

.field private incoming:Landroid/view/View;

.field private incomingLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

.field private layerRetry:Z

.field private motionLease:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

.field private motionRegistered:Z

.field private outgoing:Landroid/view/View;

.field private outgoingLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

.field private settleDestination:Z

.field private settling:Z

.field private startX:F

.field private startY:F

.field private takeover:Z

.field private takeoverDistance:F

.field private toBlank:Z

.field private final touchSlop:F

.field private width:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->exclusiveTouches:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;)V
    .registers 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$2;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$2;-><init>(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->cacheAfterLayout:Ljava/lang/Runnable;

    .line 92
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->activity:Landroid/app/Activity;

    .line 93
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    .line 94
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->touchSlop:F

    return-void
.end method

.method static synthetic access$000(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 28
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$002(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    .line 28
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Landroid/view/View;
    .registers 1

    .line 28
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 28
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Landroid/view/View;
    .registers 1

    .line 28
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 28
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Z
    .registers 1

    .line 28
    iget-boolean p0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    return p0
.end method

.method static synthetic access$400(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;
    .registers 1

    .line 28
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    return-object p0
.end method

.method static synthetic access$500(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->endMotion()V

    return-void
.end method

.method static synthetic access$602(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    return p1
.end method

.method static synthetic access$702(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    return p1
.end method

.method static synthetic access$802(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z

    return p1
.end method

.method private apply(F)V
    .registers 5

    .line 208
    iget v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->distance:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2c

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    if-eqz v1, :cond_12

    neg-float v1, p1

    goto :goto_13

    :cond_12
    move v1, p1

    :goto_13
    cmpl-float v0, v0, v1

    if-nez v0, :cond_2c

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    iget v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    if-eqz v1, :cond_25

    sub-float/2addr v2, p1

    goto :goto_27

    :cond_25
    sub-float v2, p1, v2

    :goto_27
    cmpl-float v0, v0, v2

    if-nez v0, :cond_2c

    return-void

    .line 209
    :cond_2c
    iput p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->distance:F

    .line 210
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    if-eqz v1, :cond_36

    neg-float v1, p1

    goto :goto_37

    :cond_36
    move v1, p1

    :goto_37
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 211
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    iget v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    if-eqz v1, :cond_44

    sub-float/2addr v2, p1

    goto :goto_46

    :cond_44
    sub-float v2, p1, v2

    :goto_46
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private beginMotion()V
    .registers 3

    .line 68
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

.method private cachePages(Z)V
    .registers 3

    .line 53
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoingLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    if-nez v0, :cond_c

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers;->acquire(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoingLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    .line 54
    :cond_c
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incomingLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    if-nez v0, :cond_18

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers;->acquire(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incomingLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    :cond_18
    if-eqz p1, :cond_38

    .line 55
    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->layerRetry:Z

    if-nez p1, :cond_38

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoingLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    if-eqz p1, :cond_26

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incomingLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    if-nez p1, :cond_38

    :cond_26
    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->layerRetry:Z

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->cacheAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_38
    return-void
.end method

.method private static childOwnsGesture(Landroid/view/View;FF)Z
    .registers 7

    .line 34
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

    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 36
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
    .registers 4

    .line 70
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->cacheAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->layerRetry:Z

    .line 71
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoingLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->close()V

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoingLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    .line 72
    :cond_1c
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incomingLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->close()V

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incomingLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    .line 73
    :cond_25
    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->motionRegistered:Z

    if-eqz v1, :cond_3a

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->motionRegistered:Z

    sget v0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->movingControllers:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->movingControllers:I

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->motionLease:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;->close()V

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->motionLease:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    :cond_3a
    return-void
.end method

.method public static exclusiveTouch(Landroid/view/View;Z)V
    .registers 3

    if-eqz p1, :cond_d

    .line 32
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

    .line 67
    sget v0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->movingControllers:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private prepare(Z)[Landroid/view/View;
    .registers 4

    .line 60
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->beginMotion()V

    .line 62
    :try_start_3
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    invoke-interface {v0, p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->prepareSwipe(Z)[Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 63
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1b

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    aget-object v0, p1, v0

    if-nez v0, :cond_1a

    goto :goto_1b

    :cond_1a
    return-object p1

    :cond_1b
    :goto_1b
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->endMotion()V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_1e} :catch_22
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_1e} :catch_20

    const/4 p1, 0x0

    return-object p1

    :catch_20
    move-exception p1

    goto :goto_23

    :catch_22
    move-exception p1

    .line 65
    :goto_23
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->endMotion()V

    throw p1
.end method

.method private settle(Z)V
    .registers 7

    .line 218
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->stopAnimator()V

    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settleDestination:Z

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z

    .line 220
    iget v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->distance:F

    if-eqz p1, :cond_f

    .line 221
    iget v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    const/4 v3, 0x2

    .line 222
    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    sub-float/2addr v2, v1

    .line 223
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x44070000    # 540.0f

    mul-float v1, v1, v2

    iget v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v2, 0xa5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 224
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    sget-object v1, Lio/nekohasekai/sagernet/ui/AppMotion;->CURVE:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/AppMotion;->interpolate(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;)V

    .line 225
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lio/nekohasekai/sagernet/ui/HomeSwipeController$0;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$0;-><init>(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 226
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;

    invoke-direct {v1, p0, p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;-><init>(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/AppMotion;->prepare(Landroid/animation/Animator;)V
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private stopAnimator()V
    .registers 2

    .line 215
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    :cond_14
    return-void
.end method


# virtual methods
.method public backToHome()V
    .registers 5

    .line 187
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z

    const/4 v1, 0x1

    if-nez v0, :cond_64

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    if-eqz v0, :cond_a

    goto :goto_64

    .line 188
    :cond_a
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->canSwipe(Z)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_63

    .line 189
    :cond_14
    invoke-direct {p0, v2}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->prepare(Z)[Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 190
    aget-object v3, v0, v2

    if-eqz v3, :cond_63

    aget-object v0, v0, v1

    if-nez v0, :cond_23

    goto :goto_63

    .line 191
    :cond_23
    iput-boolean v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    .line 192
    iput-object v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    .line 193
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    .line 194
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

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

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_55

    .line 196
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    invoke-interface {v0, v2, v2}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->finishSwipe(ZZ)V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->endMotion()V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    return-void

    .line 200
    :cond_55
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->beginMotion()V

    .line 201
    iput-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    .line 202
    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->cachePages(Z)V

    .line 203
    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->apply(F)V

    .line 204
    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settle(Z)V

    :cond_63
    :goto_63
    return-void

    .line 187
    :cond_64
    :goto_64
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settle(Z)V

    return-void
.end method

.method synthetic lambda$new$0$io-nekohasekai-sagernet-ui-HomeSwipeController()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->layerRetry:Z

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    if-eqz v1, :cond_a

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->cachePages(Z)V

    :cond_a
    return-void
.end method

.method synthetic lambda$settle$1$io-nekohasekai-sagernet-ui-HomeSwipeController(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 225
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

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 116
    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_32

    if-eqz v0, :cond_d

    return v2

    .line 118
    :cond_d
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->stopAnimator()V

    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z

    iput-boolean v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    iput-boolean v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    iput-boolean v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->takeover:Z

    iget v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->distance:F

    iput v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->takeoverDistance:F

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    iget v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->distance:F

    if-eqz v1, :cond_27

    goto :goto_28

    :cond_27
    neg-float v3, v3

    :goto_28
    add-float/2addr v0, v3

    iput v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startY:F

    return v2

    :cond_32
    const/4 v1, 0x0

    if-nez v0, :cond_bd

    .line 123
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->reset()V

    .line 124
    :cond_3c
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    .line 125
    iput v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->distance:F

    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->takeover:Z

    .line 126
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    invoke-interface {v0, v2}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->canSwipe(Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    if-nez v0, :cond_54

    .line 127
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    invoke-interface {v0, v3}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->canSwipe(Z)Z

    move-result v0

    if-eqz v0, :cond_ad

    :cond_54
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->activity:Landroid/app/Activity;

    .line 128
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

    if-nez v0, :cond_ad

    .line 129
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

    if-lez v0, :cond_ad

    .line 130
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

    .line 131
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41c00000    # 24.0f

    mul-float v4, v4, v5

    sub-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_ad

    goto :goto_ae

    :cond_ad
    const/4 v2, 0x0

    :goto_ae
    iput-boolean v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startX:F

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startY:F

    return v3

    .line 136
    :cond_bd
    iget-boolean v4, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    if-nez v4, :cond_c6

    iget-boolean v4, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    if-nez v4, :cond_c6

    return v3

    :cond_c6
    const/4 v4, 0x2

    if-ne v0, v4, :cond_195

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v5, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startX:F

    sub-float/2addr v0, v5

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startY:F

    sub-float/2addr v5, v6

    .line 140
    iget-boolean v6, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    if-nez v6, :cond_17b

    .line 141
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v6, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->touchSlop:F

    cmpl-float p1, p1, v6

    if-lez p1, :cond_f4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float p1, p1, v6

    if-lez p1, :cond_f4

    .line 142
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    return v3

    .line 145
    :cond_f4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v6, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->touchSlop:F

    cmpg-float p1, p1, v6

    if-ltz p1, :cond_17a

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3fa66666    # 1.3f

    mul-float v5, v5, v6

    cmpg-float p1, p1, v5

    if-gez p1, :cond_110

    goto :goto_17a

    .line 146
    :cond_110
    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    if-eqz p1, :cond_119

    cmpl-float v5, v0, v1

    if-ltz v5, :cond_120

    goto :goto_11d

    :cond_119
    cmpg-float v5, v0, v1

    if-gtz v5, :cond_120

    .line 147
    :goto_11d
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    return v3

    .line 150
    :cond_120
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->prepare(Z)[Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_178

    .line 151
    aget-object v5, p1, v3

    if-eqz v5, :cond_178

    aget-object p1, p1, v2

    if-nez p1, :cond_12f

    goto :goto_178

    .line 155
    :cond_12f
    iput-object v5, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    .line 156
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    .line 157
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

    if-gtz p1, :cond_162

    .line 159
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    invoke-interface {p1, v0, v3}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->finishSwipe(ZZ)V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->endMotion()V

    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    .line 161
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    return v3

    .line 164
    :cond_162
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->beginMotion()V

    .line 165
    iput-boolean v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    .line 166
    invoke-direct {p0, v2}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->cachePages(Z)V

    .line 167
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->apply(F)V

    return v4

    .line 152
    :cond_178
    :goto_178
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    :cond_17a
    :goto_17a
    return v3

    .line 170
    :cond_17b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->startX:F

    sub-float/2addr p1, v0

    .line 171
    iget v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    if-eqz v3, :cond_189

    neg-float p1, p1

    :cond_189
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->apply(F)V

    return v2

    .line 174
    :cond_195
    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    const/4 v1, 0x5

    const/4 v4, 0x3

    if-eqz p1, :cond_1da

    if-eq v0, v2, :cond_1a1

    if-eq v0, v4, :cond_1a1

    if-ne v0, v1, :cond_1da

    .line 176
    :cond_1a1
    iget p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->distance:F

    iget v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->width:F

    const v4, 0x3df5c28f    # 0.12f

    mul-float v1, v1, v4

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1b0

    const/4 v1, 0x1

    goto :goto_1b1

    :cond_1b0
    const/4 v1, 0x0

    .line 177
    :goto_1b1
    iget-boolean v4, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->takeover:Z

    if-eqz v4, :cond_1d1

    iget v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->takeoverDistance:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->touchSlop:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1ce

    iget p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->distance:F

    iget v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->takeoverDistance:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1cc

    const/4 v1, 0x1

    goto :goto_1d1

    :cond_1cc
    const/4 v1, 0x0

    goto :goto_1d1

    :cond_1ce
    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settleDestination:Z

    move v1, p1

    :cond_1d1
    :goto_1d1
    if-ne v0, v2, :cond_1d6

    if-eqz v1, :cond_1d6

    const/4 v3, 0x1

    .line 178
    :cond_1d6
    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settle(Z)V

    return v2

    :cond_1da
    if-eq v0, v2, :cond_1e0

    if-eq v0, v4, :cond_1e0

    if-ne v0, v1, :cond_1e2

    .line 182
    :cond_1e0
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    :cond_1e2
    return v3
.end method

.method public reset()V
    .registers 5

    .line 98
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 99
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 100
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 101
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 102
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;

    :cond_14
    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z

    .line 105
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z

    .line 106
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z

    .line 107
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 108
    :cond_23
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    if-eqz v2, :cond_2a

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 109
    :cond_2a
    :try_start_2a
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z

    invoke-interface {v2, v3, v0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->finishSwipe(ZZ)V
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_41

    :cond_39
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->endMotion()V

    .line 110
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;

    .line 111
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;

    return-void

    :catchall_41
    move-exception v0

    .line 109
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->endMotion()V

    throw v0
.end method
