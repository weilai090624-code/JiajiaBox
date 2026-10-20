.class public final synthetic Lj$/time/chrono/ChronoLocalDate$-CC;
.super Ljava/lang/Object;
.source "ChronoLocalDate.java"


# direct methods
.method public static $default$adjustInto(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 551
    sget-object v0, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public static $default$atTime(Lj$/time/chrono/ChronoLocalDate;Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "localTime"    # Lj$/time/LocalTime;

    .line 657
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->of(Lj$/time/chrono/ChronoLocalDate;Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static $default$compareTo(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)I
    .locals 4
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "other"    # Lj$/time/chrono/ChronoLocalDate;

    .line 707
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 708
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 709
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/time/chrono/Chronology;->compareTo(Lj$/time/chrono/Chronology;)I

    move-result v0

    .line 711
    :cond_0
    return v0
.end method

.method public static bridge synthetic $default$compareTo(Lj$/time/chrono/ChronoLocalDate;Ljava/lang/Object;)I
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;

    .line 241
    check-cast p1, Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoLocalDate;->compareTo(Lj$/time/chrono/ChronoLocalDate;)I

    move-result p1

    return p1
.end method

.method public static $default$format(Lj$/time/chrono/ChronoLocalDate;Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 641
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 642
    invoke-virtual {p1, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getEra(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/chrono/Era;
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;

    .line 326
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Lj$/time/chrono/ChronoLocalDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    invoke-interface {v0, v1}, Lj$/time/chrono/Chronology;->eraOf(I)Lj$/time/chrono/Era;

    move-result-object v0

    return-object v0
.end method

.method public static $default$isAfter(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)Z
    .locals 5
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "other"    # Lj$/time/chrono/ChronoLocalDate;

    .line 729
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static $default$isBefore(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)Z
    .locals 5
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "other"    # Lj$/time/chrono/ChronoLocalDate;

    .line 747
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static $default$isEqual(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)Z
    .locals 5
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "other"    # Lj$/time/chrono/ChronoLocalDate;

    .line 765
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static $default$isLeapYear(Lj$/time/chrono/ChronoLocalDate;)Z
    .locals 3
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;

    .line 341
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Lj$/time/chrono/ChronoLocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/time/chrono/Chronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public static $default$isSupported(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalField;)Z
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 387
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 388
    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    return v0

    .line 390
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static $default$isSupported(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalUnit;)Z
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 413
    instance-of v0, p1, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 414
    invoke-interface {p1}, Lj$/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v0

    return v0

    .line 416
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalUnit;->isSupportedBy(Lj$/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static $default$lengthOfYear(Lj$/time/chrono/ChronoLocalDate;)I
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;

    .line 363
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16d

    :goto_0
    return v0
.end method

.method public static $default$minus(Lj$/time/chrono/ChronoLocalDate;JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 486
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lj$/time/temporal/Temporal$-CC;->$default$minus(Lj$/time/temporal/Temporal;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$minus(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 475
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Lj$/time/temporal/Temporal$-CC;->$default$minus(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$minus(Lj$/time/chrono/ChronoLocalDate;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;

    .line 241
    invoke-interface {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDate;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$minus(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;

    .line 241
    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoLocalDate;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public static $default$plus(Lj$/time/chrono/ChronoLocalDate;JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 3
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 462
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-nez v0, :cond_0

    .line 465
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->addTo(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 463
    :cond_0
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static $default$plus(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 452
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Lj$/time/temporal/Temporal$-CC;->$default$plus(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$plus(Lj$/time/chrono/ChronoLocalDate;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;

    .line 241
    invoke-interface {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$plus(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;

    .line 241
    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoLocalDate;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public static $default$query(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;

    .line 511
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zoneId()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zone()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->offset()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localTime()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 514
    return-object v1

    .line 515
    :cond_1
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 516
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0

    .line 517
    :cond_2
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->precision()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 518
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    return-object v0

    .line 522
    :cond_3
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalQuery;->queryFrom(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 512
    :cond_4
    :goto_0
    return-object v1
.end method

.method public static $default$toEpochDay(Lj$/time/chrono/ChronoLocalDate;)J
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;

    .line 673
    sget-object v0, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Lj$/time/chrono/ChronoLocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static $default$with(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;

    .line 428
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Lj$/time/temporal/Temporal$-CC;->$default$with(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$with(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;
    .locals 3
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 439
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-nez v0, :cond_0

    .line 442
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/TemporalField;->adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 440
    :cond_0
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bridge synthetic $default$with(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;

    .line 241
    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoLocalDate;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$with(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoLocalDate;

    .line 241
    invoke-interface {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;
    .locals 5
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 288
    instance-of v0, p0, Lj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    .line 289
    move-object v0, p0

    check-cast v0, Lj$/time/chrono/ChronoLocalDate;

    return-object v0

    .line 291
    :cond_0
    const-string v0, "temporal"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 292
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/Chronology;

    .line 293
    .local v0, "chrono":Lj$/time/chrono/Chronology;
    if-eqz v0, :cond_1

    .line 296
    invoke-interface {v0, p0}, Lj$/time/chrono/Chronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 294
    :cond_1
    new-instance v1, Lj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain ChronoLocalDate from TemporalAccessor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic lambda$timeLineOrder$493d4938$1(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)I
    .locals 4
    .param p0, "date1"    # Lj$/time/chrono/ChronoLocalDate;
    .param p1, "date2"    # Lj$/time/chrono/ChronoLocalDate;

    .line 261
    invoke-interface {p0}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lj$/time/chrono/ChronoLocalDate;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Lj$/time/chrono/ChronoLocalDate$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/time/chrono/ChronoLocalDate$$ExternalSyntheticLambda0;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method
