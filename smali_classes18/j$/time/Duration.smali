.class public final Lj$/time/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Lj$/time/temporal/TemporalAmount;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/time/Duration$DurationUnits;,
        Lj$/time/Duration$Lazy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/TemporalAmount;",
        "Ljava/lang/Comparable<",
        "Lj$/time/Duration;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

.field public static final ZERO:Lj$/time/Duration;

.field private static final serialVersionUID:J = 0x2aba9d02d1c4f832L


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 139
    new-instance v0, Lj$/time/Duration;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lj$/time/Duration;-><init>(JI)V

    sput-object v0, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    .line 147
    const-wide/32 v0, 0x3b9aca00

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lj$/time/Duration;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 0
    .param p1, "seconds"    # J
    .param p3, "nanos"    # I

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iput-wide p1, p0, Lj$/time/Duration;->seconds:J

    .line 529
    iput p3, p0, Lj$/time/Duration;->nanos:I

    .line 530
    return-void
.end method

.method public static between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;
    .locals 10
    .param p0, "startInclusive"    # Lj$/time/temporal/Temporal;
    .param p1, "endExclusive"    # Lj$/time/temporal/Temporal;

    .line 488
    :try_start_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p0, p1, v0}, Lj$/time/temporal/Temporal;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v0
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 489
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 490
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v1, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p0, p1, v1}, Lj$/time/temporal/Temporal;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v1

    .line 493
    .local v1, "secs":J
    :try_start_1
    sget-object v3, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Lj$/time/temporal/Temporal;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sget-object v5, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v5}, Lj$/time/temporal/Temporal;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v5
    :try_end_1
    .catch Lj$/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_2

    sub-long/2addr v3, v5

    .line 494
    .local v3, "nanos":J
    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-lez v9, :cond_0

    cmp-long v9, v3, v7

    if-gez v9, :cond_0

    .line 495
    add-long/2addr v1, v5

    goto :goto_1

    .line 496
    :cond_0
    cmp-long v9, v1, v7

    if-gez v9, :cond_1

    cmp-long v9, v3, v7

    if-lez v9, :cond_1

    .line 497
    sub-long/2addr v1, v5

    .line 501
    :cond_1
    :goto_1
    goto :goto_2

    .line 499
    .end local v3    # "nanos":J
    :catch_2
    move-exception v3

    .line 500
    .local v3, "ex2":Lj$/time/DateTimeException;
    const-wide/16 v4, 0x0

    move-wide v3, v4

    .line 502
    .local v3, "nanos":J
    :goto_2
    invoke-static {v1, v2, v3, v4}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v5

    return-object v5
.end method

.method private static charMatch(Ljava/lang/CharSequence;IIC)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "c"    # C

    .line 421
    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    if-ne p2, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static create(JI)Lj$/time/Duration;
    .locals 5
    .param p0, "seconds"    # J
    .param p2, "nanoAdjustment"    # I

    .line 514
    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 515
    sget-object v0, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    return-object v0

    .line 517
    :cond_0
    new-instance v0, Lj$/time/Duration;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/Duration;-><init>(JI)V

    return-object v0
.end method

