.class public final Lj$/time/chrono/IsoChronology;
.super Lj$/time/chrono/AbstractChronology;
.source "IsoChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DAYS_0000_TO_1970:J = 0xafaa8L

.field public static final INSTANCE:Lj$/time/chrono/IsoChronology;

.field private static final serialVersionUID:J = -0x13fd57b046d9ef27L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Lj$/time/chrono/IsoChronology;

    invoke-direct {v0}, Lj$/time/chrono/IsoChronology;-><init>()V

    sput-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Lj$/time/chrono/AbstractChronology;-><init>()V

    .line 144
    return-void
.end method

.method private numberOfDaysOfMonth(II)I
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 341
    sparse-switch p2, :sswitch_data_0

    .line 352
    const/16 v0, 0x1f

    .local v0, "dom":I
    goto :goto_1

    .line 349
    .end local v0    # "dom":I
    :sswitch_0
    const/16 v0, 0x1e

    .line 350
    .restart local v0    # "dom":I
    goto :goto_1

    .line 343
    .end local v0    # "dom":I
    :sswitch_1
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    .line 344
    .restart local v0    # "dom":I
    :goto_0
    nop

    .line 355
    :goto_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x9 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 704
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public date(III)Lj$/time/LocalDate;
    .locals 1
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 210
    invoke-static {p1, p2, p3}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Lj$/time/chrono/Era;III)Lj$/time/LocalDate;
    .locals 1
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 193
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/IsoChronology;->prolepticYear(Lj$/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Lj$/time/chrono/IsoChronology;->date(III)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 268
    invoke-static {p1}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic date(III)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/IsoChronology;->date(III)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lj$/time/chrono/Era;III)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2, p3, p4}, Lj$/time/chrono/IsoChronology;->date(Lj$/time/chrono/Era;III)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lj$/time/chrono/IsoChronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public dateEpochDay(J)Lj$/time/LocalDate;
    .locals 1
    .param p1, "epochDay"    # J

    .line 253
    invoke-static {p1, p2}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateEpochDay(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/IsoChronology;->dateEpochDay(J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public dateNow()Lj$/time/LocalDate;
    .locals 1

    .line 417
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/chrono/IsoChronology;->dateNow(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Lj$/time/Clock;)Lj$/time/LocalDate;
    .locals 1
    .param p1, "clock"    # Lj$/time/Clock;

    .line 450
    const-string v0, "clock"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 451
    invoke-static {p1}, Lj$/time/LocalDate;->now(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/chrono/IsoChronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Lj$/time/ZoneId;)Lj$/time/LocalDate;
    .locals 1
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 434
    invoke-static {p1}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/chrono/IsoChronology;->dateNow(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow()Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lj$/time/chrono/IsoChronology;->dateNow()Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Lj$/time/Clock;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lj$/time/chrono/IsoChronology;->dateNow(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateNow(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lj$/time/chrono/IsoChronology;->dateNow(Lj$/time/ZoneId;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(II)Lj$/time/LocalDate;
    .locals 1
    .param p1, "prolepticYear"    # I
    .param p2, "dayOfYear"    # I

    .line 239
    invoke-static {p1, p2}, Lj$/time/LocalDate;->ofYearDay(II)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/LocalDate;
    .locals 1
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .line 224
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/IsoChronology;->prolepticYear(Lj$/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lj$/time/chrono/IsoChronology;->dateYearDay(II)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/IsoChronology;->dateYearDay(II)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/IsoChronology;->dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public epochSecond(IIIIIILj$/time/ZoneOffset;)J
    .locals 16
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "zoneOffset"    # Lj$/time/ZoneOffset;

    .line 293
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    sget-object v6, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 294
    sget-object v6, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 295
    sget-object v6, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    int-to-long v7, v2

    invoke-virtual {v6, v7, v8}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 296
    sget-object v6, Lj$/time/temporal/ChronoField;->HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    int-to-long v7, v3

    invoke-virtual {v6, v7, v8}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 297
    sget-object v6, Lj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Lj$/time/temporal/ChronoField;

    int-to-long v7, v4

    invoke-virtual {v6, v7, v8}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 298
    sget-object v6, Lj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Lj$/time/temporal/ChronoField;

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 299
    const-string v6, "zoneOffset"

    move-object/from16 v7, p7

    invoke-static {v7, v6}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    const/16 v6, 0x1c

    if-le v2, v6, :cond_1

    .line 301
    invoke-direct/range {p0 .. p2}, Lj$/time/chrono/IsoChronology;->numberOfDaysOfMonth(II)I

    move-result v6

    .line 302
    .local v6, "dom":I
    if-le v2, v6, :cond_1

    .line 303
    const/16 v8, 0x1d

    if-ne v2, v8, :cond_0

    .line 304
    new-instance v8, Lj$/time/DateTimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid date \'February 29\' as \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' is not a leap year"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 306
    :cond_0
    new-instance v8, Lj$/time/DateTimeException;

    invoke-static/range {p2 .. p2}, Lj$/time/Month;->of(I)Lj$/time/Month;

    move-result-object v9

    invoke-virtual {v9}, Lj$/time/Month;->name()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid date \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 311
    .end local v6    # "dom":I
    :cond_1
    const-wide/16 v8, 0x0

    .line 312
    .local v8, "totalDays":J
    const/4 v6, 0x0

    .line 313
    .local v6, "timeinSec":I
    const-wide/16 v10, 0x16d

    int-to-long v12, v0

    mul-long v12, v12, v10

    add-long/2addr v8, v12

    .line 314
    if-ltz v0, :cond_2

    .line 315
    int-to-long v10, v0

    const-wide/16 v12, 0x3

    add-long/2addr v10, v12

    const-wide/16 v12, 0x4

    div-long/2addr v10, v12

    int-to-long v12, v0

    const-wide/16 v14, 0x63

    add-long/2addr v12, v14

    const-wide/16 v14, 0x64

    div-long/2addr v12, v14

    sub-long/2addr v10, v12

    int-to-long v12, v0

    const-wide/16 v14, 0x18f

    add-long/2addr v12, v14

    const-wide/16 v14, 0x190

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    goto :goto_0

    .line 317
    :cond_2
    div-int/lit8 v10, v0, -0x4

    div-int/lit8 v11, v0, -0x64

    sub-int/2addr v10, v11

    div-int/lit16 v11, v0, -0x190

    add-int/2addr v10, v11

    int-to-long v10, v10

    sub-long/2addr v8, v10

    .line 319
    :goto_0
    mul-int/lit16 v10, v1, 0x16f

    add-int/lit16 v10, v10, -0x16a

    div-int/lit8 v10, v10, 0xc

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 320
    add-int/lit8 v10, v2, -0x1

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 321
    const/4 v10, 0x2

    if-le v1, v10, :cond_3

    .line 322
    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    .line 323
    sget-object v12, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    int-to-long v13, v0

    invoke-virtual {v12, v13, v14}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v12

    if-nez v12, :cond_3

    .line 324
    sub-long/2addr v8, v10

    .line 327
    :cond_3
    const-wide/32 v10, 0xafaa8

    sub-long/2addr v8, v10

    .line 328
    mul-int/lit8 v10, v3, 0x3c

    add-int/2addr v10, v4

    mul-int/lit8 v10, v10, 0x3c

    add-int/2addr v10, v5

    .line 329
    .end local v6    # "timeinSec":I
    .local v10, "timeinSec":I
    const-wide/32 v11, 0x15180

    invoke-static {v8, v9, v11, v12}, Lj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    sub-int v6, v10, v6

    int-to-long v13, v6

    invoke-static {v11, v12, v13, v14}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v11

    return-wide v11
.end method

.method public bridge synthetic eraOf(I)Lj$/time/chrono/Era;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lj$/time/chrono/IsoChronology;->eraOf(I)Lj$/time/chrono/IsoEra;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Lj$/time/chrono/IsoEra;
    .locals 1
    .param p1, "eraValue"    # I

    .line 489
    invoke-static {p1}, Lj$/time/chrono/IsoEra;->of(I)Lj$/time/chrono/IsoEra;

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

    .line 494
    invoke-static {}, Lj$/time/chrono/IsoEra;->values()[Lj$/time/chrono/IsoEra;

    move-result-object v0

    invoke-static {v0}, Lj$/time/Duration$DurationUnits$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    .line 175
    const-string v0, "iso8601"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 158
    const-string v0, "ISO"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 5
    .param p1, "prolepticYear"    # J

    .line 476
    const-wide/16 v0, 0x3

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 v0, 0x64

    rem-long v0, p1, v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x190

    rem-long v0, p1, v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public localDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDateTime;
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 370
    invoke-static {p1}, Lj$/time/LocalDateTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic localDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lj$/time/chrono/IsoChronology;->localDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public period(III)Lj$/time/Period;
    .locals 1
    .param p1, "years"    # I
    .param p2, "months"    # I
    .param p3, "days"    # I

    .line 677
    invoke-static {p1, p2, p3}, Lj$/time/Period;->of(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic period(III)Lj$/time/chrono/ChronoPeriod;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/IsoChronology;->period(III)Lj$/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public prolepticYear(Lj$/time/chrono/Era;I)I
    .locals 2
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I

    .line 481
    instance-of v0, p1, Lj$/time/chrono/IsoEra;

    if-eqz v0, :cond_1

    .line 484
    sget-object v0, Lj$/time/chrono/IsoEra;->CE:Lj$/time/chrono/IsoEra;

    if-ne p1, v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, p2, 0x1

    :goto_0
    return v0

    .line 482
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be IsoEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/ChronoField;

    .line 659
    invoke-virtual {p1}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/LocalDate;
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
            "Lj$/time/LocalDate;"
        }
    .end annotation

    .line 585
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Lj$/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/IsoChronology;->resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method resolveProlepticMonth(Ljava/util/Map;Lj$/time/format/ResolverStyle;)V
    .locals 5
    .param p2, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")V"
        }
    .end annotation

    .line 590
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Lj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 591
    .local v0, "pMonth":Ljava/lang/Long;
    if-eqz v0, :cond_1

    .line 592
    sget-object v1, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    if-eq p2, v1, :cond_0

    .line 593
    sget-object v1, Lj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 595
    :cond_0
    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Lj$/time/chrono/IsoChronology$$ExternalSyntheticBackport0;->m(JI)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, p1, v1, v2, v3}, Lj$/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Lj$/time/temporal/ChronoField;J)V

    .line 596
    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lj$/time/chrono/IsoChronology$$ExternalSyntheticBackport1;->m(JI)J

    move-result-wide v2

    invoke-virtual {p0, p1, v1, v2, v3}, Lj$/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Lj$/time/temporal/ChronoField;J)V

    .line 598
    :cond_1
    return-void
.end method

.method resolveYMD(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/LocalDate;
    .locals 7
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
            "Lj$/time/LocalDate;"
        }
    .end annotation

    .line 637
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 638
    .local v0, "y":I
    sget-object v1, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    if-ne p2, v1, :cond_0

    .line 639
    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v1

    .line 640
    .local v1, "months":J
    sget-object v5, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v3

    .line 641
    .local v3, "days":J
    const/4 v5, 0x1

    invoke-static {v0, v5, v5}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v5

    return-object v5

    .line 643
    .end local v1    # "months":J
    .end local v3    # "days":J
    :cond_0
    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    sget-object v2, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v1

    .line 644
    .local v1, "moy":I
    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    sget-object v3, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    .line 645
    .local v2, "dom":I
    sget-object v3, Lj$/time/format/ResolverStyle;->SMART:Lj$/time/format/ResolverStyle;

    if-ne p2, v3, :cond_3

    .line 646
    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    const/16 v3, 0x9

    if-eq v1, v3, :cond_2

    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 648
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 649
    sget-object v3, Lj$/time/Month;->FEBRUARY:Lj$/time/Month;

    int-to-long v4, v0

    invoke-static {v4, v5}, Lj$/time/Year;->isLeap(J)Z

    move-result v4

    invoke-virtual {v3, v4}, Lj$/time/Month;->length(Z)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 647
    :cond_2
    :goto_0
    const/16 v3, 0x1e

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 653
    :cond_3
    :goto_1
    invoke-static {v0, v1, v2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v3

    return-object v3
.end method

.method bridge synthetic resolveYMD(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/IsoChronology;->resolveYMD(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method resolveYearOfEra(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/LocalDate;
    .locals 11
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
            "Lj$/time/LocalDate;"
        }
    .end annotation

    .line 602
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 603
    .local v0, "yoeLong":Ljava/lang/Long;
    if-eqz v0, :cond_9

    .line 604
    sget-object v1, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    if-eq p2, v1, :cond_0

    .line 605
    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 607
    :cond_0
    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 608
    .local v1, "era":Ljava/lang/Long;
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    if-nez v1, :cond_6

    .line 609
    sget-object v6, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 610
    .local v6, "year":Ljava/lang/Long;
    sget-object v7, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    if-ne p2, v7, :cond_3

    .line 612
    if-eqz v6, :cond_2

    .line 613
    sget-object v7, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v8, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    if-lez v10, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4, v5, v2, v3}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v2

    :goto_0
    invoke-virtual {p0, p1, v7, v2, v3}, Lj$/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Lj$/time/temporal/ChronoField;J)V

    goto :goto_3

    .line 616
    :cond_2
    sget-object v2, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 620
    :cond_3
    sget-object v7, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v8, v2

    if-lez v10, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v2

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_2
    invoke-virtual {p0, p1, v7, v2, v3}, Lj$/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Lj$/time/temporal/ChronoField;J)V

    .line 622
    .end local v6    # "year":Ljava/lang/Long;
    :goto_3
    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-nez v8, :cond_7

    .line 623
    sget-object v2, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, p1, v2, v3, v4}, Lj$/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Lj$/time/temporal/ChronoField;J)V

    goto :goto_4

    .line 624
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_8

    .line 625
    sget-object v2, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v3

    invoke-virtual {p0, p1, v2, v3, v4}, Lj$/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Lj$/time/temporal/ChronoField;J)V

    goto :goto_4

    .line 627
    :cond_8
    new-instance v2, Lj$/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value for era: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 629
    .end local v1    # "era":Ljava/lang/Long;
    :cond_9
    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 630
    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    sget-object v2, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    goto :goto_5

    .line 629
    :cond_a
    :goto_4
    nop

    .line 632
    :goto_5
    const/4 v1, 0x0

    return-object v1
.end method

.method bridge synthetic resolveYearOfEra(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/IsoChronology;->resolveYearOfEra(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 694
    invoke-super {p0}, Lj$/time/chrono/AbstractChronology;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "instant"    # Lj$/time/Instant;
    .param p2, "zone"    # Lj$/time/ZoneId;

    .line 399
    invoke-static {p1, p2}, Lj$/time/ZonedDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 384
    invoke-static {p1}, Lj$/time/ZonedDateTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zonedDateTime(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/IsoChronology;->zonedDateTime(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic zonedDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lj$/time/chrono/IsoChronology;->zonedDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method
