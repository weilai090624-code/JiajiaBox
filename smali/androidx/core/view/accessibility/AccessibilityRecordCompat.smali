.class public Landroidx/core/view/accessibility/AccessibilityRecordCompat;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# instance fields
.field private final mRecord:Landroid/view/accessibility/AccessibilityRecord;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v0, p1

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    iput-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    .line 47
    return-void
.end method

.method public static getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I
    .registers 2
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 484
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollX()I

    move-result v0

    return v0
.end method

.method public static getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I
    .registers 2
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 528
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollY()I

    move-result v0

    return v0
.end method

.method public static obtain()Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Landroidx/core/view/accessibility/AccessibilityRecordCompat;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    .registers 3
    .param p0, "record"    # Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    iget-object v1, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityRecord;->obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V
    .registers 2
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p1, "maxScrollX"    # I

    .line 506
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 507
    return-void
.end method

.method public static setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V
    .registers 2
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p1, "maxScrollY"    # I

    .line 550
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 551
    return-void
.end method

.method public static setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V
    .registers 3
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 142
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 143
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 753
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 754
    return v0

    .line 756
    :cond_4
    instance-of v1, p1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 757
    return v2

    .line 759
    :cond_a
    move-object v1, p1

    check-cast v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    .line 760
    .local v1, "other":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    iget-object v3, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v3, :cond_18

    .line 761
    iget-object v3, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v3, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0

    .line 763
    :cond_18
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    iget-object v2, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAddedCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 562
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getAddedCount()I

    move-result v0

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 653
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 614
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 679
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getCurrentItemIndex()I

    move-result v0

    return v0
.end method

.method public getFromIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result v0

    return v0
.end method

.method public getImpl()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getMaxScrollX()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 474
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I

    move-result v0

    return v0
.end method

.method public getMaxScrollY()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 518
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I

    move-result v0

    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 705
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 588
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getRemovedCount()I

    move-result v0

    return v0
.end method

.method public getScrollX()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 426
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 450
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getSource()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 641
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result v0

    return v0
.end method

.method public getWindowId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 744
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_c
    return v0
.end method

.method public isChecked()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isPassword()Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 735
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->recycle()V

    .line 736
    return-void
.end method

.method public setAddedCount(I)V
    .registers 3
    .param p1, "addedCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 576
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 577
    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "beforeText"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 667
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 668
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "isChecked"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 201
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "className"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 628
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 629
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 693
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 694
    return-void
.end method

.method public setCurrentItemIndex(I)V
    .registers 3
    .param p1, "currentItemIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    .line 357
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 227
    return-void
.end method

.method public setFromIndex(I)V
    .registers 3
    .param p1, "fromIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 388
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 389
    return-void
.end method

.method public setFullScreen(Z)V
    .registers 3
    .param p1, "isFullScreen"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFullScreen(Z)V

    .line 279
    return-void
.end method

.method public setItemCount(I)V
    .registers 3
    .param p1, "itemCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 331
    return-void
.end method

.method public setMaxScrollX(I)V
    .registers 3
    .param p1, "maxScrollX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 496
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0, p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 497
    return-void
.end method

.method public setMaxScrollY(I)V
    .registers 3
    .param p1, "maxScrollY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 540
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0, p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 541
    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .registers 3
    .param p1, "parcelableData"    # Landroid/os/Parcelable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 719
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setParcelableData(Landroid/os/Parcelable;)V

    .line 720
    return-void
.end method

.method public setPassword(Z)V
    .registers 3
    .param p1, "isPassword"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 253
    return-void
.end method

.method public setRemovedCount(I)V
    .registers 3
    .param p1, "removedCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 602
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 603
    return-void
.end method

.method public setScrollX(I)V
    .registers 3
    .param p1, "scrollX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 438
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 439
    return-void
.end method

.method public setScrollY(I)V
    .registers 3
    .param p1, "scrollY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 463
    return-void
.end method

.method public setScrollable(Z)V
    .registers 3
    .param p1, "scrollable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 305
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .registers 3
    .param p1, "source"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .registers 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0, p1, p2}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 123
    return-void
.end method

.method public setToIndex(I)V
    .registers 3
    .param p1, "toIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 414
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 415
    return-void
.end method
