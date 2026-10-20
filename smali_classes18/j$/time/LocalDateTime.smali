.class public final Lj$/time/LocalDateTime;
.super Ljava/lang/Object;
.source "LocalDateTime.java"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/TemporalAdjuster;
.implements Lj$/time/chrono/ChronoLocalDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/Temporal;",
        "Lj$/time/temporal/TemporalAdjuster;",
        "Lj$/time/chrono/ChronoLocalDateTime<",
        "Lj$/time/LocalDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final MAX:Lj$/time/LocalDateTime;

.field public static final MIN:Lj$/time/LocalDateTime;

.field private static final serialVersionUID:J = 0x56266aa6a95fff2eL


# instance fields
.field private final date:Lj$/time/LocalDate;

.field private final time:Lj$/time/LocalTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 144
    sget-object v0, Lj$/time/LocalDate;->MIN:Lj$/time/LocalDate;

    sget-object v1, Lj$/time/LocalTime;->MIN:Lj$/time/LocalTime;

    invoke-static {v0, v1}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    sput-object v0, Lj$/time/LocalDateTime;->MIN:Lj$/time/LocalDateTime;

    .line 151
    sget-object v0, Lj$/time/LocalDate;->MAX:Lj$/time/LocalDate;

    sget-object v1, Lj$/time/LocalTime;->MAX:Lj$/time/LocalTime;

    invoke-static {v0, v1}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    sput-object v0, Lj$/time/LocalDateTime;->MAX:Lj$/time/LocalDateTime;

    return-void
.end method

.method private constructor <init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V
    .locals 0
    .param p1, "date"    # Lj$/time/LocalDate;
    .param p2, "time"    # Lj$/time/LocalTime;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-object p1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    .line 504
    iput-object p2, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    .line 505
    return-void
.end method

