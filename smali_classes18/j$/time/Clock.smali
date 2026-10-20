.class public abstract Lj$/time/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/time/Clock$TickClock;,
        Lj$/time/Clock$OffsetClock;,
        Lj$/time/Clock$FixedClock;,
        Lj$/time/Clock$SystemClock;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    return-void
.end method

.method public static fixed(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/Clock;
    .locals 1
    .param p0, "fixedInstant"    # Lj$/time/Instant;
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 348
    const-string v0, "fixedInstant"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 349
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    new-instance v0, Lj$/time/Clock$FixedClock;

    invoke-direct {v0, p0, p1}, Lj$/time/Clock$FixedClock;-><init>(Lj$/time/Instant;Lj$/time/ZoneId;)V

    return-object v0
.end method

.method public static offset(Lj$/time/Clock;Lj$/time/Duration;)Lj$/time/Clock;
    .locals 1
    .param p0, "baseClock"    # Lj$/time/Clock;
    .param p1, "offsetDuration"    # Lj$/time/Duration;

    .line 374
    const-string v0, "baseClock"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 375
    const-string v0, "offsetDuration"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    invoke-virtual {p1, v0}, Lj$/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    return-object p0

    .line 379
    :cond_0
    new-instance v0, Lj$/time/Clock$OffsetClock;

    invoke-direct {v0, p0, p1}, Lj$/time/Clock$OffsetClock;-><init>(Lj$/time/Clock;Lj$/time/Duration;)V

    return-object v0
.end method

.method public static system(Lj$/time/ZoneId;)Lj$/time/Clock;
    .locals 1
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 202
    const-string v0, "zone"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    if-ne p0, v0, :cond_0

    .line 204
    sget-object v0, Lj$/time/Clock$SystemClock;->UTC:Lj$/time/Clock$SystemClock;

    return-object v0

    .line 206
    :cond_0
    new-instance v0, Lj$/time/Clock$SystemClock;

    invoke-direct {v0, p0}, Lj$/time/Clock$SystemClock;-><init>(Lj$/time/ZoneId;)V

    return-object v0
.end method

.method public static systemDefaultZone()Lj$/time/Clock;
    .locals 2

    .line 183
    new-instance v0, Lj$/time/Clock$SystemClock;

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/Clock$SystemClock;-><init>(Lj$/time/ZoneId;)V

    return-object v0
.end method

.method public static systemUTC()Lj$/time/Clock;
    .locals 1

    .line 160
    sget-object v0, Lj$/time/Clock$SystemClock;->UTC:Lj$/time/Clock$SystemClock;

    return-object v0
.end method

.method public static tick(Lj$/time/Clock;Lj$/time/Duration;)Lj$/time/Clock;
    .locals 7
    .param p0, "baseClock"    # Lj$/time/Clock;
    .param p1, "tickDuration"    # Lj$/time/Duration;

    .line 313
    const-string v0, "baseClock"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 314
    const-string v0, "tickDuration"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    invoke-virtual {p1}, Lj$/time/Duration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_3

    .line 318
    invoke-virtual {p1}, Lj$/time/Duration;->toNanos()J

    move-result-wide v0

    .line 319
    .local v0, "tickNanos":J
    const-wide/32 v2, 0xf4240

    rem-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    const-wide/32 v2, 0x3b9aca00

    rem-long/2addr v2, v0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 326
    :goto_0
    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 327
    return-object p0

    .line 329
    :cond_1
    new-instance v2, Lj$/time/Clock$TickClock;

    invoke-direct {v2, p0, v0, v1}, Lj$/time/Clock$TickClock;-><init>(Lj$/time/Clock;J)V

    return-object v2

    .line 324
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid tick duration"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    .end local v0    # "tickNanos":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tick duration must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static tickMillis(Lj$/time/ZoneId;)Lj$/time/Clock;
    .locals 4
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 231
    new-instance v0, Lj$/time/Clock$TickClock;

    invoke-static {p0}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v1

    const-wide/32 v2, 0xf4240

    invoke-direct {v0, v1, v2, v3}, Lj$/time/Clock$TickClock;-><init>(Lj$/time/Clock;J)V

    return-object v0
.end method

.method public static tickMinutes(Lj$/time/ZoneId;)Lj$/time/Clock;
    .locals 4
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 278
    new-instance v0, Lj$/time/Clock$TickClock;

    invoke-static {p0}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v1

    const-wide v2, 0xdf8475800L

    invoke-direct {v0, v1, v2, v3}, Lj$/time/Clock$TickClock;-><init>(Lj$/time/Clock;J)V

    return-object v0
.end method

.method public static tickSeconds(Lj$/time/ZoneId;)Lj$/time/Clock;
    .locals 4
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 255
    new-instance v0, Lj$/time/Clock$TickClock;

    invoke-static {p0}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v1

    const-wide/32 v2, 0x3b9aca00

    invoke-direct {v0, v1, v2, v3}, Lj$/time/Clock$TickClock;-><init>(Lj$/time/Clock;J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 458
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract getZone()Lj$/time/ZoneId;
.end method

.method public hashCode()I
    .locals 1

    .line 472
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract instant()Lj$/time/Instant;
.end method

.method public millis()J
    .locals 2

    .line 431
    invoke-virtual {p0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract withZone(Lj$/time/ZoneId;)Lj$/time/Clock;
.end method
