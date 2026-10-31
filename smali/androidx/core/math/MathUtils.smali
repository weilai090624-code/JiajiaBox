.class public Landroidx/core/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExact(II)I
    .registers 7
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 36
    add-int v0, p0, p1

    .line 38
    .local v0, "sum":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    if-ltz p1, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    :goto_e
    if-ne v3, v4, :cond_24

    if-ltz p0, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    if-ltz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-ne v3, v1, :cond_1c

    goto :goto_24

    .line 39
    :cond_1c
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_24
    :goto_24
    return v0
.end method

.method public static addExact(JJ)J
    .registers 12
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 55
    add-long v0, p0, p2

    .line 57
    .local v0, "sum":J
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, p0, v4

    if-ltz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_d

    :cond_c
    const/4 v6, 0x0

    :goto_d
    cmp-long v7, p2, v4

    if-ltz v7, :cond_13

    const/4 v7, 0x1

    goto :goto_14

    :cond_13
    const/4 v7, 0x0

    :goto_14
    if-ne v6, v7, :cond_2e

    cmp-long v6, p0, v4

    if-ltz v6, :cond_1c

    const/4 v6, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v6, 0x0

    :goto_1d
    cmp-long v7, v0, v4

    if-ltz v7, :cond_22

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    if-ne v6, v2, :cond_26

    goto :goto_2e

    .line 58
    :cond_26
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "integer overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_2e
    :goto_2e
    return-wide v0
.end method

.method public static clamp(DDD)D
    .registers 7
    .param p0, "value"    # D
    .param p2, "min"    # D
    .param p4, "max"    # D

    .line 282
    cmpg-double v0, p0, p2

    if-gez v0, :cond_5

    .line 283
    return-wide p2

    .line 284
    :cond_5
    cmpl-double v0, p0, p4

    if-lez v0, :cond_a

    .line 285
    return-wide p4

    .line 287
    :cond_a
    return-wide p0
.end method

.method public static clamp(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 261
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .line 262
    return p1

    .line 263
    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_a

    .line 264
    return p2

    .line 266
    :cond_a
    return p0
.end method

.method public static clamp(III)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 303
    if-ge p0, p1, :cond_3

    .line 304
    return p1

    .line 305
    :cond_3
    if-le p0, p2, :cond_6

    .line 306
    return p2

    .line 308
    :cond_6
    return p0
.end method

.method public static clamp(JJJ)J
    .registers 7
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .line 324
    cmp-long v0, p0, p2

    if-gez v0, :cond_5

    .line 325
    return-wide p2

    .line 326
    :cond_5
    cmp-long v0, p0, p4

    if-lez v0, :cond_a

    .line 327
    return-wide p4

    .line 329
    :cond_a
    return-wide p0
.end method

.method public static decrementExact(I)I
    .registers 3
    .param p0, "a"    # I

    .line 177
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_7

    .line 180
    add-int/lit8 v0, p0, -0x1

    return v0

    .line 178
    :cond_7
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decrementExact(J)J
    .registers 5
    .param p0, "a"    # J

    .line 193
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-eqz v2, :cond_b

    .line 196
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    return-wide v0

    .line 194
    :cond_b
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static incrementExact(I)I
    .registers 3
    .param p0, "a"    # I

    .line 145
    const v0, 0x7fffffff

    if-eq p0, v0, :cond_8

    .line 148
    add-int/lit8 v0, p0, 0x1

    return v0

    .line 146
    :cond_8
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static incrementExact(J)J
    .registers 5
    .param p0, "a"    # J

    .line 161
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p0, v0

    if-eqz v2, :cond_d

    .line 164
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    return-wide v0

    .line 162
    :cond_d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static multiplyExact(II)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 110
    mul-int v0, p0, p1

    .line 112
    .local v0, "product":I
    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    div-int v1, v0, p0

    if-ne v1, p1, :cond_f

    div-int v1, v0, p1

    if-ne v1, p0, :cond_f

    goto :goto_17

    .line 113
    :cond_f
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_17
    :goto_17
    return v0
.end method

.method public static multiplyExact(JJ)J
    .registers 9
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 128
    mul-long v0, p0, p2

    .line 130
    .local v0, "product":J
    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-eqz v4, :cond_21

    cmp-long v4, p2, v2

    if-eqz v4, :cond_21

    div-long v2, v0, p0

    cmp-long v4, v2, p2

    if-nez v4, :cond_19

    div-long v2, v0, p2

    cmp-long v4, v2, p0

    if-nez v4, :cond_19

    goto :goto_21

    .line 131
    :cond_19
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "integer overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_21
    :goto_21
    return-wide v0
.end method

.method public static negateExact(I)I
    .registers 3
    .param p0, "a"    # I

    .line 209
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_6

    .line 212
    neg-int v0, p0

    return v0

    .line 210
    :cond_6
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static negateExact(J)J
    .registers 5
    .param p0, "a"    # J

    .line 225
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-eqz v2, :cond_8

    .line 228
    neg-long v0, p0

    return-wide v0

    .line 226
    :cond_8
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static subtractExact(II)I
    .registers 7
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 74
    sub-int v0, p0, p1

    .line 76
    .local v0, "difference":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez p0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    if-gez p1, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    :goto_e
    if-eq v3, v4, :cond_24

    if-gez p0, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    if-gez v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-ne v3, v1, :cond_1c

    goto :goto_24

    .line 77
    :cond_1c
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_24
    :goto_24
    return v0
.end method

.method public static subtractExact(JJ)J
    .registers 12
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 92
    sub-long v0, p0, p2

    .line 94
    .local v0, "difference":J
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, p0, v4

    if-gez v6, :cond_c

    const/4 v6, 0x1

    goto :goto_d

    :cond_c
    const/4 v6, 0x0

    :goto_d
    cmp-long v7, p2, v4

    if-gez v7, :cond_13

    const/4 v7, 0x1

    goto :goto_14

    :cond_13
    const/4 v7, 0x0

    :goto_14
    if-eq v6, v7, :cond_2e

    cmp-long v6, p0, v4

    if-gez v6, :cond_1c

    const/4 v6, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v6, 0x0

    :goto_1d
    cmp-long v7, v0, v4

    if-gez v7, :cond_22

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    if-ne v6, v2, :cond_26

    goto :goto_2e

    .line 95
    :cond_26
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "integer overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_2e
    :goto_2e
    return-wide v0
.end method

.method public static toIntExact(J)I
    .registers 5
    .param p0, "value"    # J

    .line 241
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_10

    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-ltz v2, :cond_10

    .line 244
    long-to-int v0, p0

    return v0

    .line 242
    :cond_10
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
