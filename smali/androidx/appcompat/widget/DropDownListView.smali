.class Landroidx/appcompat/widget/DropDownListView;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/DropDownListView$Api33Impl;,
        Landroidx/appcompat/widget/DropDownListView$PreApi33Impl;,
        Landroidx/appcompat/widget/DropDownListView$Api21Impl;,
        Landroidx/appcompat/widget/DropDownListView$Api30Impl;,
        Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;,
        Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mMotionPosition:I

.field mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

.field private mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

.field private mSelectionBottomPadding:I

.field private mSelectionLeftPadding:I

.field private mSelectionRightPadding:I

.field private mSelectionTopPadding:I

.field private mSelector:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

.field private final mSelectorRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .line 127
    const/4 v0, 0x0

    sget v1, Landroidx/appcompat/R$attr;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionLeftPadding:I

    .line 62
    iput v0, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionTopPadding:I

    .line 63
    iput v0, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionRightPadding:I

    .line 64
    iput v0, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionBottomPadding:I

    .line 128
    iput-boolean p2, p0, Landroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    .line 129
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/DropDownListView;->setCacheColorHint(I)V

    .line 130
    return-void
.end method

.method private clearPressedItem()V
    .registers 4

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 651
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/DropDownListView;->setPressed(Z)V

    .line 653
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->drawableStateChanged()V

    .line 655
    iget v1, p0, Landroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 656
    .local v1, "motionView":Landroid/view/View;
    if-eqz v1, :cond_19

    .line 657
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 660
    :cond_19
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_25

    .line 661
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 664
    :cond_25
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 566
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 567
    .local v0, "id":J
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/appcompat/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 568
    return-void
.end method

