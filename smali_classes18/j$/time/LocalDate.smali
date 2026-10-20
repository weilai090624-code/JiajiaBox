.class public final Lj$/time/LocalDate;
.super Ljava/lang/Object;
.source "LocalDate.java"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/TemporalAdjuster;
.implements Lj$/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# static fields
.field static final DAYS_0000_TO_1970:J = 0xafaa8L

.field private static final DAYS_PER_CYCLE:I = 0x23ab1

.field public static final EPOCH:Lj$/time/LocalDate;

.field public static final MAX:Lj$/time/LocalDate;

.field public static final MIN:Lj$/time/LocalDate;

.field private static final serialVersionUID:J = 0x28d617b1d8f33f1eL


# instance fields
.field private final day:S

.field private final month:S

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 146
    const v0, -0x3b9ac9ff

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/LocalDate;->MIN:Lj$/time/LocalDate;

    .line 151
    const/16 v0, 0xc

    const/16 v2, 0x1f

    const v3, 0x3b9ac9ff

    invoke-static {v3, v0, v2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/LocalDate;->MAX:Lj$/time/LocalDate;

    .line 155
    const/16 v0, 0x7b2

    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/LocalDate;->EPOCH:Lj$/time/LocalDate;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput p1, p0, Lj$/time/LocalDate;->year:I

    .line 498
    int-to-short v0, p2

    iput-short v0, p0, Lj$/time/LocalDate;->month:S

    .line 499
    int-to-short v0, p3

    iput-short v0, p0, Lj$/time/LocalDate;->day:S

    .line 500
    return-void
.end method

.method private static create(III)Lj$/time/LocalDate;
    .locals 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 442
    const/16 v0, 0x1c

    if-le p2, v0, :cond_2

    .line 443
    const/16 v1, 0x1f

    .line 444
    .local v1, "dom":I
    const/16 v2, 0x1d

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 452
    :sswitch_0
    const/16 v1, 0x1e

    goto :goto_0

    .line 446
    :sswitch_1
    sget-object v3, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    int-to-long v4, p0

    invoke-virtual {v3, v4, v5}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x1d

    :cond_0
    move v1, v0

    .line 447
    nop

    .line 455
    :goto_0
    if-le p2, v1, :cond_2

    .line 456
    if-ne p2, v2, :cond_1

    .line 457
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date \'February 29\' as \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a leap year"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_1
    new-instance v0, Lj$/time/DateTimeException;

    invoke-static {p1}, Lj$/time/Month;->of(I)Lj$/time/Month;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/Month;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid date \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    .end local v1    # "dom":I
    :cond_2
    new-instance v0, Lj$/time/LocalDate;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/LocalDate;-><init>(III)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x9 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;
    .locals 5
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 392
    const-string v0, "temporal"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 393
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localDate()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDate;

    .line 394
    .local v0, "date":Lj$/time/LocalDate;
    if-eqz v0, :cond_0

    .line 398
    return-object v0

    .line 395
    :cond_0
    new-instance v1, Lj$/time/DateTimeException;

    .line 396
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain LocalDate from TemporalAccessor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private get0(Lj$/time/temporal/TemporalField;)I
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 693
    sget-object v0, Lj$/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 708
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

    .line 706
    :pswitch_0
    iget v0, p0, Lj$/time/LocalDate;->year:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 705
    :pswitch_1
    iget v0, p0, Lj$/time/LocalDate;->year:I

    return v0

    .line 703
    :pswitch_2
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'ProlepticMonth\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :pswitch_3
    iget-short v0, p0, Lj$/time/LocalDate;->month:S

    return v0

    .line 701
    :pswitch_4
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    .line 699
    :pswitch_5
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'EpochDay\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :pswitch_6
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v0

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    .line 695
    :pswitch_7
    iget-short v0, p0, Lj$/time/LocalDate;->day:S

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    .line 694
    :pswitch_8
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/DayOfWeek;->getValue()I

    move-result v0

    return v0

    .line 704
    :pswitch_9
    iget v0, p0, Lj$/time/LocalDate;->year:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lj$/time/LocalDate;->year:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lj$/time/LocalDate;->year:I

    rsub-int/lit8 v0, v0, 0x1

    :goto_1
    return v0

    .line 700
    :pswitch_a
    iget-short v0, p0, Lj$/time/LocalDate;->day:S

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    .line 698
    :pswitch_b
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v0

    return v0

    .line 697
    :pswitch_c
    iget-short v0, p0, Lj$/time/LocalDate;->day:S

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getProlepticMonth()J
    .locals 4

    .line 712
    iget v0, p0, Lj$/time/LocalDate;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-short v2, p0, Lj$/time/LocalDate;->month:S

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic lambda$datesUntil$0(JJJ)Lj$/time/LocalDate;
    .locals 2
    .param p0, "start"    # J
    .param p2, "days"    # J
    .param p4, "n"    # J

    .line 1781
    mul-long v0, p4, p2

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method private monthsUntil(Lj$/time/LocalDate;)J
    .locals 8
    .param p1, "end"    # Lj$/time/LocalDate;

    .line 1666
    invoke-direct {p0}, Lj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfMonth()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 1667
    .local v0, "packed1":J
    invoke-direct {p1}, Lj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v4

    mul-long v4, v4, v2

    invoke-virtual {p1}, Lj$/time/LocalDate;->getDayOfMonth()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 1668
    .local v4, "packed2":J
    sub-long v6, v4, v0

    div-long/2addr v6, v2

    return-wide v6
.end method

.method public static now()Lj$/time/LocalDate;
    .locals 1

    .line 198
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/LocalDate;->now(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lj$/time/Clock;)Lj$/time/LocalDate;
    .locals 2
    .param p0, "clock"    # Lj$/time/Clock;

    .line 228
    const-string v0, "clock"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    invoke-virtual {p0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    .line 230
    .local v0, "now":Lj$/time/Instant;
    invoke-virtual {p0}, Lj$/time/Clock;->getZone()Lj$/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/LocalDate;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1
.end method

.method public static now(Lj$/time/ZoneId;)Lj$/time/LocalDate;
    .locals 1
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 214
    invoke-static {p0}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/LocalDate;->now(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Lj$/time/LocalDate;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 268
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 269
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 270
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 271
    invoke-static {p0, p1, p2}, Lj$/time/LocalDate;->create(III)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(ILj$/time/Month;I)Lj$/time/LocalDate;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # Lj$/time/Month;
    .param p2, "dayOfMonth"    # I

    .line 248
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 249
    const-string v0, "month"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 251
    invoke-virtual {p1}, Lj$/time/Month;->getValue()I

    move-result v0

    invoke-static {p0, v0, p2}, Lj$/time/LocalDate;->create(III)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static ofEpochDay(J)Lj$/time/LocalDate;
    .locals 22
    .param p0, "epochDay"    # J

    .line 341
    move-wide/from16 v0, p0

    sget-object v2, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    invoke-virtual {v2, v0, v1}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 342
    const-wide/32 v2, 0xafaa8

    add-long/2addr v2, v0

    .line 344
    .local v2, "zeroDay":J
    const-wide/16 v4, 0x3c

    sub-long/2addr v2, v4

    .line 345
    const-wide/16 v4, 0x0

    .line 346
    .local v4, "adjust":J
    const-wide/16 v6, 0x1

    const-wide/32 v8, 0x23ab1

    const-wide/16 v10, 0x190

    const-wide/16 v12, 0x0

    cmp-long v14, v2, v12

    if-gez v14, :cond_0

    .line 348
    add-long v14, v2, v6

    div-long/2addr v14, v8

    sub-long/2addr v14, v6

    .line 349
    .local v14, "adjustCycles":J
    mul-long v4, v14, v10

    .line 350
    neg-long v6, v14

    mul-long v6, v6, v8

    add-long/2addr v2, v6

    .line 352
    .end local v14    # "adjustCycles":J
    :cond_0
    mul-long v6, v2, v10

    const-wide/16 v14, 0x24f

    add-long/2addr v6, v14

    div-long/2addr v6, v8

    .line 353
    .local v6, "yearEst":J
    const-wide/16 v8, 0x16d

    mul-long v14, v6, v8

    const-wide/16 v16, 0x4

    div-long v18, v6, v16

    add-long v14, v14, v18

    const-wide/16 v18, 0x64

    div-long v20, v6, v18

    sub-long v14, v14, v20

    div-long v20, v6, v10

    add-long v14, v14, v20

    sub-long v14, v2, v14

    .line 354
    .local v14, "doyEst":J
    cmp-long v20, v14, v12

    if-gez v20, :cond_1

    .line 356
    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    .line 357
    mul-long v8, v8, v6

    div-long v12, v6, v16

    add-long/2addr v8, v12

    div-long v12, v6, v18

    sub-long/2addr v8, v12

    div-long v10, v6, v10

    add-long/2addr v8, v10

    sub-long v14, v2, v8

    .line 359
    :cond_1
    add-long/2addr v6, v4

    .line 360
    long-to-int v8, v14

    .line 363
    .local v8, "marchDoy0":I
    mul-int/lit8 v9, v8, 0x5

    add-int/lit8 v9, v9, 0x2

    div-int/lit16 v9, v9, 0x99

    .line 364
    .local v9, "marchMonth0":I
    add-int/lit8 v10, v9, 0x2

    rem-int/lit8 v10, v10, 0xc

    add-int/lit8 v10, v10, 0x1

    .line 365
    .local v10, "month":I
    mul-int/lit16 v11, v9, 0x132

    add-int/lit8 v11, v11, 0x5

    div-int/lit8 v11, v11, 0xa

    sub-int v11, v8, v11

    add-int/lit8 v11, v11, 0x1

    .line 366
    .local v11, "dom":I
    div-int/lit8 v12, v9, 0xa

    int-to-long v12, v12

    add-long/2addr v6, v12

    .line 369
    sget-object v12, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v12, v6, v7}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    .line 370
    .local v12, "year":I
    new-instance v13, Lj$/time/LocalDate;

    invoke-direct {v13, v12, v10, v11}, Lj$/time/LocalDate;-><init>(III)V

    return-object v13
.end method

.method public static ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDate;
    .locals 7
    .param p0, "instant"    # Lj$/time/Instant;
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 319
    const-string v0, "instant"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 320
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    invoke-virtual {p1}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    .line 322
    .local v0, "rules":Lj$/time/zone/ZoneRules;
    invoke-virtual {v0, p0}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 323
    .local v1, "offset":Lj$/time/ZoneOffset;
    invoke-virtual {p0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 324
    .local v2, "localSecond":J
    const v4, 0x15180

    invoke-static {v2, v3, v4}, Lj$/time/LocalDate$$ExternalSyntheticBackport8;->m(JI)J

    move-result-wide v4

    .line 325
    .local v4, "localEpochDay":J
    invoke-static {v4, v5}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    move-result-object v6

    return-object v6
.end method

.method public static ofYearDay(II)Lj$/time/LocalDate;
    .locals 6
    .param p0, "year"    # I
    .param p1, "dayOfYear"    # I

    .line 288
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 289
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 290
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    .line 291
    .local v0, "leap":Z
    const/16 v1, 0x16e

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    new-instance v1, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date \'DayOfYear 366\' as \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a leap year"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_1
    :goto_0
    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lj$/time/Month;->of(I)Lj$/time/Month;

    move-result-object v1

    .line 295
    .local v1, "moy":Lj$/time/Month;
    invoke-virtual {v1, v0}, Lj$/time/Month;->firstDayOfYear(Z)I

    move-result v2

    invoke-virtual {v1, v0}, Lj$/time/Month;->length(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 296
    .local v2, "monthEnd":I
    if-le p1, v2, :cond_2

    .line 297
    const-wide/16 v3, 0x1

    invoke-virtual {v1, v3, v4}, Lj$/time/Month;->plus(J)Lj$/time/Month;

    move-result-object v1

    .line 299
    :cond_2
    invoke-virtual {v1, v0}, Lj$/time/Month;->firstDayOfYear(Z)I

    move-result v3

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    .line 300
    .local v3, "dom":I
    new-instance v4, Lj$/time/LocalDate;

    invoke-virtual {v1}, Lj$/time/Month;->getValue()I

    move-result v5

    invoke-direct {v4, p0, v5, v3}, Lj$/time/LocalDate;-><init>(III)V

    return-object v4
.end method

.method public static parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 413
    sget-object v0, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDate;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 427
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 428
    new-instance v0, Lj$/time/LocalDate$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lj$/time/LocalDate$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p1, p0, v0}, Lj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDate;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/LocalDate;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;

    .line 2224
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 2225
    .local v0, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 2226
    .local v1, "month":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 2227
    .local v2, "dayOfMonth":I
    invoke-static {v0, v1, v2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 2214
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static resolvePreviousValid(III)Lj$/time/LocalDate;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 475
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 483
    :sswitch_0
    const/16 v0, 0x1e

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 477
    :sswitch_1
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 478
    nop

    .line 486
    :goto_1
    new-instance v0, Lj$/time/LocalDate;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/LocalDate;-><init>(III)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x9 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 2204
    new-instance v0, Lj$/time/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 1592
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$adjustInto(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atStartOfDay()Lj$/time/LocalDateTime;
    .locals 1

    .line 1913
    sget-object v0, Lj$/time/LocalTime;->MIDNIGHT:Lj$/time/LocalTime;

    invoke-static {p0, v0}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atStartOfDay(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 4
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 1937
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1940
    sget-object v0, Lj$/time/LocalTime;->MIDNIGHT:Lj$/time/LocalTime;

    invoke-virtual {p0, v0}, Lj$/time/LocalDate;->atTime(Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 1941
    .local v0, "ldt":Lj$/time/LocalDateTime;
    instance-of v1, p1, Lj$/time/ZoneOffset;

    if-nez v1, :cond_0

    .line 1942
    invoke-virtual {p1}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v1

    .line 1943
    .local v1, "rules":Lj$/time/zone/ZoneRules;
    invoke-virtual {v1, v0}, Lj$/time/zone/ZoneRules;->getTransition(Lj$/time/LocalDateTime;)Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v2

    .line 1944
    .local v2, "trans":Lj$/time/zone/ZoneOffsetTransition;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lj$/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1945
    invoke-virtual {v2}, Lj$/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Lj$/time/LocalDateTime;

    move-result-object v0

    .line 1948
    .end local v1    # "rules":Lj$/time/zone/ZoneRules;
    .end local v2    # "trans":Lj$/time/zone/ZoneOffsetTransition;
    :cond_0
    invoke-static {v0, p1}, Lj$/time/ZonedDateTime;->of(Lj$/time/LocalDateTime;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1
.end method

.method public atTime(II)Lj$/time/LocalDateTime;
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 1849
    invoke-static {p1, p2}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/LocalDate;->atTime(Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atTime(III)Lj$/time/LocalDateTime;
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .line 1868
    invoke-static {p1, p2, p3}, Lj$/time/LocalTime;->of(III)Lj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/LocalDate;->atTime(Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atTime(IIII)Lj$/time/LocalDateTime;
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "nanoOfSecond"    # I

    .line 1887
    invoke-static {p1, p2, p3, p4}, Lj$/time/LocalTime;->of(IIII)Lj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/LocalDate;->atTime(Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atTime(Lj$/time/LocalTime;)Lj$/time/LocalDateTime;
    .locals 1
    .param p1, "time"    # Lj$/time/LocalTime;

    .line 1831
    invoke-static {p0, p1}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atTime(Lj$/time/OffsetTime;)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "time"    # Lj$/time/OffsetTime;

    .line 1900
    invoke-virtual {p1}, Lj$/time/OffsetTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    invoke-static {p0, v0}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/OffsetTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/OffsetDateTime;->of(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic atTime(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->atTime(Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public compareTo(Lj$/time/chrono/ChronoLocalDate;)I
    .locals 1
    .param p1, "other"    # Lj$/time/chrono/ChronoLocalDate;

    .line 2014
    instance-of v0, p1, Lj$/time/LocalDate;

    if-eqz v0, :cond_0

    .line 2015
    move-object v0, p1

    check-cast v0, Lj$/time/LocalDate;

    invoke-virtual {p0, v0}, Lj$/time/LocalDate;->compareTo0(Lj$/time/LocalDate;)I

    move-result v0

    return v0

    .line 2017
    :cond_0
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$compareTo(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 139
    check-cast p1, Lj$/time/chrono/ChronoLocalDate;

    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->compareTo(Lj$/time/chrono/ChronoLocalDate;)I

    move-result p1

    return p1
.end method

.method compareTo0(Lj$/time/LocalDate;)I
    .locals 3
    .param p1, "otherDate"    # Lj$/time/LocalDate;

    .line 2021
    iget v0, p0, Lj$/time/LocalDate;->year:I

    iget v1, p1, Lj$/time/LocalDate;->year:I

    sub-int/2addr v0, v1

    .line 2022
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 2023
    iget-short v1, p0, Lj$/time/LocalDate;->month:S

    iget-short v2, p1, Lj$/time/LocalDate;->month:S

    sub-int v0, v1, v2

    .line 2024
    if-nez v0, :cond_0

    .line 2025
    iget-short v1, p0, Lj$/time/LocalDate;->day:S

    iget-short v2, p1, Lj$/time/LocalDate;->day:S

    sub-int v0, v1, v2

    .line 2028
    :cond_0
    return v0
.end method

.method public datesUntil(Lj$/time/LocalDate;)Lj$/util/stream/Stream;
    .locals 7
    .param p1, "endExclusive"    # Lj$/time/LocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/LocalDate;",
            ")",
            "Lj$/util/stream/Stream<",
            "Lj$/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 1733
    invoke-virtual {p1}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    .line 1734
    .local v0, "end":J
    invoke-virtual {p0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    .line 1735
    .local v2, "start":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 1738
    invoke-static {v2, v3, v0, v1}, Lj$/util/stream/LongStream$-CC;->range(JJ)Lj$/util/stream/LongStream;

    move-result-object v4

    new-instance v5, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v4, v5}, Lj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Lj$/util/stream/Stream;

    move-result-object v4

    return-object v4

    .line 1736
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public datesUntil(Lj$/time/LocalDate;Lj$/time/Period;)Lj$/util/stream/Stream;
    .locals 29
    .param p1, "endExclusive"    # Lj$/time/LocalDate;
    .param p2, "step"    # Lj$/time/Period;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/LocalDate;",
            "Lj$/time/Period;",
            ")",
            "Lj$/util/stream/Stream<",
            "Lj$/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 1760
    move-object/from16 v6, p0

    invoke-virtual/range {p2 .. p2}, Lj$/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1763
    invoke-virtual/range {p1 .. p1}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v7

    .line 1764
    .local v7, "end":J
    invoke-virtual/range {p0 .. p0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v9

    .line 1765
    .local v9, "start":J
    sub-long v11, v7, v9

    .line 1766
    .local v11, "until":J
    invoke-virtual/range {p2 .. p2}, Lj$/time/Period;->toTotalMonths()J

    move-result-wide v13

    .line 1767
    .local v13, "months":J
    invoke-virtual/range {p2 .. p2}, Lj$/time/Period;->getDays()I

    move-result v0

    int-to-long v4, v0

    .line 1768
    .local v4, "days":J
    const-wide/16 v0, 0x0

    cmp-long v2, v13, v0

    if-gez v2, :cond_0

    cmp-long v2, v4, v0

    if-gtz v2, :cond_1

    :cond_0
    cmp-long v2, v13, v0

    if-lez v2, :cond_2

    cmp-long v2, v4, v0

    if-ltz v2, :cond_1

    goto :goto_0

    .line 1769
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "period months and days are of opposite sign"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1771
    :cond_2
    :goto_0
    cmp-long v2, v11, v0

    if-nez v2, :cond_3

    .line 1772
    invoke-static {}, Lj$/util/stream/Stream$-CC;->empty()Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 1774
    :cond_3
    const/4 v2, 0x1

    cmp-long v3, v13, v0

    if-gtz v3, :cond_5

    cmp-long v3, v4, v0

    if-lez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, -0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v15, v3

    .line 1775
    .local v15, "sign":I
    const/4 v3, 0x0

    if-gez v15, :cond_6

    const/16 v16, 0x1

    goto :goto_3

    :cond_6
    const/16 v16, 0x0

    :goto_3
    cmp-long v17, v11, v0

    if-gez v17, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    xor-int v2, v16, v2

    if-eqz v2, :cond_9

    .line 1776
    new-instance v0, Ljava/lang/IllegalArgumentException;

    if-gez v15, :cond_8

    const-string v1, " > "

    goto :goto_5

    :cond_8
    const-string v1, " < "

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1778
    :cond_9
    move-object/from16 v3, p1

    cmp-long v2, v13, v0

    if-nez v2, :cond_a

    .line 1779
    int-to-long v0, v15

    sub-long v0, v11, v0

    div-long/2addr v0, v4

    .line 1780
    .local v0, "steps":J
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Lj$/util/stream/LongStream$-CC;->rangeClosed(JJ)Lj$/util/stream/LongStream;

    move-result-object v2

    new-instance v3, Lj$/time/LocalDate$$ExternalSyntheticLambda10;

    invoke-direct {v3, v9, v10, v4, v5}, Lj$/time/LocalDate$$ExternalSyntheticLambda10;-><init>(JJ)V

    invoke-interface {v2, v3}, Lj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Lj$/util/stream/Stream;

    move-result-object v2

    return-object v2

    .line 1784
    .end local v0    # "steps":J
    :cond_a
    const-wide/16 v0, 0x640

    mul-long v2, v11, v0

    const-wide/32 v18, 0xbe3b

    mul-long v18, v18, v13

    mul-long v0, v0, v4

    add-long v18, v18, v0

    div-long v2, v2, v18

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 1785
    .local v2, "steps":J
    mul-long v0, v13, v2

    .line 1786
    .local v0, "addMonths":J
    mul-long v20, v4, v2

    .line 1787
    .local v20, "addDays":J
    const-wide/16 v16, 0x0

    cmp-long v22, v13, v16

    if-lez v22, :cond_b

    sget-object v22, Lj$/time/LocalDate;->MAX:Lj$/time/LocalDate;

    invoke-direct/range {v22 .. v22}, Lj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v22

    invoke-direct/range {p0 .. p0}, Lj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v24

    sub-long v22, v22, v24

    goto :goto_6

    .line 1788
    :cond_b
    invoke-direct/range {p0 .. p0}, Lj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v22

    sget-object v24, Lj$/time/LocalDate;->MIN:Lj$/time/LocalDate;

    invoke-direct/range {v24 .. v24}, Lj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v24

    sub-long v22, v22, v24

    :goto_6
    nop

    .line 1790
    .local v22, "maxAddMonths":J
    move-wide/from16 v24, v9

    .end local v9    # "start":J
    .local v24, "start":J
    int-to-long v9, v15

    mul-long v9, v9, v0

    cmp-long v26, v9, v22

    if-gtz v26, :cond_d

    .line 1791
    invoke-virtual {v6, v0, v1}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v9

    invoke-virtual {v9}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v9

    add-long v9, v9, v20

    move-wide/from16 v26, v11

    .end local v11    # "until":J
    .local v26, "until":J
    int-to-long v11, v15

    mul-long v9, v9, v11

    int-to-long v11, v15

    mul-long v11, v11, v7

    cmp-long v28, v9, v11

    if-ltz v28, :cond_c

    goto :goto_7

    :cond_c
    move-wide v9, v0

    move-wide v11, v2

    goto :goto_9

    .line 1790
    .end local v26    # "until":J
    .restart local v11    # "until":J
    :cond_d
    move-wide/from16 v26, v11

    .line 1792
    .end local v11    # "until":J
    .restart local v26    # "until":J
    :goto_7
    const-wide/16 v9, 0x1

    sub-long/2addr v2, v9

    .line 1793
    sub-long/2addr v0, v13

    .line 1794
    sub-long v20, v20, v4

    .line 1795
    int-to-long v9, v15

    mul-long v9, v9, v0

    cmp-long v11, v9, v22

    if-gtz v11, :cond_f

    .line 1796
    invoke-virtual {v6, v0, v1}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v9

    invoke-virtual {v9}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v9

    add-long v9, v9, v20

    int-to-long v11, v15

    mul-long v9, v9, v11

    int-to-long v11, v15

    mul-long v11, v11, v7

    cmp-long v28, v9, v11

    if-ltz v28, :cond_e

    goto :goto_8

    :cond_e
    move-wide v9, v0

    move-wide v11, v2

    goto :goto_9

    .line 1797
    :cond_f
    :goto_8
    const-wide/16 v9, 0x1

    sub-long/2addr v2, v9

    move-wide v9, v0

    move-wide v11, v2

    .line 1800
    .end local v0    # "addMonths":J
    .end local v2    # "steps":J
    .local v9, "addMonths":J
    .local v11, "steps":J
    :goto_9
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v11, v12}, Lj$/util/stream/LongStream$-CC;->rangeClosed(JJ)Lj$/util/stream/LongStream;

    move-result-object v2

    new-instance v3, Lj$/time/LocalDate$$ExternalSyntheticLambda11;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v6, v2

    move-wide/from16 v16, v7

    move-object v7, v3

    .end local v7    # "end":J
    .local v16, "end":J
    move-wide v2, v13

    move-wide/from16 v18, v4

    .end local v4    # "days":J
    .local v18, "days":J
    invoke-direct/range {v0 .. v5}, Lj$/time/LocalDate$$ExternalSyntheticLambda11;-><init>(Lj$/time/LocalDate;JJ)V

    invoke-interface {v6, v7}, Lj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 1761
    .end local v9    # "addMonths":J
    .end local v11    # "steps":J
    .end local v13    # "months":J
    .end local v15    # "sign":I
    .end local v16    # "end":J
    .end local v18    # "days":J
    .end local v20    # "addDays":J
    .end local v22    # "maxAddMonths":J
    .end local v24    # "start":J
    .end local v26    # "until":J
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "step is zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method daysUntil(Lj$/time/LocalDate;)J
    .locals 4
    .param p1, "end"    # Lj$/time/LocalDate;

    .line 1662
    invoke-virtual {p1}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2133
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2134
    return v0

    .line 2136
    :cond_0
    instance-of v1, p1, Lj$/time/LocalDate;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2137
    move-object v1, p1

    check-cast v1, Lj$/time/LocalDate;

    invoke-virtual {p0, v1}, Lj$/time/LocalDate;->compareTo0(Lj$/time/LocalDate;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2139
    :cond_2
    return v2
.end method

.method public format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 1815
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1816
    invoke-virtual {p1, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lj$/time/temporal/TemporalField;)I
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 649
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 650
    invoke-direct {p0, p1}, Lj$/time/LocalDate;->get0(Lj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 652
    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$get(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getChronology()Lj$/time/chrono/Chronology;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lj$/time/LocalDate;->getChronology()Lj$/time/chrono/IsoChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Lj$/time/chrono/IsoChronology;
    .locals 1

    .line 728
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 802
    iget-short v0, p0, Lj$/time/LocalDate;->day:S

    return v0
.end method

.method public getDayOfWeek()Lj$/time/DayOfWeek;
    .locals 4

    .line 830
    invoke-virtual {p0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lj$/time/LocalDate$$ExternalSyntheticBackport4;->m(JI)I

    move-result v0

    .line 831
    .local v0, "dow0":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lj$/time/DayOfWeek;->of(I)Lj$/time/DayOfWeek;

    move-result-object v1

    return-object v1
.end method

.method public getDayOfYear()I
    .locals 2

    .line 813
    invoke-virtual {p0}, Lj$/time/LocalDate;->getMonth()Lj$/time/Month;

    move-result-object v0

    invoke-virtual {p0}, Lj$/time/LocalDate;->isLeapYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lj$/time/Month;->firstDayOfYear(Z)I

    move-result v0

    iget-short v1, p0, Lj$/time/LocalDate;->day:S

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic getEra()Lj$/time/chrono/Era;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lj$/time/LocalDate;->getEra()Lj$/time/chrono/IsoEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Lj$/time/chrono/IsoEra;
    .locals 2

    .line 748
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget-object v0, Lj$/time/chrono/IsoEra;->CE:Lj$/time/chrono/IsoEra;

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/time/chrono/IsoEra;->BCE:Lj$/time/chrono/IsoEra;

    :goto_0
    return-object v0
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .locals 2
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 680
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 681
    sget-object v0, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 682
    invoke-virtual {p0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0

    .line 684
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 685
    invoke-direct {p0}, Lj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    .line 687
    :cond_1
    invoke-direct {p0, p1}, Lj$/time/LocalDate;->get0(Lj$/time/temporal/TemporalField;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 689
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()Lj$/time/Month;
    .locals 1

    .line 791
    iget-short v0, p0, Lj$/time/LocalDate;->month:S

    invoke-static {v0}, Lj$/time/Month;->of(I)Lj$/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .line 776
    iget-short v0, p0, Lj$/time/LocalDate;->month:S

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 762
    iget v0, p0, Lj$/time/LocalDate;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 2149
    iget v0, p0, Lj$/time/LocalDate;->year:I

    .line 2150
    .local v0, "yearValue":I
    iget-short v1, p0, Lj$/time/LocalDate;->month:S

    .line 2151
    .local v1, "monthValue":I
    iget-short v2, p0, Lj$/time/LocalDate;->day:S

    .line 2152
    .local v2, "dayValue":I
    and-int/lit16 v3, v0, -0x800

    shl-int/lit8 v4, v0, 0xb

    shl-int/lit8 v5, v1, 0x6

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    xor-int/2addr v3, v4

    return v3
.end method

.method public isAfter(Lj$/time/chrono/ChronoLocalDate;)Z
    .locals 1
    .param p1, "other"    # Lj$/time/chrono/ChronoLocalDate;

    .line 2054
    instance-of v0, p1, Lj$/time/LocalDate;

    if-eqz v0, :cond_1

    .line 2055
    move-object v0, p1

    check-cast v0, Lj$/time/LocalDate;

    invoke-virtual {p0, v0}, Lj$/time/LocalDate;->compareTo0(Lj$/time/LocalDate;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2057
    :cond_1
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$isAfter(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public isBefore(Lj$/time/chrono/ChronoLocalDate;)Z
    .locals 1
    .param p1, "other"    # Lj$/time/chrono/ChronoLocalDate;

    .line 2083
    instance-of v0, p1, Lj$/time/LocalDate;

    if-eqz v0, :cond_1

    .line 2084
    move-object v0, p1

    check-cast v0, Lj$/time/LocalDate;

    invoke-virtual {p0, v0}, Lj$/time/LocalDate;->compareTo0(Lj$/time/LocalDate;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2086
    :cond_1
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$isBefore(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public isEqual(Lj$/time/chrono/ChronoLocalDate;)Z
    .locals 1
    .param p1, "other"    # Lj$/time/chrono/ChronoLocalDate;

    .line 2112
    instance-of v0, p1, Lj$/time/LocalDate;

    if-eqz v0, :cond_1

    .line 2113
    move-object v0, p1

    check-cast v0, Lj$/time/LocalDate;

    invoke-virtual {p0, v0}, Lj$/time/LocalDate;->compareTo0(Lj$/time/LocalDate;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2115
    :cond_1
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$isEqual(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public isLeapYear()Z
    .locals 3

    .line 855
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    iget v1, p0, Lj$/time/LocalDate;->year:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 540
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$isSupported(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public isSupported(Lj$/time/temporal/TemporalUnit;)Z
    .locals 1
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 574
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$isSupported(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$datesUntil$1$java-time-LocalDate(JJJ)Lj$/time/LocalDate;
    .locals 3
    .param p1, "months"    # J
    .param p3, "days"    # J
    .param p5, "n"    # J

    .line 1801
    mul-long v0, p1, p5

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v0

    mul-long v1, p3, p5

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public lengthOfMonth()I
    .locals 1

    .line 868
    iget-short v0, p0, Lj$/time/LocalDate;->month:S

    sparse-switch v0, :sswitch_data_0

    .line 877
    const/16 v0, 0x1f

    return v0

    .line 875
    :sswitch_0
    const/16 v0, 0x1e

    return v0

    .line 870
    :sswitch_1
    invoke-virtual {p0}, Lj$/time/LocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
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

.method public lengthOfYear()I
    .locals 1

    .line 890
    invoke-virtual {p0}, Lj$/time/LocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16d

    :goto_0
    return v0
.end method

.method public minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDate;
    .locals 3
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1448
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/LocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Lj$/time/LocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDate;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/LocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalDate;
    .locals 4
    .param p1, "amountToSubtract"    # Lj$/time/temporal/TemporalAmount;

    .line 1419
    instance-of v0, p1, Lj$/time/Period;

    if-eqz v0, :cond_0

    .line 1420
    move-object v0, p1

    check-cast v0, Lj$/time/Period;

    .line 1421
    .local v0, "periodToSubtract":Lj$/time/Period;
    invoke-virtual {v0}, Lj$/time/Period;->toTotalMonths()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lj$/time/LocalDate;->minusMonths(J)Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0}, Lj$/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lj$/time/LocalDate;->minusDays(J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1423
    .end local v0    # "periodToSubtract":Lj$/time/Period;
    :cond_0
    const-string v0, "amountToSubtract"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1424
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDate;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDate;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Lj$/time/LocalDate;
    .locals 3
    .param p1, "daysToSubtract"    # J

    .line 1535
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusMonths(J)Lj$/time/LocalDate;
    .locals 3
    .param p1, "monthsToSubtract"    # J

    .line 1497
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusWeeks(J)Lj$/time/LocalDate;
    .locals 3
    .param p1, "weeksToSubtract"    # J

    .line 1516
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDate;->plusWeeks(J)Lj$/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDate;->plusWeeks(J)Lj$/time/LocalDate;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDate;->plusWeeks(J)Lj$/time/LocalDate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusYears(J)Lj$/time/LocalDate;
    .locals 3
    .param p1, "yearsToSubtract"    # J

    .line 1473
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDate;->plusYears(J)Lj$/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDate;->plusYears(J)Lj$/time/LocalDate;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDate;->plusYears(J)Lj$/time/LocalDate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDate;
    .locals 4
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1260
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 1261
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/ChronoUnit;

    .line 1262
    .local v0, "f":Lj$/time/temporal/ChronoUnit;
    sget-object v1, Lj$/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1272
    new-instance v1, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1270
    :pswitch_0
    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    sget-object v2, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Lj$/time/LocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lj$/time/LocalDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1269
    :pswitch_1
    const/16 v1, 0x3e8

    invoke-static {p1, p2, v1}, Lj$/time/LocalDate$$ExternalSyntheticBackport2;->m(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lj$/time/LocalDate;->plusYears(J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1268
    :pswitch_2
    const/16 v1, 0x64

    invoke-static {p1, p2, v1}, Lj$/time/LocalDate$$ExternalSyntheticBackport1;->m(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lj$/time/LocalDate;->plusYears(J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1267
    :pswitch_3
    const/16 v1, 0xa

    invoke-static {p1, p2, v1}, Lj$/time/LocalDate$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lj$/time/LocalDate;->plusYears(J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1266
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->plusYears(J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1265
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1264
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->plusWeeks(J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1263
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1274
    .end local v0    # "f":Lj$/time/temporal/ChronoUnit;
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->addTo(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDate;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalDate;
    .locals 4
    .param p1, "amountToAdd"    # Lj$/time/temporal/TemporalAmount;

    .line 1169
    instance-of v0, p1, Lj$/time/Period;

    if-eqz v0, :cond_0

    .line 1170
    move-object v0, p1

    check-cast v0, Lj$/time/Period;

    .line 1171
    .local v0, "periodToAdd":Lj$/time/Period;
    invoke-virtual {v0}, Lj$/time/Period;->toTotalMonths()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0}, Lj$/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1173
    .end local v0    # "periodToAdd":Lj$/time/Period;
    :cond_0
    const-string v0, "amountToAdd"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1174
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Lj$/time/LocalDate;
    .locals 10
    .param p1, "daysToAdd"    # J

    .line 1372
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1373
    return-object p0

    .line 1375
    :cond_0
    iget-short v2, p0, Lj$/time/LocalDate;->day:S

    int-to-long v2, v2

    add-long/2addr v2, p1

    .line 1376
    .local v2, "dom":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_4

    .line 1377
    const-wide/16 v0, 0x1c

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    .line 1378
    new-instance v0, Lj$/time/LocalDate;

    iget v1, p0, Lj$/time/LocalDate;->year:I

    iget-short v4, p0, Lj$/time/LocalDate;->month:S

    long-to-int v5, v2

    invoke-direct {v0, v1, v4, v5}, Lj$/time/LocalDate;-><init>(III)V

    return-object v0

    .line 1379
    :cond_1
    const-wide/16 v0, 0x3b

    cmp-long v4, v2, v0

    if-gtz v4, :cond_4

    .line 1380
    invoke-virtual {p0}, Lj$/time/LocalDate;->lengthOfMonth()I

    move-result v0

    int-to-long v0, v0

    .line 1381
    .local v0, "monthLen":J
    cmp-long v4, v2, v0

    if-gtz v4, :cond_2

    .line 1382
    new-instance v4, Lj$/time/LocalDate;

    iget v5, p0, Lj$/time/LocalDate;->year:I

    iget-short v6, p0, Lj$/time/LocalDate;->month:S

    long-to-int v7, v2

    invoke-direct {v4, v5, v6, v7}, Lj$/time/LocalDate;-><init>(III)V

    return-object v4

    .line 1383
    :cond_2
    iget-short v4, p0, Lj$/time/LocalDate;->month:S

    const/16 v5, 0xc

    const/4 v6, 0x1

    if-ge v4, v5, :cond_3

    .line 1384
    new-instance v4, Lj$/time/LocalDate;

    iget v5, p0, Lj$/time/LocalDate;->year:I

    iget-short v7, p0, Lj$/time/LocalDate;->month:S

    add-int/2addr v7, v6

    sub-long v8, v2, v0

    long-to-int v6, v8

    invoke-direct {v4, v5, v7, v6}, Lj$/time/LocalDate;-><init>(III)V

    return-object v4

    .line 1386
    :cond_3
    sget-object v4, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    iget v5, p0, Lj$/time/LocalDate;->year:I

    add-int/2addr v5, v6

    int-to-long v7, v5

    invoke-virtual {v4, v7, v8}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 1387
    new-instance v4, Lj$/time/LocalDate;

    iget v5, p0, Lj$/time/LocalDate;->year:I

    add-int/2addr v5, v6

    sub-long v7, v2, v0

    long-to-int v8, v7

    invoke-direct {v4, v5, v6, v8}, Lj$/time/LocalDate;-><init>(III)V

    return-object v4

    .line 1392
    .end local v0    # "monthLen":J
    :cond_4
    invoke-virtual {p0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    .line 1393
    .local v0, "mjDay":J
    invoke-static {v0, v1}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    move-result-object v4

    return-object v4
.end method

.method public plusMonths(J)Lj$/time/LocalDate;
    .locals 8
    .param p1, "monthsToAdd"    # J

    .line 1327
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1328
    return-object p0

    .line 1330
    :cond_0
    iget v0, p0, Lj$/time/LocalDate;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-short v2, p0, Lj$/time/LocalDate;->month:S

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1331
    .local v0, "monthCount":J
    add-long v2, v0, p1

    .line 1332
    .local v2, "calcMonths":J
    sget-object v4, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    const/16 v5, 0xc

    invoke-static {v2, v3, v5}, Lj$/time/LocalDate$$ExternalSyntheticBackport6;->m(JI)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v4

    .line 1333
    .local v4, "newYear":I
    invoke-static {v2, v3, v5}, Lj$/time/LocalDate$$ExternalSyntheticBackport7;->m(JI)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 1334
    .local v5, "newMonth":I
    iget-short v6, p0, Lj$/time/LocalDate;->day:S

    invoke-static {v4, v5, v6}, Lj$/time/LocalDate;->resolvePreviousValid(III)Lj$/time/LocalDate;

    move-result-object v6

    return-object v6
.end method

.method public plusWeeks(J)Lj$/time/LocalDate;
    .locals 2
    .param p1, "weeksToAdd"    # J

    .line 1353
    const/4 v0, 0x7

    invoke-static {p1, p2, v0}, Lj$/time/LocalDate$$ExternalSyntheticBackport3;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Lj$/time/LocalDate;
    .locals 3
    .param p1, "yearsToAdd"    # J

    .line 1299
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1300
    return-object p0

    .line 1302
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    iget v1, p0, Lj$/time/LocalDate;->year:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 1303
    .local v0, "newYear":I
    iget-short v1, p0, Lj$/time/LocalDate;->month:S

    iget-short v2, p0, Lj$/time/LocalDate;->day:S

    invoke-static {v0, v1, v2}, Lj$/time/LocalDate;->resolvePreviousValid(III)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1
.end method

.method public query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1560
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localDate()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1561
    return-object p0

    .line 1563
    :cond_0
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$query(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 6
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 603
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_3

    .line 604
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 605
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 606
    sget-object v1, Lj$/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 613
    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 611
    :pswitch_0
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    move-result v1

    if-gtz v1, :cond_0

    const-wide/32 v4, 0x3b9aca00

    goto :goto_0

    :cond_0
    const-wide/32 v4, 0x3b9ac9ff

    :goto_0
    invoke-static {v2, v3, v4, v5}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 609
    :pswitch_1
    invoke-virtual {p0}, Lj$/time/LocalDate;->getMonth()Lj$/time/Month;

    move-result-object v1

    sget-object v4, Lj$/time/Month;->FEBRUARY:Lj$/time/Month;

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Lj$/time/LocalDate;->isLeapYear()Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v4, 0x4

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x5

    :goto_1
    invoke-static {v2, v3, v4, v5}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 608
    :pswitch_2
    invoke-virtual {p0}, Lj$/time/LocalDate;->lengthOfYear()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 607
    :pswitch_3
    invoke-virtual {p0}, Lj$/time/LocalDate;->lengthOfMonth()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 615
    :cond_2
    new-instance v1, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 617
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_3
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toEpochDay()J
    .locals 12

    .line 1954
    iget v0, p0, Lj$/time/LocalDate;->year:I

    int-to-long v0, v0

    .line 1955
    .local v0, "y":J
    iget-short v2, p0, Lj$/time/LocalDate;->month:S

    int-to-long v2, v2

    .line 1956
    .local v2, "m":J
    const-wide/16 v4, 0x0

    .line 1957
    .local v4, "total":J
    const-wide/16 v6, 0x16d

    mul-long v6, v6, v0

    add-long/2addr v4, v6

    .line 1958
    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_0

    .line 1959
    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    const-wide/16 v8, 0x63

    add-long/2addr v8, v0

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x18f

    add-long/2addr v8, v0

    const-wide/16 v10, 0x190

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    goto :goto_0

    .line 1961
    :cond_0
    const-wide/16 v6, -0x4

    div-long v6, v0, v6

    const-wide/16 v8, -0x64

    div-long v8, v0, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, -0x190

    div-long v8, v0, v8

    add-long/2addr v6, v8

    sub-long/2addr v4, v6

    .line 1963
    :goto_0
    const-wide/16 v6, 0x16f

    mul-long v6, v6, v2

    const-wide/16 v8, 0x16a

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 1964
    iget-short v6, p0, Lj$/time/LocalDate;->day:S

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 1965
    const-wide/16 v6, 0x2

    cmp-long v8, v2, v6

    if-lez v8, :cond_1

    .line 1966
    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    .line 1967
    invoke-virtual {p0}, Lj$/time/LocalDate;->isLeapYear()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1968
    sub-long/2addr v4, v6

    .line 1971
    :cond_1
    const-wide/32 v6, 0xafaa8

    sub-long v6, v4, v6

    return-wide v6
.end method

.method public toEpochSecond(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)J
    .locals 4
    .param p1, "time"    # Lj$/time/LocalTime;
    .param p2, "offset"    # Lj$/time/ZoneOffset;

    .line 1990
    const-string v0, "time"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1991
    const-string v0, "offset"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1992
    invoke-virtual {p0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    invoke-virtual {p1}, Lj$/time/LocalTime;->toSecondOfDay()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1993
    .local v0, "secs":J
    invoke-virtual {p2}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 1994
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 2165
    iget v0, p0, Lj$/time/LocalDate;->year:I

    .line 2166
    .local v0, "yearValue":I
    iget-short v1, p0, Lj$/time/LocalDate;->month:S

    .line 2167
    .local v1, "monthValue":I
    iget-short v2, p0, Lj$/time/LocalDate;->day:S

    .line 2168
    .local v2, "dayValue":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2169
    .local v3, "absYear":I
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2170
    .local v4, "buf":Ljava/lang/StringBuilder;
    const/16 v6, 0x3e8

    if-ge v3, v6, :cond_1

    .line 2171
    if-gez v0, :cond_0

    .line 2172
    add-int/lit16 v6, v0, -0x2710

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2174
    :cond_0
    add-int/lit16 v6, v0, 0x2710

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2177
    :cond_1
    const/16 v6, 0x270f

    if-le v0, v6, :cond_2

    .line 2178
    const/16 v6, 0x2b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2180
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2182
    :goto_0
    const-string v6, "-0"

    const-string v7, "-"

    if-ge v1, v5, :cond_3

    move-object v8, v6

    goto :goto_1

    :cond_3
    move-object v8, v7

    :goto_1
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2183
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2184
    if-ge v2, v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, v7

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2185
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2186
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2182
    return-object v5
.end method

.method public until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 5
    .param p1, "endExclusive"    # Lj$/time/temporal/Temporal;
    .param p2, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1644
    invoke-static {p1}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v0

    .line 1645
    .local v0, "end":Lj$/time/LocalDate;
    instance-of v1, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 1646
    sget-object v1, Lj$/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v2, p2

    check-cast v2, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v2}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1656
    new-instance v1, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1654
    :pswitch_0
    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1}, Lj$/time/LocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    sget-object v3, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Lj$/time/LocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1

    .line 1653
    :pswitch_1
    invoke-direct {p0, v0}, Lj$/time/LocalDate;->monthsUntil(Lj$/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x2ee0

    div-long/2addr v1, v3

    return-wide v1

    .line 1652
    :pswitch_2
    invoke-direct {p0, v0}, Lj$/time/LocalDate;->monthsUntil(Lj$/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x4b0

    div-long/2addr v1, v3

    return-wide v1

    .line 1651
    :pswitch_3
    invoke-direct {p0, v0}, Lj$/time/LocalDate;->monthsUntil(Lj$/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x78

    div-long/2addr v1, v3

    return-wide v1

    .line 1650
    :pswitch_4
    invoke-direct {p0, v0}, Lj$/time/LocalDate;->monthsUntil(Lj$/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0xc

    div-long/2addr v1, v3

    return-wide v1

    .line 1649
    :pswitch_5
    invoke-direct {p0, v0}, Lj$/time/LocalDate;->monthsUntil(Lj$/time/LocalDate;)J

    move-result-wide v1

    return-wide v1

    .line 1648
    :pswitch_6
    invoke-virtual {p0, v0}, Lj$/time/LocalDate;->daysUntil(Lj$/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x7

    div-long/2addr v1, v3

    return-wide v1

    .line 1647
    :pswitch_7
    invoke-virtual {p0, v0}, Lj$/time/LocalDate;->daysUntil(Lj$/time/LocalDate;)J

    move-result-wide v1

    return-wide v1

    .line 1658
    :cond_0
    invoke-interface {p2, p0, v0}, Lj$/time/temporal/TemporalUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public until(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/Period;
    .locals 9
    .param p1, "endDateExclusive"    # Lj$/time/chrono/ChronoLocalDate;

    .line 1705
    invoke-static {p1}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v0

    .line 1706
    .local v0, "end":Lj$/time/LocalDate;
    invoke-direct {v0}, Lj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v1

    invoke-direct {p0}, Lj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1707
    .local v1, "totalMonths":J
    iget-short v3, v0, Lj$/time/LocalDate;->day:S

    iget-short v4, p0, Lj$/time/LocalDate;->day:S

    sub-int/2addr v3, v4

    .line 1708
    .local v3, "days":I
    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-lez v8, :cond_1

    if-gez v3, :cond_1

    .line 1709
    sub-long/2addr v1, v4

    .line 1710
    invoke-virtual {p0, v1, v2}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v4

    .line 1711
    .local v4, "calcDate":Lj$/time/LocalDate;
    invoke-virtual {v0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v5

    invoke-virtual {v4}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v3, v5

    .line 1712
    .end local v4    # "calcDate":Lj$/time/LocalDate;
    :cond_0
    goto :goto_0

    :cond_1
    cmp-long v8, v1, v6

    if-gez v8, :cond_0

    if-lez v3, :cond_0

    .line 1713
    add-long/2addr v1, v4

    .line 1714
    invoke-virtual {v0}, Lj$/time/LocalDate;->lengthOfMonth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1716
    :goto_0
    const-wide/16 v4, 0xc

    div-long v6, v1, v4

    .line 1717
    .local v6, "years":J
    rem-long v4, v1, v4

    long-to-int v5, v4

    .line 1718
    .local v5, "months":I
    invoke-static {v6, v7}, Lj$/time/LocalDate$$ExternalSyntheticBackport5;->m(J)I

    move-result v4

    invoke-static {v4, v5, v3}, Lj$/time/Period;->of(III)Lj$/time/Period;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic until(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/chrono/ChronoPeriod;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->until(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/LocalDate;
    .locals 1
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;

    .line 934
    instance-of v0, p1, Lj$/time/LocalDate;

    if-eqz v0, :cond_0

    .line 935
    move-object v0, p1

    check-cast v0, Lj$/time/LocalDate;

    return-object v0

    .line 937
    :cond_0
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAdjuster;->adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDate;

    return-object v0
.end method

.method public with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalDate;
    .locals 5
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 1046
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 1047
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 1048
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 1049
    sget-object v1, Lj$/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1064
    new-instance v1, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1062
    :pswitch_0
    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lj$/time/LocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v3

    cmp-long v1, v3, p2

    if-nez v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    iget v1, p0, Lj$/time/LocalDate;->year:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lj$/time/LocalDate;->withYear(I)Lj$/time/LocalDate;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1061
    :pswitch_1
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lj$/time/LocalDate;->withYear(I)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1059
    :pswitch_2
    invoke-direct {p0}, Lj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1058
    :pswitch_3
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lj$/time/LocalDate;->withMonth(I)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1057
    :pswitch_4
    sget-object v1, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lj$/time/LocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Lj$/time/LocalDate;->plusWeeks(J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1055
    :pswitch_5
    invoke-static {p2, p3}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1052
    :pswitch_6
    sget-object v1, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lj$/time/LocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1051
    :pswitch_7
    sget-object v1, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lj$/time/LocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1050
    :pswitch_8
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/DayOfWeek;->getValue()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1060
    :pswitch_9
    iget v1, p0, Lj$/time/LocalDate;->year:I

    if-lt v1, v2, :cond_1

    move-wide v1, p2

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x1

    sub-long/2addr v1, p2

    :goto_1
    long-to-int v2, v1

    invoke-virtual {p0, v2}, Lj$/time/LocalDate;->withYear(I)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1056
    :pswitch_a
    sget-object v1, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lj$/time/LocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Lj$/time/LocalDate;->plusWeeks(J)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1054
    :pswitch_b
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lj$/time/LocalDate;->withDayOfYear(I)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1053
    :pswitch_c
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lj$/time/LocalDate;->withDayOfMonth(I)Lj$/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1066
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/TemporalField;->adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDate;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfMonth(I)Lj$/time/LocalDate;
    .locals 2
    .param p1, "dayOfMonth"    # I

    .line 1121
    iget-short v0, p0, Lj$/time/LocalDate;->day:S

    if-ne v0, p1, :cond_0

    .line 1122
    return-object p0

    .line 1124
    :cond_0
    iget v0, p0, Lj$/time/LocalDate;->year:I

    iget-short v1, p0, Lj$/time/LocalDate;->month:S

    invoke-static {v0, v1, p1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Lj$/time/LocalDate;
    .locals 1
    .param p1, "dayOfYear"    # I

    .line 1140
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1141
    return-object p0

    .line 1143
    :cond_0
    iget v0, p0, Lj$/time/LocalDate;->year:I

    invoke-static {v0, p1}, Lj$/time/LocalDate;->ofYearDay(II)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withMonth(I)Lj$/time/LocalDate;
    .locals 3
    .param p1, "month"    # I

    .line 1101
    iget-short v0, p0, Lj$/time/LocalDate;->month:S

    if-ne v0, p1, :cond_0

    .line 1102
    return-object p0

    .line 1104
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 1105
    iget v0, p0, Lj$/time/LocalDate;->year:I

    iget-short v1, p0, Lj$/time/LocalDate;->day:S

    invoke-static {v0, p1, v1}, Lj$/time/LocalDate;->resolvePreviousValid(III)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Lj$/time/LocalDate;
    .locals 3
    .param p1, "year"    # I

    .line 1082
    iget v0, p0, Lj$/time/LocalDate;->year:I

    if-ne v0, p1, :cond_0

    .line 1083
    return-object p0

    .line 1085
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 1086
    iget-short v0, p0, Lj$/time/LocalDate;->month:S

    iget-short v1, p0, Lj$/time/LocalDate;->day:S

    invoke-static {p1, v0, v1}, Lj$/time/LocalDate;->resolvePreviousValid(III)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 2218
    iget v0, p0, Lj$/time/LocalDate;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2219
    iget-short v0, p0, Lj$/time/LocalDate;->month:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 2220
    iget-short v0, p0, Lj$/time/LocalDate;->day:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 2221
    return-void
.end method