.method private compareTo0(Lj$/time/LocalDateTime;)I
    .locals 3
    .param p1, "other"    # Lj$/time/LocalDateTime;

    .line 1827
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {p1}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/LocalDate;->compareTo0(Lj$/time/LocalDate;)I

    move-result v0

    .line 1828
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 1829
    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {p1}, Lj$/time/LocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/time/LocalTime;->compareTo(Lj$/time/LocalTime;)I

    move-result v0

    .line 1831
    :cond_0
    return v0
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDateTime;
    .locals 5
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 448
    instance-of v0, p0, Lj$/time/LocalDateTime;

    if-eqz v0, :cond_0

    .line 449
    move-object v0, p0

    check-cast v0, Lj$/time/LocalDateTime;

    return-object v0

    .line 450
    :cond_0
    instance-of v0, p0, Lj$/time/ZonedDateTime;

    if-eqz v0, :cond_1

    .line 451
    move-object v0, p0

    check-cast v0, Lj$/time/ZonedDateTime;

    invoke-virtual {v0}, Lj$/time/ZonedDateTime;->toLocalDateTime()Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 452
    :cond_1
    instance-of v0, p0, Lj$/time/OffsetDateTime;

    if-eqz v0, :cond_2

    .line 453
    move-object v0, p0

    check-cast v0, Lj$/time/OffsetDateTime;

    invoke-virtual {v0}, Lj$/time/OffsetDateTime;->toLocalDateTime()Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 456
    :cond_2
    :try_start_0
    invoke-static {p0}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v0

    .line 457
    .local v0, "date":Lj$/time/LocalDate;
    invoke-static {p0}, Lj$/time/LocalTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalTime;

    move-result-object v1

    .line 458
    .local v1, "time":Lj$/time/LocalTime;
    new-instance v2, Lj$/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 459
    .end local v0    # "date":Lj$/time/LocalDate;
    .end local v1    # "time":Lj$/time/LocalTime;
    :catch_0
    move-exception v0

    .line 460
    .local v0, "ex":Lj$/time/DateTimeException;
    new-instance v1, Lj$/time/DateTimeException;

    .line 461
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain LocalDateTime from TemporalAccessor: "

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

    invoke-direct {v1, v2, v0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static now()Lj$/time/LocalDateTime;
    .locals 1

    .line 180
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/LocalDateTime;->now(Lj$/time/Clock;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lj$/time/Clock;)Lj$/time/LocalDateTime;
    .locals 5
    .param p0, "clock"    # Lj$/time/Clock;

    .line 210
    const-string v0, "clock"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    .line 212
    .local v0, "now":Lj$/time/Instant;
    invoke-virtual {p0}, Lj$/time/Clock;->getZone()Lj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 213
    .local v1, "offset":Lj$/time/ZoneOffset;
    invoke-virtual {v0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v0}, Lj$/time/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Lj$/time/LocalDateTime;->ofEpochSecond(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v2

    return-object v2
.end method

.method public static now(Lj$/time/ZoneId;)Lj$/time/LocalDateTime;
    .locals 1
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 196
    invoke-static {p0}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/LocalDateTime;->now(Lj$/time/Clock;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIII)Lj$/time/LocalDateTime;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I

    .line 311
    invoke-static {p0, p1, p2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    .line 312
    .local v0, "date":Lj$/time/LocalDate;
    invoke-static {p3, p4}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object v1

    .line 313
    .local v1, "time":Lj$/time/LocalTime;
    new-instance v2, Lj$/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    return-object v2
.end method

.method public static of(IIIIII)Lj$/time/LocalDateTime;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .line 336
    invoke-static {p0, p1, p2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    .line 337
    .local v0, "date":Lj$/time/LocalDate;
    invoke-static {p3, p4, p5}, Lj$/time/LocalTime;->of(III)Lj$/time/LocalTime;

    move-result-object v1

    .line 338
    .local v1, "time":Lj$/time/LocalTime;
    new-instance v2, Lj$/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    return-object v2
.end method

.method public static of(IIIIIII)Lj$/time/LocalDateTime;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "nanoOfSecond"    # I

    .line 361
    invoke-static {p0, p1, p2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    .line 362
    .local v0, "date":Lj$/time/LocalDate;
    invoke-static {p3, p4, p5, p6}, Lj$/time/LocalTime;->of(IIII)Lj$/time/LocalTime;

    move-result-object v1

    .line 363
    .local v1, "time":Lj$/time/LocalTime;
    new-instance v2, Lj$/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    return-object v2
.end method

.method public static of(ILj$/time/Month;III)Lj$/time/LocalDateTime;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # Lj$/time/Month;
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I

    .line 236
    invoke-static {p0, p1, p2}, Lj$/time/LocalDate;->of(ILj$/time/Month;I)Lj$/time/LocalDate;

    move-result-object v0

    .line 237
    .local v0, "date":Lj$/time/LocalDate;
    invoke-static {p3, p4}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object v1

    .line 238
    .local v1, "time":Lj$/time/LocalTime;
    new-instance v2, Lj$/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    return-object v2
.end method

.method public static of(ILj$/time/Month;IIII)Lj$/time/LocalDateTime;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # Lj$/time/Month;
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .line 261
    invoke-static {p0, p1, p2}, Lj$/time/LocalDate;->of(ILj$/time/Month;I)Lj$/time/LocalDate;

    move-result-object v0

    .line 262
    .local v0, "date":Lj$/time/LocalDate;
    invoke-static {p3, p4, p5}, Lj$/time/LocalTime;->of(III)Lj$/time/LocalTime;

    move-result-object v1

    .line 263
    .local v1, "time":Lj$/time/LocalTime;
    new-instance v2, Lj$/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    return-object v2
.end method

.method public static of(ILj$/time/Month;IIIII)Lj$/time/LocalDateTime;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # Lj$/time/Month;
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "nanoOfSecond"    # I

    .line 286
    invoke-static {p0, p1, p2}, Lj$/time/LocalDate;->of(ILj$/time/Month;I)Lj$/time/LocalDate;

    move-result-object v0

    .line 287
    .local v0, "date":Lj$/time/LocalDate;
    invoke-static {p3, p4, p5, p6}, Lj$/time/LocalTime;->of(IIII)Lj$/time/LocalTime;

    move-result-object v1

    .line 288
    .local v1, "time":Lj$/time/LocalTime;
    new-instance v2, Lj$/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    return-object v2
.end method

.method public static of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;
    .locals 1
    .param p0, "date"    # Lj$/time/LocalDate;
    .param p1, "time"    # Lj$/time/LocalTime;

    .line 374
    const-string v0, "date"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 375
    const-string v0, "time"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 376
    new-instance v0, Lj$/time/LocalDateTime;

    invoke-direct {v0, p0, p1}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    return-object v0
.end method

.method public static ofEpochSecond(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;
    .locals 10
    .param p0, "epochSecond"    # J
    .param p2, "nanoOfSecond"    # I
    .param p3, "offset"    # Lj$/time/ZoneOffset;

    .line 417
    const-string v0, "offset"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 419
    invoke-virtual {p3}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p0

    .line 420
    .local v0, "localSecond":J
    const v2, 0x15180

    invoke-static {v0, v1, v2}, Lj$/time/LocalDateTime$$ExternalSyntheticBackport4;->m(JI)J

    move-result-wide v3

    .line 421
    .local v3, "localEpochDay":J
    invoke-static {v0, v1, v2}, Lj$/time/LocalDateTime$$ExternalSyntheticBackport5;->m(JI)I

    move-result v2

    .line 422
    .local v2, "secsOfDay":I
    invoke-static {v3, v4}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    move-result-object v5

    .line 423
    .local v5, "date":Lj$/time/LocalDate;
    int-to-long v6, v2

    const-wide/32 v8, 0x3b9aca00

    mul-long v6, v6, v8

    int-to-long v8, p2

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Lj$/time/LocalTime;->ofNanoOfDay(J)Lj$/time/LocalTime;

    move-result-object v6

    .line 424
    .local v6, "time":Lj$/time/LocalTime;
    new-instance v7, Lj$/time/LocalDateTime;

    invoke-direct {v7, v5, v6}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    return-object v7
.end method

.method public static ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDateTime;
    .locals 5
    .param p0, "instant"    # Lj$/time/Instant;
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 394
    const-string v0, "instant"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 395
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 396
    invoke-virtual {p1}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    .line 397
    .local v0, "rules":Lj$/time/zone/ZoneRules;
    invoke-virtual {v0, p0}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 398
    .local v1, "offset":Lj$/time/ZoneOffset;
    invoke-virtual {p0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {p0}, Lj$/time/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Lj$/time/LocalDateTime;->ofEpochSecond(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v2

    return-object v2
.end method

.method public static parse(Ljava/lang/CharSequence;)Lj$/time/LocalDateTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 477
    sget-object v0, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lj$/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDateTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 491
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 492
    new-instance v0, Lj$/time/LocalDateTime$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lj$/time/LocalDateTime$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p1, p0, v0}, Lj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDateTime;

    return-object v0
.end method

.method private plusWithOverflow(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;
    .locals 17
    .param p1, "newDate"    # Lj$/time/LocalDate;
    .param p2, "hours"    # J
    .param p4, "minutes"    # J
    .param p6, "seconds"    # J
    .param p8, "nanos"    # J
    .param p10, "sign"    # I

    .line 1554
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p10

    or-long v3, p2, p4

    or-long v3, v3, p6

    or-long v3, v3, p8

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 1555
    iget-object v3, v0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-direct {v0, v1, v3}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v3

    return-object v3

    .line 1557
    :cond_0
    const-wide v3, 0x4e94914f0000L

    div-long v5, p8, v3

    const-wide/32 v7, 0x15180

    div-long v9, p6, v7

    add-long/2addr v5, v9

    const-wide/16 v9, 0x5a0

    div-long v11, p4, v9

    add-long/2addr v5, v11

    const-wide/16 v11, 0x18

    div-long v13, p2, v11

    add-long/2addr v5, v13

    .line 1561
    .local v5, "totDays":J
    int-to-long v13, v2

    mul-long v5, v5, v13

    .line 1562
    rem-long v13, p8, v3

    rem-long v7, p6, v7

    const-wide/32 v15, 0x3b9aca00

    mul-long v7, v7, v15

    add-long/2addr v13, v7

    rem-long v7, p4, v9

    const-wide v9, 0xdf8475800L

    mul-long v7, v7, v9

    add-long/2addr v13, v7

    rem-long v7, p2, v11

    const-wide v9, 0x34630b8a000L

    mul-long v7, v7, v9

    add-long/2addr v13, v7

    .line 1566
    .local v13, "totNanos":J
    iget-object v7, v0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v7}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v7

    .line 1567
    .local v7, "curNoD":J
    int-to-long v9, v2

    mul-long v9, v9, v13

    add-long/2addr v9, v7

    .line 1568
    .end local v13    # "totNanos":J
    .local v9, "totNanos":J
    invoke-static {v9, v10, v3, v4}, Lj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v11

    add-long/2addr v5, v11

    .line 1569
    invoke-static {v9, v10, v3, v4}, Lj$/time/Clock$TickClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    .line 1570
    .local v3, "newNoD":J
    cmp-long v11, v3, v7

    if-nez v11, :cond_1

    iget-object v11, v0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    goto :goto_0

    :cond_1
    invoke-static {v3, v4}, Lj$/time/LocalTime;->ofNanoOfDay(J)Lj$/time/LocalTime;

    move-result-object v11

    .line 1571
    .local v11, "newTime":Lj$/time/LocalTime;
    :goto_0
    invoke-virtual {v1, v5, v6}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v12

    invoke-direct {v0, v12, v11}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v12

    return-object v12
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/LocalDateTime;
    .locals 3
    .param p0, "in"    # Ljava/io/DataInput;

    .line 2008
    invoke-static {p0}, Lj$/time/LocalDate;->readExternal(Ljava/io/DataInput;)Lj$/time/LocalDate;

    move-result-object v0

    .line 2009
    .local v0, "date":Lj$/time/LocalDate;
    invoke-static {p0}, Lj$/time/LocalTime;->readExternal(Ljava/io/DataInput;)Lj$/time/LocalTime;

    move-result-object v1

    .line 2010
    .local v1, "time":Lj$/time/LocalTime;
    invoke-static {v0, v1}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v2

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 1999
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;
    .locals 1
    .param p1, "newDate"    # Lj$/time/LocalDate;
    .param p2, "newTime"    # Lj$/time/LocalTime;

    .line 516
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    if-ne v0, p2, :cond_0

    .line 517
    return-object p0

    .line 519
    :cond_0
    new-instance v0, Lj$/time/LocalDateTime;

    invoke-direct {v0, p1, p2}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1989
    new-instance v0, Lj$/time/Ser;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 1629
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$adjustInto(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atOffset(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;
    .locals 1
    .param p1, "offset"    # Lj$/time/ZoneOffset;

    .line 1766
    invoke-static {p0, p1}, Lj$/time/OffsetDateTime;->of(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 1800
    invoke-static {p0, p1}, Lj$/time/ZonedDateTime;->of(Lj$/time/LocalDateTime;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic atZone(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lj$/time/LocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public compareTo(Lj$/time/chrono/ChronoLocalDateTime;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "*>;)I"
        }
    .end annotation

    .line 1820
    .local p1, "other":Lj$/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    instance-of v0, p1, Lj$/time/LocalDateTime;

    if-eqz v0, :cond_0

    .line 1821
    move-object v0, p1

    check-cast v0, Lj$/time/LocalDateTime;

    invoke-direct {p0, v0}, Lj$/time/LocalDateTime;->compareTo0(Lj$/time/LocalDateTime;)I

    move-result v0

    return v0

    .line 1823
    :cond_0
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$compareTo(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 135
    check-cast p1, Lj$/time/chrono/ChronoLocalDateTime;

    invoke-virtual {p0, p1}, Lj$/time/LocalDateTime;->compareTo(Lj$/time/chrono/ChronoLocalDateTime;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1933
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1934
    return v0

    .line 1936
    :cond_0
    instance-of v1, p1, Lj$/time/LocalDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1937
    move-object v1, p1

    check-cast v1, Lj$/time/LocalDateTime;

    .line 1938
    .local v1, "other":Lj$/time/LocalDateTime;
    iget-object v3, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    iget-object v4, v1, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v3, v4}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    iget-object v4, v1, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v3, v4}, Lj$/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1940
    .end local v1    # "other":Lj$/time/LocalDateTime;
    :cond_2
    return v2
.end method

.method public format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 1751
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1752
    invoke-virtual {p1, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lj$/time/temporal/TemporalField;)I
    .locals 2
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 686
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 687
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 688
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v1, p1}, Lj$/time/LocalTime;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v1, p1}, Lj$/time/LocalDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    :goto_0
    return v1

    .line 690
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$get(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public synthetic getChronology()Lj$/time/chrono/Chronology;
    .locals 1

    invoke-static {p0}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$getChronology(Lj$/time/chrono/ChronoLocalDateTime;)Lj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 790
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Lj$/time/DayOfWeek;
    .locals 1

    .line 818
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .line 801
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 841
    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 718
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 719
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 720
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v1, p1}, Lj$/time/LocalTime;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v1, p1}, Lj$/time/LocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    :goto_0
    return-wide v1

    .line 722
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .locals 1

    .line 850
    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Lj$/time/Month;
    .locals 1

    .line 779
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getMonth()Lj$/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .line 764
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    .line 868
    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getSecond()I
    .locals 1

    .line 859
    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 750
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1950
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v1}, Lj$/time/LocalTime;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lj$/time/chrono/ChronoLocalDateTime;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 1857
    .local p1, "other":Lj$/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    instance-of v0, p1, Lj$/time/LocalDateTime;

    if-eqz v0, :cond_1

    .line 1858
    move-object v0, p1

    check-cast v0, Lj$/time/LocalDateTime;

    invoke-direct {p0, v0}, Lj$/time/LocalDateTime;->compareTo0(Lj$/time/LocalDateTime;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1860
    :cond_1
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$isAfter(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    return v0
.end method

.method public isBefore(Lj$/time/chrono/ChronoLocalDateTime;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 1886
    .local p1, "other":Lj$/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    instance-of v0, p1, Lj$/time/LocalDateTime;

    if-eqz v0, :cond_1

    .line 1887
    move-object v0, p1

    check-cast v0, Lj$/time/LocalDateTime;

    invoke-direct {p0, v0}, Lj$/time/LocalDateTime;->compareTo0(Lj$/time/LocalDateTime;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1889
    :cond_1
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$isBefore(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    return v0
.end method

.method public isEqual(Lj$/time/chrono/ChronoLocalDateTime;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 1915
    .local p1, "other":Lj$/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    instance-of v0, p1, Lj$/time/LocalDateTime;

    if-eqz v0, :cond_1

    .line 1916
    move-object v0, p1

    check-cast v0, Lj$/time/LocalDateTime;

    invoke-direct {p0, v0}, Lj$/time/LocalDateTime;->compareTo0(Lj$/time/LocalDateTime;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1918
    :cond_1
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$isEqual(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    return v0
.end method

.method public isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 4
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 575
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 576
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 577
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->isDateBased()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 579
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isSupported(Lj$/time/temporal/TemporalUnit;)Z
    .locals 1
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 620
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$isSupported(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;
    .locals 3
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1395
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/LocalDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Lj$/time/LocalDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/LocalDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalDateTime;
    .locals 3
    .param p1, "amountToSubtract"    # Lj$/time/temporal/TemporalAmount;

    .line 1366
    instance-of v0, p1, Lj$/time/Period;

    if-eqz v0, :cond_0

    .line 1367
    move-object v0, p1

    check-cast v0, Lj$/time/Period;

    .line 1368
    .local v0, "periodToSubtract":Lj$/time/Period;
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v1, v0}, Lj$/time/LocalDate;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v1, v2}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1370
    .end local v0    # "periodToSubtract":Lj$/time/Period;
    :cond_0
    const-string v0, "amountToSubtract"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1371
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 0

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDateTime;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lj$/time/LocalDateTime;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDateTime;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lj$/time/LocalDateTime;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Lj$/time/LocalDateTime;
    .locals 3
    .param p1, "days"    # J

    .line 1482
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDateTime;->plusDays(J)Lj$/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDateTime;->plusDays(J)Lj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDateTime;->plusDays(J)Lj$/time/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusHours(J)Lj$/time/LocalDateTime;
    .locals 11
    .param p1, "hours"    # J

    .line 1496
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v10}, Lj$/time/LocalDateTime;->plusWithOverflow(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMinutes(J)Lj$/time/LocalDateTime;
    .locals 11
    .param p1, "minutes"    # J

    .line 1509
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v10}, Lj$/time/LocalDateTime;->plusWithOverflow(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMonths(J)Lj$/time/LocalDateTime;
    .locals 3
    .param p1, "months"    # J

    .line 1444
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDateTime;->plusMonths(J)Lj$/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDateTime;->plusMonths(J)Lj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDateTime;->plusMonths(J)Lj$/time/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusNanos(J)Lj$/time/LocalDateTime;
    .locals 11
    .param p1, "nanos"    # J

    .line 1535
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    const-wide/16 v6, 0x0

    const/4 v10, -0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v8, p1

    invoke-direct/range {v0 .. v10}, Lj$/time/LocalDateTime;->plusWithOverflow(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Lj$/time/LocalDateTime;
    .locals 11
    .param p1, "seconds"    # J

    .line 1522
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v10}, Lj$/time/LocalDateTime;->plusWithOverflow(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusWeeks(J)Lj$/time/LocalDateTime;
    .locals 3
    .param p1, "weeks"    # J

    .line 1463
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDateTime;->plusWeeks(J)Lj$/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDateTime;->plusWeeks(J)Lj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDateTime;->plusWeeks(J)Lj$/time/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusYears(J)Lj$/time/LocalDateTime;
    .locals 3
    .param p1, "years"    # J

    .line 1420
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDateTime;->plusYears(J)Lj$/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDateTime;->plusYears(J)Lj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDateTime;->plusYears(J)Lj$/time/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;
    .locals 6
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1183
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 1184
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/ChronoUnit;

    .line 1185
    .local v0, "f":Lj$/time/temporal/ChronoUnit;
    sget-object v1, Lj$/time/LocalDateTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1194
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Lj$/time/LocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v1, v2}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1192
    :pswitch_0
    const-wide/16 v1, 0x100

    div-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lj$/time/LocalDateTime;->plusDays(J)Lj$/time/LocalDateTime;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/16 v4, 0xc

    mul-long v1, v1, v4

    invoke-virtual {v3, v1, v2}, Lj$/time/LocalDateTime;->plusHours(J)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1191
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDateTime;->plusHours(J)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1190
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDateTime;->plusMinutes(J)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1189
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDateTime;->plusSeconds(J)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1188
    :pswitch_4
    const-wide/32 v1, 0x5265c00

    div-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lj$/time/LocalDateTime;->plusDays(J)Lj$/time/LocalDateTime;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/32 v4, 0xf4240

    mul-long v1, v1, v4

    invoke-virtual {v3, v1, v2}, Lj$/time/LocalDateTime;->plusNanos(J)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1187
    :pswitch_5
    const-wide v1, 0x141dd76000L

    div-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lj$/time/LocalDateTime;->plusDays(J)Lj$/time/LocalDateTime;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/16 v4, 0x3e8

    mul-long v1, v1, v4

    invoke-virtual {v3, v1, v2}, Lj$/time/LocalDateTime;->plusNanos(J)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1186
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalDateTime;->plusNanos(J)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1196
    .end local v0    # "f":Lj$/time/temporal/ChronoUnit;
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->addTo(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDateTime;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalDateTime;
    .locals 3
    .param p1, "amountToAdd"    # Lj$/time/temporal/TemporalAmount;

    .line 1147
    instance-of v0, p1, Lj$/time/Period;

    if-eqz v0, :cond_0

    .line 1148
    move-object v0, p1

    check-cast v0, Lj$/time/Period;

    .line 1149
    .local v0, "periodToAdd":Lj$/time/Period;
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v1, v0}, Lj$/time/LocalDate;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v1, v2}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 1151
    .end local v0    # "periodToAdd":Lj$/time/Period;
    :cond_0
    const-string v0, "amountToAdd"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1152
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 0

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lj$/time/LocalDateTime;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lj$/time/LocalDateTime;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Lj$/time/LocalDateTime;
    .locals 2
    .param p1, "days"    # J

    .line 1286
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v0

    .line 1287
    .local v0, "newDate":Lj$/time/LocalDate;
    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public plusHours(J)Lj$/time/LocalDateTime;
    .locals 11
    .param p1, "hours"    # J

    .line 1301
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v10}, Lj$/time/LocalDateTime;->plusWithOverflow(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Lj$/time/LocalDateTime;
    .locals 11
    .param p1, "minutes"    # J

    .line 1314
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v10}, Lj$/time/LocalDateTime;->plusWithOverflow(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Lj$/time/LocalDateTime;
    .locals 2
    .param p1, "months"    # J

    .line 1246
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v0

    .line 1247
    .local v0, "newDate":Lj$/time/LocalDate;
    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public plusNanos(J)Lj$/time/LocalDateTime;
    .locals 11
    .param p1, "nanos"    # J

    .line 1340
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    const-wide/16 v6, 0x0

    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v8, p1

    invoke-direct/range {v0 .. v10}, Lj$/time/LocalDateTime;->plusWithOverflow(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Lj$/time/LocalDateTime;
    .locals 11
    .param p1, "seconds"    # J

    .line 1327
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v10}, Lj$/time/LocalDateTime;->plusWithOverflow(Lj$/time/LocalDate;JJJJI)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusWeeks(J)Lj$/time/LocalDateTime;
    .locals 2
    .param p1, "weeks"    # J

    .line 1266
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusWeeks(J)Lj$/time/LocalDate;

    move-result-object v0

    .line 1267
    .local v0, "newDate":Lj$/time/LocalDate;
    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public plusYears(J)Lj$/time/LocalDateTime;
    .locals 2
    .param p1, "years"    # J

    .line 1221
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusYears(J)Lj$/time/LocalDate;

    move-result-object v0

    .line 1222
    .local v0, "newDate":Lj$/time/LocalDate;
    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

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

    .line 1596
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localDate()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1597
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    return-object v0

    .line 1599
    :cond_0
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$query(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 2
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 649
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 650
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 651
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v1, p1}, Lj$/time/LocalTime;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v1, p1}, Lj$/time/LocalDate;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    :goto_0
    return-object v1

    .line 653
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toEpochSecond(Lj$/time/ZoneOffset;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$toEpochSecond(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/ZoneOffset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic toInstant(Lj$/time/ZoneOffset;)Lj$/time/Instant;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$toInstant(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public toLocalDate()Lj$/time/LocalDate;
    .locals 1

    .line 736
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic toLocalDate()Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalTime()Lj$/time/LocalTime;
    .locals 1

    .line 832
    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1972
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v1}, Lj$/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "T"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;
    .locals 2
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1121
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v1, p1}, Lj$/time/LocalTime;->truncatedTo(Lj$/time/temporal/TemporalUnit;)Lj$/time/LocalTime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 12
    .param p1, "endExclusive"    # Lj$/time/temporal/Temporal;
    .param p2, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1683
    invoke-static {p1}, Lj$/time/LocalDateTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 1684
    .local v0, "end":Lj$/time/LocalDateTime;
    instance-of v1, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_5

    .line 1685
    invoke-interface {p2}, Lj$/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_2

    .line 1686
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    iget-object v4, v0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v1, v4}, Lj$/time/LocalDate;->daysUntil(Lj$/time/LocalDate;)J

    move-result-wide v4

    .line 1687
    .local v4, "amount":J
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 1688
    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    iget-object v2, v0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v1, v2, p2}, Lj$/time/LocalTime;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v1

    return-wide v1

    .line 1690
    :cond_0
    iget-object v1, v0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v1}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v8

    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v1}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 1691
    .local v8, "timePart":J
    const-wide v10, 0x4e94914f0000L

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 1692
    sub-long/2addr v4, v2

    .line 1693
    add-long/2addr v8, v10

    goto :goto_0

    .line 1695
    :cond_1
    add-long/2addr v4, v2

    .line 1696
    sub-long/2addr v8, v10

    .line 1698
    :goto_0
    sget-object v1, Lj$/time/LocalDateTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v2, p2

    check-cast v2, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v2}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1723
    :pswitch_0
    const/4 v1, 0x2

    invoke-static {v4, v5, v1}, Lj$/time/LocalDateTime$$ExternalSyntheticBackport3;->m(JI)J

    move-result-wide v4

    .line 1724
    const-wide v1, 0x274a48a78000L

    div-long/2addr v8, v1

    goto :goto_1

    .line 1719
    :pswitch_1
    const/16 v1, 0x18

    invoke-static {v4, v5, v1}, Lj$/time/LocalDateTime$$ExternalSyntheticBackport2;->m(JI)J

    move-result-wide v4

    .line 1720
    const-wide v1, 0x34630b8a000L

    div-long/2addr v8, v1

    .line 1721
    goto :goto_1

    .line 1715
    :pswitch_2
    const/16 v1, 0x5a0

    invoke-static {v4, v5, v1}, Lj$/time/LocalDateTime$$ExternalSyntheticBackport1;->m(JI)J

    move-result-wide v4

    .line 1716
    const-wide v1, 0xdf8475800L

    div-long/2addr v8, v1

    .line 1717
    goto :goto_1

    .line 1711
    :pswitch_3
    const v1, 0x15180

    invoke-static {v4, v5, v1}, Lj$/time/LocalDateTime$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v4

    .line 1712
    const-wide/32 v1, 0x3b9aca00

    div-long/2addr v8, v1

    .line 1713
    goto :goto_1

    .line 1707
    :pswitch_4
    const-wide/32 v1, 0x5265c00

    invoke-static {v4, v5, v1, v2}, Lj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v4

    .line 1708
    const-wide/32 v1, 0xf4240

    div-long/2addr v8, v1

    .line 1709
    goto :goto_1

    .line 1703
    :pswitch_5
    const-wide v1, 0x141dd76000L

    invoke-static {v4, v5, v1, v2}, Lj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v4

    .line 1704
    const-wide/16 v1, 0x3e8

    div-long/2addr v8, v1

    .line 1705
    goto :goto_1

    .line 1700
    :pswitch_6
    invoke-static {v4, v5, v10, v11}, Lj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v4

    .line 1701
    nop

    .line 1727
    :goto_1
    invoke-static {v4, v5, v8, v9}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v1

    return-wide v1

    .line 1729
    .end local v4    # "amount":J
    .end local v8    # "timePart":J
    :cond_2
    iget-object v1, v0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    .line 1730
    .local v1, "endDate":Lj$/time/LocalDate;
    iget-object v4, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v1, v4}, Lj$/time/LocalDate;->isAfter(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    iget-object v5, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v4, v5}, Lj$/time/LocalTime;->isBefore(Lj$/time/LocalTime;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1731
    invoke-virtual {v1, v2, v3}, Lj$/time/LocalDate;->minusDays(J)Lj$/time/LocalDate;

    move-result-object v1

    goto :goto_2

    .line 1732
    :cond_3
    iget-object v4, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v1, v4}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    iget-object v5, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v4, v5}, Lj$/time/LocalTime;->isAfter(Lj$/time/LocalTime;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1733
    invoke-virtual {v1, v2, v3}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v1

    .line 1735
    :cond_4
    :goto_2
    iget-object v2, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v2, v1, p2}, Lj$/time/LocalDate;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v2

    return-wide v2

    .line 1737
    .end local v1    # "endDate":Lj$/time/LocalDate;
    :cond_5
    invoke-interface {p2, p0, v0}, Lj$/time/temporal/TemporalUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/LocalDateTime;
    .locals 2
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;

    .line 919
    instance-of v0, p1, Lj$/time/LocalDate;

    if-eqz v0, :cond_0

    .line 920
    move-object v0, p1

    check-cast v0, Lj$/time/LocalDate;

    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 921
    :cond_0
    instance-of v0, p1, Lj$/time/LocalTime;

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    move-object v1, p1

    check-cast v1, Lj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 923
    :cond_1
    instance-of v0, p1, Lj$/time/LocalDateTime;

    if-eqz v0, :cond_2

    .line 924
    move-object v0, p1

    check-cast v0, Lj$/time/LocalDateTime;

    return-object v0

    .line 926
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAdjuster;->adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalDateTime;
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 965
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 966
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 967
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    iget-object v2, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v2, p1, p2, p3}, Lj$/time/LocalTime;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalTime;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 970
    :cond_0
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Lj$/time/LocalDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v1, v2}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 973
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/TemporalField;->adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lj$/time/LocalDateTime;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 0

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDateTime;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lj$/time/LocalDateTime;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalDateTime;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfMonth(I)Lj$/time/LocalDateTime;
    .locals 2
    .param p1, "dayOfMonth"    # I

    .line 1023
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->withDayOfMonth(I)Lj$/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Lj$/time/LocalDateTime;
    .locals 2
    .param p1, "dayOfYear"    # I

    .line 1039
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->withDayOfYear(I)Lj$/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withHour(I)Lj$/time/LocalDateTime;
    .locals 2
    .param p1, "hour"    # I

    .line 1053
    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->withHour(I)Lj$/time/LocalTime;

    move-result-object v0

    .line 1054
    .local v0, "newTime":Lj$/time/LocalTime;
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-direct {p0, v1, v0}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withMinute(I)Lj$/time/LocalDateTime;
    .locals 2
    .param p1, "minute"    # I

    .line 1067
    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->withMinute(I)Lj$/time/LocalTime;

    move-result-object v0

    .line 1068
    .local v0, "newTime":Lj$/time/LocalTime;
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-direct {p0, v1, v0}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withMonth(I)Lj$/time/LocalDateTime;
    .locals 2
    .param p1, "month"    # I

    .line 1006
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->withMonth(I)Lj$/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Lj$/time/LocalDateTime;
    .locals 2
    .param p1, "nanoOfSecond"    # I

    .line 1095
    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->withNano(I)Lj$/time/LocalTime;

    move-result-object v0

    .line 1096
    .local v0, "newTime":Lj$/time/LocalTime;
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-direct {p0, v1, v0}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withSecond(I)Lj$/time/LocalDateTime;
    .locals 2
    .param p1, "second"    # I

    .line 1081
    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->withSecond(I)Lj$/time/LocalTime;

    move-result-object v0

    .line 1082
    .local v0, "newTime":Lj$/time/LocalTime;
    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-direct {p0, v1, v0}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withYear(I)Lj$/time/LocalDateTime;
    .locals 2
    .param p1, "year"    # I

    .line 990
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->withYear(I)Lj$/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Lj$/time/LocalDateTime;->with(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 2003
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 2004
    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 2005
    return-void
.end method
