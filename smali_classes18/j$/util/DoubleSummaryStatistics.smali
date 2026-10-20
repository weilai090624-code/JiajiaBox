.class public Lj$/util/DoubleSummaryStatistics;
.super Ljava/lang/Object;
.source "DoubleSummaryStatistics.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field private count:J

.field private max:D

.field private min:D

.field private simpleSum:D

.field private sum:D

.field private sumCompensation:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->min:D

    .line 70
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->max:D

    .line 77
    return-void
.end method

.method public constructor <init>(JDDD)V
    .locals 5
    .param p1, "count"    # J
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "sum"    # D

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->min:D

    .line 70
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->max:D

    .line 111
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    .line 113
    cmp-long v2, p1, v0

    if-lez v2, :cond_3

    .line 114
    cmpl-double v2, p3, p5

    if-gtz v2, :cond_2

    .line 118
    const/4 v2, 0x3

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p3, v2, v3

    const/4 v3, 0x1

    aput-wide p5, v2, v3

    const/4 v3, 0x2

    aput-wide p7, v2, v3

    invoke-static {v2}, Lj$/util/stream/DoubleStream$-CC;->of([D)Lj$/util/stream/DoubleStream;

    move-result-object v2

    new-instance v3, Lj$/util/DoubleSummaryStatistics$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lj$/util/DoubleSummaryStatistics$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Lj$/util/stream/DoubleStream;->filter(Ljava/util/function/DoublePredicate;)Lj$/util/stream/DoubleStream;

    move-result-object v2

    invoke-interface {v2}, Lj$/util/stream/DoubleStream;->count()J

    move-result-wide v2

    .line 119
    .local v2, "ncount":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    const-wide/16 v0, 0x3

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Some, not all, of the minimum, maximum, or sum is NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    :goto_0
    iput-wide p1, p0, Lj$/util/DoubleSummaryStatistics;->count:J

    .line 123
    iput-wide p7, p0, Lj$/util/DoubleSummaryStatistics;->sum:D

    .line 124
    iput-wide p7, p0, Lj$/util/DoubleSummaryStatistics;->simpleSum:D

    .line 125
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->sumCompensation:D

    .line 126
    iput-wide p3, p0, Lj$/util/DoubleSummaryStatistics;->min:D

    .line 127
    iput-wide p5, p0, Lj$/util/DoubleSummaryStatistics;->max:D

    goto :goto_1

    .line 115
    .end local v2    # "ncount":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum greater than maximum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_3
    :goto_1
    return-void

    .line 112
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative count value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sumWithCompensation(D)V
    .locals 6
    .param p1, "value"    # D

    .line 167
    iget-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->sumCompensation:D

    sub-double v0, p1, v0

    .line 168
    .local v0, "tmp":D
    iget-wide v2, p0, Lj$/util/DoubleSummaryStatistics;->sum:D

    add-double/2addr v2, v0

    .line 169
    .local v2, "velvel":D
    iget-wide v4, p0, Lj$/util/DoubleSummaryStatistics;->sum:D

    sub-double v4, v2, v4

    sub-double/2addr v4, v0

    iput-wide v4, p0, Lj$/util/DoubleSummaryStatistics;->sumCompensation:D

    .line 170
    iput-wide v2, p0, Lj$/util/DoubleSummaryStatistics;->sum:D

    .line 171
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 4
    .param p1, "value"    # D

    .line 139
    iget-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->count:J

    .line 140
    iget-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->simpleSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->simpleSum:D

    .line 141
    invoke-direct {p0, p1, p2}, Lj$/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    .line 142
    iget-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->min:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->min:D

    .line 143
    iget-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->max:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->max:D

    .line 144
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method public combine(Lj$/util/DoubleSummaryStatistics;)V
    .locals 4
    .param p1, "other"    # Lj$/util/DoubleSummaryStatistics;

    .line 154
    iget-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->count:J

    iget-wide v2, p1, Lj$/util/DoubleSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->count:J

    .line 155
    iget-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->simpleSum:D

    iget-wide v2, p1, Lj$/util/DoubleSummaryStatistics;->simpleSum:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->simpleSum:D

    .line 156
    iget-wide v0, p1, Lj$/util/DoubleSummaryStatistics;->sum:D

    invoke-direct {p0, v0, v1}, Lj$/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    .line 157
    iget-wide v0, p1, Lj$/util/DoubleSummaryStatistics;->sumCompensation:D

    invoke-direct {p0, v0, v1}, Lj$/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    .line 158
    iget-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->min:D

    iget-wide v2, p1, Lj$/util/DoubleSummaryStatistics;->min:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->min:D

    .line 159
    iget-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->max:D

    iget-wide v2, p1, Lj$/util/DoubleSummaryStatistics;->max:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->max:D

    .line 160
    return-void
.end method

.method public final getAverage()D
    .locals 5

    .line 295
    invoke-virtual {p0}, Lj$/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lj$/util/DoubleSummaryStatistics;->getSum()D

    move-result-wide v0

    invoke-virtual {p0}, Lj$/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getCount()J
    .locals 2

    .line 179
    iget-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->count:J

    return-wide v0
.end method

.method public final getMax()D
    .locals 2

    .line 278
    iget-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->max:D

    return-wide v0
.end method

.method public final getMin()D
    .locals 2

    .line 264
    iget-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->min:D

    return-wide v0
.end method

.method public final getSum()D
    .locals 4

    .line 242
    iget-wide v0, p0, Lj$/util/DoubleSummaryStatistics;->sum:D

    iget-wide v2, p0, Lj$/util/DoubleSummaryStatistics;->sumCompensation:D

    add-double/2addr v0, v2

    .line 243
    .local v0, "tmp":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lj$/util/DoubleSummaryStatistics;->simpleSum:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    iget-wide v2, p0, Lj$/util/DoubleSummaryStatistics;->simpleSum:D

    return-wide v2

    .line 250
    :cond_0
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 305
    nop

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-virtual {p0}, Lj$/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 309
    invoke-virtual {p0}, Lj$/util/DoubleSummaryStatistics;->getSum()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 310
    invoke-virtual {p0}, Lj$/util/DoubleSummaryStatistics;->getMin()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 311
    invoke-virtual {p0}, Lj$/util/DoubleSummaryStatistics;->getAverage()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 312
    invoke-virtual {p0}, Lj$/util/DoubleSummaryStatistics;->getMax()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    .line 305
    const-string v0, "%s{count=%d, sum=%f, min=%f, average=%f, max=%f}"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
