.class public Lj$/util/DoubleSummaryStatisticsConversions;
.super Ljava/lang/Object;
.source "DoubleSummaryStatisticsConversions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/util/DoubleSummaryStatistics;)Lj$/util/DoubleSummaryStatistics;
    .locals 2
    .param p0, "stats"    # Ljava/util/DoubleSummaryStatistics;

    .line 18
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convert(Lj$/util/DoubleSummaryStatistics;)Ljava/util/DoubleSummaryStatistics;
    .locals 2
    .param p0, "stats"    # Lj$/util/DoubleSummaryStatistics;

    .line 12
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Java 8+ API desugaring (library desugaring) cannot convert to java.util.DoubleSummaryStatistics"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
