.class public final Lj$/time/ZonedDateTime;
.super Ljava/lang/Object;
.source "ZonedDateTime.java"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/chrono/ChronoZonedDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/Temporal;",
        "Lj$/time/chrono/ChronoZonedDateTime<",
        "Lj$/time/LocalDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56e37a54888537c2L


# instance fields
.field private final dateTime:Lj$/time/LocalDateTime;

.field private final offset:Lj$/time/ZoneOffset;

.field private final zone:Lj$/time/ZoneId;


# direct methods
.method private constructor <init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V
    .locals 0
    .param p1, "dateTime"    # Lj$/time/LocalDateTime;
    .param p2, "offset"    # Lj$/time/ZoneOffset;
    .param p3, "zone"    # Lj$/time/ZoneId;

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput-object p1, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    .line 611
    iput-object p2, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    .line 612
    iput-object p3, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    .line 613
    return-void
.end method

.method private static create(JILj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 5
    .param p0, "epochSecond"    # J
    .param p2, "nanoOfSecond"    # I
    .param p3, "zone"    # Lj$/time/ZoneId;

    .line 453
    invoke-virtual {p3}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    .line 454
    .local v0, "rules":Lj$/time/zone/ZoneRules;
    int-to-long v1, p2

    invoke-static {p0, p1, v1, v2}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v1

    .line 455
    .local v1, "instant":Lj$/time/Instant;
    invoke-virtual {v0, v1}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v2

    .line 456
    .local v2, "offset":Lj$/time/ZoneOffset;
    invoke-static {p0, p1, p2, v2}, Lj$/time/LocalDateTime;->ofEpochSecond(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v3

    .line 457
    .local v3, "ldt":Lj$/time/LocalDateTime;
    new-instance v4, Lj$/time/ZonedDateTime;

    invoke-direct {v4, v3, v2, p3}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V

    return-object v4
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZonedDateTime;
    .locals 5
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 550
    instance-of v0, p0, Lj$/time/ZonedDateTime;

    if-eqz v0, :cond_0

    .line 551
    move-object v0, p0

    check-cast v0, Lj$/time/ZonedDateTime;

    return-object v0

    .line 554
    :cond_0
    :try_start_0
    invoke-static {p0}, Lj$/time/ZoneId;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZoneId;

    move-result-object v0

    .line 555
    .local v0, "zone":Lj$/time/ZoneId;
    sget-object v1, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    sget-object v1, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    .line 557
    .local v1, "epochSecond":J
    sget-object v3, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v3}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v3

    .line 558
    .local v3, "nanoOfSecond":I
    invoke-static {v1, v2, v3, v0}, Lj$/time/ZonedDateTime;->create(JILj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v4

    return-object v4

    .line 560
    .end local v1    # "epochSecond":J
    .end local v3    # "nanoOfSecond":I
    :cond_1
    invoke-static {p0}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v1

    .line 561
    .local v1, "date":Lj$/time/LocalDate;
    invoke-static {p0}, Lj$/time/LocalTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalTime;

    move-result-object v2

    .line 562
    .local v2, "time":Lj$/time/LocalTime;
    invoke-static {v1, v2, v0}, Lj$/time/ZonedDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v3
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 564
    .end local v0    # "zone":Lj$/time/ZoneId;
    .end local v1    # "date":Lj$/time/LocalDate;
    .end local v2    # "time":Lj$/time/LocalTime;
    :catch_0
    move-exception v0

    .line 565
    .local v0, "ex":Lj$/time/DateTimeException;
    new-instance v1, Lj$/time/DateTimeException;

    .line 566
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain ZonedDateTime from TemporalAccessor: "

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

.method public static now()Lj$/time/ZonedDateTime;
    .locals 1

    .line 199
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/ZonedDateTime;->now(Lj$/time/Clock;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lj$/time/Clock;)Lj$/time/ZonedDateTime;
    .locals 2
    .param p0, "clock"    # Lj$/time/Clock;

    .line 232
    const-string v0, "clock"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    invoke-virtual {p0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    .line 234
    .local v0, "now":Lj$/time/Instant;
    invoke-virtual {p0}, Lj$/time/Clock;->getZone()Lj$/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/ZonedDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1
.end method

.method public static now(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 1
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 216
    invoke-static {p0}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/ZonedDateTime;->now(Lj$/time/Clock;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIIIIILj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "nanoOfSecond"    # I
    .param p7, "zone"    # Lj$/time/ZoneId;

    .line 339
    invoke-static/range {p0 .. p6}, Lj$/time/LocalDateTime;->of(IIIIIII)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 340
    .local v0, "dt":Lj$/time/LocalDateTime;
    const/4 v1, 0x0

    invoke-static {v0, p7, v1}, Lj$/time/ZonedDateTime;->ofLocal(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1
.end method

.method public static of(Lj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 1
    .param p0, "date"    # Lj$/time/LocalDate;
    .param p1, "time"    # Lj$/time/LocalTime;
    .param p2, "zone"    # Lj$/time/ZoneId;

    .line 265
    invoke-static {p0, p1}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-static {v0, p2}, Lj$/time/ZonedDateTime;->of(Lj$/time/LocalDateTime;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lj$/time/LocalDateTime;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 1
    .param p0, "localDateTime"    # Lj$/time/LocalDateTime;
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 293
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lj$/time/ZonedDateTime;->ofLocal(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 3
    .param p0, "instant"    # Lj$/time/Instant;
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 407
    const-string v0, "instant"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 408
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 409
    invoke-virtual {p0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/Instant;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lj$/time/ZonedDateTime;->create(JILj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static ofInstant(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 3
    .param p0, "localDateTime"    # Lj$/time/LocalDateTime;
    .param p1, "offset"    # Lj$/time/ZoneOffset;
    .param p2, "zone"    # Lj$/time/ZoneId;

    .line 433
    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 434
    const-string v0, "offset"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 435
    const-string v0, "zone"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 436
    invoke-virtual {p2}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lj$/time/zone/ZoneRules;->isValidOffset(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    new-instance v0, Lj$/time/ZonedDateTime;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V

    return-object v0

    .line 439
    :cond_0
    invoke-virtual {p0, p1}, Lj$/time/LocalDateTime;->toEpochSecond(Lj$/time/ZoneOffset;)J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/LocalDateTime;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Lj$/time/ZonedDateTime;->create(JILj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private static ofLenient(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 2
    .param p0, "localDateTime"    # Lj$/time/LocalDateTime;
    .param p1, "offset"    # Lj$/time/ZoneOffset;
    .param p2, "zone"    # Lj$/time/ZoneId;

    .line 517
    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 518
    const-string v0, "offset"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 519
    const-string v0, "zone"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 520
    instance-of v0, p2, Lj$/time/ZoneOffset;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ZoneId must match ZoneOffset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_1
    :goto_0
    new-instance v0, Lj$/time/ZonedDateTime;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V

    return-object v0
.end method

.method public static ofLocal(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;
    .locals 5
    .param p0, "localDateTime"    # Lj$/time/LocalDateTime;
    .param p1, "zone"    # Lj$/time/ZoneId;
    .param p2, "preferredOffset"    # Lj$/time/ZoneOffset;

    .line 367
    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 368
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 369
    instance-of v0, p1, Lj$/time/ZoneOffset;

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Lj$/time/ZonedDateTime;

    move-object v1, p1

    check-cast v1, Lj$/time/ZoneOffset;

    invoke-direct {v0, p0, v1, p1}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V

    return-object v0

    .line 372
    :cond_0
    invoke-virtual {p1}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    .line 373
    .local v0, "rules":Lj$/time/zone/ZoneRules;
    invoke-virtual {v0, p0}, Lj$/time/zone/ZoneRules;->getValidOffsets(Lj$/time/LocalDateTime;)Ljava/util/List;

    move-result-object v1

    .line 375
    .local v1, "validOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/time/ZoneOffset;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 376
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/ZoneOffset;

    .local v2, "offset":Lj$/time/ZoneOffset;
    goto :goto_0

    .line 377
    .end local v2    # "offset":Lj$/time/ZoneOffset;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 378
    invoke-virtual {v0, p0}, Lj$/time/zone/ZoneRules;->getTransition(Lj$/time/LocalDateTime;)Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v2

    .line 379
    .local v2, "trans":Lj$/time/zone/ZoneOffsetTransition;
    invoke-virtual {v2}, Lj$/time/zone/ZoneOffsetTransition;->getDuration()Lj$/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lj$/time/LocalDateTime;->plusSeconds(J)Lj$/time/LocalDateTime;

    move-result-object p0

    .line 380
    invoke-virtual {v2}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Lj$/time/ZoneOffset;

    move-result-object v2

    .line 381
    .local v2, "offset":Lj$/time/ZoneOffset;
    goto :goto_0

    .line 382
    .end local v2    # "offset":Lj$/time/ZoneOffset;
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 383
    move-object v2, p2

    .restart local v2    # "offset":Lj$/time/ZoneOffset;
    goto :goto_0

    .line 385
    .end local v2    # "offset":Lj$/time/ZoneOffset;
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/ZoneOffset;

    const-string v3, "offset"

    invoke-static {v2, v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/ZoneOffset;

    .line 388
    .restart local v2    # "offset":Lj$/time/ZoneOffset;
    :goto_0
    new-instance v3, Lj$/time/ZonedDateTime;

    invoke-direct {v3, p0, v2, p1}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V

    return-object v3
.end method

.method public static ofStrict(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 5
    .param p0, "localDateTime"    # Lj$/time/LocalDateTime;
    .param p1, "offset"    # Lj$/time/ZoneOffset;
    .param p2, "zone"    # Lj$/time/ZoneId;

    .line 476
    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 477
    const-string v0, "offset"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 478
    const-string v0, "zone"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 479
    invoke-virtual {p2}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    .line 480
    .local v0, "rules":Lj$/time/zone/ZoneRules;
    invoke-virtual {v0, p0, p1}, Lj$/time/zone/ZoneRules;->isValidOffset(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 481
    invoke-virtual {v0, p0}, Lj$/time/zone/ZoneRules;->getTransition(Lj$/time/LocalDateTime;)Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v1

    .line 482
    .local v1, "trans":Lj$/time/zone/ZoneOffsetTransition;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lj$/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    new-instance v2, Lj$/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalDateTime \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not exist in zone \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' due to a gap in the local time-line, typically caused by daylight savings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 489
    :cond_0
    new-instance v2, Lj$/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZoneOffset \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not valid for LocalDateTime \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in zone \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 492
    .end local v1    # "trans":Lj$/time/zone/ZoneOffsetTransition;
    :cond_1
    new-instance v1, Lj$/time/ZonedDateTime;

    invoke-direct {v1, p0, p1, p2}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V

    return-object v1
.end method

.method public static parse(Ljava/lang/CharSequence;)Lj$/time/ZonedDateTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 583
    sget-object v0, Lj$/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lj$/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/ZonedDateTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 597
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 598
    new-instance v0, Lj$/time/ZonedDateTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/time/ZonedDateTime$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0, v0}, Lj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZonedDateTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/ObjectInput;)Lj$/time/ZonedDateTime;
    .locals 4
    .param p0, "in"    # Ljava/io/ObjectInput;

    .line 2259
    invoke-static {p0}, Lj$/time/LocalDateTime;->readExternal(Ljava/io/DataInput;)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 2260
    .local v0, "dateTime":Lj$/time/LocalDateTime;
    invoke-static {p0}, Lj$/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 2261
    .local v1, "offset":Lj$/time/ZoneOffset;
    invoke-static {p0}, Lj$/time/Ser;->read(Ljava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/ZoneId;

    .line 2262
    .local v2, "zone":Lj$/time/ZoneId;
    invoke-static {v0, v1, v2}, Lj$/time/ZonedDateTime;->ofLenient(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 2249
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resolveInstant(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;
    .locals 2
    .param p1, "newDateTime"    # Lj$/time/LocalDateTime;

    .line 632
    iget-object v0, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    iget-object v1, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-static {p1, v0, v1}, Lj$/time/ZonedDateTime;->ofInstant(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;
    .locals 2
    .param p1, "newDateTime"    # Lj$/time/LocalDateTime;

    .line 622
    iget-object v0, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    iget-object v1, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-static {p1, v0, v1}, Lj$/time/ZonedDateTime;->ofLocal(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private resolveOffset(Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;
    .locals 3
    .param p1, "offset"    # Lj$/time/ZoneOffset;

    .line 644
    iget-object v0, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {p1, v0}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-virtual {v0}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, v1, p1}, Lj$/time/zone/ZoneRules;->isValidOffset(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    new-instance v0, Lj$/time/ZonedDateTime;

    iget-object v1, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v2, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-direct {v0, v1, p1, v2}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V

    return-object v0

    .line 647
    :cond_0
    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 2239
    new-instance v0, Lj$/time/Ser;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public synthetic compareTo(Lj$/time/chrono/ChronoZonedDateTime;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$compareTo(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$compareTo(Lj$/time/chrono/ChronoZonedDateTime;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2182
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2183
    return v0

    .line 2185
    :cond_0
    instance-of v1, p1, Lj$/time/ZonedDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2186
    move-object v1, p1

    check-cast v1, Lj$/time/ZonedDateTime;

    .line 2187
    .local v1, "other":Lj$/time/ZonedDateTime;
    iget-object v3, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v4, v1, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v3, v4}, Lj$/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    iget-object v4, v1, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    .line 2188
    invoke-virtual {v3, v4}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    iget-object v4, v1, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    .line 2189
    invoke-virtual {v3, v4}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2187
    :goto_0
    return v0

    .line 2191
    .end local v1    # "other":Lj$/time/ZonedDateTime;
    :cond_2
    return v2
.end method

.method public format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 2153
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2154
    invoke-virtual {p1, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lj$/time/temporal/TemporalField;)I
    .locals 2
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 814
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 815
    sget-object v0, Lj$/time/ZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 821
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 819
    :pswitch_0
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    return v0

    .line 817
    :pswitch_1
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_0
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$get(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic getChronology()Lj$/time/chrono/Chronology;
    .locals 1

    invoke-static {p0}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$getChronology(Lj$/time/chrono/ChronoZonedDateTime;)Lj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 1096
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Lj$/time/DayOfWeek;
    .locals 1

    .line 1124
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .line 1107
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 1147
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .locals 2
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 851
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 852
    sget-object v0, Lj$/time/ZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 856
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 854
    :pswitch_0
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 853
    :pswitch_1
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    return-wide v0

    .line 858
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

.method public getMinute()I
    .locals 1

    .line 1156
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Lj$/time/Month;
    .locals 1

    .line 1085
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getMonth()Lj$/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .line 1070
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    .line 1174
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Lj$/time/ZoneOffset;
    .locals 1

    .line 871
    iget-object v0, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    .line 1165
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 1056
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getYear()I

    move-result v0

    return v0
.end method

.method public getZone()Lj$/time/ZoneId;
    .locals 1

    .line 946
    iget-object v0, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 2201
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-virtual {v1}, Lj$/time/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public synthetic isAfter(Lj$/time/chrono/ChronoZonedDateTime;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$isAfter(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)Z

    move-result p1

    return p1
.end method

.method public synthetic isBefore(Lj$/time/chrono/ChronoZonedDateTime;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$isBefore(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)Z

    move-result p1

    return p1
.end method

.method public synthetic isEqual(Lj$/time/chrono/ChronoZonedDateTime;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$isEqual(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)Z

    move-result p1

    return p1
.end method

.method public isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 705
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSupported(Lj$/time/temporal/TemporalUnit;)Z
    .locals 1
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 746
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$isSupported(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/ZonedDateTime;
    .locals 3
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1854
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/ZonedDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Lj$/time/ZonedDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/ZonedDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/ZonedDateTime;
    .locals 2
    .param p1, "amountToSubtract"    # Lj$/time/temporal/TemporalAmount;

    .line 1811
    instance-of v0, p1, Lj$/time/Period;

    if-eqz v0, :cond_0

    .line 1812
    move-object v0, p1

    check-cast v0, Lj$/time/Period;

    .line 1813
    .local v0, "periodToSubtract":Lj$/time/Period;
    iget-object v1, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v1, v0}, Lj$/time/LocalDateTime;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v1}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    .line 1815
    .end local v0    # "periodToSubtract":Lj$/time/Period;
    :cond_0
    const-string v0, "amountToSubtract"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1816
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/ZonedDateTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/ZonedDateTime;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lj$/time/ZonedDateTime;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/ZonedDateTime;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lj$/time/ZonedDateTime;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Lj$/time/ZonedDateTime;
    .locals 3
    .param p1, "days"    # J

    .line 1943
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/ZonedDateTime;->plusDays(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/ZonedDateTime;->plusDays(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/ZonedDateTime;->plusDays(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusHours(J)Lj$/time/ZonedDateTime;
    .locals 3
    .param p1, "hours"    # J

    .line 1977
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/ZonedDateTime;->plusHours(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/ZonedDateTime;->plusHours(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/ZonedDateTime;->plusHours(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusMinutes(J)Lj$/time/ZonedDateTime;
    .locals 3
    .param p1, "minutes"    # J

    .line 1995
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/ZonedDateTime;->plusMinutes(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/ZonedDateTime;->plusMinutes(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/ZonedDateTime;->plusMinutes(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusMonths(J)Lj$/time/ZonedDateTime;
    .locals 3
    .param p1, "months"    # J

    .line 1899
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/ZonedDateTime;->plusMonths(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/ZonedDateTime;->plusMonths(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/ZonedDateTime;->plusMonths(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusNanos(J)Lj$/time/ZonedDateTime;
    .locals 3
    .param p1, "nanos"    # J

    .line 2031
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/ZonedDateTime;->plusNanos(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/ZonedDateTime;->plusNanos(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/ZonedDateTime;->plusNanos(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusSeconds(J)Lj$/time/ZonedDateTime;
    .locals 3
    .param p1, "seconds"    # J

    .line 2013
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/ZonedDateTime;->plusSeconds(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/ZonedDateTime;->plusSeconds(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/ZonedDateTime;->plusSeconds(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusWeeks(J)Lj$/time/ZonedDateTime;
    .locals 3
    .param p1, "weeks"    # J

    .line 1921
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/ZonedDateTime;->plusWeeks(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/ZonedDateTime;->plusWeeks(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/ZonedDateTime;->plusWeeks(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusYears(J)Lj$/time/ZonedDateTime;
    .locals 3
    .param p1, "years"    # J

    .line 1877
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/ZonedDateTime;->plusYears(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/ZonedDateTime;->plusYears(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/ZonedDateTime;->plusYears(J)Lj$/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1601
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_1

    .line 1602
    invoke-interface {p3}, Lj$/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/LocalDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1605
    :cond_0
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/LocalDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveInstant(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1608
    :cond_1
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->addTo(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/ZonedDateTime;

    return-object v0
.end method

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/ZonedDateTime;
    .locals 2
    .param p1, "amountToAdd"    # Lj$/time/temporal/TemporalAmount;

    .line 1554
    instance-of v0, p1, Lj$/time/Period;

    if-eqz v0, :cond_0

    .line 1555
    move-object v0, p1

    check-cast v0, Lj$/time/Period;

    .line 1556
    .local v0, "periodToAdd":Lj$/time/Period;
    iget-object v1, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v1, v0}, Lj$/time/LocalDateTime;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v1}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    .line 1558
    .end local v0    # "periodToAdd":Lj$/time/Period;
    :cond_0
    const-string v0, "amountToAdd"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1559
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/ZonedDateTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/ZonedDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lj$/time/ZonedDateTime;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/ZonedDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lj$/time/ZonedDateTime;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "days"    # J

    .line 1697
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->plusDays(J)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "hours"    # J

    .line 1731
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->plusHours(J)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveInstant(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "minutes"    # J

    .line 1749
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->plusMinutes(J)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveInstant(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "months"    # J

    .line 1653
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->plusMonths(J)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "nanos"    # J

    .line 1785
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->plusNanos(J)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveInstant(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "seconds"    # J

    .line 1767
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->plusSeconds(J)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveInstant(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusWeeks(J)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "weeks"    # J

    .line 1675
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->plusWeeks(J)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "years"    # J

    .line 1631
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->plusYears(J)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
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

    .line 2056
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localDate()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2057
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 2059
    :cond_0
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$query(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 775
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 776
    sget-object v0, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 779
    :cond_0
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 777
    :cond_1
    :goto_0
    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 781
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toEpochSecond()J
    .locals 2

    invoke-static {p0}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$toEpochSecond(Lj$/time/chrono/ChronoZonedDateTime;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic toInstant()Lj$/time/Instant;
    .locals 1

    invoke-static {p0}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$toInstant(Lj$/time/chrono/ChronoZonedDateTime;)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDate()Lj$/time/LocalDate;
    .locals 1

    .line 1042
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toLocalDate()Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 164
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Lj$/time/LocalDateTime;
    .locals 1

    .line 1028
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic toLocalDateTime()Lj$/time/chrono/ChronoLocalDateTime;
    .locals 1

    .line 164
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->toLocalDateTime()Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toLocalTime()Lj$/time/LocalTime;
    .locals 1

    .line 1138
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public toOffsetDateTime()Lj$/time/OffsetDateTime;
    .locals 2

    .line 2167
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v1, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-static {v0, v1}, Lj$/time/OffsetDateTime;->of(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2217
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2218
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    iget-object v2, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    if-eq v1, v2, :cond_0

    .line 2219
    iget-object v1, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-virtual {v1}, Lj$/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2221
    :cond_0
    return-object v0
.end method

.method public truncatedTo(Lj$/time/temporal/TemporalUnit;)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1528
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->truncatedTo(Lj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 3
    .param p1, "endExclusive"    # Lj$/time/temporal/Temporal;
    .param p2, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 2130
    invoke-static {p1}, Lj$/time/ZonedDateTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZonedDateTime;

    move-result-object v0

    .line 2131
    .local v0, "end":Lj$/time/ZonedDateTime;
    instance-of v1, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_1

    .line 2132
    iget-object v1, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-virtual {v0, v1}, Lj$/time/ZonedDateTime;->withZoneSameInstant(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v0

    .line 2133
    invoke-interface {p2}, Lj$/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2134
    iget-object v1, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v2, v0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v1, v2, p2}, Lj$/time/LocalDateTime;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v1

    return-wide v1

    .line 2136
    :cond_0
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->toOffsetDateTime()Lj$/time/OffsetDateTime;

    move-result-object v1

    invoke-virtual {v0}, Lj$/time/ZonedDateTime;->toOffsetDateTime()Lj$/time/OffsetDateTime;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lj$/time/OffsetDateTime;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v1

    return-wide v1

    .line 2139
    :cond_1
    invoke-interface {p2, p0, v0}, Lj$/time/temporal/TemporalUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1
.end method

.method public with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/ZonedDateTime;
    .locals 5
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;

    .line 1231
    instance-of v0, p1, Lj$/time/LocalDate;

    if-eqz v0, :cond_0

    .line 1232
    move-object v0, p1

    check-cast v0, Lj$/time/LocalDate;

    iget-object v1, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v1}, Lj$/time/LocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1233
    :cond_0
    instance-of v0, p1, Lj$/time/LocalTime;

    if-eqz v0, :cond_1

    .line 1234
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lj$/time/LocalTime;

    invoke-static {v0, v1}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1235
    :cond_1
    instance-of v0, p1, Lj$/time/LocalDateTime;

    if-eqz v0, :cond_2

    .line 1236
    move-object v0, p1

    check-cast v0, Lj$/time/LocalDateTime;

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1237
    :cond_2
    instance-of v0, p1, Lj$/time/OffsetDateTime;

    if-eqz v0, :cond_3

    .line 1238
    move-object v0, p1

    check-cast v0, Lj$/time/OffsetDateTime;

    .line 1239
    .local v0, "odt":Lj$/time/OffsetDateTime;
    invoke-virtual {v0}, Lj$/time/OffsetDateTime;->toLocalDateTime()Lj$/time/LocalDateTime;

    move-result-object v1

    iget-object v2, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-virtual {v0}, Lj$/time/OffsetDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lj$/time/ZonedDateTime;->ofLocal(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    .line 1240
    .end local v0    # "odt":Lj$/time/OffsetDateTime;
    :cond_3
    instance-of v0, p1, Lj$/time/Instant;

    if-eqz v0, :cond_4

    .line 1241
    move-object v0, p1

    check-cast v0, Lj$/time/Instant;

    .line 1242
    .local v0, "instant":Lj$/time/Instant;
    invoke-virtual {v0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {v0}, Lj$/time/Instant;->getNano()I

    move-result v3

    iget-object v4, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-static {v1, v2, v3, v4}, Lj$/time/ZonedDateTime;->create(JILj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    .line 1243
    .end local v0    # "instant":Lj$/time/Instant;
    :cond_4
    instance-of v0, p1, Lj$/time/ZoneOffset;

    if-eqz v0, :cond_5

    .line 1244
    move-object v0, p1

    check-cast v0, Lj$/time/ZoneOffset;

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveOffset(Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 1246
    :cond_5
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAdjuster;->adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/ZonedDateTime;

    return-object v0
.end method

.method public with(Lj$/time/temporal/TemporalField;J)Lj$/time/ZonedDateTime;
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 1303
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 1304
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 1305
    .local v0, "f":Lj$/time/temporal/ChronoField;
    sget-object v1, Lj$/time/ZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1312
    iget-object v1, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v1, p1, p2, p3}, Lj$/time/LocalDateTime;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v1}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    .line 1309
    :pswitch_0
    invoke-virtual {v0, p2, p3}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v1

    invoke-static {v1}, Lj$/time/ZoneOffset;->ofTotalSeconds(I)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 1310
    .local v1, "offset":Lj$/time/ZoneOffset;
    invoke-direct {p0, v1}, Lj$/time/ZonedDateTime;->resolveOffset(Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    .line 1307
    .end local v1    # "offset":Lj$/time/ZoneOffset;
    :pswitch_1
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getNano()I

    move-result v1

    iget-object v2, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-static {p2, p3, v1, v2}, Lj$/time/ZonedDateTime;->create(JILj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    .line 1314
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_0
    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/TemporalField;->adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/ZonedDateTime;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lj$/time/ZonedDateTime;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/ZonedDateTime;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lj$/time/ZonedDateTime;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0

    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/ZonedDateTime;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfMonth(I)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "dayOfMonth"    # I

    .line 1382
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->withDayOfMonth(I)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "dayOfYear"    # I

    .line 1405
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->withDayOfYear(I)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withEarlierOffsetAtOverlap()Lj$/time/ZonedDateTime;
    .locals 5

    .line 892
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getZone()Lj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, v1}, Lj$/time/zone/ZoneRules;->getTransition(Lj$/time/LocalDateTime;)Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v0

    .line 893
    .local v0, "trans":Lj$/time/zone/ZoneOffsetTransition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj$/time/zone/ZoneOffsetTransition;->isOverlap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    invoke-virtual {v0}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Lj$/time/ZoneOffset;

    move-result-object v1

    .line 895
    .local v1, "earlierOffset":Lj$/time/ZoneOffset;
    iget-object v2, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v1, v2}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 896
    new-instance v2, Lj$/time/ZonedDateTime;

    iget-object v3, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v4, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-direct {v2, v3, v1, v4}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V

    return-object v2

    .line 899
    .end local v1    # "earlierOffset":Lj$/time/ZoneOffset;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic withEarlierOffsetAtOverlap()Lj$/time/chrono/ChronoZonedDateTime;
    .locals 1

    .line 164
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->withEarlierOffsetAtOverlap()Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withFixedOffsetZone()Lj$/time/ZonedDateTime;
    .locals 4

    .line 1014
    iget-object v0, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    iget-object v1, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/ZonedDateTime;

    iget-object v1, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v2, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    iget-object v3, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {v0, v1, v2, v3}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V

    :goto_0
    return-object v0
.end method

.method public withHour(I)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "hour"    # I

    .line 1428
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->withHour(I)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withLaterOffsetAtOverlap()Lj$/time/ZonedDateTime;
    .locals 5

    .line 920
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getZone()Lj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->toLocalDateTime()Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/zone/ZoneRules;->getTransition(Lj$/time/LocalDateTime;)Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v0

    .line 921
    .local v0, "trans":Lj$/time/zone/ZoneOffsetTransition;
    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Lj$/time/ZoneOffset;

    move-result-object v1

    .line 923
    .local v1, "laterOffset":Lj$/time/ZoneOffset;
    iget-object v2, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v1, v2}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 924
    new-instance v2, Lj$/time/ZonedDateTime;

    iget-object v3, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v4, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-direct {v2, v3, v1, v4}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V

    return-object v2

    .line 927
    .end local v1    # "laterOffset":Lj$/time/ZoneOffset;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic withLaterOffsetAtOverlap()Lj$/time/chrono/ChronoZonedDateTime;
    .locals 1

    .line 164
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->withLaterOffsetAtOverlap()Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "minute"    # I

    .line 1450
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->withMinute(I)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMonth(I)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "month"    # I

    .line 1359
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->withMonth(I)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "nanoOfSecond"    # I

    .line 1494
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->withNano(I)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withSecond(I)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "second"    # I

    .line 1472
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->withSecond(I)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "year"    # I

    .line 1337
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->withYear(I)Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/ZonedDateTime;->resolveLocal(Lj$/time/LocalDateTime;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withZoneSameInstant(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 3
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 991
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 992
    iget-object v0, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-virtual {v0, p1}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 993
    :cond_0
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v1, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/LocalDateTime;->toEpochSecond(Lj$/time/ZoneOffset;)J

    move-result-wide v0

    iget-object v2, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v2}, Lj$/time/LocalDateTime;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lj$/time/ZonedDateTime;->create(JILj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v0

    .line 992
    :goto_0
    return-object v0
.end method

.method public bridge synthetic withZoneSameInstant(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lj$/time/ZonedDateTime;->withZoneSameInstant(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withZoneSameLocal(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 2
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 968
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 969
    iget-object v0, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-virtual {v0, p1}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v1, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-static {v0, p1, v1}, Lj$/time/ZonedDateTime;->ofLocal(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic withZoneSameLocal(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lj$/time/ZonedDateTime;->withZoneSameLocal(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 2253
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 2254
    iget-object v0, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 2255
    iget-object v0, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-virtual {v0, p1}, Lj$/time/ZoneId;->write(Ljava/io/DataOutput;)V

    .line 2256
    return-void
.end method
