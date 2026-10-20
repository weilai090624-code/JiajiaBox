.class public final Lj$/time/DesugarDuration;
.super Ljava/lang/Object;
.source "DesugarDuration.java"


# static fields
.field static final MINUTES_PER_HOUR:I = 0x3c

.field static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field static final SECONDS_PER_DAY:I = 0x15180

.field static final SECONDS_PER_MINUTE:I = 0x3c


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dividedBy(Lj$/time/Duration;Lj$/time/Duration;)J
    .locals 4
    .param p0, "receiver"    # Lj$/time/Duration;
    .param p1, "divisor"    # Lj$/time/Duration;

    .line 126
    const-string v0, "divisor"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    invoke-static {p0}, Lj$/time/DesugarDuration;->toBigDecimalSeconds(Lj$/time/Duration;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 128
    .local v0, "dividendBigD":Ljava/math/BigDecimal;
    invoke-static {p1}, Lj$/time/DesugarDuration;->toBigDecimalSeconds(Lj$/time/Duration;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 129
    .local v1, "divisorBigD":Ljava/math/BigDecimal;
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v2

    return-wide v2
.end method

.method private static toBigDecimalSeconds(Lj$/time/Duration;)Ljava/math/BigDecimal;
    .locals 7
    .param p0, "receiver"    # Lj$/time/Duration;

    .line 298
    invoke-virtual {p0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    .line 299
    .local v0, "seconds":J
    invoke-virtual {p0}, Lj$/time/Duration;->getNano()I

    move-result v2

    .line 300
    .local v2, "nanos":I
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    int-to-long v4, v2

    const/16 v6, 0x9

    invoke-static {v4, v5, v6}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3
.end method

.method public static toDaysPart(Lj$/time/Duration;)J
    .locals 4
    .param p0, "receiver"    # Lj$/time/Duration;

    .line 160
    invoke-virtual {p0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    .line 161
    .local v0, "seconds":J
    const-wide/32 v2, 0x15180

    div-long v2, v0, v2

    return-wide v2
.end method

.method public static toHoursPart(Lj$/time/Duration;)I
    .locals 4
    .param p0, "receiver"    # Lj$/time/Duration;

    .line 177
    invoke-virtual {p0}, Lj$/time/Duration;->toHours()J

    move-result-wide v0

    const-wide/16 v2, 0x18

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static toMillisPart(Lj$/time/Duration;)I
    .locals 2
    .param p0, "receiver"    # Lj$/time/Duration;

    .line 228
    invoke-virtual {p0}, Lj$/time/Duration;->getNano()I

    move-result v0

    .line 229
    .local v0, "nanos":I
    const v1, 0xf4240

    div-int v1, v0, v1

    return v1
.end method

.method public static toMinutesPart(Lj$/time/Duration;)I
    .locals 4
    .param p0, "receiver"    # Lj$/time/Duration;

    .line 193
    invoke-virtual {p0}, Lj$/time/Duration;->toMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static toNanosPart(Lj$/time/Duration;)I
    .locals 1
    .param p0, "receiver"    # Lj$/time/Duration;

    .line 246
    invoke-virtual {p0}, Lj$/time/Duration;->getNano()I

    move-result v0

    .line 247
    .local v0, "nanos":I
    return v0
.end method

.method public static toSeconds(Lj$/time/Duration;)J
    .locals 2
    .param p0, "receiver"    # Lj$/time/Duration;

    .line 144
    invoke-virtual {p0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method public static toSecondsPart(Lj$/time/Duration;)I
    .locals 4
    .param p0, "receiver"    # Lj$/time/Duration;

    .line 209
    invoke-virtual {p0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    .line 210
    .local v0, "seconds":J
    const-wide/16 v2, 0x3c

    rem-long v2, v0, v2

    long-to-int v3, v2

    return v3
.end method

.method public static truncatedTo(Lj$/time/Duration;Lj$/time/temporal/TemporalUnit;)Lj$/time/Duration;
    .locals 13
    .param p0, "receiver"    # Lj$/time/Duration;
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 274
    invoke-virtual {p0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    .line 275
    .local v0, "seconds":J
    invoke-virtual {p0}, Lj$/time/Duration;->getNano()I

    move-result v2

    .line 276
    .local v2, "nanos":I
    const-string v3, "unit"

    invoke-static {p1, v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    sget-object v3, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v4, 0x0

    if-ne p1, v3, :cond_1

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    if-nez v2, :cond_1

    .line 280
    :cond_0
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v3

    return-object v3

    .line 281
    :cond_1
    sget-object v3, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v3, :cond_2

    .line 282
    return-object p0

    .line 284
    :cond_2
    invoke-interface {p1}, Lj$/time/temporal/TemporalUnit;->getDuration()Lj$/time/Duration;

    move-result-object v3

    .line 285
    .local v3, "unitDur":Lj$/time/Duration;
    invoke-virtual {v3}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v6

    const-wide/32 v8, 0x15180

    cmp-long v10, v6, v8

    if-gtz v10, :cond_4

    .line 288
    invoke-virtual {v3}, Lj$/time/Duration;->toNanos()J

    move-result-wide v6

    .line 289
    .local v6, "dur":J
    const-wide v10, 0x4e94914f0000L

    rem-long/2addr v10, v6

    cmp-long v12, v10, v4

    if-nez v12, :cond_3

    .line 292
    rem-long v4, v0, v8

    const-wide/32 v8, 0x3b9aca00

    mul-long v4, v4, v8

    int-to-long v8, v2

    add-long/2addr v4, v8

    .line 293
    .local v4, "nod":J
    div-long v8, v4, v6

    mul-long v8, v8, v6

    .line 294
    .local v8, "result":J
    sub-long v10, v8, v4

    invoke-virtual {p0, v10, v11}, Lj$/time/Duration;->plusNanos(J)Lj$/time/Duration;

    move-result-object v10

    return-object v10

    .line 290
    .end local v4    # "nod":J
    .end local v8    # "result":J
    :cond_3
    new-instance v4, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v5, "Unit must divide into a standard day without remainder"

    invoke-direct {v4, v5}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 286
    .end local v6    # "dur":J
    :cond_4
    new-instance v4, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v5, "Unit is too large to be used for truncation"

    invoke-direct {v4, v5}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
