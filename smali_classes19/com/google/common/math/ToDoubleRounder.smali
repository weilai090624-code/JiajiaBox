.class abstract Lcom/google/common/math/ToDoubleRounder;
.super Ljava/lang/Object;
.source "ToDoubleRounder.java"


# annotations
.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Number;",
        ":",
        "Ljava/lang/Comparable<",
        "TX;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    .local p0, "this":Lcom/google/common/math/ToDoubleRounder;, "Lcom/google/common/math/ToDoubleRounder<TX;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;TX;)TX;"
        }
    .end annotation
.end method

.method final roundToDouble(Ljava/lang/Number;Ljava/math/RoundingMode;)D
    .registers 23
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;",
            "Ljava/math/RoundingMode;",
            ")D"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/google/common/math/ToDoubleRounder;, "Lcom/google/common/math/ToDoubleRounder<TX;>;"
    .local p1, "x":Ljava/lang/Number;, "TX;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "x"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v2, "mode"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->roundToDoubleArbitrarily(Ljava/lang/Number;)D

    move-result-wide v4

    .line 50
    .local v4, "roundArbitrarily":D
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v2, :cond_72

    .line 51
    sget-object v2, Lcom/google/common/math/ToDoubleRounder$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p2 .. p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v10

    aget v2, v2, v10

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    packed-switch v2, :pswitch_data_158

    goto :goto_72

    .line 68
    :pswitch_2f
    new-instance v2, Ljava/lang/ArithmeticException;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be represented precisely as a double"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :pswitch_56
    return-wide v4

    .line 62
    :pswitch_57
    cmpl-double v2, v4, v8

    if-nez v2, :cond_5c

    .line 63
    goto :goto_61

    .line 64
    :cond_5c
    const-wide v8, -0x10000000000001L

    .line 62
    :goto_61
    return-wide v8

    .line 58
    :pswitch_62
    cmpl-double v2, v4, v8

    if-nez v2, :cond_68

    .line 59
    move-wide v6, v10

    goto :goto_69

    .line 60
    :cond_68
    nop

    .line 58
    :goto_69
    return-wide v6

    .line 56
    :pswitch_6a
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    move-result v2

    int-to-double v6, v2

    mul-double v6, v6, v10

    return-wide v6

    .line 71
    :cond_72
    :goto_72
    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {v0, v4, v5, v2}, Lcom/google/common/math/ToDoubleRounder;->toX(DLjava/math/RoundingMode;)Ljava/lang/Number;

    move-result-object v2

    .line 72
    .local v2, "roundArbitrarilyAsX":Ljava/lang/Number;, "TX;"
    move-object v10, v1

    check-cast v10, Ljava/lang/Comparable;

    invoke-interface {v10, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v10

    .line 73
    .local v10, "cmpXToRoundArbitrarily":I
    sget-object v11, Lcom/google/common/math/ToDoubleRounder$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p2 .. p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const-string v12, "impossible"

    packed-switch v11, :pswitch_data_16c

    .line 151
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 75
    :pswitch_92
    if-nez v10, :cond_96

    const/4 v6, 0x1

    goto :goto_97

    :cond_96
    const/4 v6, 0x0

    :goto_97
    invoke-static {v6}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 76
    return-wide v4

    .line 92
    :pswitch_9b
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    move-result v6

    if-ltz v6, :cond_aa

    .line 93
    if-gtz v10, :cond_a5

    move-wide v6, v4

    goto :goto_a9

    :cond_a5
    invoke-static {v4, v5}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v6

    :goto_a9
    return-wide v6

    .line 95
    :cond_aa
    if-ltz v10, :cond_ae

    .line 96
    move-wide v6, v4

    goto :goto_b2

    .line 97
    :cond_ae
    invoke-static {v4, v5}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v6

    .line 95
    :goto_b2
    return-wide v6

    .line 82
    :pswitch_b3
    if-gtz v10, :cond_b7

    move-wide v6, v4

    goto :goto_bb

    :cond_b7
    invoke-static {v4, v5}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v6

    :goto_bb
    return-wide v6

    .line 78
    :pswitch_bc
    if-ltz v10, :cond_c0

    .line 79
    move-wide v6, v4

    goto :goto_c4

    .line 80
    :cond_c0
    invoke-static {v4, v5}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v6

    .line 78
    :goto_c4
    return-wide v6

    .line 108
    :pswitch_c5
    if-ltz v10, :cond_da

    .line 109
    move-wide v6, v4

    .line 110
    .local v6, "roundFloorAsDouble":D
    move-object v11, v2

    .line 111
    .local v11, "roundFloor":Ljava/lang/Number;, "TX;"
    invoke-static {v4, v5}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v13

    .line 112
    .local v13, "roundCeilingAsDouble":D
    cmpl-double v15, v13, v8

    if-nez v15, :cond_d2

    .line 113
    return-wide v6

    .line 115
    :cond_d2
    sget-object v8, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v0, v13, v14, v8}, Lcom/google/common/math/ToDoubleRounder;->toX(DLjava/math/RoundingMode;)Ljava/lang/Number;

    move-result-object v8

    move-object v9, v2

    .local v8, "roundCeiling":Ljava/lang/Number;, "TX;"
    goto :goto_ed

    .line 117
    .end local v6    # "roundFloorAsDouble":D
    .end local v8    # "roundCeiling":Ljava/lang/Number;, "TX;"
    .end local v11    # "roundFloor":Ljava/lang/Number;, "TX;"
    .end local v13    # "roundCeilingAsDouble":D
    :cond_da
    move-wide v13, v4

    .line 118
    .restart local v13    # "roundCeilingAsDouble":D
    move-object v8, v2

    .line 119
    .restart local v8    # "roundCeiling":Ljava/lang/Number;, "TX;"
    move-object v9, v2

    .end local v2    # "roundArbitrarilyAsX":Ljava/lang/Number;, "TX;"
    .local v9, "roundArbitrarilyAsX":Ljava/lang/Number;, "TX;"
    invoke-static {v4, v5}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v2

    .line 120
    .local v2, "roundFloorAsDouble":D
    cmpl-double v11, v2, v6

    if-nez v11, :cond_e6

    .line 121
    return-wide v13

    .line 123
    :cond_e6
    sget-object v6, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v2, v3, v6}, Lcom/google/common/math/ToDoubleRounder;->toX(DLjava/math/RoundingMode;)Ljava/lang/Number;

    move-result-object v11

    move-wide v6, v2

    .line 126
    .end local v2    # "roundFloorAsDouble":D
    .restart local v6    # "roundFloorAsDouble":D
    .restart local v11    # "roundFloor":Ljava/lang/Number;, "TX;"
    :goto_ed
    invoke-virtual {v0, v1, v11}, Lcom/google/common/math/ToDoubleRounder;->minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    .line 127
    .local v2, "deltaToFloor":Ljava/lang/Number;, "TX;"
    invoke-virtual {v0, v8, v1}, Lcom/google/common/math/ToDoubleRounder;->minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    .line 128
    .local v3, "deltaToCeiling":Ljava/lang/Number;, "TX;"
    move-object v15, v2

    check-cast v15, Ljava/lang/Comparable;

    invoke-interface {v15, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v15

    .line 129
    .local v15, "diff":I
    if-gez v15, :cond_ff

    .line 130
    return-wide v6

    .line 131
    :cond_ff
    if-lez v15, :cond_102

    .line 132
    return-wide v13

    .line 135
    :cond_102
    sget-object v16, Lcom/google/common/math/ToDoubleRounder$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p2 .. p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_180

    .line 147
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 145
    :pswitch_113
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    move-result v12

    if-ltz v12, :cond_11c

    move-wide/from16 v16, v13

    goto :goto_11e

    :cond_11c
    move-wide/from16 v16, v6

    :goto_11e
    return-wide v16

    .line 143
    :pswitch_11f
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    move-result v12

    if-ltz v12, :cond_128

    move-wide/from16 v16, v6

    goto :goto_12a

    :cond_128
    move-wide/from16 v16, v13

    :goto_12a
    return-wide v16

    .line 139
    :pswitch_12b
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v16

    const-wide/16 v18, 0x1

    and-long v16, v16, v18

    const-wide/16 v18, 0x0

    cmp-long v12, v16, v18

    if-nez v12, :cond_13c

    .line 140
    move-wide/from16 v16, v6

    goto :goto_13e

    .line 141
    :cond_13c
    move-wide/from16 v16, v13

    .line 139
    :goto_13e
    return-wide v16

    .line 84
    .end local v3    # "deltaToCeiling":Ljava/lang/Number;, "TX;"
    .end local v6    # "roundFloorAsDouble":D
    .end local v8    # "roundCeiling":Ljava/lang/Number;, "TX;"
    .end local v9    # "roundArbitrarilyAsX":Ljava/lang/Number;, "TX;"
    .end local v11    # "roundFloor":Ljava/lang/Number;, "TX;"
    .end local v13    # "roundCeilingAsDouble":D
    .end local v15    # "diff":I
    .local v2, "roundArbitrarilyAsX":Ljava/lang/Number;, "TX;"
    :pswitch_13f
    move-object v9, v2

    .end local v2    # "roundArbitrarilyAsX":Ljava/lang/Number;, "TX;"
    .restart local v9    # "roundArbitrarilyAsX":Ljava/lang/Number;, "TX;"
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    move-result v0

    if-ltz v0, :cond_14f

    .line 85
    if-ltz v10, :cond_14a

    .line 86
    move-wide v2, v4

    goto :goto_14e

    .line 87
    :cond_14a
    invoke-static {v4, v5}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v2

    .line 85
    :goto_14e
    return-wide v2

    .line 89
    :cond_14f
    if-gtz v10, :cond_153

    move-wide v2, v4

    goto :goto_157

    :cond_153
    invoke-static {v4, v5}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v2

    :goto_157
    return-wide v2

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_62
        :pswitch_57
        :pswitch_56
        :pswitch_2f
    .end packed-switch

    :pswitch_data_16c
    .packed-switch 0x1
        :pswitch_13f
        :pswitch_c5
        :pswitch_c5
        :pswitch_c5
        :pswitch_bc
        :pswitch_b3
        :pswitch_9b
        :pswitch_92
    .end packed-switch

    :pswitch_data_180
    .packed-switch 0x2
        :pswitch_12b
        :pswitch_11f
        :pswitch_113
    .end packed-switch
.end method

.method abstract roundToDoubleArbitrarily(Ljava/lang/Number;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)D"
        }
    .end annotation
.end method

.method abstract sign(Ljava/lang/Number;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)I"
        }
    .end annotation
.end method

.method abstract toX(DLjava/math/RoundingMode;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/math/RoundingMode;",
            ")TX;"
        }
    .end annotation
.end method
