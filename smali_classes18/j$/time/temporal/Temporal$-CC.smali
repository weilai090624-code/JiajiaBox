.class public final synthetic Lj$/time/temporal/Temporal$-CC;
.super Ljava/lang/Object;
.source "Temporal.java"


# direct methods
.method public static $default$minus(Lj$/time/temporal/Temporal;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 3
    .param p0, "_this"    # Lj$/time/temporal/Temporal;
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 370
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p0, v0, v1, p3}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2, p3}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-interface {p0, v0, v1, p3}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static $default$minus(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 1
    .param p0, "_this"    # Lj$/time/temporal/Temporal;
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 334
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public static $default$plus(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 1
    .param p0, "_this"    # Lj$/time/temporal/Temporal;
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 262
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public static $default$with(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 1
    .param p0, "_this"    # Lj$/time/temporal/Temporal;
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;

    .line 190
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAdjuster;->adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method
