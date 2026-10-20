.class Lj$/util/stream/SpinedBuffer;
.super Lj$/util/stream/AbstractSpinedBuffer;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Ljava/lang/Iterable;
.implements Lj$/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/SpinedBuffer$OfDouble;,
        Lj$/util/stream/SpinedBuffer$OfLong;,
        Lj$/util/stream/SpinedBuffer$OfInt;,
        Lj$/util/stream/SpinedBuffer$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/AbstractSpinedBuffer;",
        "Ljava/util/function/Consumer<",
        "TE;>;",
        "Ljava/lang/Iterable<",
        "TE;>;",
        "Lj$/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final SPLITERATOR_CHARACTERISTICS:I = 0x4050


# instance fields
.field protected curChunk:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected spine:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 106
    .local p0, "this":Lj$/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-direct {p0}, Lj$/util/stream/AbstractSpinedBuffer;-><init>()V

    .line 107
    const/4 v0, 0x1

    iget v1, p0, Lj$/util/stream/SpinedBuffer;->initialChunkPower:I

    shl-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    .line 108
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .line 97
    .local p0, "this":Lj$/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-direct {p0, p1}, Lj$/util/stream/AbstractSpinedBuffer;-><init>(I)V

    .line 98
    const/4 v0, 0x1

    iget v1, p0, Lj$/util/stream/SpinedBuffer;->initialChunkPower:I

    shl-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    .line 99
    return-void
.end method

