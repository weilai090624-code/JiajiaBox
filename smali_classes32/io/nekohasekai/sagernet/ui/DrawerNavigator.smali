.class public final Lio/nekohasekai/sagernet/ui/DrawerNavigator;
.super Ljava/lang/Object;
.source "DrawerNavigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;,
        Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;,
        Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;
    }
.end annotation


# static fields
.field private static final HOST:I = 0x7f0a01e2

.field private static volatile fragmentApi:Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;

.field private static final states:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->states:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static api()Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 70
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->fragmentApi:Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;

    if-eqz v0, :cond_5

    return-object v0

    .line 74
    :cond_5
    const-class v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator;

    monitor-enter v0

    .line 75
    :try_start_8
    sget-object v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->fragmentApi:Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;

    if-nez v1, :cond_13

    .line 76
    new-instance v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;-><init>()V

    sput-object v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->fragmentApi:Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;

    .line 78
    :cond_13
    sget-object v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->fragmentApi:Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;

    .line 79
    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static back(Landroid/app/Activity;)Z
    .registers 5

    .line 305
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 306
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->depth()I

    move-result v2

    if-nez v2, :cond_14

    goto :goto_2c

    .line 309
    :cond_14
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->begin()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    .line 310
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->current()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    .line 311
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->settleOpening(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    .line 312
    invoke-static {p0, v0, v2, v1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->transition(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;Z)V

    :cond_2b
    return v3

    :cond_2c
    :goto_2c
    return v1
.end method

.method public static cancelPending(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
    .registers 4

    .line 362
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->observer:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->ready:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_17

    .line 363
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->observer:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->ready:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_17
    const/4 v0, 0x0

    .line 365
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->observer:Landroid/view/ViewTreeObserver;

    .line 366
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->ready:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 367
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->pendingStart:Ljava/lang/Runnable;

    if-eqz v1, :cond_29

    .line 368
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->pendingStart:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 369
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->pendingStart:Ljava/lang/Runnable;

    :cond_29
    return-void
.end method

.method public static captureRoot(Landroid/app/Activity;)V
    .registers 4

    .line 189
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    if-nez v0, :cond_b

    goto :goto_34

    :cond_b
    const v1, 0x7f0a01e2

    .line 193
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 194
    instance-of v1, p0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_34

    .line 195
    check-cast p0, Landroid/widget/FrameLayout;

    .line 196
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_34

    .line 199
    :cond_1f
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 200
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 201
    invoke-virtual {p0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 202
    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->saveIndependent(Landroid/view/View;Landroid/util/SparseArray;)V

    .line 203
    iget-object p0, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->remember(Ljava/lang/Object;)V

    :cond_34
    :goto_34
    return-void
.end method

.method public static destroy(Landroid/app/Activity;)V
    .registers 2

    .line 503
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->dismiss(Landroid/app/Activity;)V

    .line 504
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static dismiss(Landroid/app/Activity;)V
    .registers 2

    .line 488
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    if-nez p0, :cond_b

    return-void

    .line 493
    :cond_b
    :goto_b
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    if-nez v0, :cond_1b

    .line 495
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->complete()V

    return-void

    .line 498
    :cond_1b
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->remove(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    goto :goto_b
.end method

.method static lambda$rootReady$0(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;ILandroid/widget/FrameLayout;Landroid/view/View;Landroid/util/SparseArray;)V
    .registers 5

    .line 182
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->root()I

    move-result p0

    if-ne p0, p1, :cond_1b

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-lez p0, :cond_1b

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-ne p0, p3, :cond_1b

    .line 183
    invoke-virtual {p3, p4}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 184
    invoke-static {p3, p4}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->restoreIndependent(Landroid/view/View;Landroid/util/SparseArray;)V

    :cond_1b
    return-void
.end method

.method static lambda$startAfterLayout$2(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Landroid/app/Activity;)V
    .registers 4

    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->pendingStart:Ljava/lang/Runnable;

    .line 340
    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->current()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_19

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_19

    :cond_14
    const/4 v0, 0x1

    .line 343
    invoke-static {p2, p1, p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->transition(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;Z)V

    return-void

    .line 341
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->releaseMotion()V

    return-void
.end method

.method static lambda$startAfterLayout$3(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)Z
    .registers 3

    .line 348
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->observer:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 349
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->observer:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->ready:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_13
    const/4 v0, 0x0

    .line 351
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->observer:Landroid/view/ViewTreeObserver;

    .line 352
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->ready:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 353
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->pendingStart:Ljava/lang/Runnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    .line 354
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->pendingStart:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_22
    return v1
.end method

.method static lambda$transition$4(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
    .registers 4

    const/4 v0, 0x0

    .line 437
    iput-boolean v0, p1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->opening:Z

    .line 438
    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 439
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->current()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_19

    .line 440
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->releaseMotion()V

    return-void

    .line 443
    :cond_19
    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/RosePalette;->hideDrawerParent(Landroid/view/View;)V

    .line 445
    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->reset(Landroid/view/View;)V

    .line 446
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->complete()V

    .line 447
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->releaseMotion()V

    return-void
.end method

.method static lambda$transition$5(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
    .registers 3

    .line 451
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->current()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_9

    return-void

    .line 454
    :cond_9
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->pop()Ljava/lang/Object;

    .line 455
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->remove(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    .line 456
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->complete()V

    return-void
.end method

.method public static open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const v0, 0x7f0a01e2

    .line 234
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 235
    instance-of v1, v0, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_138

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_138

    .line 236
    check-cast v0, Landroid/widget/FrameLayout;

    .line 237
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1b

    return v2

    .line 240
    :cond_1b
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->state(Landroid/app/Activity;)Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    move-result-object v1

    .line 241
    iget-object v3, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->begin()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_29

    return v4

    .line 244
    :cond_29
    new-instance v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;-><init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;)V

    .line 245
    iput-object v0, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->host:Landroid/widget/FrameLayout;

    .line 246
    iget-object v6, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->current()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    if-eqz v6, :cond_3e

    .line 247
    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->settleOpening(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    :cond_3e
    if-nez v6, :cond_45

    .line 248
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_47

    :cond_45
    iget-object v6, v6, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    :goto_47
    iput-object v6, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    .line 249
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 250
    iput-object v6, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    .line 251
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v7, 0x41200000    # 10.0f

    .line 252
    invoke-static {p0, v7}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v7

    .line 253
    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 254
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 255
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteColor(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 256
    new-instance v7, Lio/nekohasekai/sagernet/ui/DrawerNavigator$2;

    invoke-direct {v7, p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$2;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, p1, v7}, Lio/nekohasekai/sagernet/ui/UiComponents;->header(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 262
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->nestedHeader(Landroid/widget/LinearLayout;)V

    .line 264
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 265
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 266
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v9, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v7, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v7, v3}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->push(Ljava/lang/Object;)V

    .line 269
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->begin(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    move-result-object v7

    iput-object v7, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->motion:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    .line 270
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard;->background(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;

    move-result-object v0

    iput-object v0, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->backgroundLayout:Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;

    .line 271
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 273
    :try_start_ae
    invoke-static {}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->api()Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;

    move-result-object v0

    .line 274
    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->manager:Ljava/lang/reflect/Method;

    invoke-virtual {v6, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->manager:Ljava/lang/Object;

    .line 275
    invoke-virtual {v0, p2}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->constructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->fragment:Ljava/lang/Object;

    .line 276
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 277
    const-string v6, "glass_drawer_page"

    invoke-virtual {p2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->setArguments:Ljava/lang/reflect/Method;

    iget-object v7, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->fragment:Ljava/lang/Object;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object p2, v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object p2, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->begin:Ljava/lang/reflect/Method;

    iget-object v6, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->manager:Ljava/lang/Object;

    invoke-virtual {p2, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 280
    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->add:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v7, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->fragment:Ljava/lang/Object;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v2

    aput-object v7, v8, v4

    invoke-virtual {v6, p2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object p1, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->commit:Ljava/lang/reflect/Method;

    invoke-virtual {p1, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object p1, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->getView:Ljava/lang/reflect/Method;

    iget-object p2, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->fragment:Ljava/lang/Object;

    invoke-virtual {p1, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_11f

    const p2, 0x7f0a02ba

    .line 284
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_116

    const/16 v0, 0x8

    .line 286
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 288
    :cond_116
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 289
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->settingsPage(Landroid/view/View;)V

    .line 290
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/RosePalette;->prepareForDisplay(Landroid/view/View;)V

    .line 292
    :cond_11f
    invoke-static {p0, v1, v3}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->startAfterLayout(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_122} :catch_123

    return v4

    :catch_123
    move-exception p0

    .line 295
    const-string p1, "DrawerNavigator"

    const-string p2, "Cannot open drawer child"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    iget-object p0, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->pop()Ljava/lang/Object;

    .line 297
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->remove(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    .line 298
    iget-object p0, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->complete()V

    :cond_138
    return v2
.end method

.method public static preload()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 137
    invoke-static {}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->api()Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;

    move-result-object v0

    const-string v1, "io.nekohasekai.sagernet.ui.ToolsFragment"

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->constructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    return-void
.end method

.method private static remove(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
    .registers 8

    .line 465
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->cancelPending(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->opening:Z

    .line 467
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 468
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 469
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 470
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/RosePalette;->revealDrawerParent(Landroid/view/View;)V

    .line 471
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->reset(Landroid/view/View;)V

    .line 473
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->fragment:Ljava/lang/Object;

    if-eqz v1, :cond_67

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->manager:Ljava/lang/Object;

    if-eqz v1, :cond_67

    .line 475
    :try_start_41
    invoke-static {}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->api()Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;

    move-result-object v1

    .line 476
    iget-object v3, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->begin:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->manager:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 477
    iget-object v4, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->remove:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->fragment:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v0

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v0, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->commit:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5e} :catch_5f

    goto :goto_67

    :catch_5f
    move-exception v0

    .line 480
    const-string v1, "DrawerNavigator"

    const-string v2, "Cannot remove child"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    :cond_67
    :goto_67
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->host:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 484
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->releaseMotion()V

    return-void
.end method

.method private static reset(Landroid/view/View;)V
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 460
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 461
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private static restoreIndependent(Landroid/view/View;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 221
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    .line 222
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 223
    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 224
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Landroid/view/View;->isSaveFromParentEnabled()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 226
    invoke-virtual {v1, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 228
    :cond_1a
    invoke-static {v1, p1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->restoreIndependent(Landroid/view/View;Landroid/util/SparseArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_20
    return-void
.end method

.method public static rootReady(Landroid/app/Activity;I)V
    .registers 8

    .line 162
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->state(Landroid/app/Activity;)Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    move-result-object v1

    .line 163
    iget-object v0, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->root(I)V

    const v0, 0x7f0a01e2

    .line 164
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 165
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3c

    .line 166
    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    .line 167
    iget-object p0, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->snapshot()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/util/SparseArray;

    .line 168
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-lez p0, :cond_2c

    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    move-object v4, p0

    if-eqz v5, :cond_3c

    if-nez v4, :cond_33

    goto :goto_3c

    .line 172
    :cond_33
    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;-><init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;ILandroid/widget/FrameLayout;Landroid/view/View;Landroid/util/SparseArray;)V

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_3c
    :goto_3c
    return-void
.end method

.method private static saveIndependent(Landroid/view/View;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 208
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    .line 209
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 210
    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 211
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Landroid/view/View;->isSaveFromParentEnabled()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 213
    invoke-virtual {v1, p1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 215
    :cond_1a
    invoke-static {v1, p1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->saveIndependent(Landroid/view/View;Landroid/util/SparseArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_20
    return-void
.end method

.method private static settleOpening(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
    .registers 3

    if-eqz p0, :cond_41

    .line 425
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->opening:Z

    if-nez v0, :cond_7

    goto :goto_41

    :cond_7
    const/4 v0, 0x0

    .line 426
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->opening:Z

    .line 427
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 428
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 429
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->reset(Landroid/view/View;)V

    .line 430
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/RosePalette;->hideDrawerParent(Landroid/view/View;)V

    .line 432
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->reset(Landroid/view/View;)V

    .line 433
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->releaseMotion()V

    :cond_41
    :goto_41
    return-void
.end method

.method private static startAfterLayout(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
    .registers 6

    .line 319
    iget-object v0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_e

    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    .line 320
    :goto_e
    iget-object v1, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 321
    iget-object v1, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 322
    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;

    invoke-direct {v0, p2, p1, p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;-><init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Landroid/app/Activity;)V

    iput-object v0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->pendingStart:Ljava/lang/Runnable;

    .line 328
    new-instance p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$4;

    invoke-direct {p0, p2}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$4;-><init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    iput-object p0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->ready:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 334
    iget-object p0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    iput-object p0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->observer:Landroid/view/ViewTreeObserver;

    .line 335
    iget-object p0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->observer:Landroid/view/ViewTreeObserver;

    iget-object p1, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->ready:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private static state(Landroid/app/Activity;)Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;
    .registers 4

    .line 151
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->states:Ljava/util/WeakHashMap;

    .line 152
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    if-nez v1, :cond_13

    .line 154
    new-instance v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;-><init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;)V

    .line 155
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-object v1
.end method

.method private static transition(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;Z)V
    .registers 11

    .line 374
    iget-object v0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->motion:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    if-nez v0, :cond_14

    .line 375
    iget-object v0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->host:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->begin(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    move-result-object v0

    iput-object v0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->motion:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    .line 376
    iget-object v0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->host:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard;->background(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;

    move-result-object v0

    iput-object v0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->backgroundLayout:Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;

    :cond_14
    const/high16 v0, 0x41b00000    # 22.0f

    .line 378
    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    .line 379
    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    .line 380
    iget-object v1, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v1, v2, :cond_30

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_32

    :cond_30
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_32
    mul-float v0, v0, v1

    mul-float p0, p0, v1

    .line 383
    iget-object v1, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 384
    iget-object v1, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 385
    iget-object v1, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerLayers;->acquire(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    move-result-object v1

    iput-object v1, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parentLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    .line 386
    iget-object v1, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerLayers;->acquire(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    move-result-object v1

    iput-object v1, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->pageLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    const/4 v1, 0x0

    const-wide/16 v4, 0x21c

    const/4 v6, 0x0

    if-eqz p3, :cond_c5

    .line 388
    iput-boolean v2, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->opening:Z

    .line 389
    iput-boolean v1, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->earlyUnlocked:Z

    .line 390
    iget-object p3, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 391
    iget-object p3, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 392
    iget-object p3, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-static {p3}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    neg-float p0, p0

    invoke-virtual {p3, p0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;

    invoke-direct {p3}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;-><init>()V

    invoke-static {p0, p3}, Lio/nekohasekai/sagernet/ui/AppMotion;->interpolate(Landroid/view/ViewPropertyAnimator;Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 393
    iget-object p0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;

    invoke-direct {p3}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;-><init>()V

    invoke-static {p0, p3}, Lio/nekohasekai/sagernet/ui/AppMotion;->interpolate(Landroid/view/ViewPropertyAnimator;Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;

    invoke-direct {p3, p2, p1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;-><init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;)V

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$5;

    invoke-direct {p3, p1, p2}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$5;-><init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    .line 402
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 407
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 410
    :cond_c5
    iget-object p3, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-static {p3}, Lio/nekohasekai/sagernet/ui/RosePalette;->revealDrawerParent(Landroid/view/View;)V

    .line 411
    iget-object p3, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object p3, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 413
    iget-object p3, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    neg-float p0, p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 414
    iget-object p0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;

    invoke-direct {p3}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;-><init>()V

    invoke-static {p0, p3}, Lio/nekohasekai/sagernet/ui/AppMotion;->interpolate(Landroid/view/ViewPropertyAnimator;Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 415
    iget-object p0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;

    invoke-direct {p3}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;-><init>()V

    invoke-static {p0, p3}, Lio/nekohasekai/sagernet/ui/AppMotion;->interpolate(Landroid/view/ViewPropertyAnimator;Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$7;

    invoke-direct {p3, p1, p2}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$7;-><init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 420
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
