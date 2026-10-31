.class abstract Lj$/util/ImmutableCollections$AbstractImmutableList;
.super Lj$/util/ImmutableCollections$AbstractImmutableCollection;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Lj$/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractImmutableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/ImmutableCollections$AbstractImmutableCollection<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Lj$/util/List<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 100
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    invoke-direct {p0}, Lj$/util/ImmutableCollections$AbstractImmutableCollection;-><init>()V

    return-void
.end method

.method static subListRangeCheck(III)V
    .registers 6
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I
    .param p2, "size"    # I

    .line 119
    if-ltz p0, :cond_49

    .line 121
    if-gt p1, p2, :cond_30

    .line 123
    if-gt p0, p1, :cond_7

    .line 126
    return-void

    .line 124
    :cond_7
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

    .line 122
    :cond_30
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

    .line 120
    :cond_49
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
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-static {}, Lj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 105
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {}, Lj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 199
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Lj$/util/ImmutableCollections$AbstractImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 149
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 150
    return v0

    .line 153
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 154
    return v2

    .line 157
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 158
    .local v1, "oit":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Lj$/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v4

    .local v4, "s":I
    :goto_16
    if-ge v3, v4, :cond_31

    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {p0, v3}, Lj$/util/ImmutableCollections$AbstractImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_30

    .line 158
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 160
    :cond_30
    :goto_30
    return v2

    .line 163
    .end local v3    # "i":I
    .end local v4    # "s":I
    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    xor-int/2addr v0, v2

    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 190
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    const/4 v0, 0x1

    .line 191
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lj$/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_6
    if-ge v1, v2, :cond_17

    .line 192
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Lj$/util/ImmutableCollections$AbstractImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 194
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_17
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 168
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lj$/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_8
    if-ge v0, v1, :cond_18

    .line 170
    invoke-virtual {p0, v0}, Lj$/util/ImmutableCollections$AbstractImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 171
    return v0

    .line 169
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 174
    .end local v0    # "i":I
    .end local v1    # "s":I
    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    new-instance v0, Lj$/util/ImmutableCollections$ListItr;

    invoke-virtual {p0}, Lj$/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lj$/util/ImmutableCollections$ListItr;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 179
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {p0}, Lj$/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_19

    .line 181
    invoke-virtual {p0, v0}, Lj$/util/ImmutableCollections$AbstractImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 182
    return v0

    .line 180
    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 185
    .end local v0    # "i":I
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lj$/util/ImmutableCollections$AbstractImmutableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    invoke-virtual {p0}, Lj$/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v0

    .line 141
    .local v0, "size":I
    if-ltz p1, :cond_e

    if-gt p1, v0, :cond_e

    .line 144
    new-instance v1, Lj$/util/ImmutableCollections$ListItr;

    invoke-direct {v1, p0, v0, p1}, Lj$/util/ImmutableCollections$ListItr;-><init>(Ljava/util/List;II)V

    return-object v1

    .line 142
    :cond_e
    invoke-virtual {p0, p1}, Lj$/util/ImmutableCollections$AbstractImmutableList;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v1

    throw v1
.end method

.method outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;
    .registers 6
    .param p1, "index"    # I

    .line 203
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0}, Lj$/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    invoke-static {}, Lj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {}, Lj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-static {}, Lj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-static {}, Lj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public synthetic spliterator()Lj$/util/Spliterator;
    .registers 2

    invoke-static {p0}, Lj$/util/List$-CC;->$default$spliterator(Ljava/util/List;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lj$/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    invoke-virtual {p0}, Lj$/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v0

    .line 114
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lj$/util/ImmutableCollections$AbstractImmutableList;->subListRangeCheck(III)V

    .line 115
    invoke-static {p0, p1, p2}, Lj$/util/ImmutableCollections$SubList;->fromList(Ljava/util/List;II)Lj$/util/ImmutableCollections$SubList;

    move-result-object v1

    return-object v1
.end method
