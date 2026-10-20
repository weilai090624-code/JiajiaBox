.class public final Lj$/time/chrono/JapaneseDate;
.super Lj$/time/chrono/ChronoLocalDateImpl;
.source "JapaneseDate.java"

# interfaces
.implements Lj$/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/time/chrono/ChronoLocalDateImpl<",
        "Lj$/time/chrono/JapaneseDate;",
        ">;",
        "Lj$/time/chrono/ChronoLocalDate;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final MEIJI_6_ISODATE:Lj$/time/LocalDate;

.field private static final serialVersionUID:J = -0x43cbddbf9310f03L


# instance fields
.field private transient era:Lj$/time/chrono/JapaneseEra;

.field private final transient isoDate:Lj$/time/LocalDate;

.field private transient yearOfEra:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 149
    const/16 v0, 0x751

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Lj$/time/LocalDate;

    return-void
.end method

.method constructor <init>(Lj$/time/LocalDate;)V
    .locals 2
    .param p1, "isoDate"    # Lj$/time/LocalDate;

    .line 343
    invoke-direct {p0}, Lj$/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 344
    sget-object v0, Lj$/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Lj$/time/LocalDate;

    invoke-virtual {p1, v0}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    invoke-static {p1}, Lj$/time/chrono/JapaneseEra;->from(Lj$/time/LocalDate;)Lj$/time/chrono/JapaneseEra;

    move-result-object v0

    iput-object v0, p0, Lj$/time/chrono/JapaneseDate;->era:Lj$/time/chrono/JapaneseEra;

    .line 352
    invoke-virtual {p1}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    iget-object v1, p0, Lj$/time/chrono/JapaneseDate;->era:Lj$/time/chrono/JapaneseEra;

    invoke-virtual {v1}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalDate;->getYear()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/time/chrono/JapaneseDate;->yearOfEra:I

    .line 353
    iput-object p1, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    .line 354
    return-void

    .line 345
    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "JapaneseDate before Meiji 6 is not supported"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lj$/time/chrono/JapaneseEra;ILj$/time/LocalDate;)V
    .locals 2
    .param p1, "era"    # Lj$/time/chrono/JapaneseEra;
    .param p2, "year"    # I
    .param p3, "isoDate"    # Lj$/time/LocalDate;

    .line 364
    invoke-direct {p0}, Lj$/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 365
    sget-object v0, Lj$/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Lj$/time/LocalDate;

    invoke-virtual {p3, v0}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iput-object p1, p0, Lj$/time/chrono/JapaneseDate;->era:Lj$/time/chrono/JapaneseEra;

    .line 369
    iput p2, p0, Lj$/time/chrono/JapaneseDate;->yearOfEra:I

    .line 370
    iput-object p3, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    .line 371
    return-void

    .line 366
    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "JapaneseDate before Meiji 6 is not supported"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 334
    sget-object v0, Lj$/time/chrono/JapaneseChronology;->INSTANCE:Lj$/time/chrono/JapaneseChronology;

    invoke-virtual {v0, p0}, Lj$/time/chrono/JapaneseChronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static now()Lj$/time/chrono/JapaneseDate;
    .locals 1

    .line 164
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/chrono/JapaneseDate;->now(Lj$/time/Clock;)Lj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lj$/time/Clock;)Lj$/time/chrono/JapaneseDate;
    .locals 2
    .param p0, "clock"    # Lj$/time/Clock;

    .line 195
    new-instance v0, Lj$/time/chrono/JapaneseDate;

    invoke-static {p0}, Lj$/time/LocalDate;->now(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/chrono/JapaneseDate;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public static now(Lj$/time/ZoneId;)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 180
    invoke-static {p0}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/chrono/JapaneseDate;->now(Lj$/time/Clock;)Lj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Lj$/time/chrono/JapaneseDate;
    .locals 2
    .param p0, "prolepticYear"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 258
    new-instance v0, Lj$/time/chrono/JapaneseDate;

    invoke-static {p0, p1, p2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/chrono/JapaneseDate;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public static of(Lj$/time/chrono/JapaneseEra;III)Lj$/time/chrono/JapaneseDate;
    .locals 3
    .param p0, "era"    # Lj$/time/chrono/JapaneseEra;
    .param p1, "yearOfEra"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 225
    const-string v0, "era"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p2, p3}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    .line 234
    .local v0, "date":Lj$/time/LocalDate;
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lj$/time/chrono/JapaneseEra;->from(Lj$/time/LocalDate;)Lj$/time/chrono/JapaneseEra;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 237
    new-instance v1, Lj$/time/chrono/JapaneseDate;

    invoke-direct {v1, p0, p1, v0}, Lj$/time/chrono/JapaneseDate;-><init>(Lj$/time/chrono/JapaneseEra;ILj$/time/LocalDate;)V

    return-object v1

    .line 235
    :cond_0
    new-instance v1, Lj$/time/DateTimeException;

    const-string v2, "year, month, and day not valid for Era"

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static ofYearDay(Lj$/time/chrono/JapaneseEra;II)Lj$/time/chrono/JapaneseDate;
    .locals 3
    .param p0, "era"    # Lj$/time/chrono/JapaneseEra;
    .param p1, "yearOfEra"    # I
    .param p2, "dayOfYear"    # I

    .line 287
    const-string v0, "era"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 305
    nop

    .line 306
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v2

    add-int/2addr v2, p2

    sub-int/2addr v2, v0

    .line 305
    invoke-static {v1, v2}, Lj$/time/LocalDate;->ofYearDay(II)Lj$/time/LocalDate;

    move-result-object v0

    .local v0, "localdate":Lj$/time/LocalDate;
    goto :goto_0

    .line 308
    .end local v0    # "localdate":Lj$/time/LocalDate;
    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalDate;->getYear()I

    move-result v1

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    invoke-static {v1, p2}, Lj$/time/LocalDate;->ofYearDay(II)Lj$/time/LocalDate;

    move-result-object v0

    .line 310
    .restart local v0    # "localdate":Lj$/time/LocalDate;
    :goto_0
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lj$/time/chrono/JapaneseEra;->from(Lj$/time/LocalDate;)Lj$/time/chrono/JapaneseEra;

    move-result-object v1

    if-ne p0, v1, :cond_1

    .line 313
    new-instance v1, Lj$/time/chrono/JapaneseDate;

    invoke-direct {v1, p0, p1, v0}, Lj$/time/chrono/JapaneseDate;-><init>(Lj$/time/chrono/JapaneseEra;ILj$/time/LocalDate;)V

    return-object v1

    .line 311
    :cond_1
    new-instance v1, Lj$/time/DateTimeException;

    const-string v2, "Invalid parameters"

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/chrono/JapaneseDate;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;

    .line 802
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 803
    .local v0, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 804
    .local v1, "month":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 805
    .local v2, "dayOfMonth":I
    sget-object v3, Lj$/time/chrono/JapaneseChronology;->INSTANCE:Lj$/time/chrono/JapaneseChronology;

    invoke-virtual {v3, v0, v1, v2}, Lj$/time/chrono/JapaneseChronology;->date(III)Lj$/time/chrono/JapaneseDate;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 774
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private with(Lj$/time/LocalDate;)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "newDate"    # Lj$/time/LocalDate;

    .line 711
    iget-object v0, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {p1, v0}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/chrono/JapaneseDate;

    invoke-direct {v0, p1}, Lj$/time/chrono/JapaneseDate;-><init>(Lj$/time/LocalDate;)V

    :goto_0
    return-object v0
.end method

.method private withYear(I)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "year"    # I

    .line 656
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseDate;->getEra()Lj$/time/chrono/JapaneseEra;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lj$/time/chrono/JapaneseDate;->withYear(Lj$/time/chrono/JapaneseEra;I)Lj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method private withYear(Lj$/time/chrono/JapaneseEra;I)Lj$/time/chrono/JapaneseDate;
    .locals 2
    .param p1, "era"    # Lj$/time/chrono/JapaneseEra;
    .param p2, "yearOfEra"    # I

    .line 638
    sget-object v0, Lj$/time/chrono/JapaneseChronology;->INSTANCE:Lj$/time/chrono/JapaneseChronology;

    invoke-virtual {v0, p1, p2}, Lj$/time/chrono/JapaneseChronology;->prolepticYear(Lj$/time/chrono/Era;I)I

    move-result v0

    .line 639
    .local v0, "year":I
    iget-object v1, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v1, v0}, Lj$/time/LocalDate;->withYear(I)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {p0, v1}, Lj$/time/chrono/JapaneseDate;->with(Lj$/time/LocalDate;)Lj$/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 791
    new-instance v0, Lj$/time/chrono/Ser;

    const/4 v1, 0x4

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
            "Lj$/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .line 717
    invoke-super {p0, p1}, Lj$/time/chrono/ChronoLocalDateImpl;->atTime(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 746
    if-ne p0, p1, :cond_0

    .line 747
    const/4 v0, 0x1

    return v0

    .line 749
    :cond_0
    instance-of v0, p1, Lj$/time/chrono/JapaneseDate;

    if-eqz v0, :cond_1

    .line 750
    move-object v0, p1

    check-cast v0, Lj$/time/chrono/JapaneseDate;

    .line 751
    .local v0, "otherDate":Lj$/time/chrono/JapaneseDate;
    iget-object v1, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    iget-object v2, v0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v1, v2}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 753
    .end local v0    # "otherDate":Lj$/time/chrono/JapaneseDate;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getChronology()Lj$/time/chrono/Chronology;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseDate;->getChronology()Lj$/time/chrono/JapaneseChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Lj$/time/chrono/JapaneseChronology;
    .locals 1

    .line 384
    sget-object v0, Lj$/time/chrono/JapaneseChronology;->INSTANCE:Lj$/time/chrono/JapaneseChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Lj$/time/chrono/Era;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseDate;->getEra()Lj$/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Lj$/time/chrono/JapaneseEra;
    .locals 1

    .line 396
    iget-object v0, p0, Lj$/time/chrono/JapaneseDate;->era:Lj$/time/chrono/JapaneseEra;

    return-object v0
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 512
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 518
    sget-object v0, Lj$/time/chrono/JapaneseDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 539
    iget-object v0, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 527
    :pswitch_0
    iget-object v0, p0, Lj$/time/chrono/JapaneseDate;->era:Lj$/time/chrono/JapaneseEra;

    invoke-virtual {v0}, Lj$/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 523
    :pswitch_1
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

    .line 525
    :pswitch_2
    iget v0, p0, Lj$/time/chrono/JapaneseDate;->yearOfEra:I

    int-to-long v0, v0

    return-wide v0

    .line 534
    :pswitch_3
    iget v0, p0, Lj$/time/chrono/JapaneseDate;->yearOfEra:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 535
    iget-object v0, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v0

    iget-object v2, p0, Lj$/time/chrono/JapaneseDate;->era:Lj$/time/chrono/JapaneseEra;

    invoke-virtual {v2}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 537
    :cond_0
    iget-object v0, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 541
    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 2

    .line 763
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseDate;->getChronology()Lj$/time/chrono/JapaneseChronology;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/chrono/JapaneseChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v1}, Lj$/time/LocalDate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 2
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 465
    sget-object v0, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/ChronoField;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    sget-object v0, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_3

    sget-object v0, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_3

    sget-object v0, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 475
    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    return v0

    .line 477
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 467
    :cond_3
    :goto_0
    return v1
