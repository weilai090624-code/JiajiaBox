.class public Lcom/esotericsoftware/kryo/util/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field public items:[I

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 34
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;-><init>(ZI)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/util/IntArray;-><init>(ZI)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/util/IntArray;)V
    .registers 6
    .param p1, "array"    # Lcom/esotericsoftware/kryo/util/IntArray;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-boolean v0, p1, Lcom/esotericsoftware/kryo/util/IntArray;->ordered:Z

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->ordered:Z

    .line 55
    iget v0, p1, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    iput v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 56
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 57
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 4
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->ordered:Z

    .line 47
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 48
    return-void
.end method

.method public constructor <init>(Z[III)V
    .registers 7
    .param p1, "ordered"    # Z
    .param p2, "array"    # [I
    .param p3, "startIndex"    # I
    .param p4, "count"    # I

    .line 71
    invoke-direct {p0, p1, p4}, Lcom/esotericsoftware/kryo/util/IntArray;-><init>(ZI)V

    .line 72
    iput p4, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 73
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-void
.end method

.method public constructor <init>([I)V
    .registers 5
    .param p1, "array"    # [I

    .line 63
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;-><init>(Z[III)V

    .line 64
    return-void
.end method

.method public static varargs with([I)Lcom/esotericsoftware/kryo/util/IntArray;
    .registers 2
    .param p0, "array"    # [I

    .line 385
    new-instance v0, Lcom/esotericsoftware/kryo/util/IntArray;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/IntArray;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .registers 5
    .param p1, "value"    # I

    .line 77
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 78
    .local v0, "items":[I
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_19

    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->resize(I)[I

    move-result-object v0

    .line 79
    :cond_19
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    aput p1, v0, v1

    .line 80
    return-void
.end method

.method public add(II)V
    .registers 6
    .param p1, "value1"    # I
    .param p2, "value2"    # I

    .line 83
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 84
    .local v0, "items":[I
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    if-lt v1, v2, :cond_1b

    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->resize(I)[I

    move-result-object v0

    .line 85
    :cond_1b
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    aput p1, v0, v1

    .line 86
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    .line 87
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 88
    return-void
.end method

.method public add(III)V
    .registers 7
    .param p1, "value1"    # I
    .param p2, "value2"    # I
    .param p3, "value3"    # I

    .line 91
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 92
    .local v0, "items":[I
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, 0x2

    array-length v2, v0

    if-lt v1, v2, :cond_1b

    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->resize(I)[I

    move-result-object v0

    .line 93
    :cond_1b
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    aput p1, v0, v1

    .line 94
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    .line 95
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, 0x2

    aput p3, v0, v1

    .line 96
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 97
    return-void
.end method

.method public add(IIII)V
    .registers 8
    .param p1, "value1"    # I
    .param p2, "value2"    # I
    .param p3, "value3"    # I
    .param p4, "value4"    # I

    .line 100
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 101
    .local v0, "items":[I
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, 0x3

    array-length v2, v0

    if-lt v1, v2, :cond_1c

    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    int-to-float v1, v1

    const v2, 0x3fe66666    # 1.8f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->resize(I)[I

    move-result-object v0

    .line 102
    :cond_1c
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    aput p1, v0, v1

    .line 103
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    .line 104
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, 0x2

    aput p3, v0, v1

    .line 105
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, 0x3

    aput p4, v0, v1

    .line 106
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 107
    return-void
.end method

.method public addAll(Lcom/esotericsoftware/kryo/util/IntArray;)V
    .registers 4
    .param p1, "array"    # Lcom/esotericsoftware/kryo/util/IntArray;

    .line 110
    const/4 v0, 0x0

    iget v1, p1, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->addAll(Lcom/esotericsoftware/kryo/util/IntArray;II)V

    .line 111
    return-void
.end method

.method public addAll(Lcom/esotericsoftware/kryo/util/IntArray;II)V
    .registers 7
    .param p1, "array"    # Lcom/esotericsoftware/kryo/util/IntArray;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 114
    add-int v0, p2, p3

    iget v1, p1, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-gt v0, v1, :cond_c

    .line 116
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    invoke-virtual {p0, v0, p2, p3}, Lcom/esotericsoftware/kryo/util/IntArray;->addAll([III)V

    .line 117
    return-void

    .line 115
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length must be <= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addAll([I)V
    .registers 4
    .param p1, "array"    # [I

    .line 120
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->addAll([III)V

    .line 121
    return-void
.end method

.method public addAll([III)V
    .registers 8
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 124
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 125
    .local v0, "items":[I
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/2addr v1, p3

    .line 126
    .local v1, "sizeNeeded":I
    array-length v2, v0

    if-le v1, v2, :cond_18

    int-to-float v2, v1

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/16 v3, 0x8

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/util/IntArray;->resize(I)[I

    move-result-object v0

    .line 127
    :cond_18
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 129
    return-void
.end method

.method public clear()V
    .registers 2

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 270
    return-void
.end method

.method public contains(I)Z
    .registers 6
    .param p1, "value"    # I

    .line 173
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 174
    .local v0, "i":I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 175
    .local v2, "items":[I
    :goto_6
    if-ltz v0, :cond_11

    .line 176
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aget v0, v2, v0

    if-ne v0, p1, :cond_f

    return v1

    :cond_f
    move v0, v3

    goto :goto_6

    .line 177
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)[I
    .registers 5
    .param p1, "additionalCapacity"    # I

    .line 284
    if-ltz p1, :cond_16

    .line 285
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/2addr v0, p1

    .line 286
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    array-length v1, v1

    if-le v0, v1, :cond_13

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->resize(I)[I

    .line 287
    :cond_13
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    return-object v1

    .line 284
    .end local v0    # "sizeNeeded":I
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additionalCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "object"    # Ljava/lang/Object;

    .line 343
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 344
    :cond_4
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 345
    :cond_a
    instance-of v1, p1, Lcom/esotericsoftware/kryo/util/IntArray;

    if-nez v1, :cond_f

    return v2

    .line 346
    :cond_f
    move-object v1, p1

    check-cast v1, Lcom/esotericsoftware/kryo/util/IntArray;

    .line 347
    .local v1, "array":Lcom/esotericsoftware/kryo/util/IntArray;
    iget-boolean v3, v1, Lcom/esotericsoftware/kryo/util/IntArray;->ordered:Z

    if-nez v3, :cond_17

    return v2

    .line 348
    :cond_17
    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 349
    .local v3, "n":I
    iget v4, v1, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-eq v3, v4, :cond_1e

    return v2

    .line 350
    :cond_1e
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 351
    .local v4, "items1":[I
    iget-object v5, v1, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 352
    .local v5, "items2":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_23
    if-ge v6, v3, :cond_2f

    .line 353
    aget v7, v4, v6

    aget v8, v5, v6

    if-eq v7, v8, :cond_2c

    return v2

    .line 352
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 354
    .end local v6    # "i":I
    :cond_2f
    return v0
.end method

.method public first()I
    .registers 3

    .line 264
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-eqz v0, :cond_a

    .line 265
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 264
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)I
    .registers 5
    .param p1, "index"    # I

    .line 132
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ge p1, v0, :cond_9

    .line 133
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    aget v0, v0, p1

    return v0

    .line 132
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 7

    .line 334
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->ordered:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 335
    :cond_9
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 336
    .local v0, "items":[I
    const/4 v1, 0x1

    .line 337
    .local v1, "h":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .local v3, "n":I
    :goto_f
    if-ge v2, v3, :cond_1a

    .line 338
    mul-int/lit8 v4, v1, 0x1f

    aget v5, v0, v2

    add-int v1, v4, v5

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 339
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1a
    return v1
.end method

.method public incr(II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 142
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ge p1, v0, :cond_c

    .line 143
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    aget v1, v0, p1

    add-int/2addr v1, p2

    aput v1, v0, p1

    .line 144
    return-void

    .line 142
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(I)I
    .registers 6
    .param p1, "value"    # I

    .line 181
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 182
    .local v0, "items":[I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_f

    .line 183
    aget v3, v0, v1

    if-ne v3, p1, :cond_c

    return v1

    .line 182
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 184
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_f
    const/4 v1, -0x1

    return v1
.end method

.method public insert(II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 152
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-gt p1, v0, :cond_39

    .line 153
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 154
    .local v0, "items":[I
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_1d

    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->resize(I)[I

    move-result-object v0

    .line 155
    :cond_1d
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->ordered:Z

    if-eqz v1, :cond_2a

    .line 156
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_30

    .line 158
    :cond_2a
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    aget v2, v0, p1

    aput v2, v0, v1

    .line 159
    :goto_30
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 160
    aput p2, v0, p1

    .line 161
    return-void

    .line 152
    .end local v0    # "items":[I
    :cond_39
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be > size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lastIndexOf(I)I
    .registers 5
    .param p1, "value"    # I

    .line 188
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 189
    .local v0, "items":[I
    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_10

    .line 190
    aget v2, v0, v1

    if-ne v2, p1, :cond_d

    return v1

    .line 189
    :cond_d
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 191
    .end local v1    # "i":I
    :cond_10
    const/4 v1, -0x1

    return v1
.end method

.method public mul(II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 147
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ge p1, v0, :cond_d

    .line 148
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    aget v1, v0, p1

    mul-int v1, v1, p2

    aput v1, v0, p1

    .line 149
    return-void

    .line 147
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()I
    .registers 3

    .line 259
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public pop()I
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    aget v0, v0, v1

    return v0
.end method

.method public removeAll(Lcom/esotericsoftware/kryo/util/IntArray;)Z
    .registers 10
    .param p1, "array"    # Lcom/esotericsoftware/kryo/util/IntArray;

    .line 236
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 237
    .local v0, "size":I
    move v1, v0

    .line 238
    .local v1, "startSize":I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 239
    .local v2, "items":[I
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p1, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .local v4, "n":I
    :goto_8
    if-ge v3, v4, :cond_21

    .line 240
    invoke-virtual {p1, v3}, Lcom/esotericsoftware/kryo/util/IntArray;->get(I)I

    move-result v5

    .line 241
    .local v5, "item":I
    const/4 v6, 0x0

    .local v6, "ii":I
    :goto_f
    if-ge v6, v0, :cond_1e

    .line 242
    aget v7, v2, v6

    if-ne v5, v7, :cond_1b

    .line 243
    invoke-virtual {p0, v6}, Lcom/esotericsoftware/kryo/util/IntArray;->removeIndex(I)I

    .line 244
    add-int/lit8 v0, v0, -0x1

    .line 245
    goto :goto_1e

    .line 241
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 239
    .end local v5    # "item":I
    .end local v6    # "ii":I
    :cond_1e
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 249
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_21
    if-eq v0, v1, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    :goto_26
    return v3
.end method

.method public removeIndex(I)I
    .registers 6
    .param p1, "index"    # I

    .line 207
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ge p1, v0, :cond_22

    .line 208
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 209
    .local v0, "items":[I
    aget v1, v0, p1

    .line 210
    .local v1, "value":I
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 211
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->ordered:Z

    if-eqz v2, :cond_1b

    .line 212
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    .line 214
    :cond_1b
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    aget v2, v0, v2

    aput v2, v0, p1

    .line 215
    :goto_21
    return v1

    .line 207
    .end local v0    # "items":[I
    .end local v1    # "value":I
    :cond_22
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRange(II)V
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 220
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 221
    .local v0, "n":I
    if-ge p2, v0, :cond_56

    .line 222
    if-gt p1, p2, :cond_32

    .line 223
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    .local v1, "count":I
    sub-int v2, v0, v1

    .line 224
    .local v2, "lastIndex":I
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->ordered:Z

    if-eqz v3, :cond_1e

    .line 225
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    add-int v4, p1, v1

    iget-object v5, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    add-int v6, p1, v1

    sub-int v6, v0, v6

    invoke-static {v3, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    .line 227
    :cond_1e
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 228
    .local v3, "i":I
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    iget-object v5, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    sub-int v6, v0, v3

    invoke-static {v4, v3, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    .end local v3    # "i":I
    :goto_2d
    sub-int v3, v0, v1

    iput v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 231
    return-void

    .line 222
    .end local v1    # "count":I
    .end local v2    # "lastIndex":I
    :cond_32
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start can\'t be > end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_56
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeValue(I)Z
    .registers 6
    .param p1, "value"    # I

    .line 195
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 196
    .local v0, "items":[I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_13

    .line 197
    aget v3, v0, v1

    if-ne v3, p1, :cond_10

    .line 198
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->removeIndex(I)I

    .line 199
    const/4 v3, 0x1

    return v3

    .line 196
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 202
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method protected resize(I)[I
    .registers 6
    .param p1, "newSize"    # I

    .line 300
    new-array v0, p1, [I

    .line 301
    .local v0, "newItems":[I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 302
    .local v1, "items":[I
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 304
    return-object v0
.end method

.method public reverse()V
    .registers 8

    .line 312
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 313
    .local v0, "items":[I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "lastIndex":I
    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    div-int/lit8 v3, v3, 0x2

    .local v3, "n":I
    :goto_b
    if-ge v1, v3, :cond_1a

    .line 314
    sub-int v4, v2, v1

    .line 315
    .local v4, "ii":I
    aget v5, v0, v1

    .line 316
    .local v5, "temp":I
    aget v6, v0, v4

    aput v6, v0, v1

    .line 317
    aput v5, v0, v4

    .line 313
    .end local v4    # "ii":I
    .end local v5    # "temp":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 319
    .end local v1    # "i":I
    .end local v2    # "lastIndex":I
    .end local v3    # "n":I
    :cond_1a
    return-void
.end method

.method public set(II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 137
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ge p1, v0, :cond_9

    .line 138
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    aput p2, v0, p1

    .line 139
    return-void

    .line 137
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSize(I)[I
    .registers 5
    .param p1, "newSize"    # I

    .line 293
    if-ltz p1, :cond_15

    .line 294
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    array-length v0, v0

    if-le p1, v0, :cond_10

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/IntArray;->resize(I)[I

    .line 295
    :cond_10
    iput p1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 296
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    return-object v0

    .line 293
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSize must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shrink()[I
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    array-length v0, v0

    iget v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/IntArray;->resize(I)[I

    .line 277
    :cond_c
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    return-object v0
.end method

.method public sort()V
    .registers 4

    .line 308
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 309
    return-void
.end method

.method public swap(II)V
    .registers 7
    .param p1, "first"    # I
    .param p2, "second"    # I

    .line 164
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    const-string v1, " >= "

    if-ge p1, v0, :cond_38

    .line 165
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ge p2, v0, :cond_15

    .line 166
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 167
    .local v0, "items":[I
    aget v1, v0, p1

    .line 168
    .local v1, "firstValue":I
    aget v2, v0, p2

    aput v2, v0, p1

    .line 169
    aput v1, v0, p2

    .line 170
    return-void

    .line 165
    .end local v0    # "items":[I
    .end local v1    # "firstValue":I
    :cond_15
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "second can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_38
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray()[I
    .registers 5

    .line 328
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    new-array v0, v0, [I

    .line 329
    .local v0, "array":[I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 358
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 359
    :cond_7
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 360
    .local v0, "items":[I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 361
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1c
    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ge v2, v3, :cond_2d

    .line 364
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 367
    .end local v2    # "i":I
    :cond_2d
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "separator"    # Ljava/lang/String;

    .line 372
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 373
    :cond_7
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->items:[I

    .line 374
    .local v0, "items":[I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 375
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_17
    iget v3, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ge v2, v3, :cond_26

    .line 377
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 380
    .end local v2    # "i":I
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public truncate(I)V
    .registers 3
    .param p1, "newSize"    # I

    .line 324
    iget v0, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-le v0, p1, :cond_6

    iput p1, p0, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    .line 325
    :cond_6
    return-void
.end method