.method private drawSelectorCompat(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 589
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 590
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 591
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_16

    .line 592
    iget-object v1, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 593
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 596
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_16
    return-void
.end method

.method private positionSelectorCompat(ILandroid/view/View;)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 629
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 630
    .local v0, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 633
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionLeftPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 634
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionTopPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 635
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionRightPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 636
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionBottomPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 640
    invoke-direct {p0}, Landroidx/appcompat/widget/DropDownListView;->superIsSelectedChildViewEnabled()Z

    move-result v1

    .line 641
    .local v1, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v1, :cond_46

    .line 642
    xor-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Landroidx/appcompat/widget/DropDownListView;->superSetSelectedChildViewEnabled(Z)V

    .line 643
    const/4 v2, -0x1

    if-eq p1, v2, :cond_46

    .line 644
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->refreshDrawableState()V

    .line 647
    :cond_46
    return-void
.end method

.method private positionSelectorLikeFocusCompat(ILandroid/view/View;)V
    .registers 11
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 610
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 611
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    const/4 v3, -0x1

    if-eq p1, v3, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    .line 612
    .local v3, "manageState":Z
    :goto_e
    if-eqz v3, :cond_13

    .line 613
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 616
    :cond_13
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->positionSelectorCompat(ILandroid/view/View;)V

    .line 618
    if-eqz v3, :cond_30

    .line 619
    iget-object v4, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 620
    .local v4, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    .line 621
    .local v5, "x":F
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    .line 622
    .local v6, "y":F
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 623
    invoke-static {v0, v5, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 625
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_30
    return-void
.end method

.method private positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 599
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->positionSelectorLikeFocusCompat(ILandroid/view/View;)V

    .line 601
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 602
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_f

    const/4 v1, -0x1

    if-eq p1, v1, :cond_f

    .line 603
    invoke-static {v0, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 605
    :cond_f
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 667
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 670
    nop

    .line 671
    invoke-static {p0, p3, p4}, Landroidx/appcompat/widget/DropDownListView$Api21Impl;->drawableHotspotChanged(Landroid/view/View;FF)V

    .line 673
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_10

    .line 674
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/DropDownListView;->setPressed(Z)V

    .line 678
    :cond_10
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->layoutChildren()V

    .line 682
    iget v1, p0, Landroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_31

    .line 683
    iget v1, p0, Landroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 684
    .local v1, "motionView":Landroid/view/View;
    if-eqz v1, :cond_31

    if-eq v1, p1, :cond_31

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 685
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 688
    .end local v1    # "motionView":Landroid/view/View;
    :cond_31
    iput p2, p0, Landroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    .line 691
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    .line 692
    .local v1, "childX":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p4, v2

    .line 693
    .local v2, "childY":F
    nop

    .line 694
    invoke-static {p1, v1, v2}, Landroidx/appcompat/widget/DropDownListView$Api21Impl;->drawableHotspotChanged(Landroid/view/View;FF)V

    .line 696
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 697
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 701
    :cond_4e
    invoke-direct {p0, p2, p1, p3, p4}, Landroidx/appcompat/widget/DropDownListView;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    .line 706
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/DropDownListView;->setSelectorEnabled(Z)V

    .line 710
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->refreshDrawableState()V

    .line 711
    return-void
.end method

.method private setSelectorEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 390
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mSelector:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    if-eqz v0, :cond_9

    .line 391
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mSelector:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setEnabled(Z)V

    .line 393
    :cond_9
    return-void
.end method

.method private superIsSelectedChildViewEnabled()Z
    .registers 2

    .line 134
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 135
    invoke-static {p0}, Landroidx/appcompat/widget/DropDownListView$Api33Impl;->isSelectedChildViewEnabled(Landroid/widget/AbsListView;)Z

    move-result v0

    return v0

    .line 137
    :cond_b
    invoke-static {p0}, Landroidx/appcompat/widget/DropDownListView$PreApi33Impl;->isSelectedChildViewEnabled(Landroid/widget/AbsListView;)Z

    move-result v0

    return v0
.end method

.method private superSetSelectedChildViewEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 143
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 144
    invoke-static {p0, p1}, Landroidx/appcompat/widget/DropDownListView$Api33Impl;->setSelectedChildViewEnabled(Landroid/widget/AbsListView;Z)V

    goto :goto_d

    .line 146
    :cond_a
    invoke-static {p0, p1}, Landroidx/appcompat/widget/DropDownListView$PreApi33Impl;->setSelectedChildViewEnabled(Landroid/widget/AbsListView;Z)V

    .line 148
    :goto_d
    return-void
.end method

.method private touchModeDrawsInPressedStateCompat()Z
    .registers 2

    .line 714
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mDrawsInPressedState:Z

    return v0
.end method

.method private updateSelectorStateCompat()V
    .registers 3

    .line 582
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 583
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_19

    invoke-direct {p0}, Landroidx/appcompat/widget/DropDownListView;->touchModeDrawsInPressedStateCompat()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 584
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 586
    :cond_19
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, "drawSelectorOnTop":Z
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->drawSelectorCompat(Landroid/graphics/Canvas;)V

    .line 222
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 223
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 2

    .line 205
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_5

    .line 206
    return-void

    .line 209
    :cond_5
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 211
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/DropDownListView;->setSelectorEnabled(Z)V

    .line 212
    invoke-direct {p0}, Landroidx/appcompat/widget/DropDownListView;->updateSelectorStateCompat()V

    .line 213
    return-void
.end method

.method public hasFocus()Z
    .registers 2

    .line 183
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public hasWindowFocus()Z
    .registers 2

    .line 163
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isFocused()Z
    .registers 2

    .line 173
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isInTouchMode()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_e

    :cond_8
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public lookForSelectablePosition(IZ)I
    .registers 7
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 248
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 249
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_4d

    .line 253
    :cond_e
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 254
    .local v2, "count":I
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_46

    .line 255
    if-eqz p2, :cond_2e

    .line 256
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 257
    :goto_23
    if-ge p1, v2, :cond_3f

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 258
    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    .line 261
    :cond_2e
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 262
    :goto_34
    if-ltz p1, :cond_3f

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 263
    add-int/lit8 p1, p1, -0x1

    goto :goto_34

    .line 267
    :cond_3f
    if-ltz p1, :cond_45

    if-lt p1, v2, :cond_44

    goto :goto_45

    .line 270
    :cond_44
    return p1

    .line 268
    :cond_45
    :goto_45
    return v1

    .line 272
    :cond_46
    if-ltz p1, :cond_4c

    if-lt p1, v2, :cond_4b

    goto :goto_4c

    .line 275
    :cond_4b
    return p1

    .line 273
    :cond_4c
    :goto_4c
    return v1

    .line 250
    .end local v2    # "count":I
    :cond_4d
    :goto_4d
    return v1
.end method

.method public measureHeightOfChildrenCompat(IIIII)I
    .registers 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .line 309
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/DropDownListView;->getListPaddingTop()I

    move-result v2

    .line 310
    .local v2, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/DropDownListView;->getListPaddingBottom()I

    move-result v3

    .line 311
    .local v3, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/DropDownListView;->getDividerHeight()I

    move-result v4

    .line 312
    .local v4, "reportedDividerHeight":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 314
    .local v5, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 316
    .local v6, "adapter":Landroid/widget/ListAdapter;
    if-nez v6, :cond_1d

    .line 317
    add-int v7, v2, v3

    return v7

    .line 321
    :cond_1d
    add-int v7, v2, v3

    .line 322
    .local v7, "returnedHeight":I
    if-lez v4, :cond_25

    if-eqz v5, :cond_25

    .line 323
    move v9, v4

    goto :goto_26

    :cond_25
    const/4 v9, 0x0

    .line 327
    .local v9, "dividerHeight":I
    :goto_26
    const/4 v10, 0x0

    .line 329
    .local v10, "prevHeightWithoutPartialChild":I
    const/4 v11, 0x0

    .line 330
    .local v11, "child":Landroid/view/View;
    const/4 v12, 0x0

    .line 331
    .local v12, "viewType":I
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v13

    .line 332
    .local v13, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2e
    if-ge v14, v13, :cond_99

    .line 333
    invoke-interface {v6, v14}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    .line 334
    .local v15, "newType":I
    if-eq v15, v12, :cond_38

    .line 335
    const/4 v11, 0x0

    .line 336
    move v12, v15

    .line 338
    :cond_38
    move-object/from16 v8, p0

    invoke-interface {v6, v14, v11, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 342
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 344
    .local v17, "childLp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v17, :cond_4e

    .line 345
    move/from16 v18, v2

    .end local v2    # "paddingTop":I
    .local v18, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/DropDownListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 346
    .end local v17    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .local v2, "childLp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_52

    .line 344
    .end local v18    # "paddingTop":I
    .local v2, "paddingTop":I
    .restart local v17    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4e
    move/from16 v18, v2

    .end local v2    # "paddingTop":I
    .restart local v18    # "paddingTop":I
    move-object/from16 v2, v17

    .line 349
    .end local v17    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .local v2, "childLp":Landroid/view/ViewGroup$LayoutParams;
    :goto_52
    move/from16 v17, v3

    .end local v3    # "paddingBottom":I
    .local v17, "paddingBottom":I
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_65

    .line 350
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v19, v2

    .end local v2    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .local v19, "childLp":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v3, v2

    const/4 v2, 0x0

    .local v2, "heightMeasureSpec":I
    goto :goto_6c

    .line 353
    .end local v19    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .local v2, "childLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_65
    move-object/from16 v19, v2

    .end local v2    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 355
    .local v3, "heightMeasureSpec":I
    :goto_6c
    move/from16 v2, p1

    invoke-virtual {v11, v2, v3}, Landroid/view/View;->measure(II)V

    .line 359
    invoke-virtual {v11}, Landroid/view/View;->forceLayout()V

    .line 361
    if-lez v14, :cond_77

    .line 363
    add-int/2addr v7, v9

    .line 366
    :cond_77
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    add-int v7, v7, v20

    .line 368
    if-lt v7, v0, :cond_8d

    .line 374
    if-ltz v1, :cond_8a

    if-le v14, v1, :cond_8a

    if-lez v10, :cond_8a

    if-eq v7, v0, :cond_8a

    .line 375
    move/from16 v16, v10

    goto :goto_8c

    .line 376
    :cond_8a
    move/from16 v16, v0

    .line 371
    :goto_8c
    return v16

    .line 379
    :cond_8d
    if-ltz v1, :cond_92

    if-lt v14, v1, :cond_92

    .line 380
    move v10, v7

    .line 332
    .end local v3    # "heightMeasureSpec":I
    .end local v15    # "newType":I
    .end local v19    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_92
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v17

    move/from16 v2, v18

    goto :goto_2e

    .line 386
    .end local v14    # "i":I
    .end local v17    # "paddingBottom":I
    .end local v18    # "paddingTop":I
    .local v2, "paddingTop":I
    .local v3, "paddingBottom":I
    :cond_99
    return v7
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 496
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 497
    return-void
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .line 506
    const/4 v0, 0x1

    .line 507
    .local v0, "handledEvent":Z
    const/4 v1, 0x0

    .line 509
    .local v1, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 510
    .local v2, "actionMasked":I
    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_68

    goto :goto_3e

    .line 512
    :pswitch_b
    const/4 v0, 0x0

    .line 513
    goto :goto_3e

    .line 515
    :pswitch_d
    const/4 v0, 0x0

    .line 518
    :pswitch_e
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 519
    .local v4, "activeIndex":I
    if-gez v4, :cond_16

    .line 520
    const/4 v0, 0x0

    .line 521
    goto :goto_3e

    .line 524
    :cond_16
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 525
    .local v5, "x":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 526
    .local v6, "y":I
    invoke-virtual {p0, v5, v6}, Landroidx/appcompat/widget/DropDownListView;->pointToPosition(II)I

    move-result v7

    .line 527
    .local v7, "position":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_29

    .line 528
    const/4 v1, 0x1

    .line 529
    goto :goto_3e

    .line 532
    :cond_29
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {p0, v8}, Landroidx/appcompat/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 533
    .local v8, "child":Landroid/view/View;
    int-to-float v9, v5

    int-to-float v10, v6

    invoke-direct {p0, v8, v7, v9, v10}, Landroidx/appcompat/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 534
    const/4 v0, 0x1

    .line 536
    if-ne v2, v3, :cond_3e

    .line 537
    invoke-direct {p0, v8, v7}, Landroidx/appcompat/widget/DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    .line 543
    .end local v4    # "activeIndex":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "position":I
    .end local v8    # "child":Landroid/view/View;
    :cond_3e
    :goto_3e
    if-eqz v0, :cond_42

    if-eqz v1, :cond_45

    .line 544
    :cond_42
    invoke-direct {p0}, Landroidx/appcompat/widget/DropDownListView;->clearPressedItem()V

    .line 548
    :cond_45
    if-eqz v0, :cond_5d

    .line 549
    iget-object v4, p0, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    if-nez v4, :cond_52

    .line 550
    new-instance v4, Landroidx/core/widget/ListViewAutoScrollHelper;

    invoke-direct {v4, p0}, Landroidx/core/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object v4, p0, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    .line 552
    :cond_52
    iget-object v4, p0, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    invoke-virtual {v4, v3}, Landroidx/core/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;

    .line 553
    iget-object v3, p0, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    invoke-virtual {v3, p0, p1}, Landroidx/core/widget/ListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_67

    .line 554
    :cond_5d
    iget-object v3, p0, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    if-eqz v3, :cond_67

    .line 555
    iget-object v3, p0, Landroidx/appcompat/widget/DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/core/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;

    .line 558
    :cond_67
    :goto_67
    return v0

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 447
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_b

    .line 450
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 453
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 454
    .local v0, "action":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_23

    iget-object v1, p0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v1, :cond_23

    .line 457
    new-instance v1, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroidx/appcompat/widget/DropDownListView;)V

    iput-object v1, p0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 458
    iget-object v1, p0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v1}, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->post()V

    .line 462
    :cond_23
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 463
    .local v1, "handled":Z
    const/16 v2, 0x9

    const/4 v3, -0x1

    if-eq v0, v2, :cond_34

    const/4 v2, 0x7

    if-ne v0, v2, :cond_30

    goto :goto_34

    .line 487
    :cond_30
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/DropDownListView;->setSelection(I)V

    goto :goto_7d

    .line 465
    :cond_34
    :goto_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v4}, Landroidx/appcompat/widget/DropDownListView;->pointToPosition(II)I

    move-result v2

    .line 467
    .local v2, "position":I
    if-eq v2, v3, :cond_7c

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v3

    if-eq v2, v3, :cond_7c

    .line 468
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 469
    .local v3, "hoveredItem":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 472
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->requestFocus()Z

    .line 474
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_6d

    invoke-static {}, Landroidx/appcompat/widget/DropDownListView$Api30Impl;->canPositionSelectorForHoveredItem()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 477
    invoke-static {p0, v2, v3}, Landroidx/appcompat/widget/DropDownListView$Api30Impl;->positionSelectorForHoveredItem(Landroidx/appcompat/widget/DropDownListView;ILandroid/view/View;)V

    goto :goto_79

    .line 479
    :cond_6d
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v2, v4}, Landroidx/appcompat/widget/DropDownListView;->setSelectionFromTop(II)V

    .line 482
    :cond_79
    :goto_79
    invoke-direct {p0}, Landroidx/appcompat/widget/DropDownListView;->updateSelectorStateCompat()V

    .line 484
    .end local v2    # "position":I
    .end local v3    # "hoveredItem":Landroid/view/View;
    :cond_7c
    nop

    .line 490
    :goto_7d
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    goto :goto_18

    .line 229
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/DropDownListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    .line 232
    :goto_18
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_21

    .line 234
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->cancel()V

    .line 236
    :cond_21
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method setListSelectionHidden(Z)V
    .registers 2
    .param p1, "hideListSelection"    # Z

    .line 578
    iput-boolean p1, p0, Landroidx/appcompat/widget/DropDownListView;->mListSelectionHidden:Z

    .line 579
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .line 188
    if-eqz p1, :cond_8

    new-instance v0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mSelector:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    .line 189
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mSelector:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 192
    .local v0, "padding":Landroid/graphics/Rect;
    if-eqz p1, :cond_1a

    .line 193
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 196
    :cond_1a
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionLeftPadding:I

    .line 197
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionTopPadding:I

    .line 198
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionRightPadding:I

    .line 199
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroidx/appcompat/widget/DropDownListView;->mSelectionBottomPadding:I

    .line 200
    return-void
.end method
