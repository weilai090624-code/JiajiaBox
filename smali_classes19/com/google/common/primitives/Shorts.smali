.class public final Lcom/google/common/primitives/Shorts;
.super Lcom/google/common/primitives/ShortsMethodsForWeb;
.source "Shorts.java"


# annotations
.annotation runtime Lcom/google/common/primitives/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Shorts$ShortArrayAsList;,
        Lcom/google/common/primitives/Shorts$LexicographicalComparator;,
        Lcom/google/common/primitives/Shorts$ShortConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2

.field public static final MAX_POWER_OF_TWO:S = 0x4000s


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/google/common/primitives/ShortsMethodsForWeb;-><init>()V

    return-void
.end method

.method static synthetic access$000([SSII)I
    .registers 5
    .param p0, "x0"    # [S
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([SSII)I
    .registers 5
    .param p0, "x0"    # [S
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([S)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 556
    array-length v0, p0

    if-nez v0, :cond_8

    .line 557
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 559
    :cond_8
    new-instance v0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([S)V

    return-object v0
.end method

.method public static checkedCast(J)S
    .registers 6
    .param p0, "value"    # J

    .line 87
    long-to-int v0, p0

    int-to-short v0, v0

    .line 88
    .local v0, "result":S
    int-to-long v1, v0

    cmp-long v3, v1, p0

    if-nez v3, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "Out of range: %s"

    invoke-static {v1, v2, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 89
    return v0
.end method

.method public static compare(SS)I
    .registers 3
    .param p0, "a"    # S
    .param p1, "b"    # S

    .line 122
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs concat([[S)[S
    .registers 9
    .param p0, "arrays"    # [[S

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "length":I
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_d

    aget-object v4, p0, v3

    .line 286
    .local v4, "array":[S
    array-length v5, v4

    add-int/2addr v0, v5

    .line 285
    .end local v4    # "array":[S
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 288
    :cond_d
    new-array v1, v0, [S

    .line 289
    .local v1, "result":[S
    const/4 v3, 0x0

    .line 290
    .local v3, "pos":I
    array-length v4, p0

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v4, :cond_1f

    aget-object v6, p0, v5

    .line 291
    .local v6, "array":[S
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    array-length v7, v6

    add-int/2addr v3, v7

    .line 290
    .end local v6    # "array":[S
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 294
    :cond_1f
    return-object v1
.end method

.method public static constrainToRange(SSS)S
    .registers 5
    .param p0, "value"    # S
    .param p1, "min"    # S
    .param p2, "max"    # S

    .line 271
    if-gt p1, p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "min (%s) must be less than or equal to max (%s)"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 272
    if-ge p0, p1, :cond_e

    move v0, p1

    goto :goto_13

    :cond_e
    if-ge p0, p2, :cond_12

    move v0, p0

    goto :goto_13

    :cond_12
    move v0, p2

    :goto_13
    return v0
.end method

.method public static contains([SS)Z
    .registers 6
    .param p0, "array"    # [S
    .param p1, "target"    # S

    .line 133
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_e

    aget-short v3, p0, v2

    .line 134
    .local v3, "value":S
    if-ne v3, p1, :cond_b

    .line 135
    const/4 v0, 0x1

    return v0

    .line 133
    .end local v3    # "value":S
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 138
    :cond_e
    return v1
.end method

.method public static ensureCapacity([SII)[S
    .registers 7
    .param p0, "array"    # [S
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .line 394
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "Invalid minLength: %s"

    invoke-static {v2, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 395
    if-ltz p2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "Invalid padding: %s"

    invoke-static {v0, v1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 396
    array-length v0, p0

    if-ge v0, p1, :cond_1f

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    goto :goto_20

    :cond_1f
    move-object v0, p0

    :goto_20
    return-object v0
.end method

.method public static fromByteArray([B)S
    .registers 7
    .param p0, "bytes"    # [B

    .line 323
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v4, "array too small: %s < %s"

    array-length v5, p0

    invoke-static {v0, v4, v5, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 324
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Shorts;->fromBytes(BB)S

    move-result v0

    return v0
.end method

.method public static fromBytes(BB)S
    .registers 4
    .param p0, "b1"    # B
    .param p1, "b2"    # B

    .line 335
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static hashCode(S)I
    .registers 1
    .param p0, "value"    # S

    .line 75
    return p0
.end method

.method public static indexOf([SS)I
    .registers 4
    .param p0, "array"    # [S
    .param p1, "target"    # S

    .line 150
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    move-result v0

    return v0
.end method

.method private static indexOf([SSII)I
    .registers 6
    .param p0, "array"    # [S
    .param p1, "target"    # S
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 155
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 156
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 157
    return v0

    .line 155
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    .end local v0    # "i":I
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([S[S)I
    .registers 6
    .param p0, "array"    # [S
    .param p1, "target"    # [S

    .line 174
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    array-length v0, p1

    if-nez v0, :cond_f

    .line 177
    const/4 v0, 0x0

    return v0

    .line 181
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_2b

    .line 182
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_2a

    .line 183
    add-int v2, v0, v1

    aget-short v2, p0, v2

    aget-short v3, p1, v1

    if-eq v2, v3, :cond_27

    .line 184
    nop

    .line 181
    .end local v1    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 182
    .restart local v1    # "j":I
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 187
    .end local v1    # "j":I
    :cond_2a
    return v0

    .line 189
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[S)Ljava/lang/String;
    .registers 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [S

    .line 409
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    array-length v0, p1

    if-nez v0, :cond_9

    .line 411
    const-string v0, ""

    return-object v0

    .line 415
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 416
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget-short v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 418
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-short v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 420
    .end local v1    # "i":I
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static lastIndexOf([SS)I
    .registers 4
    .param p0, "array"    # [S
    .param p1, "target"    # S

    .line 201
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([SSII)I
    .registers 6
    .param p0, "array"    # [S
    .param p1, "target"    # S
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 206
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p2, :cond_c

    .line 207
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 208
    return v0

    .line 206
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 211
    .end local v0    # "i":I
    :cond_c
    const/4 v0, -0x1

    return v0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[S>;"
        }
    .end annotation

    .line 437
    sget-object v0, Lcom/google/common/primitives/Shorts$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([S)S
    .registers 4
    .param p0, "array"    # [S

    .line 246
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 247
    aget-short v0, p0, v1

    .line 248
    .local v0, "max":S
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_d
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 249
    aget-short v2, p0, v1

    if-le v2, v0, :cond_16

    .line 250
    aget-short v0, p0, v1

    .line 248
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 253
    .end local v1    # "i":I
    :cond_19
    return v0
.end method

.method public static varargs min([S)S
    .registers 4
    .param p0, "array"    # [S

    .line 225
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 226
    aget-short v0, p0, v1

    .line 227
    .local v0, "min":S
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_d
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 228
    aget-short v2, p0, v1

    if-ge v2, v0, :cond_16

    .line 229
    aget-short v0, p0, v1

    .line 227
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 232
    .end local v1    # "i":I
    :cond_19
    return v0
.end method

.method public static reverse([S)V
    .registers 3
    .param p0, "array"    # [S

    .line 491
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Shorts;->reverse([SII)V

    .line 493
    return-void
.end method

.method public static reverse([SII)V
    .registers 7
    .param p0, "array"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 506
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 508
    move v0, p1

    .local v0, "i":I
    add-int/lit8 v1, p2, -0x1

    .local v1, "j":I
    :goto_a
    if-ge v0, v1, :cond_19

    .line 509
    aget-short v2, p0, v0

    .line 510
    .local v2, "tmp":S
    aget-short v3, p0, v1

    aput-short v3, p0, v0

    .line 511
    aput-short v2, p0, v1

    .line 508
    .end local v2    # "tmp":S
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 513
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_19
    return-void
.end method

.method public static saturatedCast(J)S
    .registers 5
    .param p0, "value"    # J

    .line 100
    const-wide/16 v0, 0x7fff

    cmp-long v2, p0, v0

    if-lez v2, :cond_9

    .line 101
    const/16 v0, 0x7fff

    return v0

    .line 103
    :cond_9
    const-wide/16 v0, -0x8000

    cmp-long v2, p0, v0

    if-gez v2, :cond_12

    .line 104
    const/16 v0, -0x8000

    return v0

    .line 106
    :cond_12
    long-to-int v0, p0

    int-to-short v0, v0

    return v0
.end method

.method public static sortDescending([S)V
    .registers 3
    .param p0, "array"    # [S

    .line 467
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Shorts;->sortDescending([SII)V

    .line 469
    return-void
.end method

.method public static sortDescending([SII)V
    .registers 4
    .param p0, "array"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 478
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 480
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([SII)V

    .line 481
    invoke-static {p0, p1, p2}, Lcom/google/common/primitives/Shorts;->reverse([SII)V

    .line 482
    return-void
.end method

.method public static stringConverter()Lcom/google/common/base/Converter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 377
    sget-object v0, Lcom/google/common/primitives/Shorts$ShortConverter;->INSTANCE:Lcom/google/common/primitives/Shorts$ShortConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[S
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[S"
        }
    .end annotation

    .line 529
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    if-eqz v0, :cond_c

    .line 530
    move-object v0, p0

    check-cast v0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    invoke-virtual {v0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->toShortArray()[S

    move-result-object v0

    return-object v0

    .line 533
    :cond_c
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 534
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 535
    .local v1, "len":I
    new-array v2, v1, [S

    .line 536
    .local v2, "array":[S
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v1, :cond_27

    .line 538
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    move-result v4

    aput-short v4, v2, v3

    .line 536
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 540
    .end local v3    # "i":I
    :cond_27
    return-object v2
.end method

.method public static toByteArray(S)[B
    .registers 5
    .param p0, "value"    # S

    .line 308
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    int-to-byte v1, p0

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    const/4 v0, 0x1

    aput-byte v1, v2, v0

    return-object v2
.end method
