.class public final synthetic Lj$/time/chrono/ChronoZonedDateTime$-CC;
.super Ljava/lang/Object;
.source "ChronoZonedDateTime.java"


# direct methods
.method public static $default$compareTo(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)I
    .locals 4
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 577
    .local p1, "other":Lj$/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 578
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 579
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalTime;->getNano()I

    move-result v1

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/LocalTime;->getNano()I

    move-result v2

    sub-int v0, v1, v2

    .line 580
    if-nez v0, :cond_0

    .line 581
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v1

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/time/chrono/ChronoLocalDateTime;->compareTo(Lj$/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    .line 582
    if-nez v0, :cond_0

    .line 583
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->getZone()Lj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->getZone()Lj$/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 584
    if-nez v0, :cond_0

    .line 585
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/time/chrono/Chronology;->compareTo(Lj$/time/chrono/Chronology;)I

    move-result v0

    .line 590
    :cond_0
    return v0
.end method

.method public static bridge synthetic $default$compareTo(Lj$/time/chrono/ChronoZonedDateTime;Ljava/lang/Object;)I
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 122
    check-cast p1, Lj$/time/chrono/ChronoZonedDateTime;

    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime;->compareTo(Lj$/time/chrono/ChronoZonedDateTime;)I

    move-result p1

    return p1
.end method

.method public static $default$format(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 522
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 523
    invoke-virtual {p1, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static $default$get(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalField;)I
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 198
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lj$/time/chrono/ChronoZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 205
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/ChronoLocalDateTime;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 203
    :pswitch_0
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    return v0

    .line 201
    :pswitch_1
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$get(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static $default$getChronology(Lj$/time/chrono/ChronoZonedDateTime;)Lj$/time/chrono/Chronology;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 265
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getLong(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalField;)J
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 212
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lj$/time/chrono/ChronoZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 217
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/ChronoLocalDateTime;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 215
    :pswitch_0
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 214
    :pswitch_1
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    return-wide v0

    .line 219
    :cond_0
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static $default$isAfter(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)Z
    .locals 6
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 627
    .local p1, "other":Lj$/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 628
    .local v0, "thisEpochSec":J
    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    .line 629
    .local v2, "otherEpochSec":J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 630
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/LocalTime;->getNano()I

    move-result v4

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v5

    invoke-virtual {v5}, Lj$/time/LocalTime;->getNano()I

    move-result v5

    if-le v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 629
    :goto_1
    return v4
.end method

.method public static $default$isBefore(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)Z
    .locals 6
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 607
    .local p1, "other":Lj$/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 608
    .local v0, "thisEpochSec":J
    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    .line 609
    .local v2, "otherEpochSec":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 610
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/LocalTime;->getNano()I

    move-result v4

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v5

    invoke-virtual {v5}, Lj$/time/LocalTime;->getNano()I

    move-result v5

    if-ge v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 609
    :goto_1
    return v4
.end method

.method public static $default$isEqual(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)Z
    .locals 5
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 647
    .local p1, "other":Lj$/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 648
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalTime;->getNano()I

    move-result v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalTime;->getNano()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 647
    :goto_0
    return v0
.end method

.method public static $default$isSupported(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalUnit;)Z
    .locals 3
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 405
    instance-of v0, p1, Lj$/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 406
    sget-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 408
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

.method public static $default$minus(Lj$/time/chrono/ChronoZonedDateTime;JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 466
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lj$/time/temporal/Temporal$-CC;->$default$minus(Lj$/time/temporal/Temporal;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static $default$minus(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 456
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Lj$/time/temporal/Temporal$-CC;->$default$minus(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$minus(Lj$/time/chrono/ChronoZonedDateTime;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 122
    invoke-interface {p0, p1, p2, p3}, Lj$/time/chrono/ChronoZonedDateTime;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$minus(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 122
    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static $default$plus(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 438
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Lj$/time/temporal/Temporal$-CC;->$default$plus(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$plus(Lj$/time/chrono/ChronoZonedDateTime;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 122
    invoke-interface {p0, p1, p2, p3}, Lj$/time/chrono/ChronoZonedDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$plus(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 122
    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static $default$query(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 491
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zone()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_5

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zoneId()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->offset()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 494
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v0

    return-object v0

    .line 495
    :cond_1
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localTime()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 496
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 497
    :cond_2
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 498
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0

    .line 499
    :cond_3
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->precision()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 500
    sget-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    return-object v0

    .line 504
    :cond_4
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalQuery;->queryFrom(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 492
    :cond_5
    :goto_0
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->getZone()Lj$/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public static $default$range(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 187
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 188
    sget-object v0, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/ChronoLocalDateTime;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 189
    :cond_1
    :goto_0
    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 193
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public static $default$toEpochSecond(Lj$/time/chrono/ChronoZonedDateTime;)J
    .locals 6
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 553
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    .line 554
    .local v0, "epochDay":J
    const-wide/32 v2, 0x15180

    mul-long v2, v2, v0

    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 555
    .local v2, "secs":J
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 556
    return-wide v2
.end method

.method public static $default$toInstant(Lj$/time/chrono/ChronoZonedDateTime;)Lj$/time/Instant;
    .locals 4
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 538
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/LocalTime;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static $default$toLocalDate(Lj$/time/chrono/ChronoZonedDateTime;)Lj$/time/chrono/ChronoLocalDate;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 231
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$toLocalTime(Lj$/time/chrono/ChronoZonedDateTime;)Lj$/time/LocalTime;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 243
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static $default$with(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;

    .line 420
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Lj$/time/temporal/Temporal$-CC;->$default$with(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$with(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 122
    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$with(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 122
    invoke-interface {p0, p1, p2, p3}, Lj$/time/chrono/ChronoZonedDateTime;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 5
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAccessor;",
            ")",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "*>;"
        }
    .end annotation

    .line 173
    instance-of v0, p0, Lj$/time/chrono/ChronoZonedDateTime;

    if-eqz v0, :cond_0

    .line 174
    move-object v0, p0

    check-cast v0, Lj$/time/chrono/ChronoZonedDateTime;

    return-object v0

    .line 176
    :cond_0
    const-string v0, "temporal"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/Chronology;

    .line 178
    .local v0, "chrono":Lj$/time/chrono/Chronology;
    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v0, p0}, Lj$/time/chrono/Chronology;->zonedDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    return-object v1

    .line 179
    :cond_1
    new-instance v1, Lj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain ChronoZonedDateTime from TemporalAccessor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic lambda$timeLineOrder$f56e6d02$1(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)I
    .locals 5
    .param p0, "dateTime1"    # Lj$/time/chrono/ChronoZonedDateTime;
    .param p1, "dateTime2"    # Lj$/time/chrono/ChronoZonedDateTime;

    .line 142
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 143
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 144
    invoke-interface {p0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalTime;->getNano()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v3

    invoke-virtual {v3}, Lj$/time/LocalTime;->getNano()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 146
    :cond_0
    return v0
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "*>;>;"
        }
    .end annotation

    .line 141
    new-instance v0, Lj$/time/chrono/ChronoZonedDateTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/time/chrono/ChronoZonedDateTime$$ExternalSyntheticLambda0;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method