.end method

.method public lengthOfMonth()I
    .locals 1

    .line 409
    iget-object v0, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 4

    .line 420
    iget-object v0, p0, Lj$/time/chrono/JapaneseDate;->era:Lj$/time/chrono/JapaneseEra;

    invoke-virtual {v0}, Lj$/time/chrono/JapaneseEra;->next()Lj$/time/chrono/JapaneseEra;

    move-result-object v0

    .line 421
    .local v0, "nextEra":Lj$/time/chrono/JapaneseEra;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/LocalDate;->getYear()I

    move-result v2

    iget-object v3, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v3}, Lj$/time/LocalDate;->getYear()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 422
    invoke-virtual {v0}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "remaining":I
    goto :goto_0

    .line 424
    .end local v2    # "remaining":I
    :cond_0
    iget-object v2, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v2}, Lj$/time/LocalDate;->lengthOfYear()I

    move-result v2

    .line 426
    .restart local v2    # "remaining":I
    :goto_0
    iget v3, p0, Lj$/time/chrono/JapaneseDate;->yearOfEra:I

    if-ne v3, v1, :cond_1

    .line 427
    iget-object v3, p0, Lj$/time/chrono/JapaneseDate;->era:Lj$/time/chrono/JapaneseEra;

    invoke-virtual {v3}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v2, v3

    .line 429
    :cond_1
    return v2
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/JapaneseDate;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lj$/time/chrono/JapaneseDate;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 687
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateImpl;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 620
    invoke-super {p0, p1}, Lj$/time/chrono/ChronoLocalDateImpl;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/JapaneseDate;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lj$/time/chrono/JapaneseDate;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic minusDays(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/JapaneseDate;->minusDays(J)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method minusDays(J)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "daysToSubtract"    # J

    .line 707
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->minusDays(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method bridge synthetic minusMonths(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/JapaneseDate;->minusMonths(J)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method minusMonths(J)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "monthsToSubtract"    # J

    .line 697
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->minusMonths(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method bridge synthetic minusWeeks(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/JapaneseDate;->minusWeeks(J)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method minusWeeks(J)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "weeksToSubtract"    # J

    .line 702
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->minusWeeks(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method bridge synthetic minusYears(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/JapaneseDate;->minusYears(J)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method minusYears(J)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "yearsToSubtract"    # J

    .line 692
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->minusYears(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/JapaneseDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lj$/time/chrono/JapaneseDate;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 682
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateImpl;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 610
    invoke-super {p0, p1}, Lj$/time/chrono/ChronoLocalDateImpl;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/JapaneseDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lj$/time/chrono/JapaneseDate;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusDays(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/JapaneseDate;->plusDays(J)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method plusDays(J)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "days"    # J

    .line 677
    iget-object v0, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/chrono/JapaneseDate;->with(Lj$/time/LocalDate;)Lj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusMonths(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/JapaneseDate;->plusMonths(J)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method plusMonths(J)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "months"    # J

    .line 667
    iget-object v0, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/chrono/JapaneseDate;->with(Lj$/time/LocalDate;)Lj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusWeeks(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/JapaneseDate;->plusWeeks(J)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method plusWeeks(J)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "weeksToAdd"    # J

    .line 672
    iget-object v0, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusWeeks(J)Lj$/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/chrono/JapaneseDate;->with(Lj$/time/LocalDate;)Lj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusYears(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/JapaneseDate;->plusYears(J)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method plusYears(J)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "years"    # J

    .line 662
    iget-object v0, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusYears(J)Lj$/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/chrono/JapaneseDate;->with(Lj$/time/LocalDate;)Lj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 7
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 482
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 483
    invoke-virtual {p0, p1}, Lj$/time/chrono/JapaneseDate;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 485
    .local v0, "f":Lj$/time/temporal/ChronoField;
    sget-object v1, Lj$/time/chrono/JapaneseDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 503
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseDate;->getChronology()Lj$/time/chrono/JapaneseChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj$/time/chrono/JapaneseChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 494
    :pswitch_0
    iget-object v1, p0, Lj$/time/chrono/JapaneseDate;->era:Lj$/time/chrono/JapaneseEra;

    invoke-virtual {v1}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalDate;->getYear()I

    move-result v1

    .line 495
    .local v1, "startYear":I
    iget-object v4, p0, Lj$/time/chrono/JapaneseDate;->era:Lj$/time/chrono/JapaneseEra;

    invoke-virtual {v4}, Lj$/time/chrono/JapaneseEra;->next()Lj$/time/chrono/JapaneseEra;

    move-result-object v4

    .line 496
    .local v4, "nextEra":Lj$/time/chrono/JapaneseEra;
    if-eqz v4, :cond_0

    .line 497
    invoke-virtual {v4}, Lj$/time/chrono/JapaneseEra;->getSince()Lj$/time/LocalDate;

    move-result-object v5

    invoke-virtual {v5}, Lj$/time/LocalDate;->getYear()I

    move-result v5

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    invoke-static {v2, v3, v5, v6}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 500
    :cond_0
    const v5, 0x3b9ac9ff

    sub-int/2addr v5, v1

    int-to-long v5, v5

    invoke-static {v2, v3, v5, v6}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 487
    .end local v1    # "startYear":I
    .end local v4    # "nextEra":Lj$/time/chrono/JapaneseEra;
    :pswitch_1
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseDate;->lengthOfYear()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 486
    :pswitch_2
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseDate;->lengthOfMonth()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 505
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_1
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

    .line 507
    :cond_2
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
    .locals 2

    .line 728
    iget-object v0, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 124
    invoke-super {p0}, Lj$/time/chrono/ChronoLocalDateImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 0

    .line 124
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1
.end method

.method public until(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/chrono/ChronoPeriod;
    .locals 5
    .param p1, "endDate"    # Lj$/time/chrono/ChronoLocalDate;

    .line 722
    iget-object v0, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->until(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/Period;

    move-result-object v0

    .line 723
    .local v0, "period":Lj$/time/Period;
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseDate;->getChronology()Lj$/time/chrono/JapaneseChronology;

    move-result-object v1

    invoke-virtual {v0}, Lj$/time/Period;->getYears()I

    move-result v2

    invoke-virtual {v0}, Lj$/time/Period;->getMonths()I

    move-result v3

    invoke-virtual {v0}, Lj$/time/Period;->getDays()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lj$/time/chrono/JapaneseChronology;->period(III)Lj$/time/chrono/ChronoPeriod;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lj$/time/chrono/JapaneseDate;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/JapaneseDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;

    .line 600
    invoke-super {p0, p1}, Lj$/time/chrono/ChronoLocalDateImpl;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/JapaneseDate;
    .locals 4
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 566
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 567
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 568
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {p0, v0}, Lj$/time/chrono/JapaneseDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-nez v3, :cond_0

    .line 569
    return-object p0

    .line 571
    :cond_0
    sget-object v1, Lj$/time/chrono/JapaneseDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 575
    :sswitch_0
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseDate;->getChronology()Lj$/time/chrono/JapaneseChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj$/time/chrono/JapaneseChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v1

    .line 576
    .local v1, "nvalue":I
    sget-object v2, Lj$/time/chrono/JapaneseDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_1

    goto :goto_0

    .line 580
    :sswitch_1
    iget-object v2, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v2, v1}, Lj$/time/LocalDate;->withYear(I)Lj$/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Lj$/time/chrono/JapaneseDate;->with(Lj$/time/LocalDate;)Lj$/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    .line 582
    :sswitch_2
    invoke-static {v1}, Lj$/time/chrono/JapaneseEra;->of(I)Lj$/time/chrono/JapaneseEra;

    move-result-object v2

    iget v3, p0, Lj$/time/chrono/JapaneseDate;->yearOfEra:I

    invoke-direct {p0, v2, v3}, Lj$/time/chrono/JapaneseDate;->withYear(Lj$/time/chrono/JapaneseEra;I)Lj$/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    .line 578
    :sswitch_3
    invoke-direct {p0, v1}, Lj$/time/chrono/JapaneseDate;->withYear(I)Lj$/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    .line 588
    .end local v1    # "nvalue":I
    :goto_0
    iget-object v1, p0, Lj$/time/chrono/JapaneseDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Lj$/time/LocalDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {p0, v1}, Lj$/time/chrono/JapaneseDate;->with(Lj$/time/LocalDate;)Lj$/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1

    .line 590
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateImpl;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/JapaneseDate;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lj$/time/chrono/JapaneseDate;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/JapaneseDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 796
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lj$/time/chrono/JapaneseDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 797
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lj$/time/chrono/JapaneseDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 798
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lj$/time/chrono/JapaneseDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 799
    return-void
.end method
