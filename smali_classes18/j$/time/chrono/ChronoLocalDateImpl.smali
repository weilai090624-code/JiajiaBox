.class abstract Lj$/time/chrono/ChronoLocalDateImpl;
.super Ljava/lang/Object;
.source "ChronoLocalDateImpl.java"

# interfaces
.implements Lj$/time/chrono/ChronoLocalDate;
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/TemporalAdjuster;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Lj$/time/chrono/ChronoLocalDate;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/time/chrono/ChronoLocalDate;",
        "Lj$/time/temporal/Temporal;",
        "Lj$/time/temporal/TemporalAdjuster;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x572fb054bf61a0b8L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 173
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method private daysUntil(Lj$/time/chrono/ChronoLocalDate;)J
    .locals 4
    .param p1, "end"    # Lj$/time/chrono/ChronoLocalDate;

    .line 397
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/chrono/ChronoLocalDateImpl;->toEpochDay()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDate;
    .locals 6
    .param p0, "chrono"    # Lj$/time/chrono/Chronology;
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lj$/time/chrono/ChronoLocalDate;",
            ">(",
            "Lj$/time/chrono/Chronology;",
            "Lj$/time/temporal/Temporal;",
            ")TD;"
        }
    .end annotation

    .line 162
    move-object v0, p1

    check-cast v0, Lj$/time/chrono/ChronoLocalDate;

    .line 163
    .local v0, "other":Lj$/time/chrono/ChronoLocalDate;, "TD;"
    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p0, v1}, Lj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    return-object v0

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-interface {p0}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v3

    invoke-interface {v3}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Chronology mismatch, expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", actual: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private monthsUntil(Lj$/time/chrono/ChronoLocalDate;)J
    .locals 9
    .param p1, "end"    # Lj$/time/chrono/ChronoLocalDate;

    .line 401
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0}, Lj$/time/chrono/ChronoLocalDateImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Lj$/time/chrono/Chronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    .line 402
    .local v0, "range":Lj$/time/temporal/ValueRange;
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 405
    sget-object v1, Lj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    const-wide/16 v3, 0x20

    mul-long v1, v1, v3

    sget-object v5, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v5}, Lj$/time/chrono/ChronoLocalDateImpl;->get(Lj$/time/temporal/TemporalField;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 406
    .local v1, "packed1":J
    sget-object v5, Lj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Lj$/time/chrono/ChronoLocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v5

    mul-long v5, v5, v3

    sget-object v7, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Lj$/time/chrono/ChronoLocalDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 407
    .local v5, "packed2":J
    sub-long v7, v5, v1

    div-long/2addr v7, v3

    return-wide v7

    .line 403
    .end local v1    # "packed1":J
    .end local v5    # "packed2":J
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ChronoLocalDateImpl only supports Chronologies with 12 months per year"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public synthetic adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$adjustInto(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public synthetic atTime(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$atTime(Lj$/time/chrono/ChronoLocalDate;Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compareTo(Lj$/time/chrono/ChronoLocalDate;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$compareTo(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$compareTo(Lj$/time/chrono/ChronoLocalDate;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 412
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 413
    return v0

    .line 415
    :cond_0
    instance-of v1, p1, Lj$/time/chrono/ChronoLocalDate;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 416
    move-object v1, p1

    check-cast v1, Lj$/time/chrono/ChronoLocalDate;

    invoke-virtual {p0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->compareTo(Lj$/time/chrono/ChronoLocalDate;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 418
    :cond_2
    return v2
.end method

.method public synthetic format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$format(Lj$/time/chrono/ChronoLocalDate;Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic get(Lj$/time/temporal/TemporalField;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$get(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public synthetic getEra()Lj$/time/chrono/Era;
    .locals 1

    invoke-static {p0}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$getEra(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/chrono/Era;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 423
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0}, Lj$/time/chrono/ChronoLocalDateImpl;->toEpochDay()J

    move-result-wide v0

    .line 424
    .local v0, "epDay":J
    invoke-virtual {p0}, Lj$/time/chrono/ChronoLocalDateImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v2}, Lj$/time/chrono/Chronology;->hashCode()I

    move-result v2

    const/16 v3, 0x20

    ushr-long v3, v0, v3

    xor-long/2addr v3, v0

    long-to-int v4, v3

    xor-int/2addr v2, v4

    return v2
.end method

.method public synthetic isAfter(Lj$/time/chrono/ChronoLocalDate;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$isAfter(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)Z

    move-result p1

    return p1
.end method

.method public synthetic isBefore(Lj$/time/chrono/ChronoLocalDate;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$isBefore(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)Z

    move-result p1

    return p1
.end method

.method public synthetic isEqual(Lj$/time/chrono/ChronoLocalDate;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$isEqual(Lj$/time/chrono/ChronoLocalDate;Lj$/time/chrono/ChronoLocalDate;)Z

    move-result p1

    return p1
.end method

.method public synthetic isLeapYear()Z
    .locals 1

    invoke-static {p0}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$isLeapYear(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public synthetic isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$isSupported(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalField;)Z

    move-result p1

    return p1
.end method

.method public synthetic isSupported(Lj$/time/temporal/TemporalUnit;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$isSupported(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalUnit;)Z

    move-result p1

    return p1
.end method

.method public synthetic lengthOfYear()I
    .locals 1

    invoke-static {p0}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$lengthOfYear(Lj$/time/chrono/ChronoLocalDate;)I

    move-result v0

    return v0
.end method

.method public minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lj$/time/temporal/TemporalUnit;",
            ")TD;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-static {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$minus(Lj$/time/chrono/ChronoLocalDate;JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAmount;",
            ")TD;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$minus(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 143
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateImpl;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 143
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1}, Lj$/time/chrono/ChronoLocalDateImpl;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method minusDays(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 3
    .param p1, "daysToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation

    .line 371
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->plusDays(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/ChronoLocalDateImpl;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/ChronoLocalDateImpl;->plusDays(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->plusDays(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method minusMonths(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 3
    .param p1, "monthsToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->plusMonths(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/ChronoLocalDateImpl;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/ChronoLocalDateImpl;->plusMonths(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->plusMonths(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method minusWeeks(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 3
    .param p1, "weeksToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation

    .line 353
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/ChronoLocalDateImpl;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method minusYears(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 3
    .param p1, "yearsToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation

    .line 312
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->plusYears(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/ChronoLocalDateImpl;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/ChronoLocalDateImpl;->plusYears(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->plusYears(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 4
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lj$/time/temporal/TemporalUnit;",
            ")TD;"
        }
    .end annotation

    .line 199
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 200
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/ChronoUnit;

    .line 201
    .local v0, "f":Lj$/time/temporal/ChronoUnit;
    sget-object v1, Lj$/time/chrono/ChronoLocalDateImpl$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 211
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

    .line 209
    :pswitch_0
    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    sget-object v2, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Lj$/time/chrono/ChronoLocalDateImpl;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lj$/time/chrono/ChronoLocalDateImpl;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 208
    :pswitch_1
    const/16 v1, 0x3e8

    invoke-static {p1, p2, v1}, Lj$/time/chrono/ChronoLocalDateImpl$$ExternalSyntheticBackport4;->m(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lj$/time/chrono/ChronoLocalDateImpl;->plusYears(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 207
    :pswitch_2
    const/16 v1, 0x64

    invoke-static {p1, p2, v1}, Lj$/time/chrono/ChronoLocalDateImpl$$ExternalSyntheticBackport3;->m(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lj$/time/chrono/ChronoLocalDateImpl;->plusYears(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 206
    :pswitch_3
    const/16 v1, 0xa

    invoke-static {p1, p2, v1}, Lj$/time/chrono/ChronoLocalDateImpl$$ExternalSyntheticBackport2;->m(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lj$/time/chrono/ChronoLocalDateImpl;->plusYears(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 205
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->plusYears(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 204
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->plusMonths(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 203
    :pswitch_6
    const/4 v1, 0x7

    invoke-static {p1, p2, v1}, Lj$/time/chrono/ChronoLocalDateImpl$$ExternalSyntheticBackport1;->m(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lj$/time/chrono/ChronoLocalDateImpl;->plusDays(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 202
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->plusDays(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 213
    .end local v0    # "f":Lj$/time/temporal/ChronoUnit;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$plus(Lj$/time/chrono/ChronoLocalDate;JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    nop

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

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAmount;",
            ")TD;"
        }
    .end annotation

    .line 192
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$plus(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 143
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateImpl;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 143
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1}, Lj$/time/chrono/ChronoLocalDateImpl;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method abstract plusDays(J)Lj$/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation
.end method

.method abstract plusMonths(J)Lj$/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation
.end method

.method plusWeeks(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 2
    .param p1, "weeksToAdd"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const/4 v0, 0x7

    invoke-static {p1, p2, v0}, Lj$/time/chrono/ChronoLocalDateImpl$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/chrono/ChronoLocalDateImpl;->plusDays(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method abstract plusYears(J)Lj$/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation
.end method

.method public synthetic query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$query(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$range(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toEpochDay()J
    .locals 2

    invoke-static {p0}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$toEpochDay(Lj$/time/chrono/ChronoLocalDate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 430
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lj$/time/chrono/ChronoLocalDateImpl;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    .line 431
    .local v0, "yoe":J
    sget-object v2, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Lj$/time/chrono/ChronoLocalDateImpl;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v2

    .line 432
    .local v2, "moy":J
    sget-object v4, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Lj$/time/chrono/ChronoLocalDateImpl;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v4

    .line 433
    .local v4, "dom":J
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 434
    .local v6, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lj$/time/chrono/ChronoLocalDateImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v7

    invoke-interface {v7}, Lj$/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 435
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 436
    invoke-virtual {p0}, Lj$/time/chrono/ChronoLocalDateImpl;->getEra()Lj$/time/chrono/Era;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 437
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 438
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 439
    const-string v8, "-0"

    const-string v9, "-"

    const-wide/16 v10, 0xa

    cmp-long v12, v2, v10

    if-gez v12, :cond_0

    move-object v12, v8

    goto :goto_0

    :cond_0
    move-object v12, v9

    :goto_0
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 440
    cmp-long v12, v4, v10

    if-gez v12, :cond_1

    goto :goto_1

    :cond_1
    move-object v8, v9

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 5
    .param p1, "endExclusive"    # Lj$/time/temporal/Temporal;
    .param p2, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 377
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    const-string v0, "endExclusive"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 378
    invoke-virtual {p0}, Lj$/time/chrono/ChronoLocalDateImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/Chronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 379
    .local v0, "end":Lj$/time/chrono/ChronoLocalDate;
    instance-of v1, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 380
    sget-object v1, Lj$/time/chrono/ChronoLocalDateImpl$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v2, p2

    check-cast v2, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v2}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 390
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

    .line 388
    :pswitch_0
    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Lj$/time/chrono/ChronoLocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    sget-object v3, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Lj$/time/chrono/ChronoLocalDateImpl;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1

    .line 387
    :pswitch_1
    invoke-direct {p0, v0}, Lj$/time/chrono/ChronoLocalDateImpl;->monthsUntil(Lj$/time/chrono/ChronoLocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x2ee0

    div-long/2addr v1, v3

    return-wide v1

    .line 386
    :pswitch_2
    invoke-direct {p0, v0}, Lj$/time/chrono/ChronoLocalDateImpl;->monthsUntil(Lj$/time/chrono/ChronoLocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x4b0

    div-long/2addr v1, v3

    return-wide v1

    .line 385
    :pswitch_3
    invoke-direct {p0, v0}, Lj$/time/chrono/ChronoLocalDateImpl;->monthsUntil(Lj$/time/chrono/ChronoLocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x78

    div-long/2addr v1, v3

    return-wide v1

    .line 384
    :pswitch_4
    invoke-direct {p0, v0}, Lj$/time/chrono/ChronoLocalDateImpl;->monthsUntil(Lj$/time/chrono/ChronoLocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0xc

    div-long/2addr v1, v3

    return-wide v1

    .line 383
    :pswitch_5
    invoke-direct {p0, v0}, Lj$/time/chrono/ChronoLocalDateImpl;->monthsUntil(Lj$/time/chrono/ChronoLocalDate;)J

    move-result-wide v1

    return-wide v1

    .line 382
    :pswitch_6
    invoke-direct {p0, v0}, Lj$/time/chrono/ChronoLocalDateImpl;->daysUntil(Lj$/time/chrono/ChronoLocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x7

    div-long/2addr v1, v3

    return-wide v1

    .line 381
    :pswitch_7
    invoke-direct {p0, v0}, Lj$/time/chrono/ChronoLocalDateImpl;->daysUntil(Lj$/time/chrono/ChronoLocalDate;)J

    move-result-wide v1

    return-wide v1

    .line 392
    :cond_0
    const-string v1, "unit"

    invoke-static {p2, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 393
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

.method public with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAdjuster;",
            ")TD;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$with(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalField;",
            "J)TD;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-static {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDate$-CC;->$default$with(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 143
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1}, Lj$/time/chrono/ChronoLocalDateImpl;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0

    .line 143
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateImpl;, "Ljava/time/chrono/ChronoLocalDateImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateImpl;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method
