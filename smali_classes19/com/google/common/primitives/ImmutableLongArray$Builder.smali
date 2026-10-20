.class public final Lcom/google/common/primitives/ImmutableLongArray$Builder;
.super Ljava/lang/Object;
.source "ImmutableLongArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableLongArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private array:[J

.field private count:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    .line 203
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    .line 204
    return-void
.end method

.method private ensureRoomFor(I)V
    .locals 3
    .param p1, "numberToAdd"    # I

    .line 266
    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    add-int/2addr v0, p1

    .line 267
    .local v0, "newCount":I
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    array-length v2, v2

    invoke-static {v2, v0}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->expandedCapacity(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    .line 270
    :cond_0
    return-void
.end method

.method private static expandedCapacity(II)I
    .locals 2
    .param p0, "oldCapacity"    # I
    .param p1, "minCapacity"    # I

    .line 274
    if-ltz p1, :cond_2

    .line 278
    shr-int/lit8 v0, p0, 0x1

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    .line 279
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_0

    .line 280
    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 282
    :cond_0
    if-gez v0, :cond_1

    .line 283
    const v0, 0x7fffffff

    .line 285
    :cond_1
    return v0

    .line 275
    .end local v0    # "newCapacity":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "cannot store more than MAX_VALUE elements"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public add(J)Lcom/google/common/primitives/ImmutableLongArray$Builder;
    .locals 3
    .param p1, "value"    # J

    .line 211
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->ensureRoomFor(I)V

    .line 212
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget v2, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    aput-wide p1, v1, v2

    .line 213
    iget v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    .line 214
    return-object p0
.end method

.method public addAll(Lcom/google/common/primitives/ImmutableLongArray;)Lcom/google/common/primitives/ImmutableLongArray$Builder;
    .locals 5
    .param p1, "values"    # Lcom/google/common/primitives/ImmutableLongArray;

    .line 259
    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableLongArray;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->ensureRoomFor(I)V

    .line 260
    invoke-static {p1}, Lcom/google/common/primitives/ImmutableLongArray;->access$000(Lcom/google/common/primitives/ImmutableLongArray;)[J

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/primitives/ImmutableLongArray;->access$100(Lcom/google/common/primitives/ImmutableLongArray;)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget v3, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableLongArray;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableLongArray;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    .line 262
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableLongArray$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableLongArray$Builder;"
        }
    .end annotation

    .line 233
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 234
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->addAll(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableLongArray$Builder;

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 237
    .local v1, "value":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->add(J)Lcom/google/common/primitives/ImmutableLongArray$Builder;

    .line 238
    .end local v1    # "value":Ljava/lang/Long;
    goto :goto_0

    .line 239
    :cond_1
    return-object p0
.end method

.method public addAll(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableLongArray$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableLongArray$Builder;"
        }
    .end annotation

    .line 247
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->ensureRoomFor(I)V

    .line 248
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 249
    .local v1, "value":Ljava/lang/Long;
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget v3, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 250
    .end local v1    # "value":Ljava/lang/Long;
    goto :goto_0

    .line 251
    :cond_0
    return-object p0
.end method

.method public addAll([J)Lcom/google/common/primitives/ImmutableLongArray$Builder;
    .locals 4
    .param p1, "values"    # [J

    .line 222
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->ensureRoomFor(I)V

    .line 223
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    .line 225
    return-object p0
.end method

.method public build()Lcom/google/common/primitives/ImmutableLongArray;
    .locals 5
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .line 298
    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/primitives/ImmutableLongArray;->access$200()Lcom/google/common/primitives/ImmutableLongArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableLongArray;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget v2, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([JIILcom/google/common/primitives/ImmutableLongArray$1;)V

    :goto_0
    return-object v0
.end method
