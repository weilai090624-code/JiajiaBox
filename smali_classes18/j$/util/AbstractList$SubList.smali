.class Lj$/util/AbstractList$SubList;
.super Lj$/util/AbstractList;
.source "AbstractList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/AbstractList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final offset:I

.field private final parent:Lj$/util/AbstractList$SubList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/AbstractList$SubList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final root:Lj$/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/AbstractList<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected size:I


# direct methods
.method static bridge synthetic -$$Nest$fgetoffset(Lj$/util/AbstractList$SubList;)I
    .locals 0

    iget p0, p0, Lj$/util/AbstractList$SubList;->offset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetroot(Lj$/util/AbstractList$SubList;)Lj$/util/AbstractList;
    .locals 0

    iget-object p0, p0, Lj$/util/AbstractList$SubList;->root:Lj$/util/AbstractList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateSizeAndModCount(Lj$/util/AbstractList$SubList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    return-void
.end method

.method protected constructor <init>(Lj$/util/AbstractList$SubList;II)V
    .locals 1
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/AbstractList$SubList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 769
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p1, "parent":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    invoke-direct {p0}, Lj$/util/AbstractList;-><init>()V

    .line 770
    iget-object v0, p1, Lj$/util/AbstractList$SubList;->root:Lj$/util/AbstractList;

    iput-object v0, p0, Lj$/util/AbstractList$SubList;->root:Lj$/util/AbstractList;

    .line 771
    iput-object p1, p0, Lj$/util/AbstractList$SubList;->parent:Lj$/util/AbstractList$SubList;

    .line 772
    iget v0, p1, Lj$/util/AbstractList$SubList;->offset:I

    add-int/2addr v0, p2

    iput v0, p0, Lj$/util/AbstractList$SubList;->offset:I

    .line 773
    sub-int v0, p3, p2

    iput v0, p0, Lj$/util/AbstractList$SubList;->size:I

    .line 774
    iget-object v0, p0, Lj$/util/AbstractList$SubList;->root:Lj$/util/AbstractList;

    iget v0, v0, Lj$/util/AbstractList;->modCount:I

    iput v0, p0, Lj$/util/AbstractList$SubList;->modCount:I

    .line 775
    return-void
.end method

.method public constructor <init>(Lj$/util/AbstractList;II)V
    .locals 1
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/AbstractList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 758
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p1, "root":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0}, Lj$/util/AbstractList;-><init>()V

    .line 759
    iput-object p1, p0, Lj$/util/AbstractList$SubList;->root:Lj$/util/AbstractList;

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/AbstractList$SubList;->parent:Lj$/util/AbstractList$SubList;

    .line 761
    iput p2, p0, Lj$/util/AbstractList$SubList;->offset:I

    .line 762
    sub-int v0, p3, p2

    iput v0, p0, Lj$/util/AbstractList$SubList;->size:I

    .line 763
    iget v0, p1, Lj$/util/AbstractList;->modCount:I

    iput v0, p0, Lj$/util/AbstractList$SubList;->modCount:I

    .line 764
    return-void
.end method

