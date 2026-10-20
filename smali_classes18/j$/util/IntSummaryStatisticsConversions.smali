.class public Lj$/util/IntSummaryStatisticsConversions;
.super Ljava/lang/Object;
.source "IntSummaryStatisticsConversions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/util/IntSummaryStatistics;)Lj$/util/IntSummaryStatistics;
    .locals 2
    .param p0, "stats"    # Ljava/util/IntSummaryStatistics;

    .line 18
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convert(Lj$/util/IntSummaryStatistics;)Ljava/util/IntSummaryStatistics;
    .locals 2
    .param p0, "stats"    # Lj$/util/IntSummaryStatistics;

    .line 12
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Java 8+ API desugaring (library desugaring) cannot convert to java.util.IntSummaryStatistics"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
