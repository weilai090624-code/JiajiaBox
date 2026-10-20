.class public final synthetic Lj$/time/chrono/ChronoPeriod$-CC;
.super Ljava/lang/Object;
.source "ChronoPeriod.java"


# direct methods
.method public static $default$isNegative(Lj$/time/chrono/ChronoPeriod;)Z
    .locals 7
    .param p0, "_this"    # Lj$/time/chrono/ChronoPeriod;

    .line 187
    invoke-interface {p0}, Lj$/time/chrono/ChronoPeriod;->getUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/temporal/TemporalUnit;

    .line 188
    .local v1, "unit":Lj$/time/temporal/TemporalUnit;
    invoke-interface {p0, v1}, Lj$/time/chrono/ChronoPeriod;->get(Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 189
    const/4 v0, 0x1

    return v0

    .line 191
    .end local v1    # "unit":Lj$/time/temporal/TemporalUnit;
    :cond_0
    goto :goto_0

    .line 192
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static $default$isZero(Lj$/time/chrono/ChronoPeriod;)Z
    .locals 7
    .param p0, "_this"    # Lj$/time/chrono/ChronoPeriod;

    .line 173
    invoke-interface {p0}, Lj$/time/chrono/ChronoPeriod;->getUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/temporal/TemporalUnit;

    .line 174
    .local v1, "unit":Lj$/time/temporal/TemporalUnit;
    invoke-interface {p0, v1}, Lj$/time/chrono/ChronoPeriod;->get(Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 175
    const/4 v0, 0x0

    return v0

    .line 177
    .end local v1    # "unit":Lj$/time/temporal/TemporalUnit;
    :cond_0
    goto :goto_0

    .line 178
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static $default$negated(Lj$/time/chrono/ChronoPeriod;)Lj$/time/chrono/ChronoPeriod;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/ChronoPeriod;

    .line 256
    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lj$/time/chrono/ChronoPeriod;->multipliedBy(I)Lj$/time/chrono/ChronoPeriod;

    move-result-object v0

    return-object v0
.end method

.method public static between(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)Lj$/time/chrono/ChronoPeriod;
    .locals 1
    .param p0, "startDateInclusive"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "endDateExclusive"    # Lj$/time/chrono/ChronoLocalDate;

    .line 117
    const-string v0, "startDateInclusive"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string v0, "endDateExclusive"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoLocalDate;->until(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/chrono/ChronoPeriod;

    move-result-object v0

    return-object v0
.end method
