.class public Lj$/util/LongSummaryStatisticsConversions;
.super Ljava/lang/Object;
.source "LongSummaryStatisticsConversions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/util/LongSummaryStatistics;)Lj$/util/LongSummaryStatistics;
    .locals 2
    .param p0, "stats"    # Ljava/util/LongSummaryStatistics;

    .line 18
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convert(Lj$/util/LongSummaryStatistics;)Ljava/util/LongSummaryStatistics;
    .locals 2
    .param p0, "stats"    # Lj$/util/LongSummaryStatistics;

    .line 12
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Java 8+ API desugaring (library desugaring) cannot convert to java.util.LongSummaryStatistics"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
