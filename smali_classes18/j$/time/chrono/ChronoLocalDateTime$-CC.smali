.class public final synthetic Lj$/time/chrono/ChronoLocalDateTime$-CC;
.super Ljava/lang/Object;
.source "ChronoLocalDateTime.java"


# direct methods
.method public static $default$adjustInto(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 4
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 385
    sget-object v0, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    .line 386
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-interface {v1}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->NANO_OF_DAY:Lj$/time/temporal/ChronoField;

    .line 387
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    .line 385
    return-object v0
.end method

.method public static $default$compareTo(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/chrono/ChronoLocalDateTime;)I
    .locals 3
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;

    .line 507
    .local p1, "other":Lj$/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/time/chrono/ChronoLocalDate;->compareTo(Lj$/time/chrono/ChronoLocalDate;)I

    move-result v0

    .line 508
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 509
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/time/LocalTime;->compareTo(Lj$/time/LocalTime;)I

    move-result v0

    .line 510
    if-nez v0, :cond_0

    .line 511
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDateTime;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/time/chrono/Chronology;->compareTo(Lj$/time/chrono/Chronology;)I

    move-result v0

    .line 514
    :cond_0
    return v0
.end method

.method public static bridge synthetic $default$compareTo(Lj$/time/chrono/ChronoLocalDateTime;Ljava/lang/Object;)I
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;

    .line 121
    check-cast p1, Lj$/time/chrono/ChronoLocalDateTime;

    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime;->compareTo(Lj$/time/chrono/ChronoLocalDateTime;)I

    move-result p1

    return p1
.end method

.method public static $default$format(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 405
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 406
    invoke-virtual {p1, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getChronology(Lj$/time/chrono/ChronoLocalDateTime;)Lj$/time/chrono/Chronology;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;

    .line 193
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public static $default$isAfter(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/chrono/ChronoLocalDateTime;)Z
    .locals 9
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;

    .line 532
    .local p1, "other":Lj$/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    .line 533
    .local v0, "thisEpDay":J
    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-interface {v2}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    .line 534
    .local v2, "otherEpDay":J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 535
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 534
    :goto_1
    return v4
.end method

.method public static $default$isBefore(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/chrono/ChronoLocalDateTime;)Z
    .locals 9
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;

    .line 553
    .local p1, "other":Lj$/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    .line 554
    .local v0, "thisEpDay":J
    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-interface {v2}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    .line 555
    .local v2, "otherEpDay":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 556
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 555
    :goto_1
    return v4
.end method

.method public static $default$isEqual(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/chrono/ChronoLocalDateTime;)Z
    .locals 5
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;

    .line 575
    .local p1, "other":Lj$/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 576
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-interface {v2}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 575
    :goto_0
    return v0
.end method

.method public static $default$isSupported(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalUnit;)Z
    .locals 3
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 258
    instance-of v0, p1, Lj$/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 259
    sget-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 261
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalUnit;->isSupportedBy(Lj$/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static $default$minus(Lj$/time/chrono/ChronoLocalDateTime;JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 319
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lj$/time/temporal/Temporal$-CC;->$default$minus(Lj$/time/temporal/Temporal;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static $default$minus(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 309
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Lj$/time/temporal/Temporal$-CC;->$default$minus(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$minus(Lj$/time/chrono/ChronoLocalDateTime;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;

    .line 121
    invoke-interface {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateTime;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$minus(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;

    .line 121
    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static $default$plus(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 291
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Lj$/time/temporal/Temporal$-CC;->$default$plus(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$plus(Lj$/time/chrono/ChronoLocalDateTime;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;

    .line 121
    invoke-interface {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$plus(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;

    .line 121
    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static $default$query(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;

    .line 344
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zoneId()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zone()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->offset()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localTime()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 347
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 348
    :cond_1
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 349
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0

    .line 350
    :cond_2
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->precision()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 351
    sget-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    return-object v0

    .line 355
    :cond_3
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalQuery;->queryFrom(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 345
    :cond_4
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static $default$toEpochSecond(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/ZoneOffset;)J
    .locals 6
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;
    .param p1, "offset"    # Lj$/time/ZoneOffset;

    .line 471
    const-string v0, "offset"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 472
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    .line 473
    .local v0, "epochDay":J
    const-wide/32 v2, 0x15180

    mul-long v2, v2, v0

    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 474
    .local v2, "secs":J
    invoke-virtual {p1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 475
    return-wide v2
.end method

.method public static $default$toInstant(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/Instant;
    .locals 4
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;
    .param p1, "offset"    # Lj$/time/ZoneOffset;

    .line 453
    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime;->toEpochSecond(Lj$/time/ZoneOffset;)J

    move-result-wide v0

    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/LocalTime;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static $default$with(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;

    .line 273
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Lj$/time/temporal/Temporal$-CC;->$default$with(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$with(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;

    .line 121
    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$with(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDateTime;

    .line 121
    invoke-interface {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateTime;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 5
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAccessor;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "*>;"
        }
    .end annotation

    .line 172
    instance-of v0, p0, Lj$/time/chrono/ChronoLocalDateTime;

    if-eqz v0, :cond_0

    .line 173
    move-object v0, p0

    check-cast v0, Lj$/time/chrono/ChronoLocalDateTime;

    return-object v0

    .line 175
    :cond_0
    const-string v0, "temporal"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/Chronology;

    .line 177
    .local v0, "chrono":Lj$/time/chrono/Chronology;
    if-eqz v0, :cond_1

    .line 180
    invoke-interface {v0, p0}, Lj$/time/chrono/Chronology;->localDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v1

    return-object v1

    .line 178
    :cond_1
    new-instance v1, Lj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain ChronoLocalDateTime from TemporalAccessor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic lambda$timeLineOrder$b9959cb5$1(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/chrono/ChronoLocalDateTime;)I
    .locals 5
    .param p0, "dateTime1"    # Lj$/time/chrono/ChronoLocalDateTime;
    .param p1, "dateTime2"    # Lj$/time/chrono/ChronoLocalDateTime;

    .line 141
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-interface {v2}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 142
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 143
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v3

    invoke-virtual {v3}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 145
    :cond_0
    return v0
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "*>;>;"
        }
    .end annotation

    .line 140
    new-instance v0, Lj$/time/chrono/ChronoLocalDateTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/time/chrono/ChronoLocalDateTime$$ExternalSyntheticLambda0;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method
