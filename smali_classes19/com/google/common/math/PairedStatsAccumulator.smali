.class public final Lcom/google/common/math/PairedStatsAccumulator;
.super Ljava/lang/Object;
.source "PairedStatsAccumulator.java"


# annotations
.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private sumOfProductsOfDeltas:D

.field private final xStats:Lcom/google/common/math/StatsAccumulator;

.field private final yStats:Lcom/google/common/math/StatsAccumulator;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lcom/google/common/math/StatsAccumulator;-><init>()V

    iput-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    .line 41
    new-instance v0, Lcom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lcom/google/common/math/StatsAccumulator;-><init>()V

    iput-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    return-void
.end method

.method private static ensureInUnitRange(D)D
    .registers 8
    .param p0, "value"    # D

    .line 241
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/common/primitives/Doubles;->constrainToRange(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private ensurePositive(D)D
    .registers 6
    .param p1, "value"    # D

    .line 233
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_7

    .line 234
    return-wide p1

    .line 236
    :cond_7
    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public add(DD)V
    .registers 11
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 57
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 58
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {p3, p4}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 59
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_39

    .line 60
    iget-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v2

    sub-double v2, p1, v2

    iget-object v4, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v4}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v4

    sub-double v4, p3, v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    goto :goto_39

    .line 63
    :cond_35
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    .line 65
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v0, p3, p4}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 66
    return-void
.end method

.method public addAll(Lcom/google/common/math/PairedStats;)V
    .registers 12
    .param p1, "values"    # Lcom/google/common/math/PairedStats;

    .line 73
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    .line 74
    return-void

    .line 77
    :cond_b
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->xStats()Lcom/google/common/math/Stats;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/Stats;)V

    .line 78
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_25

    .line 79
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    goto :goto_56

    .line 84
    :cond_25
    iget-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    .line 85
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas()D

    move-result-wide v2

    .line 86
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->xStats()Lcom/google/common/math/Stats;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v4

    iget-object v6, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v6}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 87
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->yStats()Lcom/google/common/math/Stats;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v6

    iget-object v8, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v8}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double v4, v4, v6

    .line 88
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    .line 90
    :goto_56
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->yStats()Lcom/google/common/math/Stats;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/Stats;)V

    .line 91
    return-void
.end method

.method public count()J
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public final leastSquaresFit()Lcom/google/common/math/LinearTransformation;
    .registers 10

    .line 214
    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 215
    iget-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 216
    invoke-static {}, Lcom/google/common/math/LinearTransformation;->forNaN()Lcom/google/common/math/LinearTransformation;

    move-result-object v0

    return-object v0

    .line 218
    :cond_1f
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v0

    .line 219
    .local v0, "xSumOfSquaresOfDeltas":D
    const-wide/16 v2, 0x0

    cmpl-double v6, v0, v2

    if-lez v6, :cond_58

    .line 220
    iget-object v4, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v4}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v4

    cmpl-double v6, v4, v2

    if-lez v6, :cond_4d

    .line 221
    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v2

    iget-object v4, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v4}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LinearTransformation;->mapping(DD)Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    div-double/2addr v3, v0

    .line 222
    invoke-virtual {v2, v3, v4}, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->withSlope(D)Lcom/google/common/math/LinearTransformation;

    move-result-object v2

    .line 221
    return-object v2

    .line 224
    :cond_4d
    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/math/LinearTransformation;->horizontal(D)Lcom/google/common/math/LinearTransformation;

    move-result-object v2

    return-object v2

    .line 227
    :cond_58
    iget-object v6, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v6}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v6

    cmpl-double v8, v6, v2

    if-lez v8, :cond_63

    goto :goto_64

    :cond_63
    const/4 v4, 0x0

    :goto_64
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 228
    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/math/LinearTransformation;->vertical(D)Lcom/google/common/math/LinearTransformation;

    move-result-object v2

    return-object v2
.end method

.method public final pearsonsCorrelationCoefficient()D
    .registers 11

    .line 167
    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 168
    iget-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 169
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 171
    :cond_1d
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v0

    .line 172
    .local v0, "xSumOfSquaresOfDeltas":D
    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v2

    .line 173
    .local v2, "ySumOfSquaresOfDeltas":D
    const-wide/16 v6, 0x0

    cmpl-double v8, v0, v6

    if-lez v8, :cond_31

    const/4 v8, 0x1

    goto :goto_32

    :cond_31
    const/4 v8, 0x0

    :goto_32
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 174
    cmpl-double v8, v2, v6

    if-lez v8, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v4, 0x0

    :goto_3b
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 177
    mul-double v4, v0, v2

    .line 178
    invoke-direct {p0, v4, v5}, Lcom/google/common/math/PairedStatsAccumulator;->ensurePositive(D)D

    move-result-wide v4

    .line 179
    .local v4, "productOfSumsOfSquaresOfDeltas":D
    iget-wide v6, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/google/common/math/PairedStatsAccumulator;->ensureInUnitRange(D)D

    move-result-wide v6

    return-wide v6
.end method

.method public populationCovariance()D
    .registers 6

    .line 128
    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 129
    iget-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final sampleCovariance()D
    .registers 7

    .line 146
    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 147
    iget-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-double v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public snapshot()Lcom/google/common/math/PairedStats;
    .registers 6

    .line 95
    new-instance v0, Lcom/google/common/math/PairedStats;

    iget-object v1, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v1}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/math/PairedStats;-><init>(Lcom/google/common/math/Stats;Lcom/google/common/math/Stats;D)V

    return-object v0
.end method

.method public xStats()Lcom/google/common/math/Stats;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object v0

    return-object v0
.end method

.method public yStats()Lcom/google/common/math/Stats;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object v0

    return-object v0
.end method
