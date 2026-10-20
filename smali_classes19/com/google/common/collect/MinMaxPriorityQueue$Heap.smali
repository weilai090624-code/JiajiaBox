.class Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Heap"
.end annotation


# instance fields
.field final ordering:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "TE;>;"
        }
    .end annotation
.end field

.field otherHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MinMaxPriorityQueue<",
            "TE;>.Heap;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/MinMaxPriorityQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Ordering<",
            "TE;>;)V"
        }
    .end annotation

    .line 530
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, "ordering":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TE;>;"
    iput-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    .line 532
    return-void
.end method

.method static synthetic access$400(Lcom/google/common/collect/MinMaxPriorityQueue$Heap;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .param p1, "x1"    # I

    .line 526
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->verifyIndex(I)Z

    move-result v0

    return v0
.end method

.method private getGrandparentIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .line 761
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    return v0
.end method

.method private getLeftChildIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .line 749
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getParentIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .line 757
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getRightChildIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .line 753
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private verifyIndex(I)Z
    .locals 3
    .param p1, "i"    # I

    .line 731
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 732
    return v2

    .line 734
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getRightChildIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getRightChildIndex(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v0

    if-lez v0, :cond_1

    .line 735
    return v2

    .line 737
    :cond_1
    if-lez p1, :cond_2

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v0

    if-lez v0, :cond_2

    .line 738
    return v2

    .line 740
    :cond_2
    const/4 v0, 0x2

    if-le p1, v0, :cond_3

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getGrandparentIndex(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v0

    if-lez v0, :cond_3

    .line 741
    return v2

    .line 743
    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method bubbleUp(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 571
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->crossOverUp(ILjava/lang/Object;)I

    move-result v0

    .line 574
    .local v0, "crossOver":I
    if-ne v0, p1, :cond_0

    .line 575
    move-object v1, p0

    .local v1, "heap":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    goto :goto_0

    .line 577
    .end local v1    # "heap":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    :cond_0
    move p1, v0

    .line 578
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->otherHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    .line 580
    .restart local v1    # "heap":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    :goto_0
    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->bubbleUpAlternatingLevels(ILjava/lang/Object;)I

    .line 581
    return-void
.end method

.method bubbleUpAlternatingLevels(ILjava/lang/Object;)I
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .line 589
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    nop

    :goto_0
    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 590
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getGrandparentIndex(I)I

    move-result v0

    .line 591
    .local v0, "grandParentIndex":I
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    .line 592
    .local v1, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 593
    goto :goto_1

    .line 595
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v1, v2, p1

    .line 596
    move p1, v0

    .line 597
    .end local v0    # "grandParentIndex":I
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 598
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    .line 599
    return p1
.end method

.method compareElements(II)I
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 535
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, p2}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method crossOver(ILjava/lang/Object;)I
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .line 703
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->findMinChild(I)I

    move-result v0

    .line 706
    .local v0, "minChildIndex":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    .line 708
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    aput-object p2, v1, v0

    .line 709
    return v0

    .line 711
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->crossOverUp(ILjava/lang/Object;)I

    move-result v1

    return v1
.end method

.method crossOverUp(ILjava/lang/Object;)I
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .line 640
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 642
    return v1

    .line 644
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    .line 645
    .local v0, "parentIndex":I
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    .line 646
    .local v1, "parentElement":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_1

    .line 651
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v2

    .line 652
    .local v2, "grandparentIndex":I
    invoke-direct {p0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getRightChildIndex(I)I

    move-result v3

    .line 653
    .local v3, "uncleIndex":I
    if-eq v3, v0, :cond_1

    invoke-direct {p0, v3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v5}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 654
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v4

    .line 655
    .local v4, "uncleElement":Ljava/lang/Object;, "TE;"
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v5, v4, v1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    .line 656
    move v0, v3

    .line 657
    move-object v1, v4

    .line 661
    .end local v2    # "grandparentIndex":I
    .end local v3    # "uncleIndex":I
    .end local v4    # "uncleElement":Ljava/lang/Object;, "TE;"
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    .line 662
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v1, v2, p1

    .line 663
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object p2, v2, v0

    .line 664
    return v0

    .line 666
    :cond_2
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object p2, v2, p1

    .line 667
    return p1
.end method

.method fillHoleAt(I)I
    .locals 3
    .param p1, "index"    # I

    .line 723
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->findMinGrandChild(I)I

    move-result v0

    move v1, v0

    .local v1, "minGrandchildIndex":I
    if-lez v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, p1

    .line 725
    move p1, v1

    goto :goto_0

    .line 727
    :cond_0
    return p1
.end method

.method findMin(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "len"    # I

    .line 607
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 608
    const/4 v0, -0x1

    return v0

    .line 610
    :cond_0
    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 611
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, p2

    .line 612
    .local v0, "limit":I
    move v1, p1

    .line 613
    .local v1, "minIndex":I
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 614
    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v3

    if-gez v3, :cond_2

    .line 615
    move v1, v2

    .line 613
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 618
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method findMinChild(I)I
    .locals 2
    .param p1, "index"    # I

    .line 623
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->findMin(II)I

    move-result v0

    return v0
.end method

.method findMinGrandChild(I)I
    .locals 3
    .param p1, "index"    # I

    .line 628
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v0

    .line 629
    .local v0, "leftChildIndex":I
    if-gez v0, :cond_0

    .line 630
    const/4 v1, -0x1

    return v1

    .line 632
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->findMin(II)I

    move-result v1

    return v1
.end method

.method swapWithConceptuallyLastElement(Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 680
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p1, "actualLastElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    .line 681
    .local v0, "parentIndex":I
    if-eqz v0, :cond_0

    .line 682
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v1

    .line 683
    .local v1, "grandparentIndex":I
    invoke-direct {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getRightChildIndex(I)I

    move-result v2

    .line 684
    .local v2, "uncleIndex":I
    if-eq v2, v0, :cond_0

    invoke-direct {p0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 685
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v3

    .line 686
    .local v3, "uncleElement":Ljava/lang/Object;, "TE;"
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v4, v3, p1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_0

    .line 687
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v4

    aput-object p1, v4, v2

    .line 688
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v5}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v5

    aput-object v3, v4, v5

    .line 689
    return v2

    .line 693
    .end local v1    # "grandparentIndex":I
    .end local v2    # "uncleIndex":I
    .end local v3    # "uncleElement":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v1

    return v1
.end method

.method tryCrossOverAndBubbleUp(IILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;
    .locals 4
    .param p1, "removeIndex"    # I
    .param p2, "vacated"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 544
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p3, "toTrickle":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2, p3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->crossOver(ILjava/lang/Object;)I

    move-result v0

    .line 545
    .local v0, "crossOver":I
    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 546
    return-object v1

    .line 554
    :cond_0
    if-ge v0, p1, :cond_1

    .line 557
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    .local v2, "parent":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 559
    .end local v2    # "parent":Ljava/lang/Object;, "TE;"
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    .line 562
    .restart local v2    # "parent":Ljava/lang/Object;, "TE;"
    :goto_0
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->otherHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    invoke-virtual {v3, v0, p3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->bubbleUpAlternatingLevels(ILjava/lang/Object;)I

    move-result v3

    if-ge v3, p1, :cond_2

    .line 563
    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    invoke-direct {v1, p3, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 565
    :cond_2
    return-object v1
.end method
