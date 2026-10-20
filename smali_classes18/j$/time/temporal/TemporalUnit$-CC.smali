.class public final synthetic Lj$/time/temporal/TemporalUnit$-CC;
.super Ljava/lang/Object;
.source "TemporalUnit.java"


# direct methods
.method public static $default$isSupportedBy(Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/Temporal;)Z
    .locals 5
    .param p0, "_this"    # Lj$/time/temporal/TemporalUnit;
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 169
    instance-of v0, p1, Lj$/time/LocalTime;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {p0}, Lj$/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v0

    return v0

    .line 172
    :cond_0
    instance-of v0, p1, Lj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_1

    .line 173
    invoke-interface {p0}, Lj$/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v0

    return v0

    .line 175
    :cond_1
    instance-of v0, p1, Lj$/time/chrono/ChronoLocalDateTime;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    instance-of v0, p1, Lj$/time/chrono/ChronoZonedDateTime;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 179
    :cond_2
    const-wide/16 v2, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v2, v3, p0}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    :try_end_0
    .catch Lj$/time/temporal/UnsupportedTemporalTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    return v1

    .line 183
    :catch_0
    move-exception v2

    .line 185
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-wide/16 v3, -0x1

    :try_start_1
    invoke-interface {p1, v3, v4, p0}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    return v1

    .line 187
    :catch_1
    move-exception v1

    .line 188
    .local v1, "ex2":Ljava/lang/RuntimeException;
    return v0

    .line 181
    .end local v1    # "ex2":Ljava/lang/RuntimeException;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 182
    .local v1, "ex":Lj$/time/temporal/UnsupportedTemporalTypeException;
    return v0

    .line 176
    .end local v1    # "ex":Lj$/time/temporal/UnsupportedTemporalTypeException;
    :cond_3
    :goto_0
    return v1
.end method
