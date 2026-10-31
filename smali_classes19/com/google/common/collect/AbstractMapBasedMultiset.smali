.class abstract Lcom/google/common/collect/AbstractMapBasedMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMapBasedMultiset$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient backingMap:Lcom/google/common/collect/ObjectCountHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ObjectCountHashMap<",
            "TE;>;"
        }
    .end annotation
.end field

.field transient size:J


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "distinctElements"    # I

    .line 54
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->newBackingMap(I)Lcom/google/common/collect/ObjectCountHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    .line 56
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 265
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 266
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 267
    .local v0, "distinctElements":I
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->newBackingMap(I)Lcom/google/common/collect/ObjectCountHashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    .line 268
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->populateMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;I)V

    .line 269
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 260
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 261
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .registers 12
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    if-nez p2, :cond_7

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 79
    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    const-string v3, "occurrences cannot be negative: %s"

    invoke-static {v2, v3, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 80
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ObjectCountHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 81
    .local v2, "entryIndex":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_28

    .line 82
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ObjectCountHashMap;->put(Ljava/lang/Object;I)I

    .line 83
    iget-wide v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v5, p2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 84
    return v1

    .line 86
    :cond_28
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ObjectCountHashMap;->getValue(I)I

    move-result v3

    .line 87
    .local v3, "oldCount":I
    int-to-long v4, v3

    int-to-long v6, p2

    add-long/2addr v4, v6

    .line 88
    .local v4, "newCount":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v4, v6

    if-gtz v8, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    const-string v1, "too many occurrences: %s"

    invoke-static {v0, v1, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 89
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    long-to-int v1, v4

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ObjectCountHashMap;->setValue(II)V

    .line 90
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v6, p2

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 91
    return v3
.end method

.method addTo(Lcom/google/common/collect/Multiset;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset<",
            "-TE;>;)V"
        }
    .end annotation

    .line 232
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, "target":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<-TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ObjectCountHashMap;->firstIndex()I

    move-result v0

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_21

    .line 234
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ObjectCountHashMap;->getValue(I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    .line 233
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->nextIndex(I)I

    move-result v0

    goto :goto_9

    .line 236
    .end local v0    # "i":I
    :cond_21
    return-void
.end method

.method public final clear()V
    .registers 3

    .line 158
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ObjectCountHashMap;->clear()V

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 160
    return-void
.end method

.method public final count(Ljava/lang/Object;)I
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 62
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->get(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final distinctElements()I
    .registers 2

    .line 240
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ObjectCountHashMap;->size()I

    move-result v0

    return v0
.end method

.method final elementIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-object v0
.end method

.method final entryIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 222
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$2;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->iteratorImpl(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method abstract newBackingMap(I)Lcom/google/common/collect/ObjectCountHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ObjectCountHashMap<",
            "TE;>;"
        }
    .end annotation
.end method

.method public final remove(Ljava/lang/Object;I)I
    .registers 10
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .line 97
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    if-nez p2, :cond_7

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 100
    :cond_7
    const/4 v0, 0x0

    if-lez p2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const-string v2, "occurrences cannot be negative: %s"

    invoke-static {v1, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 101
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ObjectCountHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 102
    .local v1, "entryIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    .line 103
    return v0

    .line 105
    :cond_1c
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ObjectCountHashMap;->getValue(I)I

    move-result v0

    .line 107
    .local v0, "oldCount":I
    if-le v0, p2, :cond_2d

    .line 108
    move v2, p2

    .line 109
    .local v2, "numberRemoved":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    sub-int v4, v0, p2

    invoke-virtual {v3, v1, v4}, Lcom/google/common/collect/ObjectCountHashMap;->setValue(II)V

    goto :goto_33

    .line 111
    .end local v2    # "numberRemoved":I
    :cond_2d
    move v2, v0

    .line 112
    .restart local v2    # "numberRemoved":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ObjectCountHashMap;->removeEntry(I)I

    .line 114
    :goto_33
    iget-wide v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 115
    return v0
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 121
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    if-nez p2, :cond_e

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->remove(Ljava/lang/Object;)I

    move-result v0

    goto :goto_12

    :cond_e
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ObjectCountHashMap;->put(Ljava/lang/Object;I)I

    move-result v0

    .line 123
    .local v0, "oldCount":I
    :goto_12
    iget-wide v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    sub-int v3, p2, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 124
    return v0
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .registers 11
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 130
    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 132
    .local v0, "entryIndex":I
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_26

    .line 133
    if-eqz p2, :cond_18

    .line 134
    return v3

    .line 136
    :cond_18
    if-lez p3, :cond_25

    .line 137
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v1, p1, p3}, Lcom/google/common/collect/ObjectCountHashMap;->put(Ljava/lang/Object;I)I

    .line 138
    iget-wide v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v5, p3

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 140
    :cond_25
    return v2

    .line 142
    :cond_26
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->getValue(I)I

    move-result v1

    .line 143
    .local v1, "actualOldCount":I
    if-eq v1, p2, :cond_2f

    .line 144
    return v3

    .line 146
    :cond_2f
    if-nez p3, :cond_3d

    .line 147
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ObjectCountHashMap;->removeEntry(I)I

    .line 148
    iget-wide v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v5, p2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_4a

    .line 150
    :cond_3d
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v3, v0, p3}, Lcom/google/common/collect/ObjectCountHashMap;->setValue(II)V

    .line 151
    iget-wide v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    sub-int v5, p3, p2

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 153
    :goto_4a
    return v2
.end method

.method public final size()I
    .registers 3

    .line 250
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
