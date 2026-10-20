.class public final Lj$/time/chrono/JapaneseChronology;
.super Lj$/time/chrono/AbstractChronology;
.source "JapaneseChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lj$/time/chrono/JapaneseChronology;

.field private static final serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lj$/time/chrono/JapaneseChronology;

    invoke-direct {v0}, Lj$/time/chrono/JapaneseChronology;-><init>()V

    sput-object v0, Lj$/time/chrono/JapaneseChronology;->INSTANCE:Lj$/time/chrono/JapaneseChronology;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Lj$/time/chrono/AbstractChronology;-><init>()V

    .line 144
    return-void
.end method

.method private prolepticYearLenient(Lj$/time/chrono/JapaneseEra;I)I
    .locals 1
    .param p1, "era"    # Lj$/time/chrono/JapaneseEra;
    .param p2, "yearOfEra"    # I

    .line 475
    invoke-virtual {p1}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 547
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resolveYD(Lj$/time/chrono/JapaneseEra;ILjava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .locals 5
    .param p1, "era"    # Lj$/time/chrono/JapaneseEra;
    .param p2, "yoe"    # I
    .param p4, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/chrono/JapaneseEra;",
            "I",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 512
    .local p3, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    if-ne p4, v0, :cond_0

    .line 515
    invoke-direct {p0, p1, p2}, Lj$/time/chrono/JapaneseChronology;->prolepticYearLenient(Lj$/time/chrono/JapaneseEra;I)I

    move-result v0

    .line 516
    .local v0, "y":I
    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v1

    .line 517
    .local v1, "days":J
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lj$/time/chrono/JapaneseChronology;->dateYearDay(II)Lj$/time/chrono/JapaneseDate;

    move-result-object v3

    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v3, v1, v2, v4}, Lj$/time/chrono/JapaneseDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/JapaneseDate;

    move-result-object v3

    return-object v3

    .line 519
    .end local v0    # "y":I
    .end local v1    # "days":J
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lj$/time/chrono/JapaneseChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    .line 520
    .local v0, "doy":I
    invoke-virtual {p0, p1, p2, v0}, Lj$/time/chrono/JapaneseChronology;->dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1
.end method

