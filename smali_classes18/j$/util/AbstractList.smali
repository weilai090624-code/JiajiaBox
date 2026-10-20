.class public abstract Lj$/util/AbstractList;
.super Ljava/util/AbstractCollection;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/AbstractList$RandomAccessSubList;,
        Lj$/util/AbstractList$SubList;,
        Lj$/util/AbstractList$RandomAccessSpliterator;,
        Lj$/util/AbstractList$ListItr;,
        Lj$/util/AbstractList$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected transient modCount:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 78
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 628
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/AbstractList;->modCount:I

    .line 79
    return-void
.end method

.method private outOfBoundsMsg(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 636
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Lj$/util/AbstractList;->size()I

    move-result v0

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

    .line 631
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lj$/util/AbstractList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 633
    return-void

    .line 632
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lj$/util/AbstractList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static subListRangeCheck(III)V
    .locals 3
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I
    .param p2, "size"    # I

    .line 504
    if-ltz p0, :cond_2

    .line 506
    if-gt p1, p2, :cond_1

    .line 508
    if-gt p0, p1, :cond_0

    .line 511
    return-void

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 153
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 111
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lj$/util/AbstractList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lj$/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 267
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Lj$/util/AbstractList;->rangeCheckForAdd(I)V

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "modified":Z
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 270
    .local v2, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "index":I
    .local v3, "index":I
    invoke-virtual {p0, p1, v2}, Lj$/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 271
    const/4 v0, 0x1

    .line 272
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    move p1, v3

    goto :goto_0

    .line 273
    .end local v3    # "index":I
    .restart local p1    # "index":I
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 2

    .line 243
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0}, Lj$/util/AbstractList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lj$/util/AbstractList;->removeRange(II)V

    .line 244
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 538
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 539
    return v0

    .line 540
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 541
    return v2

    .line 543
    :cond_1
    invoke-virtual {p0}, Lj$/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 544
    .local v1, "e1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 545
    .local v3, "e2":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 546
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 547
    .local v4, "o1":Ljava/lang/Object;, "TE;"
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 548
    .local v5, "o2":Ljava/lang/Object;
    if-nez v4, :cond_2

    if-nez v5, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 549
    :cond_3
    return v2

    .line 550
    .end local v4    # "o1":Ljava/lang/Object;, "TE;"
    .end local v5    # "o2":Ljava/lang/Object;
    :cond_4
    :goto_1
    goto :goto_0

    .line 551
    :cond_5
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 5

    .line 565
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v0, 0x1

    .line 566
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lj$/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 567
    .local v2, "e":Ljava/lang/Object;, "TE;"
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int v0, v3, v4

    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 568
    :cond_1
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 185
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Lj$/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 186
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    if-nez p1, :cond_1

    .line 187
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 189
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    return v1

    .line 191
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    return v1

    .line 195
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 299
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    new-instance v0, Lj$/util/AbstractList$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj$/util/AbstractList$Itr;-><init>(Lj$/util/AbstractList;Lj$/util/AbstractList-IA;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 211
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Lj$/util/AbstractList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lj$/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 212
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    if-nez p1, :cond_1

    .line 213
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 215
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    return v1

    .line 217
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    return v1

    .line 221
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 311
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lj$/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

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

    .line 338
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0, p1}, Lj$/util/AbstractList;->rangeCheckForAdd(I)V

    .line 340
    new-instance v0, Lj$/util/AbstractList$ListItr;

    invoke-direct {v0, p0, p1}, Lj$/util/AbstractList$ListItr;-><init>(Lj$/util/AbstractList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected removeRange(II)V
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 595
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0, p1}, Lj$/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 596
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    sub-int v2, p2, p1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 597
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 598
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 596
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 600
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 136
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 497
    .local p0, "this":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Lj$/util/AbstractList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lj$/util/AbstractList;->subListRangeCheck(III)V

    .line 498
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Lj$/util/AbstractList$RandomAccessSubList;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/AbstractList$RandomAccessSubList;-><init>(Lj$/util/AbstractList;II)V

    goto :goto_0

    .line 500
    :cond_0
    new-instance v0, Lj$/util/AbstractList$SubList;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/AbstractList$SubList;-><init>(Lj$/util/AbstractList;II)V

    .line 498
    :goto_0
    return-object v0
.end method
