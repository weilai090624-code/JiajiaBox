.class public final Lcom/google/common/math/LongMath;
.super Ljava/lang/Object;
.source "LongMath.java"


# annotations
.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/LongMath$MillerRabinTester;
    }
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_LONG:J = 0xb504f333L

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:J = -0x4afb0ccc06219b7cL

.field static final MAX_SIGNED_POWER_OF_TWO:J = 0x4000000000000000L

.field private static final SIEVE_30:I = -0x208a2883

.field static final biggestBinomials:[I

.field static final biggestSimpleBinomials:[I

.field static final factorials:[J

.field static final halfPowersOf10:[J

.field static final maxLog10ForLeadingZeros:[B

.field private static final millerRabinBaseSets:[[J

.field static final powersOf10:[J


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 207
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    .line 215
    const/16 v0, 0x13

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    .line 240
    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    .line 780
    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    .line 886
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    .line 928
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    .line 1064
    const/4 v0, 0x2

    new-array v1, v0, [J

    fill-array-data v1, :array_6

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_7

    const/4 v4, 0x4

    new-array v5, v4, [J

    fill-array-data v5, :array_8

    const/4 v6, 0x5

    new-array v7, v6, [J

    fill-array-data v7, :array_9

    const/4 v8, 0x6

    new-array v9, v8, [J

    fill-array-data v9, :array_a

    const/4 v10, 0x7

    new-array v11, v10, [J

    fill-array-data v11, :array_b

    const/16 v12, 0x8

    new-array v12, v12, [J

    fill-array-data v12, :array_c

    new-array v10, v10, [[J

    const/4 v13, 0x0

    aput-object v1, v10, v13

    const/4 v1, 0x1

    aput-object v3, v10, v1

    aput-object v5, v10, v0

    aput-object v7, v10, v2

    aput-object v9, v10, v4

    aput-object v11, v10, v6

    aput-object v12, v10, v8

    sput-object v10, Lcom/google/common/math/LongMath;->millerRabinBaseSets:[[J

    return-void

    :array_0
    .array-data 1
        0x13t
        0x12t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x11t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0xat
        0x9t
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
    .end array-data

    :array_1
    .array-data 8
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
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    :array_2
    .array-data 8
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0xbc7c871cL
        0x75cdd4719L
        0x49a0a4c700L
        0x2e0466fc608L
        0x1cc2c05dbc53L
        0x11f9b83a95b45L
        0xb3c13249d90bbL
        0x7058bf6e27a751L
        0x463777a4d8c892dL
        0x2be2aac7077d5bc3L    # 2.731041190138108E-97
    .end array-data

    :array_3
    .array-data 8
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
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data

    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x3a25db
        0x1dc79
        0x3f2f
        0x10f1
        0x6c5
        0x377
        0x216
        0x169
        0x109
        0xce
        0xa9
        0x8f
        0x7d
        0x6f
        0x65
        0x5e
        0x58
        0x53
        0x4f
        0x4c
        0x4a
        0x48
        0x46
        0x45
        0x44
        0x43
        0x43
        0x42
        0x42
        0x42
        0x42
    .end array-data

    :array_5
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x285146
        0x150eb
        0x2dcc
        0xc92
        0x521
        0x2ac
        0x1a3
        0x11f
        0xd6
        0xa9
        0x8b
        0x77
        0x69
        0x5f
        0x57
        0x51
        0x4c
        0x49
        0x46
        0x44
        0x42
        0x40
        0x3f
        0x3e
        0x3e
        0x3d
        0x3d
        0x3d
    .end array-data

    :array_6
    .array-data 8
        0x473f6
        0x1c1111acd0b9428L    # 3.1855675420061E-300
    .end array-data

    :array_7
    .array-data 8
        0x34c91838
        0xa10ad7d5c6610c1L
        0x318a8c12ce9c70e7L    # 4.808051585655767E-70
    .end array-data

    :array_8
    .array-data 8
        0x3fc6e038e0L
        0xf
        0x1b6ebec62L
        0x386c87553e12cL
    .end array-data

    :array_9
    .array-data 8
        0x2b5343fd6a30L
        0x2
        0x273abc
        0xca2b9d9
        0xdf8286ccL
    .end array-data

    :array_a
    .array-data 8
        0x1c6b470864f682L
        0x2
        0x3c1c7396f6dL
        0x2142e2e3f22de5cL
        0x297105b6b7b29ddL
        0x370eb221a5f176ddL    # 1.7205605495331308E-43
    .end array-data

    :array_b
    .array-data 8
        0x81f23f390affe88L
        0x2
        0x70722e8f5cd0L
        0x20cd6bd5ace2d1L
        0x9bbc940c751630L
        0xa90404784bfcb4dL    # 8.45563543651314E-258
        0x1189b3f265c2b0c7L
    .end array-data

    :array_c
    .array-data 8
        0x7fffffffffffffffL
        0x2
        0x145
        0x249f
        0x6e12
        0x6e0d7
        0x953d18
        0x6b0191fe
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)J
    .locals 16
    .param p0, "n"    # I
    .param p1, "k"    # I

    .line 811
    move/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "n"

    invoke-static {v2, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 812
    const-string v2, "k"

    invoke-static {v2, v1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 813
    if-gt v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "k (%s) > n (%s)"

    invoke-static {v2, v3, v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 814
    shr-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_1

    .line 815
    sub-int v1, v0, v1

    .line 817
    .end local p1    # "k":I
    .local v1, "k":I
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 823
    sget-object v2, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 824
    sget-object v2, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v3, v2, v0

    sget-object v2, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v5, v2, v1

    sget-object v2, Lcom/google/common/math/LongMath;->factorials:[J

    sub-int v7, v0, v1

    aget-wide v7, v2, v7

    mul-long v5, v5, v7

    div-long/2addr v3, v5

    return-wide v3

    .line 821
    :pswitch_0
    int-to-long v2, v0

    return-wide v2

    .line 819
    :pswitch_1
    const-wide/16 v2, 0x1

    return-wide v2

    .line 825
    :cond_2
    sget-object v2, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    array-length v2, v2

    if-ge v1, v2, :cond_8

    sget-object v2, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    aget v2, v2, v1

    if-le v0, v2, :cond_3

    goto/16 :goto_4

    .line 827
    :cond_3
    sget-object v2, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5

    sget-object v2, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    aget v2, v2, v1

    if-gt v0, v2, :cond_5

    .line 829
    add-int/lit8 v2, v0, -0x1

    .end local p0    # "n":I
    .local v2, "n":I
    int-to-long v3, v0

    .line 830
    .local v3, "result":J
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_1
    if-gt v0, v1, :cond_4

    .line 831
    int-to-long v5, v2

    mul-long v3, v3, v5

    .line 832
    int-to-long v5, v0

    div-long/2addr v3, v5

    .line 830
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 834
    .end local v0    # "i":I
    :cond_4
    return-wide v3

    .line 836
    .end local v2    # "n":I
    .end local v3    # "result":J
    .restart local p0    # "n":I
    :cond_5
    int-to-long v2, v0

    sget-object v4, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v2, v3, v4}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v2

    .line 838
    .local v2, "nBits":I
    const-wide/16 v3, 0x1

    .line 839
    .restart local v3    # "result":J
    add-int/lit8 v5, v0, -0x1

    .end local p0    # "n":I
    .local v5, "n":I
    int-to-long v6, v0

    .line 840
    .local v6, "numerator":J
    const-wide/16 v8, 0x1

    .line 842
    .local v8, "denominator":J
    move v0, v2

    .line 850
    .local v0, "numeratorBits":I
    const/4 v10, 0x2

    move v11, v5

    move-wide v12, v6

    move-wide v14, v8

    move v7, v10

    move-wide v9, v3

    .end local v3    # "result":J
    .end local v5    # "n":I
    .end local v6    # "numerator":J
    .end local v8    # "denominator":J
    .local v7, "i":I
    .local v9, "result":J
    .local v11, "n":I
    .local v12, "numerator":J
    .local v14, "denominator":J
    :goto_2
    if-gt v7, v1, :cond_7

    .line 851
    add-int v3, v0, v2

    const/16 v4, 0x3f

    if-ge v3, v4, :cond_6

    .line 853
    int-to-long v3, v11

    mul-long v12, v12, v3

    .line 854
    int-to-long v3, v7

    mul-long v14, v14, v3

    .line 855
    add-int/2addr v0, v2

    move-wide v3, v9

    move v9, v0

    move v0, v7

    goto :goto_3

    .line 859
    :cond_6
    move-wide v3, v9

    move-wide v5, v12

    move/from16 p0, v0

    move v0, v7

    .end local v7    # "i":I
    .local v0, "i":I
    .local p0, "numeratorBits":I
    move-wide v7, v14

    invoke-static/range {v3 .. v8}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v3

    .line 860
    .end local v9    # "result":J
    .restart local v3    # "result":J
    int-to-long v5, v11

    .line 861
    .end local v12    # "numerator":J
    .local v5, "numerator":J
    int-to-long v7, v0

    .line 862
    .end local v14    # "denominator":J
    .local v7, "denominator":J
    move v9, v2

    move-wide v12, v5

    move-wide v14, v7

    .line 850
    .end local v5    # "numerator":J
    .end local v7    # "denominator":J
    .end local p0    # "numeratorBits":I
    .local v9, "numeratorBits":I
    .restart local v12    # "numerator":J
    .restart local v14    # "denominator":J
    :goto_3
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "i":I
    .local v7, "i":I
    add-int/lit8 v11, v11, -0x1

    move v0, v9

    move-wide v9, v3

    goto :goto_2

    .end local v3    # "result":J
    .local v0, "numeratorBits":I
    .local v9, "result":J
    :cond_7
    move/from16 p0, v0

    move v0, v7

    .line 865
    .end local v0    # "numeratorBits":I
    .end local v7    # "i":I
    .restart local p0    # "numeratorBits":I
    move-wide v3, v9

    move-wide v5, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v8}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v3

    return-wide v3

    .line 826
    .end local v2    # "nBits":I
    .end local v9    # "result":J
    .end local v11    # "n":I
    .end local v12    # "numerator":J
    .end local v14    # "denominator":J
    .local p0, "n":I
    :cond_8
    :goto_4
    const-wide v2, 0x7fffffffffffffffL

    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ceilingPowerOfTwo(J)J
    .locals 4
    .param p0, "x"    # J

    .line 69
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 70
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    .line 73
    const-wide/16 v0, 0x1

    sub-long v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    neg-int v2, v2

    shl-long/2addr v0, v2

    return-wide v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x46

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ceilingPowerOfTwo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not representable as a long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkedAdd(JJ)J
    .locals 11
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 548
    add-long v0, p0, p2

    .line 549
    .local v0, "result":J
    xor-long v2, p0, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-long v8, p0, v0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int v5, v2, v4

    const-string v6, "checkedAdd"

    move-wide v7, p0

    move-wide v9, p2

    invoke-static/range {v5 .. v10}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    .line 550
    return-wide v0
.end method

.method public static checkedMultiply(JJ)J
    .locals 17
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 572
    move-wide/from16 v6, p0

    move-wide/from16 v8, p2

    .line 573
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    not-long v1, v6

    .line 574
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 575
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    not-long v1, v8

    .line 576
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int v10, v0, v1

    .line 587
    .local v10, "leadingZeros":I
    const/16 v0, 0x41

    if-le v10, v0, :cond_0

    .line 588
    mul-long v0, v6, v8

    return-wide v0

    .line 590
    :cond_0
    const/16 v0, 0x40

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lt v10, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "checkedMultiply"

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    .line 591
    const-wide/16 v13, 0x0

    cmp-long v0, v6, v13

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, v8, v1

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    or-int/2addr v0, v1

    const-string v1, "checkedMultiply"

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    .line 592
    mul-long v15, v6, v8

    .line 593
    .local v15, "result":J
    cmp-long v0, v6, v13

    if-eqz v0, :cond_5

    div-long v0, v15, v6

    cmp-long v2, v0, v8

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, 0x1

    :goto_4
    const-string v1, "checkedMultiply"

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    .line 594
    return-wide v15
.end method

.method public static checkedPow(JI)J
    .locals 13
    .param p0, "b"    # J
    .param p2, "k"    # I

    .line 605
    const-string v0, "exponent"

    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 606
    const-wide/16 v0, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p0, v0

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v4, 0x2

    cmp-long v1, p0, v4

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 607
    long-to-int v0, p0

    const-wide/16 v9, -0x1

    const-wide/16 v11, 0x1

    packed-switch v0, :pswitch_data_0

    .line 621
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 615
    :pswitch_0
    const/16 v0, 0x3f

    if-ge p2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v1, "checkedPow"

    int-to-long v4, p2

    move-wide v2, p0

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    .line 616
    shl-long v0, v11, p2

    return-wide v0

    .line 611
    :pswitch_1
    return-wide v11

    .line 609
    :pswitch_2
    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    const-wide/16 v11, 0x0

    :goto_3
    return-wide v11

    .line 613
    :pswitch_3
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_4

    move-wide v9, v11

    :cond_4
    return-wide v9

    .line 618
    :pswitch_4
    const/16 v0, 0x40

    if-ge p2, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    const-string v1, "checkedPow"

    int-to-long v4, p2

    move-wide v2, p0

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    .line 619
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_6

    shl-long v0, v11, p2

    goto :goto_5

    :cond_6
    shl-long v0, v9, p2

    :goto_5
    return-wide v0

    .line 624
    :cond_7
    const-wide/16 v0, 0x1

    move v8, p2

    move-wide v4, v0

    move-wide v0, p0

    .line 626
    .end local p0    # "b":J
    .end local p2    # "k":I
    .local v0, "b":J
    .local v4, "accum":J
    .local v8, "k":I
    :goto_6
    packed-switch v8, :pswitch_data_1

    .line 632
    and-int/lit8 v6, v8, 0x1

    if-eqz v6, :cond_8

    .line 633
    invoke-static {v4, v5, v0, v1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v4

    move-wide v10, v4

    goto :goto_7

    .line 630
    :pswitch_5
    invoke-static {v4, v5, v0, v1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v2

    return-wide v2

    .line 628
    :pswitch_6
    return-wide v4

    .line 632
    :cond_8
    move-wide v10, v4

    .line 635
    .end local v4    # "accum":J
    .local v10, "accum":J
    :goto_7
    shr-int/lit8 v12, v8, 0x1

    .line 636
    .end local v8    # "k":I
    .local v12, "k":I
    if-lez v12, :cond_a

    .line 637
    const-wide v4, -0xb504f333L

    cmp-long v6, v4, v0

    if-gtz v6, :cond_9

    const-wide v4, 0xb504f333L

    cmp-long v6, v0, v4

    if-gtz v6, :cond_9

    const/4 v4, 0x1

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    :goto_8
    const-string v5, "checkedPow"

    int-to-long v8, v12

    move-wide v6, v0

    invoke-static/range {v4 .. v9}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    .line 639
    mul-long v0, v0, v0

    move-wide v4, v10

    move v8, v12

    goto :goto_6

    .line 636
    :cond_a
    move-wide v4, v10

    move v8, v12

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static checkedSubtract(JJ)J
    .locals 11
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 560
    sub-long v0, p0, p2

    .line 561
    .local v0, "result":J
    xor-long v2, p0, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-long v8, p0, v0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int v5, v2, v4

    const-string v6, "checkedSubtract"

    move-wide v7, p0

    move-wide v9, p2

    invoke-static/range {v5 .. v10}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    .line 562
    return-wide v0
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .locals 19
    .param p0, "p"    # J
    .param p2, "q"    # J
    .param p4, "mode"    # Ljava/math/RoundingMode;

    .line 387
    move-object/from16 v0, p4

    invoke-static/range {p4 .. p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    div-long v1, p0, p2

    .line 389
    .local v1, "div":J
    mul-long v3, p2, v1

    sub-long v3, p0, v3

    .line 391
    .local v3, "rem":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 392
    return-wide v1

    .line 402
    :cond_0
    xor-long v7, p0, p2

    const/16 v9, 0x3f

    shr-long/2addr v7, v9

    long-to-int v8, v7

    const/4 v7, 0x1

    or-int/2addr v8, v7

    .line 404
    .local v8, "signum":I
    sget-object v9, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p4 .. p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x0

    packed-switch v9, :pswitch_data_0

    .line 434
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 423
    :pswitch_0
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 424
    .local v11, "absRem":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    sub-long/2addr v13, v11

    sub-long v13, v11, v13

    .line 427
    .local v13, "cmpRemToHalfDivisor":J
    cmp-long v9, v13, v5

    if-nez v9, :cond_4

    .line 428
    sget-object v9, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-ne v0, v9, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    sget-object v15, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne v0, v15, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    const-wide/16 v16, 0x1

    and-long v16, v1, v16

    cmp-long v18, v16, v5

    if-eqz v18, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    and-int v5, v15, v7

    or-int/2addr v5, v9

    .local v5, "increment":Z
    goto :goto_7

    .line 430
    .end local v5    # "increment":Z
    :cond_4
    cmp-long v9, v13, v5

    if-lez v9, :cond_5

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    move v5, v7

    .line 432
    .restart local v5    # "increment":Z
    goto :goto_7

    .line 415
    .end local v5    # "increment":Z
    .end local v11    # "absRem":J
    .end local v13    # "cmpRemToHalfDivisor":J
    :pswitch_1
    if-lez v8, :cond_6

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    move v5, v7

    .line 416
    .restart local v5    # "increment":Z
    goto :goto_7

    .line 412
    .end local v5    # "increment":Z
    :pswitch_2
    const/4 v5, 0x1

    .line 413
    .restart local v5    # "increment":Z
    goto :goto_7

    .line 418
    .end local v5    # "increment":Z
    :pswitch_3
    if-gez v8, :cond_7

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    move v5, v7

    .line 419
    .restart local v5    # "increment":Z
    goto :goto_7

    .line 406
    .end local v5    # "increment":Z
    :pswitch_4
    cmp-long v9, v3, v5

    if-nez v9, :cond_8

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    :goto_6
    invoke-static {v7}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 409
    :pswitch_5
    const/4 v5, 0x0

    .line 410
    .restart local v5    # "increment":Z
    nop

    .line 436
    :goto_7
    if-eqz v5, :cond_9

    int-to-long v6, v8

    add-long/2addr v6, v1

    goto :goto_8

    :cond_9
    move-wide v6, v1

    :goto_8
    return-wide v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static factorial(I)J
    .locals 3
    .param p0, "n"    # I

    .line 776
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 777
    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v1, v0, p0

    goto :goto_0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    return-wide v1
.end method

.method static fitsInInt(J)Z
    .locals 3
    .param p0, "x"    # J

    .line 965
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static floorPowerOfTwo(J)J
    .locals 3
    .param p0, "x"    # J

    .line 85
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 89
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    return-wide v0
.end method

.method public static gcd(JJ)J
    .locals 8
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 502
    const-string v0, "a"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 503
    const-string v0, "b"

    invoke-static {v0, p2, p3}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 504
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 507
    return-wide p2

    .line 508
    :cond_0
    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    .line 509
    return-wide p0

    .line 515
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    .line 516
    .local v0, "aTwos":I
    shr-long/2addr p0, v0

    .line 517
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    .line 518
    .local v1, "bTwos":I
    shr-long/2addr p2, v1

    .line 519
    :goto_0
    cmp-long v2, p0, p2

    if-eqz v2, :cond_2

    .line 527
    sub-long v2, p0, p2

    .line 529
    .local v2, "delta":J
    const/16 v4, 0x3f

    shr-long v4, v2, v4

    and-long/2addr v4, v2

    .line 532
    .local v4, "minDeltaOrZero":J
    sub-long v6, v2, v4

    sub-long/2addr v6, v4

    .line 535
    .end local p0    # "a":J
    .local v6, "a":J
    add-long/2addr p2, v4

    .line 536
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    shr-long p0, v6, p0

    .line 537
    .end local v2    # "delta":J
    .end local v4    # "minDeltaOrZero":J
    .end local v6    # "a":J
    .restart local p0    # "a":J
    goto :goto_0

    .line 538
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    shl-long v2, p0, v2

    return-wide v2
.end method

.method public static isPowerOfTwo(J)Z
    .locals 8
    .param p0, "x"    # J

    .line 99
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-wide/16 v5, 0x1

    sub-long v5, p0, v5

    and-long/2addr v5, p0

    cmp-long v7, v5, v2

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    and-int/2addr v0, v4

    return v0
.end method

.method public static isPrime(J)Z
    .locals 10
    .param p0, "n"    # J

    .line 1005
    const-wide/16 v0, 0x2

    const/4 v2, 0x0

    cmp-long v3, p0, v0

    if-gez v3, :cond_0

    .line 1006
    const-string v0, "n"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 1007
    return v2

    .line 1009
    :cond_0
    const-wide/16 v0, 0x42

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    cmp-long v6, p0, v0

    if-gez v6, :cond_2

    .line 1011
    const-wide v0, 0xa08228828228a2bL

    .line 1031
    .local v0, "mask":J
    long-to-int v6, p0

    add-int/lit8 v6, v6, -0x2

    shr-long v6, v0, v6

    const-wide/16 v8, 0x1

    and-long/2addr v6, v8

    cmp-long v8, v6, v3

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 1034
    .end local v0    # "mask":J
    :cond_2
    const-wide/16 v0, 0x1e

    rem-long v0, p0, v0

    long-to-int v1, v0

    shl-int v0, v5, v1

    const v1, -0x208a2883

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 1035
    return v2

    .line 1037
    :cond_3
    const-wide/16 v0, 0x7

    rem-long v0, p0, v0

    cmp-long v6, v0, v3

    if-eqz v6, :cond_a

    const-wide/16 v0, 0xb

    rem-long v0, p0, v0

    cmp-long v6, v0, v3

    if-eqz v6, :cond_a

    const-wide/16 v0, 0xd

    rem-long v0, p0, v0

    cmp-long v6, v0, v3

    if-nez v6, :cond_4

    goto :goto_2

    .line 1040
    :cond_4
    const-wide/16 v0, 0x121

    cmp-long v3, p0, v0

    if-gez v3, :cond_5

    .line 1041
    return v5

    .line 1044
    :cond_5
    sget-object v0, Lcom/google/common/math/LongMath;->millerRabinBaseSets:[[J

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_9

    aget-object v4, v0, v3

    .line 1045
    .local v4, "baseSet":[J
    aget-wide v6, v4, v2

    cmp-long v8, p0, v6

    if-gtz v8, :cond_8

    .line 1046
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v1, v4

    if-ge v0, v1, :cond_7

    .line 1047
    aget-wide v6, v4, v0

    invoke-static {v6, v7, p0, p1}, Lcom/google/common/math/LongMath$MillerRabinTester;->test(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1048
    return v2

    .line 1046
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1051
    .end local v0    # "i":I
    :cond_7
    return v5

    .line 1044
    .end local v4    # "baseSet":[J
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1054
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1038
    :cond_a
    :goto_2
    return v2
.end method

.method static lessThanBranchFree(JJ)I
    .locals 3
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 110
    sub-long v0, p0, p2

    not-long v0, v0

    not-long v0, v0

    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static log10(JLjava/math/RoundingMode;)I
    .locals 6
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 165
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 166
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->log10Floor(J)I

    move-result v0

    .line 167
    .local v0, "logFloor":I
    sget-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v2, v1, v0

    .line 168
    .local v2, "floorPow":J
    sget-object v1, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 184
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 182
    :pswitch_0
    sget-object v1, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    aget-wide v4, v1, v0

    invoke-static {v4, v5, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 177
    :pswitch_1
    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 170
    :pswitch_2
    cmp-long v1, p0, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 174
    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static log10Floor(J)I
    .locals 4
    .param p0, "x"    # J

    .line 197
    sget-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    aget-byte v0, v0, v1

    .line 202
    .local v0, "y":I
    sget-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v2, v1, v0

    invoke-static {p0, p1, v2, v3}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v1

    sub-int v1, v0, v1

    return v1
.end method

.method public static log2(JLjava/math/RoundingMode;)I
    .locals 5
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 123
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 124
    sget-object v0, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "impossible"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 140
    :pswitch_0
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    .line 141
    .local v0, "leadingZeros":I
    const-wide v1, -0x4afb0ccc06219b7cL    # -2.734104117489491E-53

    ushr-long/2addr v1, v0

    .line 143
    .local v1, "cmp":J
    rsub-int/lit8 v3, v0, 0x3f

    .line 144
    .local v3, "logFloor":I
    invoke-static {v1, v2, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v4

    add-int/2addr v4, v3

    return v4

    .line 134
    .end local v0    # "leadingZeros":I
    .end local v1    # "cmp":J
    .end local v3    # "logFloor":I
    :pswitch_1
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    return v0

    .line 126
    :pswitch_2
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 130
    :pswitch_3
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static mean(JJ)J
    .locals 5
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 978
    and-long v0, p0, p2

    xor-long v2, p0, p2

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static mod(JI)I
    .locals 2
    .param p0, "x"    # J
    .param p2, "m"    # I

    .line 460
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->mod(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public static mod(JJ)J
    .locals 5
    .param p0, "x"    # J
    .param p2, "m"    # J

    .line 483
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 486
    rem-long v2, p0, p2

    .line 487
    .local v2, "result":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    add-long v0, v2, p2

    :goto_0
    return-wide v0

    .line 484
    .end local v2    # "result":J
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Modulus must be positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static multiplyFraction(JJJ)J
    .locals 4
    .param p0, "x"    # J
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .line 872
    const-wide/16 v0, 0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 873
    div-long v0, p2, p4

    return-wide v0

    .line 875
    :cond_0
    invoke-static {p0, p1, p4, p5}, Lcom/google/common/math/LongMath;->gcd(JJ)J

    move-result-wide v0

    .line 876
    .local v0, "commonDivisor":J
    div-long/2addr p0, v0

    .line 877
    div-long/2addr p4, v0

    .line 880
    div-long v2, p2, p4

    mul-long v2, v2, p0

    return-wide v2
.end method

.method public static pow(JI)J
    .locals 6
    .param p0, "b"    # J
    .param p2, "k"    # I

    .line 271
    const-string v0, "exponent"

    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 272
    const-wide/16 v0, -0x2

    const-wide/16 v2, 0x1

    cmp-long v4, v0, p0

    if-gtz v4, :cond_5

    const-wide/16 v0, 0x2

    cmp-long v4, p0, v0

    if-gtz v4, :cond_5

    .line 273
    long-to-int v0, p0

    const/16 v1, 0x40

    const-wide/16 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 289
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 281
    :pswitch_0
    if-ge p2, v1, :cond_0

    shl-long v4, v2, p2

    :cond_0
    return-wide v4

    .line 277
    :pswitch_1
    return-wide v2

    .line 275
    :pswitch_2
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v4

    :goto_0
    return-wide v2

    .line 279
    :pswitch_3
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v2, -0x1

    :goto_1
    return-wide v2

    .line 283
    :pswitch_4
    if-ge p2, v1, :cond_4

    .line 284
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3

    shl-long v0, v2, p2

    goto :goto_2

    :cond_3
    shl-long v0, v2, p2

    neg-long v0, v0

    :goto_2
    return-wide v0

    .line 286
    :cond_4
    return-wide v4

    .line 292
    :cond_5
    const-wide/16 v0, 0x1

    .line 293
    .local v0, "accum":J
    :goto_3
    packed-switch p2, :pswitch_data_1

    .line 299
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_6

    move-wide v4, v2

    goto :goto_4

    .line 297
    :pswitch_5
    mul-long v2, v0, p0

    return-wide v2

    .line 295
    :pswitch_6
    return-wide v0

    .line 299
    :cond_6
    move-wide v4, p0

    :goto_4
    mul-long v0, v0, v4

    .line 300
    mul-long p0, p0, p0

    .line 292
    shr-int/lit8 p2, p2, 0x1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static roundToDouble(JLjava/math/RoundingMode;)D
    .locals 27
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 1249
    move-wide/from16 v0, p0

    long-to-double v2, v0

    .line 1250
    .local v2, "roundArbitrarily":D
    double-to-long v4, v2

    .line 1253
    .local v4, "roundArbitrarilyAsLong":J
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 1264
    const/4 v8, -0x1

    .local v8, "cmpXToRoundArbitrarily":I
    goto :goto_0

    .line 1266
    .end local v8    # "cmpXToRoundArbitrarily":I
    :cond_0
    invoke-static {v0, v1, v4, v5}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v8

    .line 1269
    .restart local v8    # "cmpXToRoundArbitrarily":I
    :goto_0
    sget-object v9, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p2 .. p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const-string v10, "impossible"

    packed-switch v9, :pswitch_data_0

    .line 1346
    move-wide/from16 v21, v4

    .end local v4    # "roundArbitrarilyAsLong":J
    .local v21, "roundArbitrarilyAsLong":J
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1304
    .end local v21    # "roundArbitrarilyAsLong":J
    .restart local v4    # "roundArbitrarilyAsLong":J
    :pswitch_0
    if-ltz v8, :cond_1

    .line 1305
    move-wide v13, v2

    .line 1306
    .local v13, "roundFloorAsDouble":D
    move-wide v15, v4

    .line 1307
    .local v15, "roundFloor":J
    invoke-static {v2, v3}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v17

    .line 1308
    .local v17, "roundCeilingAsDouble":D
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-long v11, v11

    move-wide v6, v15

    .local v11, "roundCeiling":J
    goto :goto_1

    .line 1310
    .end local v11    # "roundCeiling":J
    .end local v13    # "roundFloorAsDouble":D
    .end local v15    # "roundFloor":J
    .end local v17    # "roundCeilingAsDouble":D
    :cond_1
    move-wide/from16 v17, v2

    .line 1311
    .restart local v17    # "roundCeilingAsDouble":D
    move-wide v11, v4

    .line 1312
    .restart local v11    # "roundCeiling":J
    invoke-static {v2, v3}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v13

    .line 1313
    .restart local v13    # "roundFloorAsDouble":D
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    .line 1316
    .local v6, "roundFloor":J
    :goto_1
    move-wide/from16 v21, v4

    .end local v4    # "roundArbitrarilyAsLong":J
    .restart local v21    # "roundArbitrarilyAsLong":J
    sub-long v4, v0, v6

    .line 1317
    .local v4, "deltaToFloor":J
    sub-long v23, v11, v0

    .line 1319
    .local v23, "deltaToCeiling":J
    const-wide/16 v25, 0x1

    const-wide v15, 0x7fffffffffffffffL

    cmp-long v9, v11, v15

    if-nez v9, :cond_2

    .line 1322
    add-long v23, v23, v25

    move-wide v15, v6

    move-wide/from16 v6, v23

    goto :goto_2

    .line 1319
    :cond_2
    move-wide v15, v6

    move-wide/from16 v6, v23

    .line 1325
    .end local v23    # "deltaToCeiling":J
    .local v6, "deltaToCeiling":J
    .restart local v15    # "roundFloor":J
    :goto_2
    invoke-static {v4, v5, v6, v7}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v9

    .line 1326
    .local v9, "diff":I
    if-gez v9, :cond_3

    .line 1327
    return-wide v13

    .line 1328
    :cond_3
    if-lez v9, :cond_4

    .line 1329
    return-wide v17

    .line 1332
    :cond_4
    sget-object v23, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p2 .. p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_1

    .line 1342
    move-wide/from16 v19, v4

    .end local v4    # "deltaToFloor":J
    .local v19, "deltaToFloor":J
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1334
    .end local v19    # "deltaToFloor":J
    .restart local v4    # "deltaToFloor":J
    :pswitch_1
    invoke-static {v13, v14}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v23

    and-long v23, v23, v25

    const-wide/16 v19, 0x0

    cmp-long v10, v23, v19

    if-nez v10, :cond_5

    .line 1335
    move-wide/from16 v19, v13

    goto :goto_3

    .line 1336
    :cond_5
    move-wide/from16 v19, v17

    .line 1334
    :goto_3
    return-wide v19

    .line 1340
    :pswitch_2
    const-wide/16 v19, 0x0

    cmp-long v10, v0, v19

    if-ltz v10, :cond_6

    move-wide/from16 v19, v17

    goto :goto_4

    :cond_6
    move-wide/from16 v19, v13

    :goto_4
    return-wide v19

    .line 1338
    :pswitch_3
    const-wide/16 v19, 0x0

    cmp-long v10, v0, v19

    if-ltz v10, :cond_7

    move-wide/from16 v19, v13

    goto :goto_5

    :cond_7
    move-wide/from16 v19, v17

    :goto_5
    return-wide v19

    .line 1278
    .end local v6    # "deltaToCeiling":J
    .end local v9    # "diff":I
    .end local v11    # "roundCeiling":J
    .end local v13    # "roundFloorAsDouble":D
    .end local v15    # "roundFloor":J
    .end local v17    # "roundCeilingAsDouble":D
    .end local v21    # "roundArbitrarilyAsLong":J
    .local v4, "roundArbitrarilyAsLong":J
    :pswitch_4
    move-wide/from16 v21, v4

    .end local v4    # "roundArbitrarilyAsLong":J
    .restart local v21    # "roundArbitrarilyAsLong":J
    if-gtz v8, :cond_8

    move-wide v4, v2

    goto :goto_6

    :cond_8
    invoke-static {v2, v3}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v4

    :goto_6
    return-wide v4

    .line 1288
    .end local v21    # "roundArbitrarilyAsLong":J
    .restart local v4    # "roundArbitrarilyAsLong":J
    :pswitch_5
    move-wide/from16 v21, v4

    .end local v4    # "roundArbitrarilyAsLong":J
    .restart local v21    # "roundArbitrarilyAsLong":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_a

    .line 1289
    if-gtz v8, :cond_9

    move-wide v4, v2

    goto :goto_7

    :cond_9
    invoke-static {v2, v3}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v4

    :goto_7
    return-wide v4

    .line 1291
    :cond_a
    if-ltz v8, :cond_b

    .line 1292
    move-wide v4, v2

    goto :goto_8

    .line 1293
    :cond_b
    invoke-static {v2, v3}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v4

    .line 1291
    :goto_8
    return-wide v4

    .line 1274
    .end local v21    # "roundArbitrarilyAsLong":J
    .restart local v4    # "roundArbitrarilyAsLong":J
    :pswitch_6
    move-wide/from16 v21, v4

    .end local v4    # "roundArbitrarilyAsLong":J
    .restart local v21    # "roundArbitrarilyAsLong":J
    if-ltz v8, :cond_c

    .line 1275
    move-wide v4, v2

    goto :goto_9

    .line 1276
    :cond_c
    invoke-static {v2, v3}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v4

    .line 1274
    :goto_9
    return-wide v4

    .line 1280
    .end local v21    # "roundArbitrarilyAsLong":J
    .restart local v4    # "roundArbitrarilyAsLong":J
    :pswitch_7
    move-wide/from16 v21, v4

    .end local v4    # "roundArbitrarilyAsLong":J
    .restart local v21    # "roundArbitrarilyAsLong":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_e

    .line 1281
    if-ltz v8, :cond_d

    .line 1282
    move-wide v4, v2

    goto :goto_a

    .line 1283
    :cond_d
    invoke-static {v2, v3}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v4

    .line 1281
    :goto_a
    return-wide v4

    .line 1285
    :cond_e
    if-gtz v8, :cond_f

    move-wide v4, v2

    goto :goto_b

    :cond_f
    invoke-static {v2, v3}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v4

    :goto_b
    return-wide v4

    .line 1271
    .end local v21    # "roundArbitrarilyAsLong":J
    .restart local v4    # "roundArbitrarilyAsLong":J
    :pswitch_8
    move-wide/from16 v21, v4

    .end local v4    # "roundArbitrarilyAsLong":J
    .restart local v21    # "roundArbitrarilyAsLong":J
    if-nez v8, :cond_10

    const/4 v4, 0x1

    goto :goto_c

    :cond_10
    const/4 v4, 0x0

    :goto_c
    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 1272
    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static saturatedAdd(JJ)J
    .locals 10
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 653
    add-long v0, p0, p2

    .line 654
    .local v0, "naiveSum":J
    xor-long v2, p0, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-long v8, p0, v0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 657
    return-wide v0

    .line 660
    :cond_2
    const/16 v2, 0x3f

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    xor-long/2addr v2, v4

    const-wide v4, 0x7fffffffffffffffL

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public static saturatedMultiply(JJ)J
    .locals 12
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 690
    nop

    .line 691
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    not-long v1, p0

    .line 692
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 693
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    not-long v1, p2

    .line 694
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 695
    .local v0, "leadingZeros":I
    const/16 v1, 0x41

    if-le v0, v1, :cond_0

    .line 696
    mul-long v1, p0, p2

    return-wide v1

    .line 699
    :cond_0
    xor-long v1, p0, p2

    const/16 v3, 0x3f

    ushr-long/2addr v1, v3

    const-wide v3, 0x7fffffffffffffffL

    add-long/2addr v1, v3

    .line 700
    .local v1, "limit":J
    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v0, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v8, p0, v6

    if-gez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v11, p2, v9

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    and-int/2addr v4, v8

    or-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 702
    return-wide v1

    .line 704
    :cond_4
    mul-long v3, p0, p2

    .line 705
    .local v3, "result":J
    cmp-long v5, p0, v6

    if-eqz v5, :cond_6

    div-long v5, v3, p0

    cmp-long v7, v5, p2

    if-nez v7, :cond_5

    goto :goto_3

    .line 708
    :cond_5
    return-wide v1

    .line 706
    :cond_6
    :goto_3
    return-wide v3
.end method

.method public static saturatedPow(JI)J
    .locals 10
    .param p0, "b"    # J
    .param p2, "k"    # I

    .line 719
    const-string v0, "exponent"

    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 720
    const-wide/16 v0, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p0, v0

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v4, 0x2

    cmp-long v1, p0, v4

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v1

    const/16 v1, 0x3f

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_7

    .line 721
    long-to-int v0, p0

    const-wide/16 v2, -0x1

    const-wide/16 v6, 0x1

    packed-switch v0, :pswitch_data_0

    .line 739
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 729
    :pswitch_0
    if-lt p2, v1, :cond_2

    .line 730
    return-wide v4

    .line 732
    :cond_2
    shl-long v0, v6, p2

    return-wide v0

    .line 725
    :pswitch_1
    return-wide v6

    .line 723
    :pswitch_2
    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v6, 0x0

    :goto_2
    return-wide v6

    .line 727
    :pswitch_3
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_4

    move-wide v2, v6

    :cond_4
    return-wide v2

    .line 734
    :pswitch_4
    const/16 v0, 0x40

    if-lt p2, v0, :cond_5

    .line 735
    and-int/lit8 v0, p2, 0x1

    int-to-long v0, v0

    add-long/2addr v0, v4

    return-wide v0

    .line 737
    :cond_5
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_6

    shl-long v0, v6, p2

    goto :goto_3

    :cond_6
    shl-long v0, v2, p2

    :goto_3
    return-wide v0

    .line 742
    :cond_7
    const-wide/16 v6, 0x1

    .line 744
    .local v6, "accum":J
    ushr-long v0, p0, v1

    and-int/lit8 v8, p2, 0x1

    int-to-long v8, v8

    and-long/2addr v0, v8

    add-long/2addr v0, v4

    .line 746
    .local v0, "limit":J
    :cond_8
    :goto_4
    packed-switch p2, :pswitch_data_1

    .line 752
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_9

    .line 753
    invoke-static {v6, v7, p0, p1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v4

    move-wide v6, v4

    .end local v6    # "accum":J
    .local v4, "accum":J
    goto :goto_5

    .line 750
    .end local v4    # "accum":J
    .restart local v6    # "accum":J
    :pswitch_5
    invoke-static {v6, v7, p0, p1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v2

    return-wide v2

    .line 748
    :pswitch_6
    return-wide v6

    .line 755
    :cond_9
    :goto_5
    shr-int/lit8 p2, p2, 0x1

    .line 756
    if-lez p2, :cond_8

    .line 757
    const-wide v4, -0xb504f333L

    cmp-long v8, v4, p0

    if-lez v8, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    const-wide v8, 0xb504f333L

    cmp-long v5, p0, v8

    if-lez v5, :cond_b

    const/4 v5, 0x1

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    :goto_7
    or-int/2addr v4, v5

    if-eqz v4, :cond_c

    .line 758
    return-wide v0

    .line 760
    :cond_c
    mul-long p0, p0, p0

    goto :goto_4

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static saturatedSubtract(JJ)J
    .locals 10
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 671
    sub-long v0, p0, p2

    .line 672
    .local v0, "naiveDifference":J
    xor-long v2, p0, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-long v8, p0, v0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 675
    return-wide v0

    .line 678
    :cond_2
    const/16 v2, 0x3f

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    xor-long/2addr v2, v4

    const-wide v4, 0x7fffffffffffffffL

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public static sqrt(JLjava/math/RoundingMode;)J
    .locals 10
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 315
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 316
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    long-to-int v0, p0

    invoke-static {v0, p2}, Lcom/google/common/math/IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 334
    :cond_0
    long-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 336
    .local v0, "guess":J
    mul-long v2, v0, v0

    .line 339
    .local v2, "guessSquared":J
    sget-object v4, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-wide/16 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v4, :pswitch_data_0

    .line 373
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 358
    :pswitch_0
    cmp-long v4, p0, v2

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    int-to-long v4, v7

    sub-long v4, v0, v4

    .line 359
    .local v4, "sqrtFloor":J
    mul-long v6, v4, v4

    add-long/2addr v6, v4

    .line 371
    .local v6, "halfSquare":J
    invoke-static {v6, v7, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    return-wide v8

    .line 351
    .end local v4    # "sqrtFloor":J
    .end local v6    # "halfSquare":J
    :pswitch_1
    cmp-long v4, p0, v2

    if-lez v4, :cond_2

    .line 352
    add-long/2addr v5, v0

    return-wide v5

    .line 354
    :cond_2
    return-wide v0

    .line 345
    :pswitch_2
    cmp-long v4, p0, v2

    if-gez v4, :cond_3

    .line 346
    sub-long v4, v0, v5

    return-wide v4

    .line 348
    :cond_3
    return-wide v0

    .line 341
    :pswitch_3
    cmp-long v4, v2, p0

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    invoke-static {v7}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 342
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
