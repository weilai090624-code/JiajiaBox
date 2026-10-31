.class public final Lcom/google/common/math/StatsAccumulator;
.super Ljava/lang/Object;
.source "StatsAccumulator.java"


# annotations
.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private count:J

.field private max:D

.field private mean:D

.field private min:D

.field private sumOfSquaresOfDeltas:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 44
    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 45
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 46
    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    return-void
.end method

.method static calculateNewMeanNonFinite(DD)D
    .registers 6
    .param p0, "previousMean"    # D
    .param p2, "value"    # D

    .line 384
    invoke-static {p0, p1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 386
    return-wide p2

    .line 387
    :cond_7
    invoke-static {p2, p3}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_15

    cmpl-double v0, p0, p2

    if-nez v0, :cond_12

    goto :goto_15

    .line 392
    :cond_12
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 389
    :cond_15
    :goto_15
    return-wide p0
.end method

.method private merge(JDDDD)V
    .registers 27
    .param p1, "otherCount"    # J
    .param p3, "otherMean"    # D
    .param p5, "otherSumOfSquaresOfDeltas"    # D
    .param p7, "otherMin"    # D
    .param p9, "otherMax"    # D

    .line 162
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-nez v15, :cond_21

    .line 163
    iput-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 164
    iput-wide v3, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 165
    iput-wide v5, v0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 166
    iput-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 167
    iput-wide v9, v0, Lcom/google/common/math/StatsAccumulator;->max:D

    move-wide v11, v9

    move-wide v9, v7

    goto :goto_74

    .line 169
    :cond_21
    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    add-long/2addr v11, v1

    iput-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 170
    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v11, v12}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v11

    if-eqz v11, :cond_54

    invoke-static/range {p3 .. p4}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v11

    if-eqz v11, :cond_54

    .line 172
    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v11, v3, v11

    .line 173
    .local v11, "delta":D
    iget-wide v13, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    long-to-double v9, v1

    mul-double v9, v9, v11

    iget-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v7, v7

    div-double/2addr v9, v7

    add-double/2addr v13, v9

    iput-wide v13, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 174
    iget-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    iget-wide v9, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v9, v3, v9

    mul-double v9, v9, v11

    long-to-double v13, v1

    mul-double v9, v9, v13

    add-double/2addr v9, v5

    add-double/2addr v7, v9

    iput-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 175
    .end local v11    # "delta":D
    goto :goto_60

    .line 176
    :cond_54
    iget-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v7, v8, v3, v4}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 177
    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    iput-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 179
    :goto_60
    iget-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->min:D

    move-wide/from16 v9, p7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 180
    iget-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->max:D

    move-wide/from16 v11, p9

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 182
    :goto_74
    return-void
.end method


# virtual methods
.method public add(D)V
    .registers 12
    .param p1, "value"    # D

    .line 50
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v6, 0x1

    cmp-long v8, v0, v2

    if-nez v8, :cond_1d

    .line 51
    iput-wide v6, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 52
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 53
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 54
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 55
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_64

    .line 56
    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    goto :goto_64

    .line 59
    :cond_1d
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 60
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v0, v1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 62
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v0, p1, v0

    .line 63
    .local v0, "delta":D
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v4, v4

    div-double v4, v0, v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 64
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v4, p1, v4

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 65
    .end local v0    # "delta":D
    goto :goto_54

    .line 66
    :cond_4a
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 67
    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 69
    :goto_54
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 70
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 72
    :cond_64
    :goto_64
    return-void
.end method

.method public addAll(Lcom/google/common/math/Stats;)V
    .registers 18
    .param p1, "values"    # Lcom/google/common/math/Stats;

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    .line 138
    return-void

    .line 140
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->min()D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->max()D

    move-result-wide v14

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v15}, Lcom/google/common/math/StatsAccumulator;->merge(JDDDD)V

    .line 141
    return-void
.end method

.method public addAll(Lcom/google/common/math/StatsAccumulator;)V
    .registers 18
    .param p1, "values"    # Lcom/google/common/math/StatsAccumulator;

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    .line 151
    return-void

    .line 153
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/StatsAccumulator;->min()D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/StatsAccumulator;->max()D

    move-result-wide v14

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v15}, Lcom/google/common/math/StatsAccumulator;->merge(JDDDD)V

    .line 154
    return-void
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Number;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 82
    .local v1, "value":Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 83
    .end local v1    # "value":Ljava/lang/Number;
    goto :goto_4

    .line 84
    :cond_18
    return-void
.end method

.method public addAll(Ljava/util/Iterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    nop

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    goto :goto_1

    .line 96
    :cond_15
    return-void
.end method

.method public varargs addAll([D)V
    .registers 6
    .param p1, "values"    # [D

    .line 104
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-wide v2, p1, v1

    .line 105
    .local v2, "value":D
    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 104
    .end local v2    # "value":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 107
    :cond_c
    return-void
.end method

.method public varargs addAll([I)V
    .registers 7
    .param p1, "values"    # [I

    .line 115
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_d

    aget v2, p1, v1

    .line 116
    .local v2, "value":I
    int-to-double v3, v2

    invoke-virtual {p0, v3, v4}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 115
    .end local v2    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 118
    :cond_d
    return-void
.end method

.method public varargs addAll([J)V
    .registers 8
    .param p1, "values"    # [J

    .line 127
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_d

    aget-wide v2, p1, v1

    .line 128
    .local v2, "value":J
    long-to-double v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 127
    .end local v2    # "value":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 130
    :cond_d
    return-void
.end method

.method public count()J
    .registers 3

    .line 191
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    return-wide v0
.end method

.method public max()D
    .registers 6

    .line 357
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 358
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    return-wide v0
.end method

.method public mean()D
    .registers 6

    .line 213
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 214
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    return-wide v0
.end method

.method public min()D
    .registers 6

    .line 339
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 340
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    return-wide v0
.end method

.method public final populationStandardDeviation()D
    .registers 3

    .line 276
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->populationVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final populationVariance()D
    .registers 6

    .line 249
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 250
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 251
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 253
    :cond_19
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_24

    .line 254
    const-wide/16 v0, 0x0

    return-wide v0

    .line 256
    :cond_24
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final sampleStandardDeviation()D
    .registers 3

    .line 322
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->sampleVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final sampleVariance()D
    .registers 7

    .line 296
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 297
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 298
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 300
    :cond_19
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    sub-long/2addr v4, v2

    long-to-double v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public snapshot()Lcom/google/common/math/Stats;
    .registers 13

    .line 186
    new-instance v11, Lcom/google/common/math/Stats;

    iget-wide v1, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    iget-wide v3, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v5, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    iget-wide v7, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    iget-wide v9, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/common/math/Stats;-><init>(JDDDD)V

    return-object v11
.end method

.method public final sum()D
    .registers 5

    .line 230
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v2, v2

    mul-double v0, v0, v2

    return-wide v0
.end method

.method sumOfSquaresOfDeltas()D
    .registers 3

    .line 362
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    return-wide v0
.end method
