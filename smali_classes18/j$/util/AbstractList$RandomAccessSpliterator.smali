.class final Lj$/util/AbstractList$RandomAccessSpliterator;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RandomAccessSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final alist:Lj$/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/AbstractList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 650
    const-class v0, Lj$/util/AbstractList;

    return-void
.end method

.method private constructor <init>(Lj$/util/AbstractList$RandomAccessSpliterator;II)V
    .locals 1
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/AbstractList$RandomAccessSpliterator<",
            "TE;>;II)V"
        }
    .end annotation

    .line 673
    .local p0, "this":Lj$/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    .local p1, "parent":Lj$/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iget-object v0, p1, Lj$/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    iput-object v0, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    .line 675
    iput p2, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->index:I

    .line 676
    iput p3, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->fence:I

    .line 678
    iget-object v0, p1, Lj$/util/AbstractList$RandomAccessSpliterator;->alist:Lj$/util/AbstractList;

    iput-object v0, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->alist:Lj$/util/AbstractList;

    .line 679
    iget v0, p1, Lj$/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    iput v0, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    .line 680
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 660
    .local p0, "this":Lj$/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    nop

    .line 663
    iput-object p1, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    .line 664
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->index:I

    .line 665
    const/4 v1, -0x1

    iput v1, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->fence:I

    .line 667
    instance-of v1, p1, Lj$/util/AbstractList;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lj$/util/AbstractList;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->alist:Lj$/util/AbstractList;

    .line 668
    iget-object v1, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->alist:Lj$/util/AbstractList;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->alist:Lj$/util/AbstractList;

    iget v0, v0, Lj$/util/AbstractList;->modCount:I

    :cond_1
    iput v0, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    .line 669
    return-void
.end method

.method static checkAbstractListModCount(Lj$/util/AbstractList;I)V
    .locals 1
    .param p1, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/AbstractList<",
            "*>;I)V"
        }
    .end annotation

    .line 742
    .local p0, "alist":Lj$/util/AbstractList;, "Ljava/util/AbstractList<*>;"
    if-eqz p0, :cond_1

    iget v0, p0, Lj$/util/AbstractList;->modCount:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 743
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 745
    :cond_1
    :goto_0
    return-void
.end method

.method private static get(Ljava/util/List;I)Ljava/lang/Object;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;I)TE;"
        }
    .end annotation

    .line 735
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method private getFence()I
    .locals 3

    .line 684
    .local p0, "this":Lj$/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    iget-object v0, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    .line 685
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget v1, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->fence:I

    move v2, v1

    .local v2, "hi":I
    if-gez v1, :cond_1

    .line 686
    iget-object v1, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->alist:Lj$/util/AbstractList;

    if-eqz v1, :cond_0

    .line 687
    iget-object v1, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->alist:Lj$/util/AbstractList;

    iget v1, v1, Lj$/util/AbstractList;->modCount:I

    iput v1, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    .line 689
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->fence:I

    move v2, v1

    .line 691
    :cond_1
    return v2
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 730
    .local p0, "this":Lj$/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 726
    .local p0, "this":Lj$/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    invoke-direct {p0}, Lj$/util/AbstractList$RandomAccessSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 714
    .local p0, "this":Lj$/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object v0, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    .line 716
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Lj$/util/AbstractList$RandomAccessSpliterator;->getFence()I

    move-result v1

    .line 717
    .local v1, "hi":I
    iget v2, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->index:I

    .line 718
    .local v2, "i":I
    iput v1, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->index:I

    .line 719
    :goto_0
    if-ge v2, v1, :cond_0

    .line 720
    invoke-static {v0, v2}, Lj$/util/AbstractList$RandomAccessSpliterator;->get(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 719
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 722
    :cond_0
    iget-object v3, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->alist:Lj$/util/AbstractList;

    iget v4, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    invoke-static {v3, v4}, Lj$/util/AbstractList$RandomAccessSpliterator;->checkAbstractListModCount(Lj$/util/AbstractList;I)V

    .line 723
    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getComparator(Lj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 701
    .local p0, "this":Lj$/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_1

    .line 703
    invoke-direct {p0}, Lj$/util/AbstractList$RandomAccessSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->index:I

    .line 704
    .local v1, "i":I
    if-ge v1, v0, :cond_0

    .line 705
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->index:I

    .line 706
    iget-object v2, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    invoke-static {v2, v1}, Lj$/util/AbstractList$RandomAccessSpliterator;->get(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 707
    iget-object v2, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->alist:Lj$/util/AbstractList;

    iget v3, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    invoke-static {v2, v3}, Lj$/util/AbstractList$RandomAccessSpliterator;->checkAbstractListModCount(Lj$/util/AbstractList;I)V

    .line 708
    const/4 v2, 0x1

    return v2

    .line 710
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 702
    .end local v0    # "hi":I
    .end local v1    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 695
    .local p0, "this":Lj$/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    invoke-direct {p0}, Lj$/util/AbstractList$RandomAccessSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->index:I

    .local v1, "lo":I
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 696
    .local v2, "mid":I
    if-lt v1, v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 697
    :cond_0
    new-instance v3, Lj$/util/AbstractList$RandomAccessSpliterator;

    iput v2, p0, Lj$/util/AbstractList$RandomAccessSpliterator;->index:I

    invoke-direct {v3, p0, v1, v2}, Lj$/util/AbstractList$RandomAccessSpliterator;-><init>(Lj$/util/AbstractList$RandomAccessSpliterator;II)V

    .line 696
    :goto_0
    return-object v3
.end method
