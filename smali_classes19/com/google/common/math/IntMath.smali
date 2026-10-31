.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "IntMath.java"


# annotations
.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_INT:I = 0xb504

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd

.field static final MAX_SIGNED_POWER_OF_TWO:I = 0x40000000

.field static biggestBinomials:[I

.field private static final factorials:[I

.field static final halfPowersOf10:[I

.field static final maxLog10ForLeadingZeros:[B

.field static final powersOf10:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 202
    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    .line 208
    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_42

    sput-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    .line 214
    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    .line 628
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    .line 677
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_90

    sput-object v0, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    return-void

    :array_2c
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_42
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    :array_5a
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    :array_72
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    :array_90
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)I
    .registers 7
    .param p0, "n"    # I
    .param p1, "k"    # I

    .line 651
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 652
    const-string v0, "k"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 653
    const/4 v0, 0x1

    if-gt p1, p0, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    const-string v2, "k (%s) > n (%s)"

    invoke-static {v1, v2, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 654
    shr-int/lit8 v1, p0, 0x1

    if-le p1, v1, :cond_1b

    .line 655
    sub-int p1, p0, p1

    .line 657
    :cond_1b
    sget-object v1, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    array-length v1, v1

    if-ge p1, v1, :cond_40

    sget-object v1, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    aget v1, v1, p1

    if-le p0, v1, :cond_27

    goto :goto_40

    .line 660
    :cond_27
    packed-switch p1, :pswitch_data_44

    .line 666
    const-wide/16 v0, 0x1

    .line 667
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "i":I
    goto :goto_30

    .line 664
    .end local v0    # "result":J
    .end local v2    # "i":I
    :pswitch_2e
    return p0

    .line 662
    :pswitch_2f
    return v0

    .line 667
    .restart local v0    # "result":J
    .restart local v2    # "i":I
    :goto_30
    if-ge v2, p1, :cond_3e

    .line 668
    sub-int v3, p0, v2

    int-to-long v3, v3

    mul-long v0, v0, v3

    .line 669
    add-int/lit8 v3, v2, 0x1

    int-to-long v3, v3

    div-long/2addr v0, v3

    .line 667
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 671
    .end local v2    # "i":I
    :cond_3e
    long-to-int v2, v0

    return v2

    .line 658
    .end local v0    # "result":J
    :cond_40
    :goto_40
    const v0, 0x7fffffff

    return v0

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
    .end packed-switch
.end method

.method public static ceilingPowerOfTwo(I)I
    .registers 4
    .param p0, "x"    # I

    .line 68
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 69
    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_14

    .line 72
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0

    .line 70
    :cond_14
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ceilingPowerOfTwo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not representable as an int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkedAdd(II)I
    .registers 7
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 456
    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 457
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    const-string v3, "checkedAdd"

    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 458
    long-to-int v2, v0

    return v2
.end method

.method public static checkedMultiply(II)I
    .registers 7
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 478
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 479
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    const-string v3, "checkedMultiply"

    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 480
    long-to-int v2, v0

    return v2
.end method

.method public static checkedPow(II)I
    .registers 8
    .param p0, "b"    # I
    .param p1, "k"    # I

    .line 492
    const-string v0, "exponent"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 493
    const/4 v0, -0x1

    const-string v1, "checkedPow"

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p0, :pswitch_data_64

    .line 509
    const/4 v0, 0x1

    .local v0, "accum":I
    goto :goto_36

    .line 501
    .end local v0    # "accum":I
    :pswitch_f
    const/16 v0, 0x1f

    if-ge p1, v0, :cond_14

    const/4 v2, 0x1

    :cond_14
    invoke-static {v2, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 502
    shl-int v0, v3, p1

    return v0

    .line 497
    :pswitch_1a
    return v3

    .line 495
    :pswitch_1b
    if-nez p1, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    return v2

    .line 499
    :pswitch_1f
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_24

    const/4 v0, 0x1

    :cond_24
    return v0

    .line 504
    :pswitch_25
    const/16 v4, 0x20

    if-ge p1, v4, :cond_2a

    const/4 v2, 0x1

    :cond_2a
    invoke-static {v2, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 505
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_34

    shl-int v0, v3, p1

    goto :goto_35

    :cond_34
    shl-int/2addr v0, p1

    :goto_35
    return v0

    .line 511
    .restart local v0    # "accum":I
    :cond_36
    :goto_36
    packed-switch p1, :pswitch_data_72

    .line 517
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_48

    .line 518
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    goto :goto_48

    .line 515
    :pswitch_42
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v1

    return v1

    .line 513
    :pswitch_47
    return v0

    .line 520
    :cond_48
    :goto_48
    shr-int/lit8 p1, p1, 0x1

    .line 521
    if-lez p1, :cond_36

    .line 522
    const v4, -0xb504

    if-gt v4, p0, :cond_53

    const/4 v4, 0x1

    goto :goto_54

    :cond_53
    const/4 v4, 0x0

    :goto_54
    const v5, 0xb504

    if-gt p0, v5, :cond_5b

    const/4 v5, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v5, 0x0

    :goto_5c
    and-int/2addr v4, v5

    invoke-static {v4, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 523
    mul-int p0, p0, p0

    goto :goto_36

    nop

    :pswitch_data_64
    .packed-switch -0x2
        :pswitch_25
        :pswitch_1f
        :pswitch_1b
        :pswitch_1a
        :pswitch_f
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_47
        :pswitch_42
    .end packed-switch
.end method

.method public static checkedSubtract(II)I
    .registers 7
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 467
    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    .line 468
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    const-string v3, "checkedSubtract"

    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 469
    long-to-int v2, v0

    return v2
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .registers 12
    .param p0, "p"    # I
    .param p1, "q"    # I
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 318
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    if-eqz p1, :cond_6c

    .line 322
    div-int v0, p0, p1

    .line 323
    .local v0, "div":I
    mul-int v1, p1, v0

    sub-int v1, p0, v1

    .line 325
    .local v1, "rem":I
    if-nez v1, :cond_e

    .line 326
    return v0

    .line 336
    :cond_e
    xor-int v2, p0, p1

    shr-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x1

    or-int/2addr v2, v3

    .line 338
    .local v2, "signum":I
    sget-object v4, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_74

    .line 368
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 357
    :pswitch_26
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 358
    .local v4, "absRem":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v6, v4

    sub-int v6, v4, v6

    .line 361
    .local v6, "cmpRemToHalfDivisor":I
    if-nez v6, :cond_4b

    .line 362
    sget-object v7, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v7, :cond_4a

    sget-object v7, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v7, :cond_3d

    const/4 v7, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v7, 0x0

    :goto_3e
    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_44

    const/4 v8, 0x1

    goto :goto_45

    :cond_44
    const/4 v8, 0x0

    :goto_45
    and-int/2addr v7, v8

    if-eqz v7, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v3, 0x0

    .local v3, "increment":Z
    :cond_4a
    :goto_4a
    goto :goto_65

    .line 364
    .end local v3    # "increment":Z
    :cond_4b
    if-lez v6, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v3, 0x0

    .line 366
    .restart local v3    # "increment":Z
    :goto_4f
    goto :goto_65

    .line 349
    .end local v3    # "increment":Z
    .end local v4    # "absRem":I
    .end local v6    # "cmpRemToHalfDivisor":I
    :pswitch_50
    if-lez v2, :cond_53

    goto :goto_54

    :cond_53
    const/4 v3, 0x0

    .line 350
    .restart local v3    # "increment":Z
    :goto_54
    goto :goto_65

    .line 346
    .end local v3    # "increment":Z
    :pswitch_55
    const/4 v3, 0x1

    .line 347
    .restart local v3    # "increment":Z
    goto :goto_65

    .line 352
    .end local v3    # "increment":Z
    :pswitch_57
    if-gez v2, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x0

    .line 353
    .restart local v3    # "increment":Z
    :goto_5b
    goto :goto_65

    .line 340
    .end local v3    # "increment":Z
    :pswitch_5c
    if-nez v1, :cond_5f

    goto :goto_60

    :cond_5f
    const/4 v3, 0x0

    :goto_60
    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 343
    :pswitch_63
    const/4 v3, 0x0

    .line 344
    .restart local v3    # "increment":Z
    nop

    .line 370
    :goto_65
    if-eqz v3, :cond_6a

    add-int v4, v0, v2

    goto :goto_6b

    :cond_6a
    move v4, v0

    :goto_6b
    return v4

    .line 320
    .end local v0    # "div":I
    .end local v1    # "rem":I
    .end local v2    # "signum":I
    .end local v3    # "increment":Z
    :cond_6c
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "/ by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_63
        :pswitch_57
        :pswitch_55
        :pswitch_50
        :pswitch_26
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method

.method public static factorial(I)I
    .registers 2
    .param p0, "n"    # I

    .line 624
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 625
    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    array-length v0, v0

    if-ge p0, v0, :cond_f

    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    aget v0, v0, p0

    goto :goto_12

    :cond_f
    const v0, 0x7fffffff

    :goto_12
    return v0
.end method

.method public static floorPowerOfTwo(I)I
    .registers 2
    .param p0, "x"    # I

    .line 84
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 85
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static gcd(II)I
    .registers 7
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 411
    const-string v0, "a"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 412
    const-string v0, "b"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 413
    if-nez p0, :cond_d

    .line 416
    return p1

    .line 417
    :cond_d
    if-nez p1, :cond_10

    .line 418
    return p0

    .line 424
    :cond_10
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 425
    .local v0, "aTwos":I
    shr-int/2addr p0, v0

    .line 426
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    .line 427
    .local v1, "bTwos":I
    shr-int/2addr p1, v1

    .line 428
    :goto_1a
    if-eq p0, p1, :cond_2c

    .line 436
    sub-int v2, p0, p1

    .line 438
    .local v2, "delta":I
    shr-int/lit8 v3, v2, 0x1f

    and-int/2addr v3, v2

    .line 441
    .local v3, "minDeltaOrZero":I
    sub-int v4, v2, v3

    sub-int/2addr v4, v3

    .line 444
    .end local p0    # "a":I
    .local v4, "a":I
    add-int/2addr p1, v3

    .line 445
    invoke-static {v4}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    shr-int p0, v4, p0

    .line 446
    .end local v2    # "delta":I
    .end local v3    # "minDeltaOrZero":I
    .end local v4    # "a":I
    .restart local p0    # "a":I
    goto :goto_1a

    .line 447
    :cond_2c
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    shl-int v2, p0, v2

    return v2
.end method

.method public static isPowerOfTwo(I)Z
    .registers 5
    .param p0, "x"    # I

    .line 95
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    add-int/lit8 v3, p0, -0x1

    and-int/2addr v3, p0

    if-nez v3, :cond_d

    const/4 v0, 0x1

    :cond_d
    and-int/2addr v0, v2

    return v0
.end method

.method public static isPrime(I)Z
    .registers 3
    .param p0, "n"    # I

    .line 725
    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/google/common/math/LongMath;->isPrime(J)Z

    move-result v0

    return v0
.end method

.method static lessThanBranchFree(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 107
    sub-int v0, p0, p1

    not-int v0, v0

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static log10(ILjava/math/RoundingMode;)I
    .registers 6
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;

    .line 161
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 162
    invoke-static {p0}, Lcom/google/common/math/IntMath;->log10Floor(I)I

    move-result v0

    .line 163
    .local v0, "logFloor":I
    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v1, v1, v0

    .line 164
    .local v1, "floorPow":I
    sget-object v2, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_38

    .line 180
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 178
    :pswitch_1e
    sget-object v2, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    aget v2, v2, v0

    invoke-static {v2, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v2, v0

    return v2

    .line 173
    :pswitch_28
    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v2, v0

    return v2

    .line 166
    :pswitch_2e
    if-ne p0, v1, :cond_32

    const/4 v2, 0x1

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :goto_33
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 170
    :pswitch_36
    return v0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_36
        :pswitch_36
        :pswitch_28
        :pswitch_28
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method private static log10Floor(I)I
    .registers 3
    .param p0, "x"    # I

    .line 192
    sget-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    aget-byte v0, v0, v1

    .line 197
    .local v0, "y":I
    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v1, v1, v0

    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v1

    sub-int v1, v0, v1

    return v1
.end method

.method public static log2(ILjava/math/RoundingMode;)I
    .registers 6
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;

    .line 120
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 121
    sget-object v0, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    .line 144
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 137
    :pswitch_16
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    .line 138
    .local v0, "leadingZeros":I
    const v1, -0x4afb0ccd

    ushr-int/2addr v1, v0

    .line 140
    .local v1, "cmp":I
    rsub-int/lit8 v2, v0, 0x1f

    .line 141
    .local v2, "logFloor":I
    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v3

    add-int/2addr v3, v2

    return v3

    .line 131
    .end local v0    # "leadingZeros":I
    .end local v1    # "cmp":I
    .end local v2    # "logFloor":I
    :pswitch_26
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    return v0

    .line 123
    :pswitch_2f
    invoke-static {p0}, Lcom/google/common/math/IntMath;->isPowerOfTwo(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 127
    :pswitch_36
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    return v0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_36
        :pswitch_36
        :pswitch_26
        :pswitch_26
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public static mean(II)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 707
    and-int v0, p0, p1

    xor-int v1, p0, p1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(II)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "m"    # I

    .line 392
    if-lez p1, :cond_b

    .line 395
    rem-int v0, p0, p1

    .line 396
    .local v0, "result":I
    if-ltz v0, :cond_8

    move v1, v0

    goto :goto_a

    :cond_8
    add-int v1, v0, p1

    :goto_a
    return v1

    .line 393
    .end local v0    # "result":I
    :cond_b
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Modulus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static pow(II)I
    .registers 5
    .param p0, "b"    # I
    .param p1, "k"    # I

    .line 229
    const-string v0, "exponent"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 230
    const/16 v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_42

    .line 248
    const/4 v0, 0x1

    .local v0, "accum":I
    goto :goto_2d

    .line 238
    .end local v0    # "accum":I
    :pswitch_e
    if-ge p1, v0, :cond_12

    shl-int v1, v2, p1

    :cond_12
    return v1

    .line 234
    :pswitch_13
    return v2

    .line 232
    :pswitch_14
    if-nez p1, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1

    .line 236
    :pswitch_18
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v2, -0x1

    :goto_1e
    return v2

    .line 240
    :pswitch_1f
    if-ge p1, v0, :cond_2c

    .line 241
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_28

    shl-int v0, v2, p1

    goto :goto_2b

    :cond_28
    shl-int v0, v2, p1

    neg-int v0, v0

    :goto_2b
    return v0

    .line 243
    :cond_2c
    return v1

    .line 249
    .restart local v0    # "accum":I
    :goto_2d
    packed-switch p1, :pswitch_data_50

    .line 255
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_3a

    const/4 v1, 0x1

    goto :goto_3b

    .line 253
    :pswitch_36
    mul-int v1, p0, v0

    return v1

    .line 251
    :pswitch_39
    return v0

    .line 255
    :cond_3a
    move v1, p0

    :goto_3b
    mul-int v0, v0, v1

    .line 256
    mul-int p0, p0, p0

    .line 248
    shr-int/lit8 p1, p1, 0x1

    goto :goto_2d

    :pswitch_data_42
    .packed-switch -0x2
        :pswitch_1f
        :pswitch_18
        :pswitch_14
        :pswitch_13
        :pswitch_e
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_39
        :pswitch_36
    .end packed-switch
.end method

.method public static saturatedAdd(II)I
    .registers 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 537
    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static saturatedMultiply(II)I
    .registers 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 559
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static saturatedPow(II)I
    .registers 8
    .param p0, "b"    # I
    .param p1, "k"    # I

    .line 570
    const-string v0, "exponent"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 571
    const/4 v0, -0x1

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x1

    packed-switch p0, :pswitch_data_68

    .line 591
    const/4 v0, 0x1

    .line 593
    .local v0, "accum":I
    ushr-int/lit8 v4, p0, 0x1f

    and-int/lit8 v5, p1, 0x1

    and-int/2addr v4, v5

    add-int/2addr v4, v2

    .local v4, "limit":I
    goto :goto_3a

    .line 579
    .end local v0    # "accum":I
    .end local v4    # "limit":I
    :pswitch_16
    const/16 v0, 0x1f

    if-lt p1, v0, :cond_1b

    .line 580
    return v2

    .line 582
    :cond_1b
    shl-int v0, v3, p1

    return v0

    .line 575
    :pswitch_1e
    return v3

    .line 573
    :pswitch_1f
    if-nez p1, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1

    .line 577
    :pswitch_23
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_28

    const/4 v0, 0x1

    :cond_28
    return v0

    .line 584
    :pswitch_29
    const/16 v1, 0x20

    if-lt p1, v1, :cond_31

    .line 585
    and-int/lit8 v0, p1, 0x1

    add-int/2addr v0, v2

    return v0

    .line 587
    :cond_31
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_38

    shl-int v0, v3, p1

    goto :goto_39

    :cond_38
    shl-int/2addr v0, p1

    :goto_39
    return v0

    .line 595
    .restart local v0    # "accum":I
    .restart local v4    # "limit":I
    :cond_3a
    :goto_3a
    packed-switch p1, :pswitch_data_76

    .line 601
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_4c

    .line 602
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result v0

    goto :goto_4c

    .line 599
    :pswitch_46
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result v1

    return v1

    .line 597
    :pswitch_4b
    return v0

    .line 604
    :cond_4c
    :goto_4c
    shr-int/lit8 p1, p1, 0x1

    .line 605
    if-lez p1, :cond_3a

    .line 606
    const v2, -0xb504

    if-le v2, p0, :cond_57

    const/4 v2, 0x1

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    const v5, 0xb504

    if-le p0, v5, :cond_5f

    const/4 v5, 0x1

    goto :goto_60

    :cond_5f
    const/4 v5, 0x0

    :goto_60
    or-int/2addr v2, v5

    if-eqz v2, :cond_64

    .line 607
    return v4

    .line 609
    :cond_64
    mul-int p0, p0, p0

    goto :goto_3a

    nop

    :pswitch_data_68
    .packed-switch -0x2
        :pswitch_29
        :pswitch_23
        :pswitch_1f
        :pswitch_1e
        :pswitch_16
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_46
    .end packed-switch
.end method

.method public static saturatedSubtract(II)I
    .registers 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 548
    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static sqrt(ILjava/math/RoundingMode;)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;

    .line 271
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 272
    invoke-static {p0}, Lcom/google/common/math/IntMath;->sqrtFloor(I)I

    move-result v0

    .line 273
    .local v0, "sqrtFloor":I
    sget-object v1, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_36

    .line 299
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 285
    :pswitch_1a
    mul-int v1, v0, v0

    add-int/2addr v1, v0

    .line 297
    .local v1, "halfSquare":I
    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v2, v0

    return v2

    .line 281
    .end local v1    # "halfSquare":I
    :pswitch_23
    mul-int v1, v0, v0

    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 275
    :pswitch_2b
    mul-int v1, v0, v0

    if-ne v1, p0, :cond_31

    const/4 v1, 0x1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 278
    :pswitch_35
    return v0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_35
        :pswitch_35
        :pswitch_23
        :pswitch_23
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method private static sqrtFloor(I)I
    .registers 3
    .param p0, "x"    # I

    .line 306
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
