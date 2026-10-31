.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.super Lcom/google/android/material/appbar/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        ">",
        "Lcom/google/android/material/appbar/HeaderBehavior<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EXPAND_BY_KEY_EVENT_THRESHOLD_PERCENTAGE:D = 0.1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258


# instance fields
.field private coordinatorLayoutA11yScrollable:Z

.field private lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private lastStartedType:I

.field private offsetAnimator:Landroid/animation/ValueAnimator;

.field private offsetDelta:I

.field private onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

.field private savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1477
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    invoke-direct {p0}, Lcom/google/android/material/appbar/HeaderBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1480
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1481
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    .line 1446
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->coordinatorLayoutA11yScrollable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    .line 1446
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    return v0
.end method

.method private addAccessibilityScrollActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z
    .registers 14
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "scrollingView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 1951
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "appBarLayout":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    const/4 v0, 0x0

    .line 1952
    .local v0, "a11yScrollable":Z
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    neg-int v2, v2

    if-eq v1, v2, :cond_13

    .line 1955
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->addActionToExpand(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Z)V

    .line 1956
    const/4 v0, 0x1

    .line 1960
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    if-eqz v1, :cond_41

    .line 1961
    const/4 v1, -0x1

    invoke-virtual {p3, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1964
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v1

    neg-int v1, v1

    .line 1966
    .local v1, "dy":I
    if-eqz v1, :cond_39

    .line 1967
    sget-object v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v9, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    const/4 v2, 0x0

    invoke-static {p1, v8, v2, v9}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 1985
    const/4 v0, 0x1

    .line 1987
    .end local v1    # "dy":I
    :cond_39
    goto :goto_41

    .line 1990
    :cond_3a
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->addActionToExpand(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Z)V

    .line 1991
    const/4 v0, 0x1

    .line 1994
    :cond_41
    :goto_41
    return v0
.end method

.method private addActionToExpand(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Z)V
    .registers 7
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "action"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    .param p4, "expand"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            "Z)V"
        }
    .end annotation

    .line 2002
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "appBarLayout":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;

    invoke-direct {v0, p0, p2, p4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    const/4 v1, 0x0

    invoke-static {p1, p3, v1, v0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 2013
    return-void
.end method

.method private animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V
    .registers 9
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "offset"    # I
    .param p4, "velocity"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IF)V"
        }
    .end annotation

    .line 1606
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "child":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1609
    .local v0, "distance":I
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 1610
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_1f

    .line 1611
    int-to-float v1, v0

    div-float/2addr v1, p4

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .local v1, "duration":I
    goto :goto_2f

    .line 1613
    .end local v1    # "duration":I
    :cond_1f
    int-to-float v1, v0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1614
    .local v1, "distanceRatio":F
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    const/high16 v3, 0x43160000    # 150.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    move v1, v2

    .line 1617
    .local v1, "duration":I
    :goto_2f
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetWithDuration(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V

    .line 1618
    return-void
.end method

.method private animateOffsetWithDuration(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V
    .registers 9
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "offset"    # I
    .param p4, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;II)V"
        }
    .end annotation

    .line 1625
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "child":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 1626
    .local v0, "currentOffset":I
    if-ne v0, p3, :cond_18

    .line 1627
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1628
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1630
    :cond_17
    return-void

    .line 1633
    :cond_18
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_35

    .line 1634
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 1635
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ui/AppMotion;->interpolate(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;)V

    .line 1636
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_3a

    .line 1645
    :cond_35
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1648
    :goto_3a
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    const/16 v2, 0x258

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1649
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    filled-new-array {v0, p3}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1650
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppMotion;->prepare(Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1651
    return-void
.end method

.method private calculateSnapOffset(III)I
    .registers 5
    .param p1, "value"    # I
    .param p2, "bottom"    # I
    .param p3, "top"    # I

    .line 1729
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_8

    move v0, p2

    goto :goto_9

    :cond_8
    move v0, p3

    :goto_9
    return v0
.end method

.method private canScrollChildren(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z
    .registers 6
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 1514
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "child":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->hasScrollableChildren()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1515
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 1514
    :goto_18
    return v0
.end method

.method private static checkFlag(II)Z
    .registers 3
    .param p0, "flags"    # I
    .param p1, "check"    # I

    .line 1733
    and-int v0, p0, p1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private childrenHaveScrollFlags(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .registers 8
    .param p1, "appBarLayout"    # Lcom/google/android/material/appbar/AppBarLayout;

    .line 1934
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    .line 1935
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1a

    .line 1936
    invoke-virtual {p1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1937
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 1938
    .local v3, "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    iget v4, v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 1940
    .local v4, "flags":I
    if-eqz v4, :cond_17

    .line 1941
    const/4 v5, 0x1

    return v5

    .line 1935
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v4    # "flags":I
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1944
    .end local v1    # "i":I
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method private controlExpansionOnKeyPress(Landroid/view/KeyEvent;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)V
    .registers 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "scrollableChild"    # Landroid/view/View;
    .param p3, "abl"    # Lcom/google/android/material/appbar/AppBarLayout;

    .line 1860
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4d

    .line 1861
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1862
    .local v0, "keyCode":I
    const/16 v2, 0x13

    if-eq v0, v2, :cond_35

    const/16 v2, 0x118

    if-eq v0, v2, :cond_35

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_1e

    goto :goto_35

    .line 1870
    :cond_1e
    const/16 v1, 0x14

    if-eq v0, v1, :cond_2a

    const/16 v1, 0x119

    if-eq v0, v1, :cond_2a

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_4d

    .line 1873
    :cond_2a
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-lez v1, :cond_4d

    .line 1874
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    goto :goto_4d

    .line 1866
    :cond_35
    :goto_35
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-double v2, v2

    .line 1867
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v4, v4, v6

    cmpg-double v6, v2, v4

    if-gez v6, :cond_4d

    .line 1868
    invoke-virtual {p3, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 1878
    .end local v0    # "keyCode":I
    :cond_4d
    :goto_4d
    return-void
.end method

.method private findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2253
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_5
    if-ge v0, v1, :cond_1c

    .line 2254
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2255
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroidx/core/view/NestedScrollingChild;

    if-nez v3, :cond_1b

    instance-of v3, v2, Landroid/widget/ListView;

    if-nez v3, :cond_1b

    instance-of v3, v2, Landroid/widget/ScrollView;

    if-eqz v3, :cond_18

    goto :goto_1b

    .line 2253
    .end local v2    # "child":Landroid/view/View;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2258
    .restart local v2    # "child":Landroid/view/View;
    :cond_1b
    :goto_1b
    return-object v2

    .line 2261
    .end local v0    # "i":I
    .end local v1    # "z":I
    .end local v2    # "child":Landroid/view/View;
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getAppBarChildOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)Landroid/view/View;
    .registers 7
    .param p0, "layout"    # Lcom/google/android/material/appbar/AppBarLayout;
    .param p1, "offset"    # I

    .line 2241
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2242
    .local v0, "absOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_9
    if-ge v1, v2, :cond_1f

    .line 2243
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2244
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v0, v4, :cond_1c

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v0, v4, :cond_1c

    .line 2245
    return-object v3

    .line 2242
    .end local v3    # "child":Landroid/view/View;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2248
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_1f
    const/4 v1, 0x0

    return-object v1
.end method

.method private getChildIndexOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I
    .registers 11
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 1654
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p1, "abl":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_5
    if-ge v0, v1, :cond_35

    .line 1655
    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1656
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1657
    .local v3, "top":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1659
    .local v4, "bottom":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 1660
    .local v5, "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    invoke-virtual {v5}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v6

    const/16 v7, 0x20

    invoke-static {v6, v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1662
    iget v6, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v6

    .line 1663
    iget v6, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v6

    .line 1666
    :cond_2b
    neg-int v6, p2

    if-gt v3, v6, :cond_32

    neg-int v6, p2

    if-lt v4, v6, :cond_32

    .line 1667
    return v0

    .line 1654
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "top":I
    .end local v4    # "bottom":I
    .end local v5    # "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1670
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_35
    const/4 v0, -0x1

    return v0
.end method

.method private getChildWithScrollingBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    .registers 7
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1920
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1921
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1e

    .line 1922
    invoke-virtual {p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1924
    .local v2, "child":Landroid/view/View;
    nop

    .line 1925
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1926
    .local v3, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    if-eqz v4, :cond_1b

    .line 1927
    return-object v2

    .line 1921
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1930
    .end local v1    # "i":I
    :cond_1e
    const/4 v1, 0x0

    return-object v1
.end method

.method private interpolateOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I
    .registers 15
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 2128
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p1, "layout":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2130
    .local v0, "absOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_9
    if-ge v1, v2, :cond_75

    .line 2131
    invoke-virtual {p1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2132
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 2133
    .local v4, "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    invoke-virtual {v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 2135
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt v0, v6, :cond_72

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    if-gt v0, v6, :cond_72

    .line 2136
    if-eqz v5, :cond_75

    .line 2137
    const/4 v6, 0x0

    .line 2138
    .local v6, "childScrollableHeight":I
    invoke-virtual {v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v7

    .line 2139
    .local v7, "flags":I
    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_44

    .line 2141
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 2143
    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_44

    .line 2146
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v6, v8

    .line 2150
    :cond_44
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 2151
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v8

    sub-int/2addr v6, v8

    .line 2154
    :cond_4f
    if-lez v6, :cond_71

    .line 2155
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v8, v0, v8

    .line 2156
    .local v8, "offsetForView":I
    int-to-float v9, v6

    int-to-float v10, v8

    int-to-float v11, v6

    div-float/2addr v10, v11

    .line 2159
    invoke-interface {v5, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float v9, v9, v10

    .line 2157
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 2162
    .local v9, "interpolatedDiff":I
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result v10

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/2addr v11, v9

    mul-int v10, v10, v11

    return v10

    .line 2164
    .end local v6    # "childScrollableHeight":I
    .end local v7    # "flags":I
    .end local v8    # "offsetForView":I
    .end local v9    # "interpolatedDiff":I
    :cond_71
    goto :goto_75

    .line 2130
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2172
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_75
    :goto_75
    return p2
.end method

.method private shouldJumpElevationState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Z
    .registers 11
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)Z"
        }
    .end annotation

    .line 2224
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "layout":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 2225
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_9
    const/4 v3, 0x0

    if-ge v1, v2, :cond_2f

    .line 2226
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2227
    .local v4, "dependency":Landroid/view/View;
    nop

    .line 2228
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2229
    .local v5, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v6

    .line 2231
    .local v6, "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    instance-of v7, v6, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    if-eqz v7, :cond_2c

    .line 2232
    move-object v7, v6

    check-cast v7, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    invoke-virtual {v7}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->getOverlayTop()I

    move-result v7

    if-eqz v7, :cond_2b

    const/4 v3, 0x1

    :cond_2b
    return v3

    .line 2225
    .end local v4    # "dependency":Landroid/view/View;
    .end local v5    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v6    # "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2235
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2f
    return v3
.end method

.method private snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .registers 14
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    .line 1674
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "abl":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1678
    .local v0, "topInset":I
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1679
    .local v1, "offset":I
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getChildIndexOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I

    move-result v2

    .line 1680
    .local v2, "offsetChildIndex":I
    if-ltz v2, :cond_85

    .line 1681
    invoke-virtual {p2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1682
    .local v3, "offsetChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 1683
    .local v4, "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    invoke-virtual {v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v5

    .line 1685
    .local v5, "flags":I
    and-int/lit8 v6, v5, 0x11

    const/16 v7, 0x11

    if-ne v6, v7, :cond_85

    .line 1687
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int v6, v6

    .line 1688
    .local v6, "snapTop":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    neg-int v7, v7

    .line 1692
    .local v7, "snapBottom":I
    if-nez v2, :cond_45

    .line 1693
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 1694
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 1695
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v8

    sub-int/2addr v6, v8

    .line 1698
    :cond_45
    const/4 v8, 0x2

    invoke-static {v5, v8}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 1700
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_63

    .line 1701
    :cond_52
    const/4 v8, 0x5

    invoke-static {v5, v8}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v8

    if-eqz v8, :cond_63

    .line 1705
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v7

    .line 1706
    .local v8, "seam":I
    if-ge v1, v8, :cond_62

    .line 1707
    move v6, v8

    goto :goto_63

    .line 1709
    :cond_62
    move v7, v8

    .line 1713
    .end local v8    # "seam":I
    :cond_63
    :goto_63
    const/16 v8, 0x20

    invoke-static {v5, v8}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 1715
    iget v8, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    .line 1716
    iget v8, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v7, v8

    .line 1721
    :cond_71
    invoke-direct {p0, v1, v7, v6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->calculateSnapOffset(III)I

    move-result v8

    add-int/2addr v8, v0

    .line 1722
    .local v8, "newOffset":I
    nop

    .line 1723
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v9

    neg-int v9, v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v9

    .line 1722
    const/4 v10, 0x0

    invoke-direct {p0, p1, p2, v9, v10}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V

    .line 1726
    .end local v3    # "offsetChild":Landroid/view/View;
    .end local v4    # "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v5    # "flags":I
    .end local v6    # "snapTop":I
    .end local v7    # "snapBottom":I
    .end local v8    # "newOffset":I
    :cond_85
    return-void
.end method

.method private updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .registers 5
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    .line 1882
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "appBarLayout":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 1883
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 1885
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-nez v0, :cond_19

    .line 1886
    return-void

    .line 1890
    :cond_19
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getChildWithScrollingBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object v0

    .line 1891
    .local v0, "scrollingView":Landroid/view/View;
    if-nez v0, :cond_20

    .line 1892
    return-void

    .line 1896
    :cond_20
    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->childrenHaveScrollFlags(Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1897
    return-void

    .line 1900
    :cond_27
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 1901
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)V

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 1914
    :cond_35
    nop

    .line 1915
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->addAccessibilityScrollActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->coordinatorLayoutA11yScrollable:Z

    .line 1916
    return-void
.end method

.method private updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V
    .registers 16
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "offset"    # I
    .param p4, "direction"    # I
    .param p5, "forceJump"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IIZ)V"
        }
    .end annotation

    .line 2181
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "layout":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    invoke-static {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getAppBarChildOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)Landroid/view/View;

    move-result-object v0

    .line 2182
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    .line 2183
    .local v1, "lifted":Z
    if-eqz v0, :cond_44

    .line 2184
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 2185
    .local v2, "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v3

    .line 2187
    .local v3, "flags":I
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_44

    .line 2188
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v4

    .line 2190
    .local v4, "minHeight":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez p4, :cond_31

    and-int/lit8 v7, v3, 0xc

    if-eqz v7, :cond_31

    .line 2197
    neg-int v7, p3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v9

    sub-int/2addr v8, v9

    if-lt v7, v8, :cond_2f

    const/4 v5, 0x1

    :cond_2f
    move v1, v5

    goto :goto_44

    .line 2198
    :cond_31
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_44

    .line 2201
    neg-int v7, p3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v9

    sub-int/2addr v8, v9

    if-lt v7, v8, :cond_43

    const/4 v5, 0x1

    :cond_43
    move v1, v5

    .line 2206
    .end local v2    # "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v3    # "flags":I
    .end local v4    # "minHeight":I
    :cond_44
    :goto_44
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 2209
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result v1

    .line 2212
    :cond_52
    invoke-virtual {p2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    move-result v2

    .line 2214
    .local v2, "changed":Z
    if-nez p5, :cond_60

    if-eqz v2, :cond_63

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->shouldJumpElevationState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 2217
    :cond_60
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->jumpDrawablesToCurrentState()V

    .line 2219
    :cond_63
    return-void
.end method


# virtual methods
.method bridge synthetic canDragView(Landroid/view/View;)Z
    .registers 2

    .line 1446
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->canDragView(Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result p1

    return p1
.end method

.method canDragView(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2017
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p1, "view":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    if-eqz v0, :cond_b

    .line 2019
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;->canDrag(Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result v0

    return v0

    .line 2023
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    .line 2025
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2026
    .local v0, "scrollingView":Landroid/view/View;
    if-eqz v0, :cond_28

    .line 2027
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2028
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    .line 2026
    :goto_29
    return v1

    .line 2031
    .end local v0    # "scrollingView":Landroid/view/View;
    :cond_2a
    return v1
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .registers 2

    .line 1446
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getMaxDragOffset(Lcom/google/android/material/appbar/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method getMaxDragOffset(Lcom/google/android/material/appbar/AppBarLayout;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 2046
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p1, "view":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .registers 2

    .line 1446
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getScrollRangeForDragFling(Lcom/google/android/material/appbar/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method getScrollRangeForDragFling(Lcom/google/android/material/appbar/AppBarLayout;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 2051
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p1, "view":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .registers 3

    .line 2266
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .registers 2

    .line 2124
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method synthetic lambda$onLayoutChild$0$com-google-android-material-appbar-AppBarLayout$BaseBehavior(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "abl"    # Lcom/google/android/material/appbar/AppBarLayout;
    .param p3, "v1"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 1837
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    invoke-direct {p0, p4, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->controlExpansionOnKeyPress(Landroid/view/KeyEvent;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 1838
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$onLayoutChild$1$com-google-android-material-appbar-AppBarLayout$BaseBehavior(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "abl"    # Lcom/google/android/material/appbar/AppBarLayout;
    .param p3, "v1"    # Landroid/view/View;
    .param p4, "keyCode"    # I
    .param p5, "event"    # Landroid/view/KeyEvent;

    .line 1848
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    invoke-direct {p0, p5, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->controlExpansionOnKeyPress(Landroid/view/KeyEvent;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 1849
    const/4 v0, 0x0

    return v0
.end method

.method bridge synthetic onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .registers 3

    .line 1446
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    return-void
.end method

.method onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .registers 4
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    .line 2038
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "layout":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 2039
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2040
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    .line 2042
    :cond_14
    return-void
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4

    .line 1446
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z
    .registers 13
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;I)Z"
        }
    .end annotation

    .line 1768
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "abl":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/HeaderBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    .line 1774
    .local v0, "handled":Z
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getPendingAction()I

    move-result v1

    .line 1775
    .local v1, "pendingAction":I
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    const/4 v3, 0x0

    if-eqz v2, :cond_5d

    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_5d

    .line 1776
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    iget-boolean v2, v2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyScrolled:Z

    if-eqz v2, :cond_21

    .line 1778
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto/16 :goto_89

    .line 1779
    :cond_21
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    iget-boolean v2, v2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyExpanded:Z

    if-eqz v2, :cond_2b

    .line 1781
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_89

    .line 1784
    :cond_2b
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    iget v2, v2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    invoke-virtual {p2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1785
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    neg-int v4, v4

    .line 1786
    .local v4, "offset":I
    iget-object v5, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    iget-boolean v5, v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    if-eqz v5, :cond_49

    .line 1787
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    goto :goto_59

    .line 1789
    :cond_49
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    iget v6, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    .line 1791
    :goto_59
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 1792
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "offset":I
    goto :goto_89

    .line 1793
    :cond_5d
    if-eqz v1, :cond_89

    .line 1794
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_65

    const/4 v2, 0x1

    goto :goto_66

    :cond_65
    const/4 v2, 0x0

    .line 1795
    .local v2, "animate":Z
    :goto_66
    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_7a

    .line 1796
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v4

    neg-int v4, v4

    .line 1797
    .restart local v4    # "offset":I
    if-eqz v2, :cond_76

    .line 1798
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V

    goto :goto_88

    .line 1800
    :cond_76
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_88

    .line 1802
    .end local v4    # "offset":I
    :cond_7a
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_88

    .line 1803
    if-eqz v2, :cond_84

    .line 1804
    invoke-direct {p0, p1, p2, v3, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V

    goto :goto_89

    .line 1806
    :cond_84
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_89

    .line 1802
    :cond_88
    :goto_88
    nop

    .line 1812
    .end local v2    # "animate":Z
    :cond_89
    :goto_89
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->resetPendingAction()V

    .line 1813
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 1817
    nop

    .line 1818
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v4

    neg-int v4, v4

    invoke-static {v2, v4, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v2

    .line 1817
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setTopAndBottomOffset(I)Z

    .line 1823
    nop

    .line 1824
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v6

    .line 1823
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V

    .line 1827
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->onOffsetChanged(I)V

    .line 1829
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 1832
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object v2

    .line 1833
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_d4

    .line 1834
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_cc

    .line 1835
    new-instance v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    goto :goto_d4

    .line 1846
    :cond_cc
    new-instance v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1853
    :cond_d4
    :goto_d4
    return v0
.end method

.method public bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 14

    .line 1446
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z
    .registers 15
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IIII)Z"
        }
    .end annotation

    .line 1744
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "child":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    nop

    .line 1745
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1746
    .local v0, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1c

    .line 1751
    nop

    .line 1755
    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1751
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 1757
    const/4 v1, 0x1

    return v1

    .line 1761
    :cond_1c
    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/HeaderBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .registers 16

    .line 1446
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .registers 17
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .param p7, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .line 1527
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "child":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    if-eqz p5, :cond_24

    .line 1530
    if-gez p5, :cond_f

    .line 1532
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    .line 1533
    .local v0, "min":I
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v1

    add-int/2addr v1, v0

    .local v1, "max":I
    goto :goto_15

    .line 1536
    .end local v0    # "min":I
    .end local v1    # "max":I
    :cond_f
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    .line 1537
    .restart local v0    # "min":I
    const/4 v1, 0x0

    .line 1539
    .restart local v1    # "max":I
    :goto_15
    if-eq v0, v1, :cond_24

    .line 1540
    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p5

    move v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v2

    aput v2, p6, v8

    .line 1543
    .end local v0    # "min":I
    .end local v1    # "max":I
    :cond_24
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1544
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result v0

    move-object v1, p2

    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    goto :goto_34

    .line 1543
    :cond_33
    move-object v1, p2

    .line 1546
    :goto_34
    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .registers 20

    .line 1446
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
    .registers 17
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .param p8, "type"    # I
    .param p9, "consumed"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    .line 1559
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "child":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    if-gez p7, :cond_14

    .line 1562
    nop

    .line 1563
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v5, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p7

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p9, v1

    .line 1566
    :cond_14
    if-nez p7, :cond_19

    .line 1569
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 1571
    :cond_19
    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .registers 4

    .line 1446
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 2279
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "appBarLayout":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    instance-of v0, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    if-eqz v0, :cond_15

    .line 2280
    move-object v0, p3

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->restoreScrollState(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;Z)V

    .line 2281
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/material/appbar/HeaderBehavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    goto :goto_1b

    .line 2283
    :cond_15
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/HeaderBehavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 2284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 2286
    :goto_1b
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .registers 3

    .line 1446
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;
    .registers 6
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 2271
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "abl":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    invoke-super {p0, p1, p2}, Lcom/google/android/material/appbar/HeaderBehavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v0

    .line 2272
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->saveScrollState(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    move-result-object v1

    .line 2273
    .local v1, "scrollState":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
    if-nez v1, :cond_c

    move-object v2, v0

    goto :goto_d

    :cond_c
    move-object v2, v1

    :goto_d
    return-object v2
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 14

    .line 1446
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .registers 9
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 1493
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "child":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_12

    .line 1495
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->canScrollChildren(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1497
    .local v0, "started":Z
    :goto_13
    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1e

    .line 1499
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1503
    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 1506
    iput p6, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastStartedType:I

    .line 1508
    return v0
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 1446
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .registers 6
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 1580
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "abl":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastStartedType:I

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    if-ne p4, v0, :cond_17

    .line 1582
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 1583
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1584
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    .line 1589
    :cond_17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 1590
    return-void
.end method

.method restoreScrollState(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;Z)V
    .registers 4
    .param p1, "state"    # Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
    .param p2, "force"    # Z

    .line 2313
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    if-eqz v0, :cond_6

    if-eqz p2, :cond_8

    .line 2314
    :cond_6
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 2316
    :cond_8
    return-void
.end method

.method saveScrollState(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
    .registers 13
    .param p1, "superState"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "TT;)",
            "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;"
        }
    .end annotation

    .line 2290
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "abl":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v0

    .line 2293
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_9
    if-ge v1, v2, :cond_5f

    .line 2294
    invoke-virtual {p2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2295
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v0

    .line 2297
    .local v4, "visBottom":I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v0

    if-gtz v5, :cond_5c

    if-ltz v4, :cond_5c

    .line 2298
    new-instance v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 2299
    if-nez p1, :cond_24

    sget-object v6, Landroidx/customview/view/AbsSavedState;->EMPTY_STATE:Landroidx/customview/view/AbsSavedState;

    goto :goto_25

    :cond_24
    move-object v6, p1

    :goto_25
    invoke-direct {v5, v6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2300
    .local v5, "ss":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_2e

    const/4 v8, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v8, 0x0

    :goto_2f
    iput-boolean v8, v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyExpanded:Z

    .line 2301
    iget-boolean v8, v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyExpanded:Z

    if-nez v8, :cond_3e

    neg-int v8, v0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v9

    if-lt v8, v9, :cond_3e

    const/4 v8, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v8, 0x0

    :goto_3f
    iput-boolean v8, v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyScrolled:Z

    .line 2302
    iput v1, v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    .line 2303
    nop

    .line 2304
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v9

    add-int/2addr v8, v9

    if-ne v4, v8, :cond_50

    const/4 v6, 0x1

    :cond_50
    iput-boolean v6, v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    .line 2305
    int-to-float v6, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    .line 2306
    return-object v5

    .line 2293
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "visBottom":I
    .end local v5    # "ss":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2309
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_5f
    const/4 v1, 0x0

    return-object v1
.end method

.method public setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    .line 1598
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    .line 1599
    return-void
.end method

.method bridge synthetic setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .registers 12

    .line 1446
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I

    move-result p1

    return p1
.end method

.method setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I
    .registers 16
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "newOffset"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;III)I"
        }
    .end annotation

    .line 2061
    .local p0, "this":Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;, "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "appBarLayout":Lcom/google/android/material/appbar/AppBarLayout;, "TT;"
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 2062
    .local v0, "curOffset":I
    const/4 v1, 0x0

    .line 2064
    .local v1, "consumed":I
    if-eqz p4, :cond_7b

    if-lt v0, p4, :cond_7b

    if-gt v0, p5, :cond_7b

    .line 2067
    invoke-static {p3, p4, p5}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p3

    .line 2068
    if-eq v0, p3, :cond_7e

    .line 2070
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2071
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->interpolateOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I

    move-result v2

    goto :goto_1d

    .line 2072
    :cond_1c
    move v2, p3

    :goto_1d
    move v8, v2

    .line 2074
    .local v8, "interpolatedOffset":I
    invoke-virtual {p0, v8}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setTopAndBottomOffset(I)Z

    move-result v9

    .line 2077
    .local v9, "offsetChanged":Z
    sub-int v1, v0, p3

    .line 2079
    sub-int v2, p3, v8

    iput v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    .line 2081
    const/4 v2, 0x1

    if-eqz v9, :cond_59

    .line 2083
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2c
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_59

    .line 2084
    invoke-virtual {p2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 2085
    .local v4, "params":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    invoke-virtual {v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollEffect()Lcom/google/android/material/appbar/AppBarLayout$ChildScrollEffect;

    move-result-object v5

    .line 2086
    .local v5, "scrollEffect":Lcom/google/android/material/appbar/AppBarLayout$ChildScrollEffect;
    if-eqz v5, :cond_56

    .line 2087
    invoke-virtual {v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v6

    and-int/2addr v6, v2

    if-eqz v6, :cond_56

    .line 2088
    nop

    .line 2089
    invoke-virtual {p2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v7

    int-to-float v7, v7

    .line 2088
    invoke-virtual {v5, p2, v6, v7}, Lcom/google/android/material/appbar/AppBarLayout$ChildScrollEffect;->onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;F)V

    .line 2083
    .end local v4    # "params":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v5    # "scrollEffect":Lcom/google/android/material/appbar/AppBarLayout$ChildScrollEffect;
    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 2094
    .end local v3    # "i":I
    :cond_59
    if-nez v9, :cond_64

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 2099
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 2103
    :cond_64
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->onOffsetChanged(I)V

    .line 2106
    nop

    .line 2110
    if-ge p3, v0, :cond_71

    const/4 v2, -0x1

    const/4 v6, -0x1

    goto :goto_72

    :cond_71
    const/4 v6, 0x1

    .line 2106
    :goto_72
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V

    .line 2112
    .end local v8    # "interpolatedOffset":I
    .end local v9    # "offsetChanged":Z
    goto :goto_7e

    .line 2115
    :cond_7b
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    .line 2118
    :cond_7e
    :goto_7e
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 2119
    return v1
.end method