.method private resolveYMD(Lj$/time/chrono/JapaneseEra;ILjava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .locals 8
    .param p1, "era"    # Lj$/time/chrono/JapaneseEra;
    .param p2, "yoe"    # I
    .param p4, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/chrono/JapaneseEra;",
            "I",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 479
    .local p3, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    const/4 v1, 0x1

    if-ne p4, v0, :cond_0

    .line 482
    invoke-direct {p0, p1, p2}, Lj$/time/chrono/JapaneseChronology;->prolepticYearLenient(Lj$/time/chrono/JapaneseEra;I)I

    move-result v0

    .line 483
    .local v0, "y":I
    sget-object v2, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v2

    .line 484
    .local v2, "months":J
    sget-object v6, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v4

    .line 485
    .local v4, "days":J
    invoke-virtual {p0, v0, v1, v1}, Lj$/time/chrono/JapaneseChronology;->date(III)Lj$/time/chrono/JapaneseDate;

    move-result-object v1

    sget-object v6, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2, v3, v6}, Lj$/time/chrono/JapaneseDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/JapaneseDate;

    move-result-object v1

    sget-object v6, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1, v4, v5, v6}, Lj$/time/chrono/JapaneseDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1

    .line 487
    .end local v0    # "y":I
    .end local v2    # "months":J
    .end local v4    # "days":J
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lj$/time/chrono/JapaneseChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v2, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, v2, v3, v4}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    .line 488
    .local v0, "moy":I
    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Lj$/time/chrono/JapaneseChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v2

    sget-object v3, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p3, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v4, v5}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v2

    .line 489
    .local v2, "dom":I
    sget-object v3, Lj$/time/format/ResolverStyle;->SMART:Lj$/time/format/ResolverStyle;

    if-ne p4, v3, :cond_4

    .line 490
    if-lt p2, v1, :cond_3

    .line 493
    invoke-direct {p0, p1, p2}, Lj$/time/chrono/JapaneseChronology;->prolepticYearLenient(Lj$/time/chrono/JapaneseEra;I)I

    move-result v3

    .line 496
    .local v3, "y":I
    :try_start_0
    invoke-virtual {p0, v3, v0, v2}, Lj$/time/chrono/JapaneseChronology;->date(III)Lj$/time/chrono/JapaneseDate;

    move-result-object v4
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .local v4, "result":Lj$/time/chrono/JapaneseDate;
    goto :goto_0

    .line 497
    .end local v4    # "result":Lj$/time/chrono/JapaneseDate;
    :catch_0
    move-exception v4

    .line 498
    .local v4, "ex":Lj$/time/DateTimeException;
    invoke-virtual {p0, v3, v0, v1}, Lj$/time/chrono/JapaneseChronology;->date(III)Lj$/time/chrono/JapaneseDate;

    move-result-object v5

    invoke-static {}, Lj$/time/temporal/TemporalAdjusters;->lastDayOfMonth()Lj$/time/temporal/TemporalAdjuster;

    move-result-object v6

    invoke-virtual {v5, v6}, Lj$/time/chrono/JapaneseDate;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/JapaneseDate;

    move-result-object v5

    move-object v4, v5

    .line 503
    .local v4, "result":Lj$/time/chrono/JapaneseDate;
    :goto_0
    invoke-virtual {v4}, Lj$/time/chrono/JapaneseDate;->getEra()Lj$/time/chrono/JapaneseEra;

    move-result-object v5

    if-eq v5, p1, :cond_2

    sget-object v5, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {v4, v5}, Lj$/time/chrono/JapaneseDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v5

    if-le v5, v1, :cond_2

    if-gt p2, v1, :cond_1

    goto :goto_1

    .line 504
    :cond_1
    new-instance v1, Lj$/time/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid YearOfEra for Era: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_2
    :goto_1
    return-object v4

    .line 491
    .end local v3    # "y":I
    .end local v4    # "result":Lj$/time/chrono/JapaneseDate;
    :cond_3
    new-instance v1, Lj$/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid YearOfEra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :cond_4
    invoke-virtual {p0, p1, p2, v0, v2}, Lj$/time/chrono/JapaneseChronology;->date(Lj$/time/chrono/Era;III)Lj$/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic date(III)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/JapaneseChronology;->date(III)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lj$/time/chrono/Era;III)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2, p3, p4}, Lj$/time/chrono/JapaneseChronology;->date(Lj$/time/chrono/Era;III)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lj$/time/chrono/JapaneseChronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public date(III)Lj$/time/chrono/JapaneseDate;
    .locals 2
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 224
    new-instance v0, Lj$/time/chrono/JapaneseDate;

    invoke-static {p1, p2, p3}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/chrono/JapaneseDate;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public date(Lj$/time/chrono/Era;III)Lj$/time/chrono/JapaneseDate;
    .locals 2
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 203
    instance-of v0, p1, Lj$/time/chrono/JapaneseEra;

    if-eqz v0, :cond_0

    .line 206
    move-object v0, p1

    check-cast v0, Lj$/time/chrono/JapaneseEra;

    invoke-static {v0, p2, p3, p4}, Lj$/time/chrono/JapaneseDate;->of(Lj$/time/chrono/JapaneseEra;III)Lj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be JapaneseEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/JapaneseDate;
    .locals 2
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 301
    instance-of v0, p1, Lj$/time/chrono/JapaneseDate;

    if-eqz v0, :cond_0

    .line 302
    move-object v0, p1

    check-cast v0, Lj$/time/chrono/JapaneseDate;

    return-object v0

    .line 304
    :cond_0
    new-instance v0, Lj$/time/chrono/JapaneseDate;

    invoke-static {p1}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/chrono/JapaneseDate;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateEpochDay(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/JapaneseChronology;->dateEpochDay(J)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public dateEpochDay(J)Lj$/time/chrono/JapaneseDate;
    .locals 2
    .param p1, "epochDay"    # J

    .line 281
    new-instance v0, Lj$/time/chrono/JapaneseDate;

    invoke-static {p1, p2}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/chrono/JapaneseDate;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateNow()Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseChronology;->dateNow()Lj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Lj$/time/Clock;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lj$/time/chrono/JapaneseChronology;->dateNow(Lj$/time/Clock;)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateNow(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lj$/time/chrono/JapaneseChronology;->dateNow(Lj$/time/ZoneId;)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public dateNow()Lj$/time/chrono/JapaneseDate;
    .locals 1

    .line 286
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/chrono/JapaneseChronology;->dateNow(Lj$/time/Clock;)Lj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Lj$/time/Clock;)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "clock"    # Lj$/time/Clock;

    .line 296
    invoke-static {p1}, Lj$/time/LocalDate;->now(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/chrono/JapaneseChronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Lj$/time/ZoneId;)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 291
    invoke-static {p1}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/chrono/JapaneseChronology;->dateNow(Lj$/time/Clock;)Lj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/JapaneseChronology;->dateYearDay(II)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/JapaneseChronology;->dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(II)Lj$/time/chrono/JapaneseDate;
    .locals 2
    .param p1, "prolepticYear"    # I
    .param p2, "dayOfYear"    # I

    .line 269
    new-instance v0, Lj$/time/chrono/JapaneseDate;

    invoke-static {p1, p2}, Lj$/time/LocalDate;->ofYearDay(II)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/chrono/JapaneseDate;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .line 251
    move-object v0, p1

    check-cast v0, Lj$/time/chrono/JapaneseEra;

    invoke-static {v0, p2, p3}, Lj$/time/chrono/JapaneseDate;->ofYearDay(Lj$/time/chrono/JapaneseEra;II)Lj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic eraOf(I)Lj$/time/chrono/Era;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lj$/time/chrono/JapaneseChronology;->eraOf(I)Lj$/time/chrono/JapaneseEra;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Lj$/time/chrono/JapaneseEra;
    .locals 1
    .param p1, "eraValue"    # I

    .line 382
    invoke-static {p1}, Lj$/time/chrono/JapaneseEra;->of(I)Lj$/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0
.end method

.method public eras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/time/chrono/Era;",
            ">;"
        }
    .end annotation

    .line 387
    invoke-static {}, Lj$/time/chrono/JapaneseEra;->values()[Lj$/time/chrono/JapaneseEra;

    move-result-object v0

    invoke-static {v0}, Lj$/time/Duration$DurationUnits$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    .line 175
    const-string v0, "japanese"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 158
    const-string v0, "Japanese"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 1
    .param p1, "prolepticYear"    # J

    .line 338
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-virtual {v0, p1, p2}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public localDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAccessor;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "Lj$/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .line 310
    invoke-super {p0, p1}, Lj$/time/chrono/AbstractChronology;->localDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public prolepticYear(Lj$/time/chrono/Era;I)I
    .locals 4
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I

    .line 343
    instance-of v0, p1, Lj$/time/chrono/JapaneseEra;

    if-eqz v0, :cond_2

    .line 347
    move-object v0, p1

    check-cast v0, Lj$/time/chrono/JapaneseEra;

    .line 350
    .local v0, "jera":Lj$/time/chrono/JapaneseEra;
    invoke-virtual {v0}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalDate;->getYear()I

    move-result v1

    add-int/2addr v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 351
    .local v1, "gregorianYear":I
    if-ne p2, v2, :cond_0

    .line 352
    return v1

    .line 354
    :cond_0
    const v3, -0x3b9ac9ff

    if-lt v1, v3, :cond_1

    const v3, 0x3b9ac9ff

    if-gt v1, v3, :cond_1

    .line 361
    invoke-virtual {v0}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lj$/time/LocalDate;->getYear()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 362
    invoke-static {v1, v2, v2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v2

    invoke-static {v2}, Lj$/time/chrono/JapaneseEra;->from(Lj$/time/LocalDate;)Lj$/time/chrono/JapaneseEra;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 363
    return v1

    .line 366
    :cond_1
    new-instance v2, Lj$/time/DateTimeException;

    const-string v3, "Invalid yearOfEra value"

    invoke-direct {v2, v3}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 344
    .end local v0    # "jera":Lj$/time/chrono/JapaneseEra;
    .end local v1    # "gregorianYear":I
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be JapaneseEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;
    .locals 7
    .param p1, "field"    # Lj$/time/temporal/ChronoField;

    .line 400
    sget-object v0, Lj$/time/chrono/JapaneseChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {p1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 431
    invoke-virtual {p1}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 429
    :pswitch_0
    sget-object v0, Lj$/time/chrono/JapaneseEra;->MEIJI:Lj$/time/chrono/JapaneseEra;

    invoke-virtual {v0}, Lj$/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lj$/time/chrono/JapaneseEra;->getCurrentEra()Lj$/time/chrono/JapaneseEra;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/chrono/JapaneseEra;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 425
    :pswitch_1
    sget-object v0, Lj$/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 422
    :pswitch_2
    invoke-static {}, Lj$/time/chrono/JapaneseEra;->shortestDaysOfYear()J

    move-result-wide v3

    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    const-wide/16 v1, 0x1

    invoke-static/range {v1 .. v6}, Lj$/time/temporal/ValueRange;->of(JJJ)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 413
    :pswitch_3
    invoke-static {}, Lj$/time/chrono/JapaneseEra;->getCurrentEra()Lj$/time/chrono/JapaneseEra;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    .line 414
    .local v0, "startYear":I
    invoke-static {}, Lj$/time/chrono/JapaneseEra;->shortestYearsOfEra()J

    move-result-wide v3

    const v1, 0x3b9ac9ff

    sub-int/2addr v1, v0

    int-to-long v5, v1

    const-wide/16 v1, 0x1

    invoke-static/range {v1 .. v6}, Lj$/time/temporal/ValueRange;->of(JJJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 405
    .end local v0    # "startYear":I
    :pswitch_4
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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/JapaneseChronology;->resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p2, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/JapaneseDate;"
        }
    .end annotation

    .line 438
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Lj$/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method resolveYearOfEra(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .locals 8
    .param p2, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 444
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 445
    .local v0, "eraLong":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 446
    .local v1, "era":Lj$/time/chrono/JapaneseEra;
    if-eqz v0, :cond_0

    .line 447
    sget-object v2, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Lj$/time/chrono/JapaneseChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v4, v5}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v2

    invoke-virtual {p0, v2}, Lj$/time/chrono/JapaneseChronology;->eraOf(I)Lj$/time/chrono/JapaneseEra;

    move-result-object v1

    .line 449
    :cond_0
    sget-object v2, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 450
    .local v2, "yoeLong":Ljava/lang/Long;
    const/4 v3, 0x0

    .line 451
    .local v3, "yoe":I
    if-eqz v2, :cond_1

    .line 452
    sget-object v4, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Lj$/time/chrono/JapaneseChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {v4, v5, v6, v7}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v3

    .line 455
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    sget-object v4, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    if-eq p2, v4, :cond_2

    .line 456
    invoke-static {}, Lj$/time/chrono/JapaneseEra;->values()[Lj$/time/chrono/JapaneseEra;

    move-result-object v4

    invoke-static {}, Lj$/time/chrono/JapaneseEra;->values()[Lj$/time/chrono/JapaneseEra;

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v1, v4, v5

    .line 459
    :cond_2
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 460
    sget-object v4, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 461
    sget-object v4, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 462
    invoke-direct {p0, v1, v3, p1, p2}, Lj$/time/chrono/JapaneseChronology;->resolveYMD(Lj$/time/chrono/JapaneseEra;ILjava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    .line 465
    :cond_3
    sget-object v4, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 466
    invoke-direct {p0, v1, v3, p1, p2}, Lj$/time/chrono/JapaneseChronology;->resolveYD(Lj$/time/chrono/JapaneseEra;ILjava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    .line 469
    :cond_4
    const/4 v4, 0x0

    return-object v4
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 537
    invoke-super {p0}, Lj$/time/chrono/AbstractChronology;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "instant"    # Lj$/time/Instant;
    .param p2, "zone"    # Lj$/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/Instant;",
            "Lj$/time/ZoneId;",
            ")",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "Lj$/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .line 322
    invoke-super {p0, p1, p2}, Lj$/time/chrono/AbstractChronology;->zonedDateTime(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAccessor;",
            ")",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "Lj$/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .line 316
    invoke-super {p0, p1}, Lj$/time/chrono/AbstractChronology;->zonedDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method
