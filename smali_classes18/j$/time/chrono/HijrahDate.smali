.class public final Lj$/time/chrono/HijrahDate;
.super Lj$/time/chrono/ChronoLocalDateImpl;
.source "HijrahDate.java"

# interfaces
.implements Lj$/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/time/chrono/ChronoLocalDateImpl<",
        "Lj$/time/chrono/HijrahDate;",
        ">;",
        "Lj$/time/chrono/ChronoLocalDate;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4846033461a5e4e4L


# instance fields
.field private final transient chrono:Lj$/time/chrono/HijrahChronology;

.field private final transient dayOfMonth:I

.field private final transient monthOfYear:I

.field private final transient prolepticYear:I


# direct methods
.method private constructor <init>(Lj$/time/chrono/HijrahChronology;III)V
    .locals 0
    .param p1, "chrono"    # Lj$/time/chrono/HijrahChronology;
    .param p2, "prolepticYear"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .line 268
    invoke-direct {p0}, Lj$/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 270
    invoke-virtual {p1, p2, p3, p4}, Lj$/time/chrono/HijrahChronology;->getEpochDay(III)J

    .line 272
    iput-object p1, p0, Lj$/time/chrono/HijrahDate;->chrono:Lj$/time/chrono/HijrahChronology;

    .line 273
    iput p2, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    .line 274
    iput p3, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    .line 275
    iput p4, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    .line 276
    return-void
.end method

