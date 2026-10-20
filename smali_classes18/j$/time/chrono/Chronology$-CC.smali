.class public final synthetic Lj$/time/chrono/Chronology$-CC;
.super Ljava/lang/Object;
.source "Chronology.java"


# direct methods
.method public static bridge synthetic $default$compareTo(Lj$/time/chrono/Chronology;Ljava/lang/Object;)I
    .locals 0
    .param p0, "_this"    # Lj$/time/chrono/Chronology;

    .line 163
    check-cast p1, Lj$/time/chrono/Chronology;

    invoke-interface {p0, p1}, Lj$/time/chrono/Chronology;->compareTo(Lj$/time/chrono/Chronology;)I

    move-result p1

    return p1
.end method

.method public static $default$date(Lj$/time/chrono/Chronology;Lj$/time/chrono/Era;III)Lj$/time/chrono/ChronoLocalDate;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/Chronology;
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 317
    invoke-interface {p0, p1, p2}, Lj$/time/chrono/Chronology;->prolepticYear(Lj$/time/chrono/Era;I)I

    move-result v0

    invoke-interface {p0, v0, p3, p4}, Lj$/time/chrono/Chronology;->date(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$dateNow(Lj$/time/chrono/Chronology;)Lj$/time/chrono/ChronoLocalDate;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/Chronology;

    .line 391
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/chrono/Chronology;->dateNow(Lj$/time/Clock;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$dateNow(Lj$/time/chrono/Chronology;Lj$/time/Clock;)Lj$/time/chrono/ChronoLocalDate;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/Chronology;
    .param p1, "clock"    # Lj$/time/Clock;

    .line 429
    const-string v0, "clock"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 430
    invoke-static {p1}, Lj$/time/LocalDate;->now(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/chrono/Chronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$dateNow(Lj$/time/chrono/Chronology;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoLocalDate;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/Chronology;
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 411
    invoke-static {p1}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/chrono/Chronology;->dateNow(Lj$/time/Clock;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$dateYearDay(Lj$/time/chrono/Chronology;Lj$/time/chrono/Era;II)Lj$/time/chrono/ChronoLocalDate;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/Chronology;
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .line 348
    invoke-interface {p0, p1, p2}, Lj$/time/chrono/Chronology;->prolepticYear(Lj$/time/chrono/Era;I)I

    move-result v0

    invoke-interface {p0, v0, p3}, Lj$/time/chrono/Chronology;->dateYearDay(II)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$epochSecond(Lj$/time/chrono/Chronology;IIIIIILj$/time/ZoneOffset;)J
    .locals 6
    .param p0, "_this"    # Lj$/time/chrono/Chronology;
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "zoneOffset"    # Lj$/time/ZoneOffset;

    .line 741
    const-string v0, "zoneOffset"

    invoke-static {p7, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 742
    sget-object v0, Lj$/time/temporal/ChronoField;->HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 743
    sget-object v0, Lj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p5

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 744
    sget-object v0, Lj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Lj$/time/temporal/ChronoField;

    int-to-long v1, p6

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 745
    invoke-interface {p0, p1, p2, p3}, Lj$/time/chrono/Chronology;->date(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    const v2, 0x15180

    invoke-static {v0, v1, v2}, Lj$/time/chrono/Chronology$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    .line 746
    .local v0, "daysInSec":J
    mul-int/lit8 v2, p4, 0x3c

    add-int/2addr v2, p5

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, p6

    int-to-long v2, v2

    .line 747
    .local v2, "timeinSec":J
    invoke-virtual {p7}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long v4, v2, v4

    invoke-static {v0, v1, v4, v5}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public static $default$epochSecond(Lj$/time/chrono/Chronology;Lj$/time/chrono/Era;IIIIIILj$/time/ZoneOffset;)J
    .locals 10
    .param p0, "_this"    # Lj$/time/chrono/Chronology;
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I
    .param p5, "hour"    # I
    .param p6, "minute"    # I
    .param p7, "second"    # I
    .param p8, "zoneOffset"    # Lj$/time/ZoneOffset;

    .line 770
    const-string v0, "era"

    move-object v1, p1

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 771
    invoke-interface {p0, p1, p2}, Lj$/time/chrono/Chronology;->prolepticYear(Lj$/time/chrono/Era;I)I

    move-result v3

    move-object v2, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v2 .. v9}, Lj$/time/chrono/Chronology;->epochSecond(IIIIIILj$/time/ZoneOffset;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static $default$getDisplayName(Lj$/time/chrono/Chronology;Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "_this"    # Lj$/time/chrono/Chronology;
    .param p1, "style"    # Lj$/time/format/TextStyle;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 646
    new-instance v0, Lj$/time/chrono/Chronology$1;

    invoke-direct {v0, p0}, Lj$/time/chrono/Chronology$1;-><init>(Lj$/time/chrono/Chronology;)V

    .line 664
    .local v0, "temporal":Lj$/time/temporal/TemporalAccessor;
    new-instance v1, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v1}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lj$/time/format/DateTimeFormatterBuilder;->appendChronologyText(Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static $default$localDateTime(Lj$/time/chrono/Chronology;Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 5
    .param p0, "_this"    # Lj$/time/chrono/Chronology;
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 477
    :try_start_0
    invoke-interface {p0, p1}, Lj$/time/chrono/Chronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-static {p1}, Lj$/time/LocalTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/time/chrono/ChronoLocalDate;->atTime(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "ex":Lj$/time/DateTimeException;
    new-instance v1, Lj$/time/DateTimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-direct {v1, v2, v0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static $default$period(Lj$/time/chrono/Chronology;III)Lj$/time/chrono/ChronoPeriod;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/Chronology;
    .param p1, "years"    # I
    .param p2, "months"    # I
    .param p3, "days"    # I

    .line 717
    new-instance v0, Lj$/time/chrono/ChronoPeriodImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/time/chrono/ChronoPeriodImpl;-><init>(Lj$/time/chrono/Chronology;III)V

    return-object v0
.end method

.method public static $default$zonedDateTime(Lj$/time/chrono/Chronology;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 1
    .param p0, "_this"    # Lj$/time/chrono/Chronology;
    .param p1, "instant"    # Lj$/time/Instant;
    .param p2, "zone"    # Lj$/time/ZoneId;

    .line 534
    invoke-static {p0, p1, p2}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->ofInstant(Lj$/time/chrono/Chronology;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static $default$zonedDateTime(Lj$/time/chrono/Chronology;Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 5
    .param p0, "_this"    # Lj$/time/chrono/Chronology;
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 509
    :try_start_0
    invoke-static {p1}, Lj$/time/ZoneId;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZoneId;

    move-result-object v0
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 511
    .local v0, "zone":Lj$/time/ZoneId;
    :try_start_1
    invoke-static {p1}, Lj$/time/Instant;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    move-result-object v1

    .line 512
    .local v1, "instant":Lj$/time/Instant;
    invoke-interface {p0, v1, v0}, Lj$/time/chrono/Chronology;->zonedDateTime(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v2
    :try_end_1
    .catch Lj$/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 514
    .end local v1    # "instant":Lj$/time/Instant;
    :catch_0
    move-exception v1

    .line 515
    .local v1, "ex1":Lj$/time/DateTimeException;
    :try_start_2
    invoke-interface {p0, p1}, Lj$/time/chrono/Chronology;->localDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-static {p0, v2}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    .line 516
    .local v2, "cldt":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<*>;"
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Lj$/time/chrono/ChronoLocalDateTimeImpl;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v3
    :try_end_2
    .catch Lj$/time/DateTimeException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    .line 518
    .end local v0    # "zone":Lj$/time/ZoneId;
    .end local v1    # "ex1":Lj$/time/DateTimeException;
    .end local v2    # "cldt":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<*>;"
    :catch_1
    move-exception v0

    .line 519
    .local v0, "ex":Lj$/time/DateTimeException;
    new-instance v1, Lj$/time/DateTimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-direct {v1, v2, v0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/Chronology;
    .locals 2
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 183
    const-string v0, "temporal"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/Chronology;

    .line 185
    .local v0, "obj":Lj$/time/chrono/Chronology;
    sget-object v1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/chrono/Chronology;

    return-object v1
.end method

.method public static getAvailableChronologies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lj$/time/chrono/Chronology;",
            ">;"
        }
    .end annotation

    .line 269
    invoke-static {}, Lj$/time/chrono/AbstractChronology;->getAvailableChronologies()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lj$/time/chrono/Chronology;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 255
    invoke-static {p0}, Lj$/time/chrono/AbstractChronology;->of(Ljava/lang/String;)Lj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public static ofLocale(Ljava/util/Locale;)Lj$/time/chrono/Chronology;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 230
    invoke-static {p0}, Lj$/time/chrono/AbstractChronology;->ofLocale(Ljava/util/Locale;)Lj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method