.method private inflateSpine()V
    .locals 3

    .line 121
    .local p0, "this":Lj$/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 122
    const/16 v0, 0x8

    new-array v1, v0, [[Ljava/lang/Object;

    iput-object v1, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    .line 123
    new-array v0, v0, [J

    iput-object v0, p0, Lj$/util/stream/SpinedBuffer;->priorElementCount:[J

    .line 124
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 255
    .local p0, "this":Lj$/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Lj$/util/stream/SpinedBuffer;->elementIndex:I

    iget-object v1, p0, Lj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 256
    invoke-direct {p0}, Lj$/util/stream/SpinedBuffer;->inflateSpine()V

    .line 257
    iget v0, p0, Lj$/util/stream/SpinedBuffer;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/SpinedBuffer;->spineIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 258
    :cond_0
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer;->increaseCapacity()V

    .line 259
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/SpinedBuffer;->elementIndex:I

    .line 260
    iget v0, p0, Lj$/util/stream/SpinedBuffer;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/SpinedBuffer;->spineIndex:I

    .line 261
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/SpinedBuffer;->spineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    .line 263
    :cond_2
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/SpinedBuffer;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/SpinedBuffer;->elementIndex:I

    aput-object p1, v0, v1

    .line 264
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "[TE;>;)[TE;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lj$/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    .local p1, "arrayFactory":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TE;>;"
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer;->count()J

    move-result-wide v0

    .line 212
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 214
    long-to-int v2, v0

    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 215
    .local v2, "result":[Ljava/lang/Object;, "[TE;"
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lj$/util/stream/SpinedBuffer;->copyInto([Ljava/lang/Object;I)V

    .line 216
    return-object v2

    .line 213
    .end local v2    # "result":[Ljava/lang/Object;, "[TE;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected capacity()J
    .locals 5

    .line 114
    .local p0, "this":Lj$/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    iget v0, p0, Lj$/util/stream/SpinedBuffer;->spineIndex:I

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer;->priorElementCount:[J

    iget v1, p0, Lj$/util/stream/SpinedBuffer;->spineIndex:I

    aget-wide v1, v0, v1

    iget-object v0, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v3, p0, Lj$/util/stream/SpinedBuffer;->spineIndex:I

    aget-object v0, v0, v3

    array-length v0, v0

    int-to-long v3, v0

    add-long v0, v1, v3

    .line 114
    :goto_0
    return-wide v0
.end method

.method public clear()V
    .locals 4

    .line 221
    .local p0, "this":Lj$/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v0, v0, v1

    iput-object v0, p0, Lj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 224
    iget-object v3, p0, Lj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "i":I
    :cond_0
    iput-object v2, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    .line 226
    iput-object v2, p0, Lj$/util/stream/SpinedBuffer;->priorElementCount:[J

    goto :goto_2

    .line 229
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v3, p0, Lj$/util/stream/SpinedBuffer;->elementIndex:I

    if-ge v0, v3, :cond_2

    .line 230
    iget-object v3, p0, Lj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    .end local v0    # "i":I
    :cond_2
    :goto_2
    iput v1, p0, Lj$/util/stream/SpinedBuffer;->elementIndex:I

    .line 233
    iput v1, p0, Lj$/util/stream/SpinedBuffer;->spineIndex:I

    .line 234
    return-void
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 6
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;I)V"
        }
    .end annotation

    .line 188
    .local p0, "this":Lj$/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    int-to-long v0, p2

    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer;->count()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 189
    .local v0, "finalOffset":J
    array-length v2, p1

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    int-to-long v2, p2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 193
    iget v2, p0, Lj$/util/stream/SpinedBuffer;->spineIndex:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    iget v4, p0, Lj$/util/stream/SpinedBuffer;->elementIndex:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 197
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lj$/util/stream/SpinedBuffer;->spineIndex:I

    if-ge v2, v4, :cond_1

    .line 198
    iget-object v4, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v4, v4, v2

    iget-object v5, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v5, v5, v2

    array-length v5, v5

    invoke-static {v4, v3, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    iget-object v4, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v4, v4, v2

    array-length v4, v4

    add-int/2addr p2, v4

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v2    # "i":I
    :cond_1
    iget v2, p0, Lj$/util/stream/SpinedBuffer;->elementIndex:I

    if-lez v2, :cond_2

    .line 202
    iget-object v2, p0, Lj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    iget v4, p0, Lj$/util/stream/SpinedBuffer;->elementIndex:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    :cond_2
    :goto_1
    return-void

    .line 190
    :cond_3
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "does not fit"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final ensureCapacity(J)V
    .locals 10
    .param p1, "targetSize"    # J

    .line 133
    .local p0, "this":Lj$/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer;->capacity()J

    move-result-wide v0

    .line 134
    .local v0, "capacity":J
    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 135
    invoke-direct {p0}, Lj$/util/stream/SpinedBuffer;->inflateSpine()V

    .line 136
    iget v2, p0, Lj$/util/stream/SpinedBuffer;->spineIndex:I

    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    :goto_0
    cmp-long v3, p1, v0

    if-lez v3, :cond_1

    .line 137
    iget-object v3, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 138
    iget-object v3, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    .line 139
    .local v3, "newSpineSize":I
    iget-object v4, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/Object;

    iput-object v4, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    .line 140
    iget-object v4, p0, Lj$/util/stream/SpinedBuffer;->priorElementCount:[J

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, p0, Lj$/util/stream/SpinedBuffer;->priorElementCount:[J

    .line 142
    .end local v3    # "newSpineSize":I
    :cond_0
    invoke-virtual {p0, v2}, Lj$/util/stream/SpinedBuffer;->chunkSize(I)I

    move-result v3

    .line 143
    .local v3, "nextChunkSize":I
    iget-object v4, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v5, v4, v2

    .line 144
    iget-object v4, p0, Lj$/util/stream/SpinedBuffer;->priorElementCount:[J

    iget-object v5, p0, Lj$/util/stream/SpinedBuffer;->priorElementCount:[J

    add-int/lit8 v6, v2, -0x1

    aget-wide v6, v5, v6

    iget-object v5, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    add-int/lit8 v8, v2, -0x1

    aget-object v5, v5, v8

    array-length v5, v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    aput-wide v6, v4, v2

    .line 145
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 136
    .end local v3    # "nextChunkSize":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 244
    .local p0, "this":Lj$/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v1, p0, Lj$/util/stream/SpinedBuffer;->spineIndex:I

    if-ge v0, v1, :cond_1

    .line 245
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 246
    .local v4, "t":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 245
    .end local v4    # "t":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 244
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "j":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v1, p0, Lj$/util/stream/SpinedBuffer;->elementIndex:I

    if-ge v0, v1, :cond_2

    .line 250
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 251
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lj$/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    iget v0, p0, Lj$/util/stream/SpinedBuffer;->spineIndex:I

    if-nez v0, :cond_1

    .line 167
    iget v0, p0, Lj$/util/stream/SpinedBuffer;->elementIndex:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 168
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    long-to-int v1, p1

    aget-object v0, v0, v1

    return-object v0

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer;->count()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    .line 176
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v1, p0, Lj$/util/stream/SpinedBuffer;->spineIndex:I

    if-gt v0, v1, :cond_3

    .line 177
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer;->priorElementCount:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    array-length v1, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_2

    .line 178
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Lj$/util/stream/SpinedBuffer;->priorElementCount:[J

    aget-wide v3, v2, v0

    sub-long v2, p1, v3

    long-to-int v3, v2

    aget-object v1, v1, v3

    return-object v1

    .line 176
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "j":I
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected increaseCapacity()V
    .locals 4

    .line 154
    .local p0, "this":Lj$/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer;->capacity()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lj$/util/stream/SpinedBuffer;->ensureCapacity(J)V

    .line 155
    return-void
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

    .line 238
    .local p0, "this":Lj$/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 399
    .local p0, "this":Lj$/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    new-instance v6, Lj$/util/stream/SpinedBuffer$1Splitr;

    iget v3, p0, Lj$/util/stream/SpinedBuffer;->spineIndex:I

    const/4 v4, 0x0

    iget v5, p0, Lj$/util/stream/SpinedBuffer;->elementIndex:I

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/SpinedBuffer$1Splitr;-><init>(Lj$/util/stream/SpinedBuffer;IIII)V

    return-object v6
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 268
    .local p0, "this":Lj$/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj$/util/stream/SpinedBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lj$/util/stream/SpinedBuffer$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lj$/util/stream/SpinedBuffer;->forEach(Ljava/util/function/Consumer;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpinedBuffer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