.method private static create(Ljava/math/BigDecimal;)Lj$/time/Duration;
    .locals 6
    .param p0, "seconds"    # Ljava/math/BigDecimal;

    .line 1035
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v0

    .line 1036
    .local v0, "nanos":Ljava/math/BigInteger;
    sget-object v1, Lj$/time/Duration;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 1037
    .local v1, "divRem":[Ljava/math/BigInteger;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0x3f

    if-gt v3, v4, :cond_0

    .line 1040
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v2

    return-object v2

    .line 1038
    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exceeds capacity of Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static create(ZJJJJI)Lj$/time/Duration;
    .locals 4
    .param p0, "negate"    # Z
    .param p1, "daysAsSecs"    # J
    .param p3, "hoursAsSecs"    # J
    .param p5, "minsAsSecs"    # J
    .param p7, "secs"    # J
    .param p9, "nanos"    # I

    .line 457
    invoke-static {p5, p6, p7, p8}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    .line 458
    .local v0, "seconds":J
    if-eqz p0, :cond_0

    .line 459
    int-to-long v2, p9

    invoke-static {v0, v1, v2, v3}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/Duration;->negated()Lj$/time/Duration;

    move-result-object v2

    return-object v2

    .line 461
    :cond_0
    int-to-long v2, p9

    invoke-static {v0, v1, v2, v3}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v2

    return-object v2
.end method

.method public static from(Lj$/time/temporal/TemporalAmount;)Lj$/time/Duration;
    .locals 5
    .param p0, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 335
    const-string v0, "amount"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    .line 337
    .local v0, "duration":Lj$/time/Duration;
    invoke-interface {p0}, Lj$/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/temporal/TemporalUnit;

    .line 338
    .local v2, "unit":Lj$/time/temporal/TemporalUnit;
    invoke-interface {p0, v2}, Lj$/time/temporal/TemporalAmount;->get(Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Lj$/time/Duration;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object v0

    .line 339
    .end local v2    # "unit":Lj$/time/temporal/TemporalUnit;
    goto :goto_0

    .line 340
    :cond_0
    return-object v0
.end method

.method public static of(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;
    .locals 1
    .param p0, "amount"    # J
    .param p2, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 310
    sget-object v0, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    invoke-virtual {v0, p0, p1, p2}, Lj$/time/Duration;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofDays(J)Lj$/time/Duration;
    .locals 3
    .param p0, "days"    # J

    .line 181
    const v0, 0x15180

    invoke-static {p0, p1, v0}, Lj$/time/Duration$$ExternalSyntheticBackport7;->m(JI)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofHours(J)Lj$/time/Duration;
    .locals 3
    .param p0, "hours"    # J

    .line 196
    const/16 v0, 0xe10

    invoke-static {p0, p1, v0}, Lj$/time/Duration$$ExternalSyntheticBackport8;->m(JI)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofMillis(J)Lj$/time/Duration;
    .locals 6
    .param p0, "millis"    # J

    .line 262
    const-wide/16 v0, 0x3e8

    div-long v2, p0, v0

    .line 263
    .local v2, "secs":J
    rem-long v0, p0, v0

    long-to-int v1, v0

    .line 264
    .local v1, "mos":I
    if-gez v1, :cond_0

    .line 265
    add-int/lit16 v1, v1, 0x3e8

    .line 266
    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 268
    :cond_0
    const v0, 0xf4240

    mul-int v0, v0, v1

    invoke-static {v2, v3, v0}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofMinutes(J)Lj$/time/Duration;
    .locals 3
    .param p0, "minutes"    # J

    .line 211
    const/16 v0, 0x3c

    invoke-static {p0, p1, v0}, Lj$/time/Duration$$ExternalSyntheticBackport9;->m(JI)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofNanos(J)Lj$/time/Duration;
    .locals 8
    .param p0, "nanos"    # J

    .line 281
    const-wide/32 v0, 0x3b9aca00

    div-long v2, p0, v0

    .line 282
    .local v2, "secs":J
    rem-long v4, p0, v0

    long-to-int v5, v4

    .line 283
    .local v5, "nos":I
    if-gez v5, :cond_0

    .line 284
    int-to-long v6, v5

    add-long/2addr v6, v0

    long-to-int v5, v6

    .line 285
    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    .line 287
    :cond_0
    invoke-static {v2, v3, v5}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofSeconds(J)Lj$/time/Duration;
    .locals 1
    .param p0, "seconds"    # J

    .line 224
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofSeconds(JJ)Lj$/time/Duration;
    .locals 4
    .param p0, "seconds"    # J
    .param p2, "nanoAdjustment"    # J

    .line 247
    const-wide/32 v0, 0x3b9aca00

    invoke-static {p2, p3, v0, v1}, Lj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    .line 248
    .local v2, "secs":J
    invoke-static {p2, p3, v0, v1}, Lj$/time/Clock$TickClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 249
    .local v1, "nos":I
    invoke-static {v2, v3, v1}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lj$/time/Duration;
    .locals 34
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 389
    move-object/from16 v1, p0

    const-string v0, "text"

    invoke-static {v1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lj$/time/Duration$Lazy;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 391
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 393
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    const/16 v5, 0x54

    invoke-static {v1, v4, v0, v5}, Lj$/time/Duration;->charMatch(Ljava/lang/CharSequence;IIC)Z

    move-result v0

    if-nez v0, :cond_4

    .line 394
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    const/16 v6, 0x2d

    invoke-static {v1, v4, v5, v6}, Lj$/time/Duration;->charMatch(Ljava/lang/CharSequence;IIC)Z

    move-result v4

    .line 396
    .local v4, "negate":Z
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v14

    .local v14, "dayStart":I
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    .line 397
    .local v5, "dayEnd":I
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->start(I)I

    move-result v15

    .local v15, "hourStart":I
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    .line 398
    .local v12, "hourEnd":I
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->start(I)I

    move-result v13

    .local v13, "minuteStart":I
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->end(I)I

    move-result v10

    .line 399
    .local v10, "minuteEnd":I
    const/4 v7, 0x6

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    .local v11, "secondStart":I
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    .line 400
    .local v8, "secondEnd":I
    const/4 v7, 0x7

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->start(I)I

    move-result v9

    .local v9, "fractionStart":I
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->end(I)I

    move-result v7

    .line 402
    .local v7, "fractionEnd":I
    if-gez v14, :cond_1

    if-gez v15, :cond_1

    if-gez v13, :cond_1

    if-ltz v11, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 403
    :cond_1
    :goto_0
    const v3, 0x15180

    const-string v6, "days"

    invoke-static {v1, v14, v5, v3, v6}, Lj$/time/Duration;->parseNumber(Ljava/lang/CharSequence;IIILjava/lang/String;)J

    move-result-wide v17

    .line 404
    .local v17, "daysAsSecs":J
    const/16 v3, 0xe10

    const-string v6, "hours"

    invoke-static {v1, v15, v12, v3, v6}, Lj$/time/Duration;->parseNumber(Ljava/lang/CharSequence;IIILjava/lang/String;)J

    move-result-wide v19

    .line 405
    .local v19, "hoursAsSecs":J
    const/16 v3, 0x3c

    const-string v6, "minutes"

    invoke-static {v1, v13, v10, v3, v6}, Lj$/time/Duration;->parseNumber(Ljava/lang/CharSequence;IIILjava/lang/String;)J

    move-result-wide v21

    .line 406
    .local v21, "minsAsSecs":J
    const-string v3, "seconds"

    invoke-static {v1, v11, v8, v0, v3}, Lj$/time/Duration;->parseNumber(Ljava/lang/CharSequence;IIILjava/lang/String;)J

    move-result-wide v23

    .line 407
    .local v23, "seconds":J
    if-ltz v11, :cond_2

    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v6, 0x2d

    if-ne v3, v6, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 408
    .local v3, "negativeSecs":Z
    :goto_1
    if-eqz v3, :cond_3

    const/4 v0, -0x1

    :cond_3
    invoke-static {v1, v9, v7, v0}, Lj$/time/Duration;->parseFraction(Ljava/lang/CharSequence;III)I

    move-result v6

    .line 410
    .local v6, "nanos":I
    move/from16 v25, v7

    .end local v7    # "fractionEnd":I
    .local v25, "fractionEnd":I
    move v7, v4

    move/from16 v26, v8

    move/from16 v27, v9

    .end local v8    # "secondEnd":I
    .end local v9    # "fractionStart":I
    .local v26, "secondEnd":I
    .local v27, "fractionStart":I
    move-wide/from16 v8, v17

    move/from16 v28, v10

    move/from16 v29, v11

    .end local v10    # "minuteEnd":I
    .end local v11    # "secondStart":I
    .local v28, "minuteEnd":I
    .local v29, "secondStart":I
    move-wide/from16 v10, v19

    move/from16 v30, v12

    move/from16 v31, v13

    .end local v12    # "hourEnd":I
    .end local v13    # "minuteStart":I
    .local v30, "hourEnd":I
    .local v31, "minuteStart":I
    move-wide/from16 v12, v21

    move/from16 v32, v14

    move/from16 v33, v15

    .end local v14    # "dayStart":I
    .end local v15    # "hourStart":I
    .local v32, "dayStart":I
    .local v33, "hourStart":I
    move-wide/from16 v14, v23

    move/from16 v16, v6

    :try_start_0
    invoke-static/range {v7 .. v16}, Lj$/time/Duration;->create(ZJJJJI)Lj$/time/Duration;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 411
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 412
    .local v0, "ex":Ljava/lang/ArithmeticException;
    new-instance v7, Lj$/time/format/DateTimeParseException;

    const-string v8, "Text cannot be parsed to a Duration: overflow"

    const/4 v9, 0x0

    invoke-direct {v7, v8, v1, v9}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v7, v0}, Lj$/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Lj$/time/format/DateTimeParseException;

    throw v7

    .line 393
    .end local v0    # "ex":Ljava/lang/ArithmeticException;
    .end local v3    # "negativeSecs":Z
    .end local v4    # "negate":Z
    .end local v5    # "dayEnd":I
    .end local v6    # "nanos":I
    .end local v17    # "daysAsSecs":J
    .end local v19    # "hoursAsSecs":J
    .end local v21    # "minsAsSecs":J
    .end local v23    # "seconds":J
    .end local v25    # "fractionEnd":I
    .end local v26    # "secondEnd":I
    .end local v27    # "fractionStart":I
    .end local v28    # "minuteEnd":I
    .end local v29    # "secondStart":I
    .end local v30    # "hourEnd":I
    .end local v31    # "minuteStart":I
    .end local v32    # "dayStart":I
    .end local v33    # "hourStart":I
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 391
    :cond_5
    const/4 v9, 0x0

    .line 417
    :goto_2
    new-instance v0, Lj$/time/format/DateTimeParseException;

    const-string v3, "Text cannot be parsed to a Duration"

    invoke-direct {v0, v3, v1, v9}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method private static parseFraction(Ljava/lang/CharSequence;III)I
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "negate"    # I

    .line 439
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    sub-int v1, p2, p1

    if-nez v1, :cond_0

    goto :goto_2

    .line 443
    :cond_0
    const/16 v1, 0xa

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lj$/time/Duration$$ExternalSyntheticBackport4;->m(Ljava/lang/CharSequence;III)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .local v0, "fraction":I
    sub-int v1, p2, p1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 448
    mul-int/lit8 v0, v0, 0xa

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    .end local v1    # "i":I
    :cond_1
    mul-int v1, v0, p3

    return v1

    .line 451
    .end local v0    # "fraction":I
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 452
    .local v1, "ex":Ljava/lang/RuntimeException;
    :goto_1
    new-instance v2, Lj$/time/format/DateTimeParseException;

    const-string v3, "Text cannot be parsed to a Duration: fraction"

    invoke-direct {v2, v3, p0, v0}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v1}, Lj$/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lj$/time/format/DateTimeParseException;

    throw v0

    .line 440
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    :goto_2
    return v0
.end method

.method private static parseNumber(Ljava/lang/CharSequence;IIILjava/lang/String;)J
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "multiplier"    # I
    .param p4, "errorText"    # Ljava/lang/String;

    .line 426
    if-ltz p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_1

    .line 430
    :cond_0
    const/16 v0, 0xa

    :try_start_0
    invoke-static {p0, p1, p2, v0}, Lj$/time/Duration$$ExternalSyntheticBackport5;->m(Ljava/lang/CharSequence;III)J

    move-result-wide v0

    .line 431
    .local v0, "val":J
    invoke-static {v0, v1, p3}, Lj$/time/Duration$$ExternalSyntheticBackport6;->m(JI)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 432
    .end local v0    # "val":J
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 433
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v1, Lj$/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text cannot be parsed to a Duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v0}, Lj$/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lj$/time/format/DateTimeParseException;

    throw v1

    .line 427
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private plus(JJ)Lj$/time/Duration;
    .locals 6
    .param p1, "secondsToAdd"    # J
    .param p3, "nanosToAdd"    # J

    .line 826
    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 827
    return-object p0

    .line 829
    :cond_0
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    invoke-static {v0, v1, p1, p2}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    .line 830
    .local v0, "epochSec":J
    const-wide/32 v2, 0x3b9aca00

    div-long v4, p3, v2

    invoke-static {v0, v1, v4, v5}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    .line 831
    rem-long/2addr p3, v2

    .line 832
    iget v2, p0, Lj$/time/Duration;->nanos:I

    int-to-long v2, v2

    add-long/2addr v2, p3

    .line 833
    .local v2, "nanoAdjustment":J
    invoke-static {v0, v1, v2, v3}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v4

    return-object v4
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/Duration;
    .locals 5
    .param p0, "in"    # Ljava/io/DataInput;

    .line 1552
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 1553
    .local v0, "seconds":J
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 1554
    .local v2, "nanos":I
    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 1543
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toBigDecimalSeconds()Ljava/math/BigDecimal;
    .locals 4

    .line 1024
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iget v1, p0, Lj$/time/Duration;->nanos:I

    int-to-long v1, v1

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1533
    new-instance v0, Lj$/time/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abs()Lj$/time/Duration;
    .locals 1

    .line 1071
    invoke-virtual {p0}, Lj$/time/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/time/Duration;->negated()Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 5
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 1101
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1102
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    sget-object v2, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 1104
    :cond_0
    iget v0, p0, Lj$/time/Duration;->nanos:I

    if-eqz v0, :cond_1

    .line 1105
    iget v0, p0, Lj$/time/Duration;->nanos:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 1107
    :cond_1
    return-object p1
.end method

.method public compareTo(Lj$/time/Duration;)I
    .locals 4
    .param p1, "otherDuration"    # Lj$/time/Duration;

    .line 1409
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    iget-wide v2, p1, Lj$/time/Duration;->seconds:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 1410
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 1411
    return v0

    .line 1413
    :cond_0
    iget v1, p0, Lj$/time/Duration;->nanos:I

    iget v2, p1, Lj$/time/Duration;->nanos:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 133
    check-cast p1, Lj$/time/Duration;

    invoke-virtual {p0, p1}, Lj$/time/Duration;->compareTo(Lj$/time/Duration;)I

    move-result p1

    return p1
.end method

.method public dividedBy(Lj$/time/Duration;)J
    .locals 4
    .param p1, "divisor"    # Lj$/time/Duration;

    .line 1011
    const-string v0, "divisor"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1012
    invoke-direct {p0}, Lj$/time/Duration;->toBigDecimalSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1013
    .local v0, "dividendBigD":Ljava/math/BigDecimal;
    invoke-direct {p1}, Lj$/time/Duration;->toBigDecimalSeconds()Ljava/math/BigDecimal;

    move-result-object v1

    .line 1014
    .local v1, "divisorBigD":Ljava/math/BigDecimal;
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v2

    return-wide v2
.end method

.method public dividedBy(J)Lj$/time/Duration;
    .locals 3
    .param p1, "divisor"    # J

    .line 990
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 993
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 994
    return-object p0

    .line 996
    :cond_0
    invoke-direct {p0}, Lj$/time/Duration;->toBigDecimalSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lj$/time/Duration;->create(Ljava/math/BigDecimal;)Lj$/time/Duration;

    move-result-object v0

    return-object v0

    .line 991
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Cannot divide by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "otherDuration"    # Ljava/lang/Object;

    .line 1427
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1428
    return v0

    .line 1430
    :cond_0
    instance-of v1, p1, Lj$/time/Duration;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1431
    move-object v1, p1

    check-cast v1, Lj$/time/Duration;

    .line 1432
    .local v1, "other":Lj$/time/Duration;
    iget-wide v3, p0, Lj$/time/Duration;->seconds:J

    iget-wide v5, v1, Lj$/time/Duration;->seconds:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    iget v3, p0, Lj$/time/Duration;->nanos:I

    iget v4, v1, Lj$/time/Duration;->nanos:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1435
    .end local v1    # "other":Lj$/time/Duration;
    :cond_2
    return v2
.end method

.method public get(Lj$/time/temporal/TemporalUnit;)J
    .locals 3
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 547
    sget-object v0, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    .line 548
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    return-wide v0

    .line 549
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1

    .line 550
    iget v0, p0, Lj$/time/Duration;->nanos:I

    int-to-long v0, v0

    return-wide v0

    .line 552
    :cond_1
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNano()I
    .locals 1

    .line 643
    iget v0, p0, Lj$/time/Duration;->nanos:I

    return v0
.end method

.method public getSeconds()J
    .locals 2

    .line 625
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    return-wide v0
.end method

.method public getUnits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .line 570
    sget-object v0, Lj$/time/Duration$DurationUnits;->UNITS:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1445
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    iget-wide v2, p0, Lj$/time/Duration;->seconds:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v1, v0

    iget v0, p0, Lj$/time/Duration;->nanos:I

    mul-int/lit8 v0, v0, 0x33

    add-int/2addr v1, v0

    return v1
.end method

.method public isNegative()Z
    .locals 5

    .line 606
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero()Z
    .locals 5

    .line 593
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    iget v2, p0, Lj$/time/Duration;->nanos:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;
    .locals 3
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 871
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/Duration;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Lj$/time/Duration;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/Duration;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minus(Lj$/time/Duration;)Lj$/time/Duration;
    .locals 8
    .param p1, "duration"    # Lj$/time/Duration;

    .line 847
    invoke-virtual {p1}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    .line 848
    .local v0, "secsToSubtract":J
    invoke-virtual {p1}, Lj$/time/Duration;->getNano()I

    move-result v2

    .line 849
    .local v2, "nanosToSubtract":I
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 850
    neg-int v3, v2

    int-to-long v3, v3

    const-wide v5, 0x7fffffffffffffffL

    invoke-direct {p0, v5, v6, v3, v4}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v3

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v3

    return-object v3

    .line 852
    :cond_0
    neg-long v3, v0

    neg-int v5, v2

    int-to-long v5, v5

    invoke-direct {p0, v3, v4, v5, v6}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v3

    return-object v3
.end method

.method public minusDays(J)Lj$/time/Duration;
    .locals 3
    .param p1, "daysToSubtract"    # J

    .line 888
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusDays(J)Lj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Duration;->plusDays(J)Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusDays(J)Lj$/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusHours(J)Lj$/time/Duration;
    .locals 3
    .param p1, "hoursToSubtract"    # J

    .line 903
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusHours(J)Lj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Duration;->plusHours(J)Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusHours(J)Lj$/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusMillis(J)Lj$/time/Duration;
    .locals 3
    .param p1, "millisToSubtract"    # J

    .line 944
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusMillis(J)Lj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Duration;->plusMillis(J)Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusMillis(J)Lj$/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusMinutes(J)Lj$/time/Duration;
    .locals 3
    .param p1, "minutesToSubtract"    # J

    .line 918
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusMinutes(J)Lj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Duration;->plusMinutes(J)Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusMinutes(J)Lj$/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusNanos(J)Lj$/time/Duration;
    .locals 3
    .param p1, "nanosToSubtract"    # J

    .line 957
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusNanos(J)Lj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Duration;->plusNanos(J)Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusNanos(J)Lj$/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusSeconds(J)Lj$/time/Duration;
    .locals 3
    .param p1, "secondsToSubtract"    # J

    .line 931
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public multipliedBy(J)Lj$/time/Duration;
    .locals 3
    .param p1, "multiplicand"    # J

    .line 971
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 972
    sget-object v0, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    return-object v0

    .line 974
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 975
    return-object p0

    .line 977
    :cond_1
    invoke-direct {p0}, Lj$/time/Duration;->toBigDecimalSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lj$/time/Duration;->create(Ljava/math/BigDecimal;)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public negated()Lj$/time/Duration;
    .locals 2

    .line 1056
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->multipliedBy(J)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;
    .locals 6
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 710
    const-string v0, "unit"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 711
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 712
    const v0, 0x15180

    invoke-static {p1, p2, v0}, Lj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v1, v2}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0

    .line 714
    :cond_0
    invoke-interface {p3}, Lj$/time/temporal/TemporalUnit;->isDurationEstimated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 717
    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 718
    return-object p0

    .line 720
    :cond_1
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_2

    .line 721
    sget-object v0, Lj$/time/Duration$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v1, p3

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 727
    invoke-interface {p3}, Lj$/time/temporal/TemporalUnit;->getDuration()Lj$/time/Duration;

    move-result-object v0

    iget-wide v0, v0, Lj$/time/Duration;->seconds:J

    invoke-static {v0, v1, p1, p2}, Lj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v0

    return-object v0

    .line 725
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v0

    return-object v0

    .line 724
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lj$/time/Duration;->plusMillis(J)Lj$/time/Duration;

    move-result-object v0

    return-object v0

    .line 723
    :pswitch_2
    const-wide/32 v0, 0x3b9aca00

    div-long v2, p1, v0

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {p0, v2, v3}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v2

    rem-long v0, p1, v0

    mul-long v0, v0, v4

    invoke-virtual {v2, v0, v1}, Lj$/time/Duration;->plusNanos(J)Lj$/time/Duration;

    move-result-object v0

    return-object v0

    .line 722
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lj$/time/Duration;->plusNanos(J)Lj$/time/Duration;

    move-result-object v0

    return-object v0

    .line 729
    :cond_2
    invoke-interface {p3}, Lj$/time/temporal/TemporalUnit;->getDuration()Lj$/time/Duration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lj$/time/Duration;->multipliedBy(J)Lj$/time/Duration;

    move-result-object v0

    .line 730
    .local v0, "duration":Lj$/time/Duration;
    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v1

    invoke-virtual {v0}, Lj$/time/Duration;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lj$/time/Duration;->plusNanos(J)Lj$/time/Duration;

    move-result-object v1

    return-object v1

    .line 715
    .end local v0    # "duration":Lj$/time/Duration;
    :cond_3
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unit must not have an estimated duration"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public plus(Lj$/time/Duration;)Lj$/time/Duration;
    .locals 4
    .param p1, "duration"    # Lj$/time/Duration;

    .line 690
    invoke-virtual {p1}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Lj$/time/Duration;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(J)Lj$/time/Duration;
    .locals 4
    .param p1, "daysToAdd"    # J

    .line 747
    const v0, 0x15180

    invoke-static {p1, p2, v0}, Lj$/time/Duration$$ExternalSyntheticBackport3;->m(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Lj$/time/Duration;
    .locals 4
    .param p1, "hoursToAdd"    # J

    .line 760
    const/16 v0, 0xe10

    invoke-static {p1, p2, v0}, Lj$/time/Duration$$ExternalSyntheticBackport2;->m(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusMillis(J)Lj$/time/Duration;
    .locals 6
    .param p1, "millisToAdd"    # J

    .line 799
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    rem-long v0, p1, v0

    const-wide/32 v4, 0xf4240

    mul-long v0, v0, v4

    invoke-direct {p0, v2, v3, v0, v1}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Lj$/time/Duration;
    .locals 4
    .param p1, "minutesToAdd"    # J

    .line 773
    const/16 v0, 0x3c

    invoke-static {p1, p2, v0}, Lj$/time/Duration$$ExternalSyntheticBackport10;->m(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Lj$/time/Duration;
    .locals 2
    .param p1, "nanosToAdd"    # J

    .line 812
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Lj$/time/Duration;
    .locals 2
    .param p1, "secondsToAdd"    # J

    .line 786
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lj$/time/Duration;->plus(JJ)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 5
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 1136
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1137
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    sget-object v2, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 1139
    :cond_0
    iget v0, p0, Lj$/time/Duration;->nanos:I

    if-eqz v0, :cond_1

    .line 1140
    iget v0, p0, Lj$/time/Duration;->nanos:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 1142
    :cond_1
    return-object p1
.end method

.method public toDays()J
    .locals 4

    .line 1158
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toDaysPart()J
    .locals 4

    .line 1266
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toHours()J
    .locals 4

    .line 1172
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toHoursPart()I
    .locals 4

    .line 1282
    invoke-virtual {p0}, Lj$/time/Duration;->toHours()J

    move-result-wide v0

    const-wide/16 v2, 0x18

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public toMillis()J
    .locals 8

    .line 1217
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    .line 1218
    .local v0, "tempSeconds":J
    iget v2, p0, Lj$/time/Duration;->nanos:I

    int-to-long v2, v2

    .line 1219
    .local v2, "tempNanos":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 1222
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 1223
    const-wide/32 v4, 0x3b9aca00

    sub-long/2addr v2, v4

    .line 1225
    :cond_0
    const/16 v4, 0x3e8

    invoke-static {v0, v1, v4}, Lj$/time/Duration$$ExternalSyntheticBackport11;->m(JI)J

    move-result-wide v4

    .line 1226
    .local v4, "millis":J
    const-wide/32 v6, 0xf4240

    div-long v6, v2, v6

    invoke-static {v4, v5, v6, v7}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    .line 1227
    return-wide v4
.end method

.method public toMillisPart()I
    .locals 2

    .line 1332
    iget v0, p0, Lj$/time/Duration;->nanos:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    return v0
.end method

.method public toMinutes()J
    .locals 4

    .line 1186
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toMinutesPart()I
    .locals 4

    .line 1298
    invoke-virtual {p0}, Lj$/time/Duration;->toMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public toNanos()J
    .locals 9

    .line 1240
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    .line 1241
    .local v0, "tempSeconds":J
    iget v2, p0, Lj$/time/Duration;->nanos:I

    int-to-long v2, v2

    .line 1242
    .local v2, "tempNanos":J
    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x3b9aca00

    cmp-long v8, v0, v4

    if-gez v8, :cond_0

    .line 1245
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 1246
    sub-long/2addr v2, v6

    .line 1248
    :cond_0
    invoke-static {v0, v1, v6, v7}, Lj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v4

    .line 1249
    .local v4, "totalNanos":J
    invoke-static {v4, v5, v2, v3}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    .line 1250
    return-wide v4
.end method

.method public toNanosPart()I
    .locals 1

    .line 1349
    iget v0, p0, Lj$/time/Duration;->nanos:I

    return v0
.end method

.method public toSeconds()J
    .locals 2

    .line 1200
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    return-wide v0
.end method

.method public toSecondsPart()I
    .locals 4

    .line 1314
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1473
    sget-object v0, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    if-ne p0, v0, :cond_0

    .line 1474
    const-string v0, "PT0S"

    return-object v0

    .line 1476
    :cond_0
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    .line 1477
    .local v0, "effectiveTotalSecs":J
    iget-wide v2, p0, Lj$/time/Duration;->seconds:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    iget v2, p0, Lj$/time/Duration;->nanos:I

    if-lez v2, :cond_1

    .line 1478
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 1480
    :cond_1
    const-wide/16 v2, 0xe10

    div-long v6, v0, v2

    .line 1481
    .local v6, "hours":J
    rem-long v2, v0, v2

    const-wide/16 v8, 0x3c

    div-long/2addr v2, v8

    long-to-int v3, v2

    .line 1482
    .local v3, "minutes":I
    rem-long v8, v0, v8

    long-to-int v2, v8

    .line 1483
    .local v2, "secs":I
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x18

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1484
    .local v8, "buf":Ljava/lang/StringBuilder;
    const-string v9, "PT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    cmp-long v9, v6, v4

    if-eqz v9, :cond_2

    .line 1486
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x48

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1488
    :cond_2
    if-eqz v3, :cond_3

    .line 1489
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x4d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1491
    :cond_3
    if-nez v2, :cond_4

    iget v9, p0, Lj$/time/Duration;->nanos:I

    if-nez v9, :cond_4

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_4

    .line 1492
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1494
    :cond_4
    iget-wide v9, p0, Lj$/time/Duration;->seconds:J

    cmp-long v11, v9, v4

    if-gez v11, :cond_6

    iget v9, p0, Lj$/time/Duration;->nanos:I

    if-lez v9, :cond_6

    .line 1495
    if-nez v2, :cond_5

    .line 1496
    const-string v9, "-0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1498
    :cond_5
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1501
    :cond_6
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1503
    :goto_0
    iget v9, p0, Lj$/time/Duration;->nanos:I

    if-lez v9, :cond_9

    .line 1504
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    .line 1505
    .local v9, "pos":I
    iget-wide v10, p0, Lj$/time/Duration;->seconds:J

    cmp-long v12, v10, v4

    if-gez v12, :cond_7

    .line 1506
    iget v4, p0, Lj$/time/Duration;->nanos:I

    int-to-long v4, v4

    const-wide/32 v10, 0x77359400

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1508
    :cond_7
    iget v4, p0, Lj$/time/Duration;->nanos:I

    int-to-long v4, v4

    const-wide/32 v10, 0x3b9aca00

    add-long/2addr v4, v10

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1510
    :goto_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_8

    .line 1511
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 1513
    :cond_8
    const/16 v4, 0x2e

    invoke-virtual {v8, v9, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1515
    .end local v9    # "pos":I
    :cond_9
    const/16 v4, 0x53

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1516
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public truncatedTo(Lj$/time/temporal/TemporalUnit;)Lj$/time/Duration;
    .locals 10
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1378
    const-string v0, "unit"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1379
    sget-object v0, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-wide v3, p0, Lj$/time/Duration;->seconds:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    iget v0, p0, Lj$/time/Duration;->nanos:I

    if-nez v0, :cond_1

    .line 1380
    :cond_0
    new-instance v0, Lj$/time/Duration;

    iget-wide v1, p0, Lj$/time/Duration;->seconds:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lj$/time/Duration;-><init>(JI)V

    return-object v0

    .line 1381
    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_2

    .line 1382
    return-object p0

    .line 1384
    :cond_2
    invoke-interface {p1}, Lj$/time/temporal/TemporalUnit;->getDuration()Lj$/time/Duration;

    move-result-object v0

    .line 1385
    .local v0, "unitDur":Lj$/time/Duration;
    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v3

    const-wide/32 v5, 0x15180

    cmp-long v7, v3, v5

    if-gtz v7, :cond_4

    .line 1388
    invoke-virtual {v0}, Lj$/time/Duration;->toNanos()J

    move-result-wide v3

    .line 1389
    .local v3, "dur":J
    const-wide v7, 0x4e94914f0000L

    rem-long/2addr v7, v3

    cmp-long v9, v7, v1

    if-nez v9, :cond_3

    .line 1392
    iget-wide v1, p0, Lj$/time/Duration;->seconds:J

    rem-long/2addr v1, v5

    const-wide/32 v5, 0x3b9aca00

    mul-long v1, v1, v5

    iget v5, p0, Lj$/time/Duration;->nanos:I

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 1393
    .local v1, "nod":J
    div-long v5, v1, v3

    mul-long v5, v5, v3

    .line 1394
    .local v5, "result":J
    sub-long v7, v5, v1

    invoke-virtual {p0, v7, v8}, Lj$/time/Duration;->plusNanos(J)Lj$/time/Duration;

    move-result-object v7

    return-object v7

    .line 1390
    .end local v1    # "nod":J
    .end local v5    # "result":J
    :cond_3
    new-instance v1, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v2, "Unit must divide into a standard day without remainder"

    invoke-direct {v1, v2}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1386
    .end local v3    # "dur":J
    :cond_4
    new-instance v1, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v2, "Unit is too large to be used for truncation"

    invoke-direct {v1, v2}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public withNanos(I)Lj$/time/Duration;
    .locals 3
    .param p1, "nanoOfSecond"    # I

    .line 675
    sget-object v0, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    .line 676
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    invoke-static {v0, v1, p1}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public withSeconds(J)Lj$/time/Duration;
    .locals 1
    .param p1, "seconds"    # J

    .line 659
    iget v0, p0, Lj$/time/Duration;->nanos:I

    invoke-static {p1, p2, v0}, Lj$/time/Duration;->create(JI)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 1547
    iget-wide v0, p0, Lj$/time/Duration;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1548
    iget v0, p0, Lj$/time/Duration;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1549
    return-void
.end method