.method private constructor <init>(Lj$/time/chrono/HijrahChronology;J)V
    .locals 2
    .param p1, "chrono"    # Lj$/time/chrono/HijrahChronology;
    .param p2, "epochDay"    # J

    .line 283
    invoke-direct {p0}, Lj$/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 284
    long-to-int v0, p2

    invoke-virtual {p1, v0}, Lj$/time/chrono/HijrahChronology;->getHijrahDateInfo(I)[I

    move-result-object v0

    .line 286
    .local v0, "dateInfo":[I
    iput-object p1, p0, Lj$/time/chrono/HijrahDate;->chrono:Lj$/time/chrono/HijrahChronology;

    .line 287
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    .line 288
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    .line 289
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    .line 290
    return-void
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 255
    sget-object v0, Lj$/time/chrono/HijrahChronology;->INSTANCE:Lj$/time/chrono/HijrahChronology;

    invoke-virtual {v0, p0}, Lj$/time/chrono/HijrahChronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method private getDayOfWeek()I
    .locals 4

    .line 500
    invoke-virtual {p0}, Lj$/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lj$/time/chrono/HijrahDate$$ExternalSyntheticBackport0;->m(JI)I

    move-result v0

    .line 501
    .local v0, "dow0":I
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private getDayOfYear()I
    .locals 3

    .line 491
    iget-object v0, p0, Lj$/time/chrono/HijrahDate;->chrono:Lj$/time/chrono/HijrahChronology;

    iget v1, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/HijrahChronology;->getDayOfYear(II)I

    move-result v0

    iget v1, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getEraValue()I
    .locals 2

    .line 510
    iget v0, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getProlepticMonth()J
    .locals 4

    .line 390
    iget v0, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget v2, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static now()Lj$/time/chrono/HijrahDate;
    .locals 1

    .line 183
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/chrono/HijrahDate;->now(Lj$/time/Clock;)Lj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lj$/time/Clock;)Lj$/time/chrono/HijrahDate;
    .locals 3
    .param p0, "clock"    # Lj$/time/Clock;

    .line 216
    sget-object v0, Lj$/time/chrono/HijrahChronology;->INSTANCE:Lj$/time/chrono/HijrahChronology;

    invoke-static {p0}, Lj$/time/LocalDate;->now(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lj$/time/chrono/HijrahDate;->ofEpochDay(Lj$/time/chrono/HijrahChronology;J)Lj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lj$/time/ZoneId;)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 200
    invoke-static {p0}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/chrono/HijrahDate;->now(Lj$/time/Clock;)Lj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p0, "prolepticYear"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 234
    sget-object v0, Lj$/time/chrono/HijrahChronology;->INSTANCE:Lj$/time/chrono/HijrahChronology;

    invoke-virtual {v0, p0, p1, p2}, Lj$/time/chrono/HijrahChronology;->date(III)Lj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method static of(Lj$/time/chrono/HijrahChronology;III)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p0, "chrono"    # Lj$/time/chrono/HijrahChronology;
    .param p1, "prolepticYear"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .line 156
    new-instance v0, Lj$/time/chrono/HijrahDate;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/time/chrono/HijrahDate;-><init>(Lj$/time/chrono/HijrahChronology;III)V

    return-object v0
.end method

.method static ofEpochDay(Lj$/time/chrono/HijrahChronology;J)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p0, "chrono"    # Lj$/time/chrono/HijrahChronology;
    .param p1, "epochDay"    # J

    .line 166
    new-instance v0, Lj$/time/chrono/HijrahDate;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/chrono/HijrahDate;-><init>(Lj$/time/chrono/HijrahChronology;J)V

    return-object v0
.end method

.method static readExternal(Ljava/io/ObjectInput;)Lj$/time/chrono/HijrahDate;
    .locals 5
    .param p0, "in"    # Ljava/io/ObjectInput;

    .line 691
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/HijrahChronology;

    .line 692
    .local v0, "chrono":Lj$/time/chrono/HijrahChronology;
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 693
    .local v1, "year":I
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v2

    .line 694
    .local v2, "month":I
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v3

    .line 695
    .local v3, "dayOfMonth":I
    invoke-virtual {v0, v1, v2, v3}, Lj$/time/chrono/HijrahChronology;->date(III)Lj$/time/chrono/HijrahDate;

    move-result-object v4

    return-object v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 661
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resolvePreviousValid(III)Lj$/time/chrono/HijrahDate;
    .locals 2
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .line 421
    iget-object v0, p0, Lj$/time/chrono/HijrahDate;->chrono:Lj$/time/chrono/HijrahChronology;

    invoke-virtual {v0, p1, p2}, Lj$/time/chrono/HijrahChronology;->getMonthLength(II)I

    move-result v0

    .line 422
    .local v0, "monthDays":I
    if-le p3, v0, :cond_0

    .line 423
    move p3, v0

    .line 425
    :cond_0
    iget-object v1, p0, Lj$/time/chrono/HijrahDate;->chrono:Lj$/time/chrono/HijrahChronology;

    invoke-static {v1, p1, p2, p3}, Lj$/time/chrono/HijrahDate;->of(Lj$/time/chrono/HijrahChronology;III)Lj$/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 679
    new-instance v0, Lj$/time/chrono/Ser;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final atTime(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "localTime"    # Lj$/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/LocalTime;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "Lj$/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .line 589
    invoke-super {p0, p1}, Lj$/time/chrono/ChronoLocalDateImpl;->atTime(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 626
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 627
    return v0

    .line 629
    :cond_0
    instance-of v1, p1, Lj$/time/chrono/HijrahDate;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 630
    move-object v1, p1

    check-cast v1, Lj$/time/chrono/HijrahDate;

    .line 631
    .local v1, "otherDate":Lj$/time/chrono/HijrahDate;
    iget v3, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v4, v1, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v4, v1, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    iget v4, v1, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    if-ne v3, v4, :cond_1

    .line 634
    invoke-virtual {p0}, Lj$/time/chrono/HijrahDate;->getChronology()Lj$/time/chrono/HijrahChronology;

    move-result-object v3

    invoke-virtual {v1}, Lj$/time/chrono/HijrahDate;->getChronology()Lj$/time/chrono/HijrahChronology;

    move-result-object v4

    invoke-virtual {v3, v4}, Lj$/time/chrono/HijrahChronology;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 631
    :goto_0
    return v0

    .line 636
    .end local v1    # "otherDate":Lj$/time/chrono/HijrahDate;
    :cond_2
    return v2
.end method

.method public bridge synthetic getChronology()Lj$/time/chrono/Chronology;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lj$/time/chrono/HijrahDate;->getChronology()Lj$/time/chrono/HijrahChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Lj$/time/chrono/HijrahChronology;
    .locals 1

    .line 303
    iget-object v0, p0, Lj$/time/chrono/HijrahDate;->chrono:Lj$/time/chrono/HijrahChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Lj$/time/chrono/Era;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lj$/time/chrono/HijrahDate;->getEra()Lj$/time/chrono/HijrahEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Lj$/time/chrono/HijrahEra;
    .locals 1

    .line 316
    sget-object v0, Lj$/time/chrono/HijrahEra;->AH:Lj$/time/chrono/HijrahEra;

    return-object v0
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 368
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 369
    sget-object v0, Lj$/time/chrono/HijrahDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 384
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

    .line 382
    :pswitch_0
    invoke-direct {p0}, Lj$/time/chrono/HijrahDate;->getEraValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 381
    :pswitch_1
    iget v0, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    return-wide v0

    .line 380
    :pswitch_2
    iget v0, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    return-wide v0

    .line 379
    :pswitch_3
    invoke-direct {p0}, Lj$/time/chrono/HijrahDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    .line 378
    :pswitch_4
    iget v0, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    int-to-long v0, v0

    return-wide v0

    .line 377
    :pswitch_5
    invoke-direct {p0}, Lj$/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    .line 375
    :pswitch_6
    invoke-virtual {p0}, Lj$/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0

    .line 372
    :pswitch_7
    invoke-direct {p0}, Lj$/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    .line 371
    :pswitch_8
    iget v0, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    .line 370
    :pswitch_9
    invoke-direct {p0}, Lj$/time/chrono/HijrahDate;->getDayOfWeek()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 376
    :pswitch_a
    iget v0, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    .line 374
    :pswitch_b
    invoke-direct {p0}, Lj$/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 373
    :pswitch_c
    iget v0, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    int-to-long v0, v0

    return-wide v0

    .line 386
    :cond_0
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

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

.method public hashCode()I
    .locals 6

    .line 646
    iget v0, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    .line 647
    .local v0, "yearValue":I
    iget v1, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    .line 648
    .local v1, "monthValue":I
    iget v2, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    .line 649
    .local v2, "dayValue":I
    invoke-virtual {p0}, Lj$/time/chrono/HijrahDate;->getChronology()Lj$/time/chrono/HijrahChronology;

    move-result-object v3

    invoke-virtual {v3}, Lj$/time/chrono/HijrahChronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    and-int/lit16 v4, v0, -0x800

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v0, 0xb

    shl-int/lit8 v5, v1, 0x6

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    xor-int/2addr v3, v4

    return v3
.end method

.method public isLeapYear()Z
    .locals 3

    .line 521
    iget-object v0, p0, Lj$/time/chrono/HijrahDate;->chrono:Lj$/time/chrono/HijrahChronology;

    iget v1, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/HijrahChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public lengthOfMonth()I
    .locals 3

    .line 329
    iget-object v0, p0, Lj$/time/chrono/HijrahDate;->chrono:Lj$/time/chrono/HijrahChronology;

    iget v1, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/HijrahChronology;->getMonthLength(II)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 2

    .line 343
    iget-object v0, p0, Lj$/time/chrono/HijrahDate;->chrono:Lj$/time/chrono/HijrahChronology;

    iget v1, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    invoke-virtual {v0, v1}, Lj$/time/chrono/HijrahChronology;->getYearLength(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/HijrahDate;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lj$/time/chrono/HijrahDate;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 563
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateImpl;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 475
    invoke-super {p0, p1}, Lj$/time/chrono/ChronoLocalDateImpl;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/HijrahDate;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lj$/time/chrono/HijrahDate;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic minusDays(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/HijrahDate;->minusDays(J)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method minusDays(J)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p1, "daysToSubtract"    # J

    .line 583
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->minusDays(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic minusMonths(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/HijrahDate;->minusMonths(J)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method minusMonths(J)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p1, "monthsToSubtract"    # J

    .line 573
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->minusMonths(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic minusWeeks(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/HijrahDate;->minusWeeks(J)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method minusWeeks(J)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p1, "weeksToSubtract"    # J

    .line 578
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->minusWeeks(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic minusYears(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/HijrahDate;->minusYears(J)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method minusYears(J)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p1, "yearsToSubtract"    # J

    .line 568
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->minusYears(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/HijrahDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lj$/time/chrono/HijrahDate;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 558
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateImpl;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 465
    invoke-super {p0, p1}, Lj$/time/chrono/ChronoLocalDateImpl;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/HijrahDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lj$/time/chrono/HijrahDate;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusDays(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/HijrahDate;->plusDays(J)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method plusDays(J)Lj$/time/chrono/HijrahDate;
    .locals 4
    .param p1, "days"    # J

    .line 553
    new-instance v0, Lj$/time/chrono/HijrahDate;

    iget-object v1, p0, Lj$/time/chrono/HijrahDate;->chrono:Lj$/time/chrono/HijrahChronology;

    invoke-virtual {p0}, Lj$/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-direct {v0, v1, v2, v3}, Lj$/time/chrono/HijrahDate;-><init>(Lj$/time/chrono/HijrahChronology;J)V

    return-object v0
.end method

.method bridge synthetic plusMonths(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/HijrahDate;->plusMonths(J)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method plusMonths(J)Lj$/time/chrono/HijrahDate;
    .locals 9
    .param p1, "monthsToAdd"    # J

    .line 536
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 537
    return-object p0

    .line 539
    :cond_0
    iget v0, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget v4, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 540
    .local v0, "monthCount":J
    add-long v4, v0, p1

    .line 541
    .local v4, "calcMonths":J
    iget-object v6, p0, Lj$/time/chrono/HijrahDate;->chrono:Lj$/time/chrono/HijrahChronology;

    invoke-static {v4, v5, v2, v3}, Lj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lj$/time/chrono/HijrahChronology;->checkValidYear(J)I

    move-result v6

    .line 542
    .local v6, "newYear":I
    invoke-static {v4, v5, v2, v3}, Lj$/time/Clock$TickClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    add-int/lit8 v3, v3, 0x1

    .line 543
    .local v3, "newMonth":I
    iget v2, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v6, v3, v2}, Lj$/time/chrono/HijrahDate;->resolvePreviousValid(III)Lj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2
.end method

.method bridge synthetic plusWeeks(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/HijrahDate;->plusWeeks(J)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method plusWeeks(J)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p1, "weeksToAdd"    # J

    .line 548
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic plusYears(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/HijrahDate;->plusYears(J)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method plusYears(J)Lj$/time/chrono/HijrahDate;
    .locals 3
    .param p1, "years"    # J

    .line 527
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 528
    return-object p0

    .line 530
    :cond_0
    iget v0, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    long-to-int v1, p1

    invoke-static {v0, v1}, Lj$/time/Period$$ExternalSyntheticBackport3;->m(II)I

    move-result v0

    .line 531
    .local v0, "newYear":I
    iget v1, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v2, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v0, v1, v2}, Lj$/time/chrono/HijrahDate;->resolvePreviousValid(III)Lj$/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 6
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 349
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p0, p1}, Lj$/time/chrono/HijrahDate;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 352
    .local v0, "f":Lj$/time/temporal/ChronoField;
    sget-object v1, Lj$/time/chrono/HijrahDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 359
    invoke-virtual {p0}, Lj$/time/chrono/HijrahDate;->getChronology()Lj$/time/chrono/HijrahChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj$/time/chrono/HijrahChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 355
    :pswitch_0
    const-wide/16 v4, 0x5

    invoke-static {v2, v3, v4, v5}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 354
    :pswitch_1
    invoke-virtual {p0}, Lj$/time/chrono/HijrahDate;->lengthOfYear()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 353
    :pswitch_2
    invoke-virtual {p0}, Lj$/time/chrono/HijrahDate;->lengthOfMonth()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 361
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_0
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

    .line 363
    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toEpochDay()J
    .locals 4

    .line 480
    iget-object v0, p0, Lj$/time/chrono/HijrahDate;->chrono:Lj$/time/chrono/HijrahChronology;

    iget v1, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-virtual {v0, v1, v2, v3}, Lj$/time/chrono/HijrahChronology;->getEpochDay(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 119
    invoke-super {p0}, Lj$/time/chrono/ChronoLocalDateImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 0

    .line 119
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1
.end method

.method public until(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/chrono/ChronoPeriod;
    .locals 9
    .param p1, "endDate"    # Lj$/time/chrono/ChronoLocalDate;

    .line 595
    invoke-virtual {p0}, Lj$/time/chrono/HijrahDate;->getChronology()Lj$/time/chrono/HijrahChronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj$/time/chrono/HijrahChronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/HijrahDate;

    move-result-object v0

    .line 596
    .local v0, "end":Lj$/time/chrono/HijrahDate;
    iget v1, v0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xc

    iget v2, v0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-long v1, v1

    .line 597
    .local v1, "totalMonths":J
    iget v3, v0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    iget v4, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    sub-int/2addr v3, v4

    .line 598
    .local v3, "days":I
    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-lez v8, :cond_1

    if-gez v3, :cond_1

    .line 599
    sub-long/2addr v1, v4

    .line 600
    invoke-virtual {p0, v1, v2}, Lj$/time/chrono/HijrahDate;->plusMonths(J)Lj$/time/chrono/HijrahDate;

    move-result-object v4

    .line 601
    .local v4, "calcDate":Lj$/time/chrono/HijrahDate;
    invoke-virtual {v0}, Lj$/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v5

    invoke-virtual {v4}, Lj$/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v3, v5

    .line 602
    .end local v4    # "calcDate":Lj$/time/chrono/HijrahDate;
    :cond_0
    goto :goto_0

    :cond_1
    cmp-long v8, v1, v6

    if-gez v8, :cond_0

    if-lez v3, :cond_0

    .line 603
    add-long/2addr v1, v4

    .line 604
    invoke-virtual {v0}, Lj$/time/chrono/HijrahDate;->lengthOfMonth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 606
    :goto_0
    const-wide/16 v4, 0xc

    div-long v6, v1, v4

    .line 607
    .local v6, "years":J
    rem-long v4, v1, v4

    long-to-int v5, v4

    .line 608
    .local v5, "months":I
    invoke-virtual {p0}, Lj$/time/chrono/HijrahDate;->getChronology()Lj$/time/chrono/HijrahChronology;

    move-result-object v4

    invoke-static {v6, v7}, Lj$/time/LocalDate$$ExternalSyntheticBackport5;->m(J)I

    move-result v8

    invoke-virtual {v4, v8, v5, v3}, Lj$/time/chrono/HijrahChronology;->period(III)Lj$/time/chrono/ChronoPeriod;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lj$/time/chrono/HijrahDate;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/HijrahDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;

    .line 436
    invoke-super {p0, p1}, Lj$/time/chrono/ChronoLocalDateImpl;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method public with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/HijrahDate;
    .locals 7
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 395
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 396
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 398
    .local v0, "f":Lj$/time/temporal/ChronoField;
    iget-object v1, p0, Lj$/time/chrono/HijrahDate;->chrono:Lj$/time/chrono/HijrahChronology;

    invoke-virtual {v1, v0}, Lj$/time/chrono/HijrahChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lj$/time/temporal/ValueRange;->checkValidValue(JLj$/time/temporal/TemporalField;)J

    .line 399
    long-to-int v1, p2

    .line 400
    .local v1, "nvalue":I
    sget-object v2, Lj$/time/chrono/HijrahDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-wide/16 v3, 0x7

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    .line 415
    new-instance v2, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :pswitch_0
    iget v2, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    sub-int/2addr v5, v2

    iget v2, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v5, v2, v3}, Lj$/time/chrono/HijrahDate;->resolvePreviousValid(III)Lj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 412
    :pswitch_1
    iget v2, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v1, v2, v3}, Lj$/time/chrono/HijrahDate;->resolvePreviousValid(III)Lj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 411
    :pswitch_2
    iget v2, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    if-lt v2, v5, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, v1, 0x1

    :goto_0
    iget v3, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v4, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v2, v3, v4}, Lj$/time/chrono/HijrahDate;->resolvePreviousValid(III)Lj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 410
    :pswitch_3
    invoke-direct {p0}, Lj$/time/chrono/HijrahDate;->getProlepticMonth()J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Lj$/time/chrono/HijrahDate;->plusMonths(J)Lj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 409
    :pswitch_4
    iget v2, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v3, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v2, v1, v3}, Lj$/time/chrono/HijrahDate;->resolvePreviousValid(III)Lj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 408
    :pswitch_5
    sget-object v2, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Lj$/time/chrono/HijrahDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v5

    sub-long v5, p2, v5

    mul-long v5, v5, v3

    invoke-virtual {p0, v5, v6}, Lj$/time/chrono/HijrahDate;->plusDays(J)Lj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 406
    :pswitch_6
    new-instance v2, Lj$/time/chrono/HijrahDate;

    iget-object v3, p0, Lj$/time/chrono/HijrahDate;->chrono:Lj$/time/chrono/HijrahChronology;

    invoke-direct {v2, v3, p2, p3}, Lj$/time/chrono/HijrahDate;-><init>(Lj$/time/chrono/HijrahChronology;J)V

    return-object v2

    .line 403
    :pswitch_7
    sget-object v2, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Lj$/time/chrono/HijrahDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Lj$/time/chrono/HijrahDate;->plusDays(J)Lj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 402
    :pswitch_8
    sget-object v2, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Lj$/time/chrono/HijrahDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Lj$/time/chrono/HijrahDate;->plusDays(J)Lj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 401
    :pswitch_9
    invoke-direct {p0}, Lj$/time/chrono/HijrahDate;->getDayOfWeek()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Lj$/time/chrono/HijrahDate;->plusDays(J)Lj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 407
    :pswitch_a
    sget-object v2, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Lj$/time/chrono/HijrahDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v5

    sub-long v5, p2, v5

    mul-long v5, v5, v3

    invoke-virtual {p0, v5, v6}, Lj$/time/chrono/HijrahDate;->plusDays(J)Lj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 405
    :pswitch_b
    invoke-virtual {p0}, Lj$/time/chrono/HijrahDate;->lengthOfYear()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {p0}, Lj$/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lj$/time/chrono/HijrahDate;->plusDays(J)Lj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 404
    :pswitch_c
    iget v2, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v3, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    invoke-direct {p0, v2, v3, v1}, Lj$/time/chrono/HijrahDate;->resolvePreviousValid(III)Lj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    .line 417
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    .end local v1    # "nvalue":I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateImpl;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/HijrahDate;

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

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lj$/time/chrono/HijrahDate;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/HijrahDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public withVariant(Lj$/time/chrono/HijrahChronology;)Lj$/time/chrono/HijrahDate;
    .locals 4
    .param p1, "chronology"    # Lj$/time/chrono/HijrahChronology;

    .line 450
    iget-object v0, p0, Lj$/time/chrono/HijrahDate;->chrono:Lj$/time/chrono/HijrahChronology;

    if-ne v0, p1, :cond_0

    .line 451
    return-object p0

    .line 454
    :cond_0
    iget v0, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v1, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    invoke-virtual {p1, v0, v1}, Lj$/time/chrono/HijrahChronology;->getDayOfYear(II)I

    move-result v0

    .line 455
    .local v0, "monthDays":I
    iget v1, p0, Lj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Lj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    if-le v3, v0, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    iget v3, p0, Lj$/time/chrono/HijrahDate;->dayOfMonth:I

    :goto_0
    invoke-static {p1, v1, v2, v3}, Lj$/time/chrono/HijrahDate;->of(Lj$/time/chrono/HijrahChronology;III)Lj$/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;

    .line 684
    invoke-virtual {p0}, Lj$/time/chrono/HijrahDate;->getChronology()Lj$/time/chrono/HijrahChronology;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 685
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lj$/time/chrono/HijrahDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 686
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lj$/time/chrono/HijrahDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 687
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lj$/time/chrono/HijrahDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 688
    return-void
.end method