.method private checkForComodification()V
    .locals 2

    .line 903
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    iget-object v0, p0, Lj$/util/AbstractList$SubList;->root:Lj$/util/AbstractList;

    iget v0, v0, Lj$/util/AbstractList;->modCount:I

    iget v1, p0, Lj$/util/AbstractList$SubList;->modCount:I

    if-ne v0, v1, :cond_0

    .line 905
    return-void

    .line 904
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private outOfBoundsMsg(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 899
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    iget v0, p0, Lj$/util/AbstractList$SubList;->size:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private rangeCheckForAdd(I)V
    .locals 2
    .param p1, "index"    # I

    .line 894
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Lj$/util/AbstractList$SubList;->size:I

    if-gt p1, v0, :cond_0

    .line 896
    return-void

    .line 895
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lj$/util/AbstractList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateSizeAndModCount(I)V
    .locals 2
    .param p1, "sizeChange"    # I

    .line 908
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    move-object v0, p0

    .line 910
    .local v0, "slist":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    :cond_0
    iget v1, v0, Lj$/util/AbstractList$SubList;->size:I

    add-int/2addr v1, p1

    iput v1, v0, Lj$/util/AbstractList$SubList;->size:I

    .line 911
    iget-object v1, p0, Lj$/util/AbstractList$SubList;->root:Lj$/util/AbstractList;

    iget v1, v1, Lj$/util/AbstractList;->modCount:I

    iput v1, v0, Lj$/util/AbstractList$SubList;->modCount:I

    .line 912
    iget-object v0, v0, Lj$/util/AbstractList$SubList;->parent:Lj$/util/AbstractList$SubList;

    .line 913
    if-nez v0, :cond_0

    .line 914
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 795
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lj$/util/AbstractList$SubList;->rangeCheckForAdd(I)V

    .line 796
    invoke-direct {p0}, Lj$/util/AbstractList$SubList;->checkForComodification()V

    .line 797
    iget-object v0, p0, Lj$/util/AbstractList$SubList;->root:Lj$/util/AbstractList;

    iget v1, p0, Lj$/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lj$/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 798
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lj$/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    .line 799
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 820
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Lj$/util/AbstractList$SubList;->rangeCheckForAdd(I)V

    .line 821
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 822
    .local v0, "cSize":I
    if-nez v0, :cond_0

    .line 823
    const/4 v1, 0x0

    return v1

    .line 824
    :cond_0
    invoke-direct {p0}, Lj$/util/AbstractList$SubList;->checkForComodification()V

    .line 825
    iget-object v1, p0, Lj$/util/AbstractList$SubList;->root:Lj$/util/AbstractList;

    iget v2, p0, Lj$/util/AbstractList$SubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Lj$/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    .line 826
    invoke-direct {p0, v0}, Lj$/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    .line 827
    const/4 v1, 0x1

    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 816
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Lj$/util/AbstractList$SubList;->size:I

    invoke-virtual {p0, v0, p1}, Lj$/util/AbstractList$SubList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 784
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    iget v0, p0, Lj$/util/AbstractList$SubList;->size:I

    invoke-static {p1, v0}, Lj$/util/Objects;->checkIndex(II)I

    .line 785
    invoke-direct {p0}, Lj$/util/AbstractList$SubList;->checkForComodification()V

    .line 786
    iget-object v0, p0, Lj$/util/AbstractList$SubList;->root:Lj$/util/AbstractList;

    iget v1, p0, Lj$/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lj$/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 831
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    invoke-virtual {p0}, Lj$/util/AbstractList$SubList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 835
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    invoke-direct {p0}, Lj$/util/AbstractList$SubList;->checkForComodification()V

    .line 836
    invoke-direct {p0, p1}, Lj$/util/AbstractList$SubList;->rangeCheckForAdd(I)V

    .line 838
    new-instance v0, Lj$/util/AbstractList$SubList$1;

    invoke-direct {v0, p0, p1}, Lj$/util/AbstractList$SubList$1;-><init>(Lj$/util/AbstractList$SubList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 802
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    iget v0, p0, Lj$/util/AbstractList$SubList;->size:I

    invoke-static {p1, v0}, Lj$/util/Objects;->checkIndex(II)I

    .line 803
    invoke-direct {p0}, Lj$/util/AbstractList$SubList;->checkForComodification()V

    .line 804
    iget-object v0, p0, Lj$/util/AbstractList$SubList;->root:Lj$/util/AbstractList;

    iget v1, p0, Lj$/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lj$/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 805
    .local v0, "result":Ljava/lang/Object;, "TE;"
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lj$/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    .line 806
    return-object v0
.end method

.method protected removeRange(II)V
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 810
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    invoke-direct {p0}, Lj$/util/AbstractList$SubList;->checkForComodification()V

    .line 811
    iget-object v0, p0, Lj$/util/AbstractList$SubList;->root:Lj$/util/AbstractList;

    iget v1, p0, Lj$/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Lj$/util/AbstractList$SubList;->offset:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lj$/util/AbstractList;->removeRange(II)V

    .line 812
    sub-int v0, p1, p2

    invoke-direct {p0, v0}, Lj$/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    .line 813
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 778
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget v0, p0, Lj$/util/AbstractList$SubList;->size:I

    invoke-static {p1, v0}, Lj$/util/Objects;->checkIndex(II)I

    .line 779
    invoke-direct {p0}, Lj$/util/AbstractList$SubList;->checkForComodification()V

    .line 780
    iget-object v0, p0, Lj$/util/AbstractList$SubList;->root:Lj$/util/AbstractList;

    iget v1, p0, Lj$/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lj$/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 790
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    invoke-direct {p0}, Lj$/util/AbstractList$SubList;->checkForComodification()V

    .line 791
    iget v0, p0, Lj$/util/AbstractList$SubList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 889
    .local p0, "this":Lj$/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    iget v0, p0, Lj$/util/AbstractList$SubList;->size:I

    invoke-static {p1, p2, v0}, Lj$/util/AbstractList$SubList;->subListRangeCheck(III)V

    .line 890
    new-instance v0, Lj$/util/AbstractList$SubList;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/AbstractList$SubList;-><init>(Lj$/util/AbstractList$SubList;II)V

    return-object v0
.end method
