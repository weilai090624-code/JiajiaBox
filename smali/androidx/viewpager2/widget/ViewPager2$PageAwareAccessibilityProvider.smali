.class Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;
.super Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageAwareAccessibilityProvider"
.end annotation


# instance fields
.field private final mActionPageBackward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

.field private final mActionPageForward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

.field private mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field final synthetic this$0:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/viewpager2/widget/ViewPager2;

    .line 1328
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/ViewPager2$1;)V

    .line 1329
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;-><init>(Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageForward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    .line 1340
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$2;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$2;-><init>(Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageBackward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    return-void
.end method

.method private addCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1537
    const/4 v0, 0x0

    .line 1538
    .local v0, "rowCount":I
    const/4 v1, 0x0

    .line 1539
    .local v1, "colCount":I
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1540
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 1541
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_28

    .line 1543
    :cond_1e
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 1546
    :cond_28
    :goto_28
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    .line 1547
    .local v2, "nodeInfoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    nop

    .line 1548
    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v3

    .line 1551
    .local v3, "collectionInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    invoke-virtual {v2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 1552
    return-void
.end method

.method private addScrollActions(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1555
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 1556
    .local v0, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    if-nez v0, :cond_9

    .line 1557
    return-void

    .line 1559
    :cond_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 1560
    .local v1, "itemCount":I
    if-eqz v1, :cond_35

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_35

    .line 1563
    :cond_18
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget v2, v2, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-lez v2, :cond_23

    .line 1564
    const/16 v2, 0x2000

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1566
    :cond_23
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget v2, v2, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_30

    .line 1567
    const/16 v2, 0x1000

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1569
    :cond_30
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1570
    return-void

    .line 1561
    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public handlesGetAccessibilityClassName()Z
    .registers 2

    .line 1375
    const/4 v0, 0x1

    return v0
.end method

.method public handlesPerformAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1439
    const/16 v0, 0x2000

    if-eq p1, v0, :cond_b

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public onAttachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1393
    .local p1, "newAdapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    .line 1394
    if-eqz p1, :cond_a

    .line 1395
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 1397
    :cond_a
    return-void
.end method

.method public onDetachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1401
    .local p1, "oldAdapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    if-eqz p1, :cond_7

    .line 1402
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 1404
    :cond_7
    return-void
.end method

.method public onGetAccessibilityClassName()Ljava/lang/String;
    .registers 2

    .line 1380
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->handlesGetAccessibilityClassName()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1383
    const-string v0, "androidx.viewpager.widget.ViewPager"

    return-object v0

    .line 1381
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onInitialize(Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 5
    .param p1, "pageChangeEventDispatcher"    # Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 1356
    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1359
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$3;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$3;-><init>(Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 1366
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1368
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1371
    :cond_19
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1431
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->addCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1432
    nop

    .line 1433
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->addScrollActions(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1435
    return-void
.end method

.method public onPerformAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1445
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->handlesPerformAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1449
    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    .line 1450
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_1a

    :cond_13
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    .line 1451
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1a
    nop

    .line 1452
    .local v0, "nextItem":I
    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->setCurrentItemFromAccessibilityCommand(I)V

    .line 1453
    return v1

    .line 1446
    .end local v0    # "nextItem":I
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onRestorePendingState()V
    .registers 1

    .line 1388
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    .line 1389
    return-void
.end method

.method public onRvInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1458
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 1459
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->onGetAccessibilityClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1460
    return-void
.end method

.method public onSetLayoutDirection()V
    .registers 1

    .line 1426
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    .line 1427
    return-void
.end method

.method public onSetNewCurrentItem()V
    .registers 1

    .line 1413
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    .line 1414
    return-void
.end method

.method public onSetOrientation()V
    .registers 1

    .line 1408
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    .line 1409
    return-void
.end method

.method public onSetUserInputEnabled()V
    .registers 1

    .line 1418
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    .line 1419
    nop

    .line 1422
    return-void
.end method

.method setCurrentItemFromAccessibilityCommand(I)V
    .registers 4
    .param p1, "item"    # I

    .line 1468
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1469
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZ)V

    .line 1471
    :cond_e
    return-void
.end method

.method updatePageAccessibilityActions()V
    .registers 13

    .line 1478
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    .line 1481
    .local v0, "viewPager":Landroidx/viewpager2/widget/ViewPager2;
    const v1, 0x1020048

    .line 1483
    .local v1, "actionIdPageLeft":I
    const v2, 0x1020049

    .line 1485
    .local v2, "actionIdPageRight":I
    const v3, 0x1020046

    .line 1487
    .local v3, "actionIdPageUp":I
    const v4, 0x1020047

    .line 1489
    .local v4, "actionIdPageDown":I
    const v5, 0x1020048

    invoke-static {v0, v5}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 1490
    const v6, 0x1020049

    invoke-static {v0, v6}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 1491
    const v7, 0x1020046

    invoke-static {v0, v7}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 1492
    const v8, 0x1020047

    invoke-static {v0, v8}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 1494
    iget-object v9, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v9}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v9

    if-nez v9, :cond_2f

    .line 1495
    return-void

    .line 1498
    :cond_2f
    iget-object v9, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v9}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    .line 1499
    .local v9, "itemCount":I
    if-nez v9, :cond_3c

    .line 1500
    return-void

    .line 1503
    :cond_3c
    iget-object v10, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v10}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v10

    if-nez v10, :cond_45

    .line 1504
    return-void

    .line 1507
    :cond_45
    iget-object v10, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v10}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_85

    .line 1508
    iget-object v7, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v7}, Landroidx/viewpager2/widget/ViewPager2;->isRtl()Z

    move-result v7

    .line 1509
    .local v7, "isLayoutRtl":Z
    if-eqz v7, :cond_5a

    const v8, 0x1020048

    goto :goto_5d

    :cond_5a
    const v8, 0x1020049

    .line 1510
    .local v8, "actionIdPageForward":I
    :goto_5d
    if-eqz v7, :cond_62

    const v5, 0x1020049

    .line 1512
    .local v5, "actionIdPageBackward":I
    :cond_62
    iget-object v6, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget v6, v6, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    add-int/lit8 v10, v9, -0x1

    if-ge v6, v10, :cond_74

    .line 1513
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v6, v8, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object v10, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageForward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v0, v6, v11, v10}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 1517
    :cond_74
    iget-object v6, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget v6, v6, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-lez v6, :cond_84

    .line 1518
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v6, v5, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object v10, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageBackward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v0, v6, v11, v10}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 1522
    .end local v5    # "actionIdPageBackward":I
    .end local v7    # "isLayoutRtl":Z
    .end local v8    # "actionIdPageForward":I
    :cond_84
    goto :goto_a7

    .line 1523
    :cond_85
    iget-object v5, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget v5, v5, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    add-int/lit8 v6, v9, -0x1

    if-ge v5, v6, :cond_97

    .line 1524
    new-instance v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v5, v8, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object v6, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageForward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v0, v5, v11, v6}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 1528
    :cond_97
    iget-object v5, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget v5, v5, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-lez v5, :cond_a7

    .line 1529
    new-instance v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v5, v7, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object v6, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageBackward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v0, v5, v11, v6}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 1534
    :cond_a7
    :goto_a7
    return-void
.end method
