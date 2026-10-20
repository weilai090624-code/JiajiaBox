.class public final Lj$/time/LocalTime;
.super Ljava/lang/Object;
.source "LocalTime.java"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/Temporal;",
        "Lj$/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Lj$/time/LocalTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final HOURS:[Lj$/time/LocalTime;

.field static final HOURS_PER_DAY:I = 0x18

.field public static final MAX:Lj$/time/LocalTime;

.field static final MICROS_PER_DAY:J = 0x141dd76000L

.field public static final MIDNIGHT:Lj$/time/LocalTime;

.field static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MIN:Lj$/time/LocalTime;

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field static final NANOS_PER_HOUR:J = 0x34630b8a000L

.field static final NANOS_PER_MILLI:J = 0xf4240L

.field static final NANOS_PER_MINUTE:J = 0xdf8475800L

.field static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field public static final NOON:Lj$/time/LocalTime;

.field static final SECONDS_PER_DAY:I = 0x15180

.field static final SECONDS_PER_HOUR:I = 0xe10

.field static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final serialVersionUID:J = 0x5904a8b626e1a4f1L


# instance fields
.field private final hour:B

.field private final minute:B

.field private final nano:I

.field private final second:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 149
    const/16 v0, 0x18

    new-array v0, v0, [Lj$/time/LocalTime;

    sput-object v0, Lj$/time/LocalTime;->HOURS:[Lj$/time/LocalTime;

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lj$/time/LocalTime;->HOURS:[Lj$/time/LocalTime;

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 152
    sget-object v1, Lj$/time/LocalTime;->HOURS:[Lj$/time/LocalTime;

    new-instance v3, Lj$/time/LocalTime;

    invoke-direct {v3, v0, v2, v2, v2}, Lj$/time/LocalTime;-><init>(IIII)V

    aput-object v3, v1, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Lj$/time/LocalTime;->HOURS:[Lj$/time/LocalTime;

    aget-object v0, v0, v2

    sput-object v0, Lj$/time/LocalTime;->MIDNIGHT:Lj$/time/LocalTime;

    .line 155
    sget-object v0, Lj$/time/LocalTime;->HOURS:[Lj$/time/LocalTime;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    sput-object v0, Lj$/time/LocalTime;->NOON:Lj$/time/LocalTime;

    .line 156
    sget-object v0, Lj$/time/LocalTime;->HOURS:[Lj$/time/LocalTime;

    aget-object v0, v0, v2

    sput-object v0, Lj$/time/LocalTime;->MIN:Lj$/time/LocalTime;

    .line 157
    new-instance v0, Lj$/time/LocalTime;

    const/16 v1, 0x17

    const v2, 0x3b9ac9ff

    const/16 v3, 0x3b

    invoke-direct {v0, v1, v3, v3, v2}, Lj$/time/LocalTime;-><init>(IIII)V

    sput-object v0, Lj$/time/LocalTime;->MAX:Lj$/time/LocalTime;

    .line 158
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "nanoOfSecond"    # I

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    int-to-byte v0, p1

    iput-byte v0, p0, Lj$/time/LocalTime;->hour:B

    .line 495
    int-to-byte v0, p2

    iput-byte v0, p0, Lj$/time/LocalTime;->minute:B

    .line 496
    int-to-byte v0, p3

    iput-byte v0, p0, Lj$/time/LocalTime;->second:B

    .line 497
    iput p4, p0, Lj$/time/LocalTime;->nano:I

    .line 498
    return-void
.end method

.method private static create(IIII)Lj$/time/LocalTime;
    .locals 1
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I
    .param p3, "nanoOfSecond"    # I

    .line 479
    or-int v0, p1, p2

    or-int/2addr v0, p3

    if-nez v0, :cond_0

    .line 480
    sget-object v0, Lj$/time/LocalTime;->HOURS:[Lj$/time/LocalTime;

    aget-object v0, v0, p0

    return-object v0

    .line 482
    :cond_0
    new-instance v0, Lj$/time/LocalTime;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/time/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalTime;
    .locals 5
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 427
    const-string v0, "temporal"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 428
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localTime()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/LocalTime;

    .line 429
    .local v0, "time":Lj$/time/LocalTime;
    if-eqz v0, :cond_0

    .line 433
    return-object v0

    .line 430
    :cond_0
    new-instance v1, Lj$/time/DateTimeException;

    .line 431
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain LocalTime from TemporalAccessor: "

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
    .locals 4
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 684
    sget-object v0, Lj$/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xc

    packed-switch v0, :pswitch_data_0

    .line 701
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

    .line 699
    :pswitch_0
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    div-int/2addr v0, v1

    return v0

    .line 698
    :pswitch_1
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    if-nez v0, :cond_0

    const/16 v0, 0x18

    goto :goto_0

    :cond_0
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    :goto_0
    return v0

    .line 697
    :pswitch_2
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    return v0

    .line 696
    :pswitch_3
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    rem-int/2addr v0, v1

    .local v0, "ham":I
    rem-int/lit8 v2, v0, 0xc

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1

    .line 695
    .end local v0    # "ham":I
    :pswitch_4
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    rem-int/2addr v0, v1

    return v0

    .line 694
    :pswitch_5
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    mul-int/lit8 v0, v0, 0x3c

    iget-byte v1, p0, Lj$/time/LocalTime;->minute:B

    add-int/2addr v0, v1

    return v0

    .line 693
    :pswitch_6
    iget-byte v0, p0, Lj$/time/LocalTime;->minute:B

    return v0

    .line 692
    :pswitch_7
    invoke-virtual {p0}, Lj$/time/LocalTime;->toSecondOfDay()I

    move-result v0

    return v0

    .line 691
    :pswitch_8
    iget-byte v0, p0, Lj$/time/LocalTime;->second:B

    return v0

    .line 690
    :pswitch_9
    invoke-virtual {p0}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1

    .line 689
    :pswitch_a
    iget v0, p0, Lj$/time/LocalTime;->nano:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    return v0

    .line 688
    :pswitch_b
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'MicroOfDay\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :pswitch_c
    iget v0, p0, Lj$/time/LocalTime;->nano:I

    div-int/lit16 v0, v0, 0x3e8

    return v0

    .line 686
    :pswitch_d
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'NanoOfDay\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :pswitch_e
    iget v0, p0, Lj$/time/LocalTime;->nano:I

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
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

.method public static now()Lj$/time/LocalTime;
    .locals 1

    .line 248
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/LocalTime;->now(Lj$/time/Clock;)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lj$/time/Clock;)Lj$/time/LocalTime;
    .locals 2
    .param p0, "clock"    # Lj$/time/Clock;

    .line 278
    const-string v0, "clock"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    invoke-virtual {p0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    .line 280
    .local v0, "now":Lj$/time/Instant;
    invoke-virtual {p0}, Lj$/time/Clock;->getZone()Lj$/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/LocalTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public static now(Lj$/time/ZoneId;)Lj$/time/LocalTime;
    .locals 1
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 264
    invoke-static {p0}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/LocalTime;->now(Lj$/time/Clock;)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(II)Lj$/time/LocalTime;
    .locals 3
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    .line 296
    sget-object v0, Lj$/time/temporal/ChronoField;->HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 297
    if-nez p1, :cond_0

    .line 298
    sget-object v0, Lj$/time/LocalTime;->HOURS:[Lj$/time/LocalTime;

    aget-object v0, v0, p0

    return-object v0

    .line 300
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 301
    new-instance v0, Lj$/time/LocalTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lj$/time/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static of(III)Lj$/time/LocalTime;
    .locals 3
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I

    .line 317
    sget-object v0, Lj$/time/temporal/ChronoField;->HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 318
    or-int v0, p1, p2

    if-nez v0, :cond_0

    .line 319
    sget-object v0, Lj$/time/LocalTime;->HOURS:[Lj$/time/LocalTime;

    aget-object v0, v0, p0

    return-object v0

    .line 321
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 322
    sget-object v0, Lj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Lj$/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 323
    new-instance v0, Lj$/time/LocalTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lj$/time/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static of(IIII)Lj$/time/LocalTime;
    .locals 3
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I
    .param p3, "nanoOfSecond"    # I

    .line 339
    sget-object v0, Lj$/time/temporal/ChronoField;->HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 340
    sget-object v0, Lj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 341
    sget-object v0, Lj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Lj$/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 342
    sget-object v0, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 343
    invoke-static {p0, p1, p2, p3}, Lj$/time/LocalTime;->create(IIII)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalTime;
    .locals 8
    .param p0, "instant"    # Lj$/time/Instant;
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 360
    const-string v0, "instant"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 361
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    invoke-virtual {p1}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v0

    .line 363
    .local v0, "offset":Lj$/time/ZoneOffset;
    invoke-virtual {p0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {v0}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 364
    .local v1, "localSecond":J
    const v3, 0x15180

    invoke-static {v1, v2, v3}, Lj$/time/LocalTime$$ExternalSyntheticBackport0;->m(JI)I

    move-result v3

    .line 365
    .local v3, "secsOfDay":I
    int-to-long v4, v3

    const-wide/32 v6, 0x3b9aca00

    mul-long v4, v4, v6

    invoke-virtual {p0}, Lj$/time/Instant;->getNano()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Lj$/time/LocalTime;->ofNanoOfDay(J)Lj$/time/LocalTime;

    move-result-object v4

    return-object v4
.end method

.method public static ofNanoOfDay(J)Lj$/time/LocalTime;
    .locals 8
    .param p0, "nanoOfDay"    # J

    .line 398
    sget-object v0, Lj$/time/temporal/ChronoField;->NANO_OF_DAY:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, p0, p1}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 399
    const-wide v0, 0x34630b8a000L

    div-long v2, p0, v0

    long-to-int v3, v2

    .line 400
    .local v3, "hours":I
    int-to-long v4, v3

    mul-long v4, v4, v0

    sub-long/2addr p0, v4

    .line 401
    const-wide v0, 0xdf8475800L

    div-long v4, p0, v0

    long-to-int v2, v4

    .line 402
    .local v2, "minutes":I
    int-to-long v4, v2

    mul-long v4, v4, v0

    sub-long/2addr p0, v4

    .line 403
    const-wide/32 v0, 0x3b9aca00

    div-long v4, p0, v0

    long-to-int v5, v4

    .line 404
    .local v5, "seconds":I
    int-to-long v6, v5

    mul-long v6, v6, v0

    sub-long/2addr p0, v6

    .line 405
    long-to-int v0, p0

    invoke-static {v3, v2, v5, v0}, Lj$/time/LocalTime;->create(IIII)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static ofSecondOfDay(J)Lj$/time/LocalTime;
    .locals 4
    .param p0, "secondOfDay"    # J

    .line 380
    sget-object v0, Lj$/time/temporal/ChronoField;->SECOND_OF_DAY:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, p0, p1}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 381
    const-wide/16 v0, 0xe10

    div-long v0, p0, v0

    long-to-int v1, v0

    .line 382
    .local v1, "hours":I
    mul-int/lit16 v0, v1, 0xe10

    int-to-long v2, v0

    sub-long/2addr p0, v2

    .line 383
    const-wide/16 v2, 0x3c

    div-long v2, p0, v2

    long-to-int v0, v2

    .line 384
    .local v0, "minutes":I
    mul-int/lit8 v2, v0, 0x3c

    int-to-long v2, v2

    sub-long/2addr p0, v2

    .line 385
    long-to-int v2, p0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lj$/time/LocalTime;->create(IIII)Lj$/time/LocalTime;

    move-result-object v2

    return-object v2
.end method

.method public static parse(Ljava/lang/CharSequence;)Lj$/time/LocalTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 448
    sget-object v0, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Lj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lj$/time/LocalTime;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 462
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 463
    new-instance v0, Lj$/time/LocalTime$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lj$/time/LocalTime$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p0, v0}, Lj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/LocalTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/LocalTime;
    .locals 5
    .param p0, "in"    # Ljava/io/DataInput;

    .line 1714
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 1715
    .local v0, "hour":I
    const/4 v1, 0x0

    .line 1716
    .local v1, "minute":I
    const/4 v2, 0x0

    .line 1717
    .local v2, "second":I
    const/4 v3, 0x0

    .line 1718
    .local v3, "nano":I
    if-gez v0, :cond_0

    .line 1719
    not-int v0, v0

    goto :goto_0

    .line 1721
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 1722
    if-gez v1, :cond_1

    .line 1723
    not-int v1, v1

    goto :goto_0

    .line 1725
    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 1726
    if-gez v2, :cond_2

    .line 1727
    not-int v2, v2

    goto :goto_0

    .line 1729
    :cond_2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 1733
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lj$/time/LocalTime;->of(IIII)Lj$/time/LocalTime;

    move-result-object v4

    return-object v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 1688
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1678
    new-instance v0, Lj$/time/Ser;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 1355
    sget-object v0, Lj$/time/temporal/ChronoField;->NANO_OF_DAY:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atDate(Lj$/time/LocalDate;)Lj$/time/LocalDateTime;
    .locals 1
    .param p1, "date"    # Lj$/time/LocalDate;

    .line 1449
    invoke-static {p1, p0}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atOffset(Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;
    .locals 1
    .param p1, "offset"    # Lj$/time/ZoneOffset;

    .line 1462
    invoke-static {p0, p1}, Lj$/time/OffsetTime;->of(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lj$/time/LocalTime;)I
    .locals 3
    .param p1, "other"    # Lj$/time/LocalTime;

    .line 1529
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    iget-byte v1, p1, Lj$/time/LocalTime;->hour:B

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1530
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 1531
    iget-byte v1, p0, Lj$/time/LocalTime;->minute:B

    iget-byte v2, p1, Lj$/time/LocalTime;->minute:B

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1532
    if-nez v0, :cond_0

    .line 1533
    iget-byte v1, p0, Lj$/time/LocalTime;->second:B

    iget-byte v2, p1, Lj$/time/LocalTime;->second:B

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1534
    if-nez v0, :cond_0

    .line 1535
    iget v1, p0, Lj$/time/LocalTime;->nano:I

    iget v2, p1, Lj$/time/LocalTime;->nano:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1539
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 125
    check-cast p1, Lj$/time/LocalTime;

    invoke-virtual {p0, p1}, Lj$/time/LocalTime;->compareTo(Lj$/time/LocalTime;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1581
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1582
    return v0

    .line 1584
    :cond_0
    instance-of v1, p1, Lj$/time/LocalTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1585
    move-object v1, p1

    check-cast v1, Lj$/time/LocalTime;

    .line 1586
    .local v1, "other":Lj$/time/LocalTime;
    iget-byte v3, p0, Lj$/time/LocalTime;->hour:B

    iget-byte v4, v1, Lj$/time/LocalTime;->hour:B

    if-ne v3, v4, :cond_1

    iget-byte v3, p0, Lj$/time/LocalTime;->minute:B

    iget-byte v4, v1, Lj$/time/LocalTime;->minute:B

    if-ne v3, v4, :cond_1

    iget-byte v3, p0, Lj$/time/LocalTime;->second:B

    iget-byte v4, v1, Lj$/time/LocalTime;->second:B

    if-ne v3, v4, :cond_1

    iget v3, p0, Lj$/time/LocalTime;->nano:I

    iget v4, v1, Lj$/time/LocalTime;->nano:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1589
    .end local v1    # "other":Lj$/time/LocalTime;
    :cond_2
    return v2
.end method

.method public format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 1434
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1435
    invoke-virtual {p1, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lj$/time/temporal/TemporalField;)I
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 640
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 641
    invoke-direct {p0, p1}, Lj$/time/LocalTime;->get0(Lj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 643
    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$get(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 711
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    return v0
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .locals 4
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 671
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 672
    sget-object v0, Lj$/time/temporal/ChronoField;->NANO_OF_DAY:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 673
    invoke-virtual {p0}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    return-wide v0

    .line 675
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->MICRO_OF_DAY:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 676
    invoke-virtual {p0}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0

    .line 678
    :cond_1
    invoke-direct {p0, p1}, Lj$/time/LocalTime;->get0(Lj$/time/temporal/TemporalField;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 680
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .locals 1

    .line 720
    iget-byte v0, p0, Lj$/time/LocalTime;->minute:B

    return v0
.end method

.method public getNano()I
    .locals 1

    .line 738
    iget v0, p0, Lj$/time/LocalTime;->nano:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .line 729
    iget-byte v0, p0, Lj$/time/LocalTime;->second:B

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1599
    invoke-virtual {p0}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    .line 1600
    .local v0, "nod":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v3, v2

    return v3
.end method

.method public isAfter(Lj$/time/LocalTime;)Z
    .locals 1
    .param p1, "other"    # Lj$/time/LocalTime;

    .line 1551
    invoke-virtual {p0, p1}, Lj$/time/LocalTime;->compareTo(Lj$/time/LocalTime;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBefore(Lj$/time/LocalTime;)Z
    .locals 1
    .param p1, "other"    # Lj$/time/LocalTime;

    .line 1563
    invoke-virtual {p0, p1}, Lj$/time/LocalTime;->compareTo(Lj$/time/LocalTime;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 540
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 541
    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    return v0

    .line 543
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

.method public isSupported(Lj$/time/temporal/TemporalUnit;)Z
    .locals 1
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 576
    instance-of v0, p1, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 577
    invoke-interface {p1}, Lj$/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v0

    return v0

    .line 579
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

.method public minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalTime;
    .locals 3
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1228
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/LocalTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Lj$/time/LocalTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/LocalTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalTime;
    .locals 1
    .param p1, "amountToSubtract"    # Lj$/time/temporal/TemporalAmount;

    .line 1204
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/LocalTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalTime;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lj$/time/LocalTime;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public minusHours(J)Lj$/time/LocalTime;
    .locals 2
    .param p1, "hoursToSubtract"    # J

    .line 1244
    const-wide/16 v0, 0x18

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalTime;->plusHours(J)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMinutes(J)Lj$/time/LocalTime;
    .locals 2
    .param p1, "minutesToSubtract"    # J

    .line 1259
    const-wide/16 v0, 0x5a0

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalTime;->plusMinutes(J)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public minusNanos(J)Lj$/time/LocalTime;
    .locals 2
    .param p1, "nanosToSubtract"    # J

    .line 1289
    const-wide v0, 0x4e94914f0000L

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalTime;->plusNanos(J)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Lj$/time/LocalTime;
    .locals 2
    .param p1, "secondsToSubtract"    # J

    .line 1274
    const-wide/32 v0, 0x15180

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalTime;->plusSeconds(J)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalTime;
    .locals 4
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1067
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 1068
    sget-object v0, Lj$/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v1, p3

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1077
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

    .line 1075
    :pswitch_0
    const-wide/16 v0, 0x2

    rem-long v0, p1, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalTime;->plusHours(J)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1074
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalTime;->plusHours(J)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1073
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalTime;->plusMinutes(J)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1072
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalTime;->plusSeconds(J)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1071
    :pswitch_4
    const-wide/32 v0, 0x5265c00

    rem-long v0, p1, v0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalTime;->plusNanos(J)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1070
    :pswitch_5
    const-wide v0, 0x141dd76000L

    rem-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalTime;->plusNanos(J)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1069
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lj$/time/LocalTime;->plusNanos(J)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1079
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->addTo(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/LocalTime;

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

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalTime;
    .locals 1
    .param p1, "amountToAdd"    # Lj$/time/temporal/TemporalAmount;

    .line 1010
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/LocalTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lj$/time/LocalTime;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(J)Lj$/time/LocalTime;
    .locals 4
    .param p1, "hoursToAdd"    # J

    .line 1095
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1096
    return-object p0

    .line 1098
    :cond_0
    const-wide/16 v0, 0x18

    rem-long v0, p1, v0

    long-to-int v1, v0

    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x18

    rem-int/lit8 v1, v1, 0x18

    .line 1099
    .local v1, "newHour":I
    iget-byte v0, p0, Lj$/time/LocalTime;->minute:B

    iget-byte v2, p0, Lj$/time/LocalTime;->second:B

    iget v3, p0, Lj$/time/LocalTime;->nano:I

    invoke-static {v1, v0, v2, v3}, Lj$/time/LocalTime;->create(IIII)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Lj$/time/LocalTime;
    .locals 6
    .param p1, "minutesToAdd"    # J

    .line 1114
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1115
    return-object p0

    .line 1117
    :cond_0
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    mul-int/lit8 v0, v0, 0x3c

    iget-byte v1, p0, Lj$/time/LocalTime;->minute:B

    add-int/2addr v0, v1

    .line 1118
    .local v0, "mofd":I
    const-wide/16 v1, 0x5a0

    rem-long v1, p1, v1

    long-to-int v2, v1

    add-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x5a0

    rem-int/lit16 v2, v2, 0x5a0

    .line 1119
    .local v2, "newMofd":I
    if-ne v0, v2, :cond_1

    .line 1120
    return-object p0

    .line 1122
    :cond_1
    div-int/lit8 v1, v2, 0x3c

    .line 1123
    .local v1, "newHour":I
    rem-int/lit8 v3, v2, 0x3c

    .line 1124
    .local v3, "newMinute":I
    iget-byte v4, p0, Lj$/time/LocalTime;->second:B

    iget v5, p0, Lj$/time/LocalTime;->nano:I

    invoke-static {v1, v3, v4, v5}, Lj$/time/LocalTime;->create(IIII)Lj$/time/LocalTime;

    move-result-object v4

    return-object v4
.end method

.method public plusNanos(J)Lj$/time/LocalTime;
    .locals 12
    .param p1, "nanosToAdd"    # J

    .line 1166
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1167
    return-object p0

    .line 1169
    :cond_0
    invoke-virtual {p0}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    .line 1170
    .local v0, "nofd":J
    const-wide v2, 0x4e94914f0000L

    rem-long v4, p1, v2

    add-long/2addr v4, v0

    add-long/2addr v4, v2

    rem-long/2addr v4, v2

    .line 1171
    .local v4, "newNofd":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 1172
    return-object p0

    .line 1174
    :cond_1
    const-wide v2, 0x34630b8a000L

    div-long v2, v4, v2

    long-to-int v3, v2

    .line 1175
    .local v3, "newHour":I
    const-wide v6, 0xdf8475800L

    div-long v6, v4, v6

    const-wide/16 v8, 0x3c

    rem-long/2addr v6, v8

    long-to-int v2, v6

    .line 1176
    .local v2, "newMinute":I
    const-wide/32 v6, 0x3b9aca00

    div-long v10, v4, v6

    rem-long/2addr v10, v8

    long-to-int v8, v10

    .line 1177
    .local v8, "newSecond":I
    rem-long v6, v4, v6

    long-to-int v7, v6

    .line 1178
    .local v7, "newNano":I
    invoke-static {v3, v2, v8, v7}, Lj$/time/LocalTime;->create(IIII)Lj$/time/LocalTime;

    move-result-object v6

    return-object v6
.end method

.method public plusSeconds(J)Lj$/time/LocalTime;
    .locals 6
    .param p1, "secondstoAdd"    # J

    .line 1139
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1140
    return-object p0

    .line 1142
    :cond_0
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    mul-int/lit16 v0, v0, 0xe10

    iget-byte v1, p0, Lj$/time/LocalTime;->minute:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget-byte v1, p0, Lj$/time/LocalTime;->second:B

    add-int/2addr v0, v1

    .line 1144
    .local v0, "sofd":I
    const-wide/32 v1, 0x15180

    rem-long v1, p1, v1

    long-to-int v2, v1

    add-int/2addr v2, v0

    const v1, 0x15180

    add-int/2addr v2, v1

    rem-int/2addr v2, v1

    .line 1145
    .local v2, "newSofd":I
    if-ne v0, v2, :cond_1

    .line 1146
    return-object p0

    .line 1148
    :cond_1
    div-int/lit16 v1, v2, 0xe10

    .line 1149
    .local v1, "newHour":I
    div-int/lit8 v3, v2, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    .line 1150
    .local v3, "newMinute":I
    rem-int/lit8 v4, v2, 0x3c

    .line 1151
    .local v4, "newSecond":I
    iget v5, p0, Lj$/time/LocalTime;->nano:I

    invoke-static {v1, v3, v4, v5}, Lj$/time/LocalTime;->create(IIII)Lj$/time/LocalTime;

    move-result-object v5

    return-object v5
.end method

.method public query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1314
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zoneId()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_4

    .line 1315
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zone()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->offset()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1317
    :cond_0
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localTime()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1318
    return-object p0

    .line 1319
    :cond_1
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localDate()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 1320
    return-object v1

    .line 1321
    :cond_2
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->precision()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 1322
    sget-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    return-object v0

    .line 1326
    :cond_3
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalQuery;->queryFrom(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1316
    :cond_4
    :goto_0
    return-object v1
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 608
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$range(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toEpochSecond(Lj$/time/LocalDate;Lj$/time/ZoneOffset;)J
    .locals 6
    .param p1, "date"    # Lj$/time/LocalDate;
    .param p2, "offset"    # Lj$/time/ZoneOffset;

    .line 1509
    const-string v0, "date"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1510
    const-string v0, "offset"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1511
    invoke-virtual {p1}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    .line 1512
    .local v0, "epochDay":J
    const-wide/32 v2, 0x15180

    mul-long v2, v2, v0

    invoke-virtual {p0}, Lj$/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 1513
    .local v2, "secs":J
    invoke-virtual {p2}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 1514
    return-wide v2
.end method

.method public toNanoOfDay()J
    .locals 6

    .line 1486
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    int-to-long v0, v0

    const-wide v2, 0x34630b8a000L

    mul-long v0, v0, v2

    .line 1487
    .local v0, "total":J
    iget-byte v2, p0, Lj$/time/LocalTime;->minute:B

    int-to-long v2, v2

    const-wide v4, 0xdf8475800L

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    .line 1488
    iget-byte v2, p0, Lj$/time/LocalTime;->second:B

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    .line 1489
    iget v2, p0, Lj$/time/LocalTime;->nano:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1490
    return-wide v0
.end method

.method public toSecondOfDay()I
    .locals 2

    .line 1473
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    mul-int/lit16 v0, v0, 0xe10

    .line 1474
    .local v0, "total":I
    iget-byte v1, p0, Lj$/time/LocalTime;->minute:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    .line 1475
    iget-byte v1, p0, Lj$/time/LocalTime;->second:B

    add-int/2addr v0, v1

    .line 1476
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1622
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1623
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-byte v1, p0, Lj$/time/LocalTime;->hour:B

    .line 1624
    .local v1, "hourValue":I
    iget-byte v2, p0, Lj$/time/LocalTime;->minute:B

    .line 1625
    .local v2, "minuteValue":I
    iget-byte v3, p0, Lj$/time/LocalTime;->second:B

    .line 1626
    .local v3, "secondValue":I
    iget v4, p0, Lj$/time/LocalTime;->nano:I

    .line 1627
    .local v4, "nanoValue":I
    const/16 v5, 0xa

    if-ge v1, v5, :cond_0

    const-string v6, "0"

    goto :goto_0

    :cond_0
    const-string v6, ""

    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1628
    const-string v7, ":0"

    const-string v8, ":"

    if-ge v2, v5, :cond_1

    move-object v9, v7

    goto :goto_1

    :cond_1
    move-object v9, v8

    :goto_1
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1629
    if-gtz v3, :cond_2

    if-lez v4, :cond_6

    .line 1630
    :cond_2
    if-ge v3, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v7, v8

    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1631
    if-lez v4, :cond_6

    .line 1632
    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1633
    const v5, 0xf4240

    rem-int v6, v4, v5

    const/4 v7, 0x1

    if-nez v6, :cond_4

    .line 1634
    div-int v5, v4, v5

    add-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1635
    :cond_4
    rem-int/lit16 v6, v4, 0x3e8

    if-nez v6, :cond_5

    .line 1636
    div-int/lit16 v6, v4, 0x3e8

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1638
    :cond_5
    const v5, 0x3b9aca00

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public truncatedTo(Lj$/time/temporal/TemporalUnit;)Lj$/time/LocalTime;
    .locals 8
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 972
    sget-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    .line 973
    return-object p0

    .line 975
    :cond_0
    invoke-interface {p1}, Lj$/time/temporal/TemporalUnit;->getDuration()Lj$/time/Duration;

    move-result-object v0

    .line 976
    .local v0, "unitDur":Lj$/time/Duration;
    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v1

    const-wide/32 v3, 0x15180

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 979
    invoke-virtual {v0}, Lj$/time/Duration;->toNanos()J

    move-result-wide v1

    .line 980
    .local v1, "dur":J
    const-wide v3, 0x4e94914f0000L

    rem-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 983
    invoke-virtual {p0}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v3

    .line 984
    .local v3, "nod":J
    div-long v5, v3, v1

    mul-long v5, v5, v1

    invoke-static {v5, v6}, Lj$/time/LocalTime;->ofNanoOfDay(J)Lj$/time/LocalTime;

    move-result-object v5

    return-object v5

    .line 981
    .end local v3    # "nod":J
    :cond_1
    new-instance v3, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v4, "Unit must divide into a standard day without remainder"

    invoke-direct {v3, v4}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 977
    .end local v1    # "dur":J
    :cond_2
    new-instance v1, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v2, "Unit is too large to be used for truncation"

    invoke-direct {v1, v2}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 6
    .param p1, "endExclusive"    # Lj$/time/temporal/Temporal;
    .param p2, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1407
    invoke-static {p1}, Lj$/time/LocalTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalTime;

    move-result-object v0

    .line 1408
    .local v0, "end":Lj$/time/LocalTime;
    instance-of v1, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 1409
    invoke-virtual {v0}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-virtual {p0}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1410
    .local v1, "nanosUntil":J
    sget-object v3, Lj$/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v4, p2

    check-cast v4, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1419
    new-instance v3, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1417
    :pswitch_0
    const-wide v3, 0x274a48a78000L

    div-long v3, v1, v3

    return-wide v3

    .line 1416
    :pswitch_1
    const-wide v3, 0x34630b8a000L

    div-long v3, v1, v3

    return-wide v3

    .line 1415
    :pswitch_2
    const-wide v3, 0xdf8475800L

    div-long v3, v1, v3

    return-wide v3

    .line 1414
    :pswitch_3
    const-wide/32 v3, 0x3b9aca00

    div-long v3, v1, v3

    return-wide v3

    .line 1413
    :pswitch_4
    const-wide/32 v3, 0xf4240

    div-long v3, v1, v3

    return-wide v3

    .line 1412
    :pswitch_5
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    return-wide v3

    .line 1411
    :pswitch_6
    return-wide v1

    .line 1421
    .end local v1    # "nanosUntil":J
    :cond_0
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

.method public with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/LocalTime;
    .locals 1
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;

    .line 766
    instance-of v0, p1, Lj$/time/LocalTime;

    if-eqz v0, :cond_0

    .line 767
    move-object v0, p1

    check-cast v0, Lj$/time/LocalTime;

    return-object v0

    .line 769
    :cond_0
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAdjuster;->adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/LocalTime;

    return-object v0
.end method

.method public with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalTime;
    .locals 6
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 856
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 857
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 858
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 859
    sget-object v1, Lj$/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc

    packed-switch v1, :pswitch_data_0

    .line 876
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

    .line 874
    :pswitch_0
    iget-byte v1, p0, Lj$/time/LocalTime;->hour:B

    div-int/lit8 v1, v1, 0xc

    int-to-long v1, v1

    sub-long v1, p2, v1

    mul-long v1, v1, v4

    invoke-virtual {p0, v1, v2}, Lj$/time/LocalTime;->plusHours(J)Lj$/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 873
    :pswitch_1
    const-wide/16 v4, 0x18

    cmp-long v1, p2, v4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, p2

    :goto_0
    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lj$/time/LocalTime;->withHour(I)Lj$/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 872
    :pswitch_2
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lj$/time/LocalTime;->withHour(I)Lj$/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 871
    :pswitch_3
    cmp-long v1, p2, v4

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    iget-byte v1, p0, Lj$/time/LocalTime;->hour:B

    rem-int/lit8 v1, v1, 0xc

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lj$/time/LocalTime;->plusHours(J)Lj$/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 870
    :pswitch_4
    iget-byte v1, p0, Lj$/time/LocalTime;->hour:B

    rem-int/lit8 v1, v1, 0xc

    int-to-long v1, v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Lj$/time/LocalTime;->plusHours(J)Lj$/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 869
    :pswitch_5
    iget-byte v1, p0, Lj$/time/LocalTime;->hour:B

    mul-int/lit8 v1, v1, 0x3c

    iget-byte v2, p0, Lj$/time/LocalTime;->minute:B

    add-int/2addr v1, v2

    int-to-long v1, v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Lj$/time/LocalTime;->plusMinutes(J)Lj$/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 868
    :pswitch_6
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lj$/time/LocalTime;->withMinute(I)Lj$/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 867
    :pswitch_7
    invoke-virtual {p0}, Lj$/time/LocalTime;->toSecondOfDay()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Lj$/time/LocalTime;->plusSeconds(J)Lj$/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 866
    :pswitch_8
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lj$/time/LocalTime;->withSecond(I)Lj$/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 865
    :pswitch_9
    const-wide/32 v1, 0xf4240

    mul-long v1, v1, p2

    invoke-static {v1, v2}, Lj$/time/LocalTime;->ofNanoOfDay(J)Lj$/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 864
    :pswitch_a
    long-to-int v1, p2

    const v2, 0xf4240

    mul-int v1, v1, v2

    invoke-virtual {p0, v1}, Lj$/time/LocalTime;->withNano(I)Lj$/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 863
    :pswitch_b
    const-wide/16 v1, 0x3e8

    mul-long v1, v1, p2

    invoke-static {v1, v2}, Lj$/time/LocalTime;->ofNanoOfDay(J)Lj$/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 862
    :pswitch_c
    long-to-int v1, p2

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p0, v1}, Lj$/time/LocalTime;->withNano(I)Lj$/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 861
    :pswitch_d
    invoke-static {p2, p3}, Lj$/time/LocalTime;->ofNanoOfDay(J)Lj$/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 860
    :pswitch_e
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lj$/time/LocalTime;->withNano(I)Lj$/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 878
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/TemporalField;->adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/LocalTime;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
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

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lj$/time/LocalTime;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/LocalTime;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public withHour(I)Lj$/time/LocalTime;
    .locals 3
    .param p1, "hour"    # I

    .line 892
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    if-ne v0, p1, :cond_0

    .line 893
    return-object p0

    .line 895
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 896
    iget-byte v0, p0, Lj$/time/LocalTime;->minute:B

    iget-byte v1, p0, Lj$/time/LocalTime;->second:B

    iget v2, p0, Lj$/time/LocalTime;->nano:I

    invoke-static {p1, v0, v1, v2}, Lj$/time/LocalTime;->create(IIII)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Lj$/time/LocalTime;
    .locals 3
    .param p1, "minute"    # I

    .line 909
    iget-byte v0, p0, Lj$/time/LocalTime;->minute:B

    if-ne v0, p1, :cond_0

    .line 910
    return-object p0

    .line 912
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 913
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    iget-byte v1, p0, Lj$/time/LocalTime;->second:B

    iget v2, p0, Lj$/time/LocalTime;->nano:I

    invoke-static {v0, p1, v1, v2}, Lj$/time/LocalTime;->create(IIII)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Lj$/time/LocalTime;
    .locals 3
    .param p1, "nanoOfSecond"    # I

    .line 943
    iget v0, p0, Lj$/time/LocalTime;->nano:I

    if-ne v0, p1, :cond_0

    .line 944
    return-object p0

    .line 946
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 947
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    iget-byte v1, p0, Lj$/time/LocalTime;->minute:B

    iget-byte v2, p0, Lj$/time/LocalTime;->second:B

    invoke-static {v0, v1, v2, p1}, Lj$/time/LocalTime;->create(IIII)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public withSecond(I)Lj$/time/LocalTime;
    .locals 3
    .param p1, "second"    # I

    .line 926
    iget-byte v0, p0, Lj$/time/LocalTime;->second:B

    if-ne v0, p1, :cond_0

    .line 927
    return-object p0

    .line 929
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 930
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    iget-byte v1, p0, Lj$/time/LocalTime;->minute:B

    iget v2, p0, Lj$/time/LocalTime;->nano:I

    invoke-static {v0, v1, p1, v2}, Lj$/time/LocalTime;->create(IIII)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 1692
    iget v0, p0, Lj$/time/LocalTime;->nano:I

    if-nez v0, :cond_2

    .line 1693
    iget-byte v0, p0, Lj$/time/LocalTime;->second:B

    if-nez v0, :cond_1

    .line 1694
    iget-byte v0, p0, Lj$/time/LocalTime;->minute:B

    if-nez v0, :cond_0

    .line 1695
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 1697
    :cond_0
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1698
    iget-byte v0, p0, Lj$/time/LocalTime;->minute:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 1701
    :cond_1
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1702
    iget-byte v0, p0, Lj$/time/LocalTime;->minute:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1703
    iget-byte v0, p0, Lj$/time/LocalTime;->second:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 1706
    :cond_2
    iget-byte v0, p0, Lj$/time/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1707
    iget-byte v0, p0, Lj$/time/LocalTime;->minute:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1708
    iget-byte v0, p0, Lj$/time/LocalTime;->second:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1709
    iget v0, p0, Lj$/time/LocalTime;->nano:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1711
    :goto_0
    return-void
.end method
