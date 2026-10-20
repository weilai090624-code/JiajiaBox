.class public final Lj$/time/Year;
.super Ljava/lang/Object;
.source "Year.java"

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
        "Lj$/time/Year;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:I = 0x3b9ac9ff

.field public static final MIN_VALUE:I = -0x3b9ac9ff

.field private static final PARSER:Lj$/time/format/DateTimeFormatter;

.field private static final serialVersionUID:J = -0x51d949b44ef9efL


# instance fields
.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 154
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    sget-object v2, Lj$/time/format/SignStyle;->EXCEEDS_PAD:Lj$/time/format/SignStyle;

    .line 155
    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter()Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/Year;->PARSER:Lj$/time/format/DateTimeFormatter;

    .line 154
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "year"    # I

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput p1, p0, Lj$/time/Year;->year:I

    .line 327
    return-void
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Year;
    .locals 5
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 250
    instance-of v0, p0, Lj$/time/Year;

    if-eqz v0, :cond_0

    .line 251
    move-object v0, p0

    check-cast v0, Lj$/time/Year;

    return-object v0

    .line 253
    :cond_0
    const-string v0, "temporal"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    :try_start_0
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-static {p0}, Lj$/time/chrono/Chronology$-CC;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    invoke-static {p0}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v0

    move-object p0, v0

    .line 258
    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-static {v0}, Lj$/time/Year;->of(I)Lj$/time/Year;

    move-result-object v0
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "ex":Lj$/time/DateTimeException;
    new-instance v1, Lj$/time/DateTimeException;

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain Year from TemporalAccessor: "

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

.method public static isLeap(J)Z
    .locals 5
    .param p0, "year"    # J

    .line 316
    const-wide/16 v0, 0x3

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 v0, 0x64

    rem-long v0, p0, v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x190

    rem-long v0, p0, v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static now()Lj$/time/Year;
    .locals 1

    .line 176
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/Year;->now(Lj$/time/Clock;)Lj$/time/Year;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lj$/time/Clock;)Lj$/time/Year;
    .locals 2
    .param p0, "clock"    # Lj$/time/Clock;

    .line 206
    invoke-static {p0}, Lj$/time/LocalDate;->now(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object v0

    .line 207
    .local v0, "now":Lj$/time/LocalDate;
    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v1

    invoke-static {v1}, Lj$/time/Year;->of(I)Lj$/time/Year;

    move-result-object v1

    return-object v1
.end method

.method public static now(Lj$/time/ZoneId;)Lj$/time/Year;
    .locals 1
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 192
    invoke-static {p0}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/Year;->now(Lj$/time/Clock;)Lj$/time/Year;

    move-result-object v0

    return-object v0
.end method

.method public static of(I)Lj$/time/Year;
    .locals 3
    .param p0, "isoYear"    # I

    .line 226
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 227
    new-instance v0, Lj$/time/Year;

    invoke-direct {v0, p0}, Lj$/time/Year;-><init>(I)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lj$/time/Year;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 277
    sget-object v0, Lj$/time/Year;->PARSER:Lj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lj$/time/Year;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/Year;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/Year;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 291
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 292
    new-instance v0, Lj$/time/Year$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lj$/time/Year$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, p0, v0}, Lj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/Year;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/Year;
    .locals 1
    .param p0, "in"    # Ljava/io/DataInput;

    .line 1119
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {v0}, Lj$/time/Year;->of(I)Lj$/time/Year;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 1111
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1101
    new-instance v0, Lj$/time/Ser;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 859
    invoke-static {p1}, Lj$/time/chrono/Chronology$-CC;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Lj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    iget v1, p0, Lj$/time/Year;->year:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    .line 860
    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atDay(I)Lj$/time/LocalDate;
    .locals 1
    .param p1, "dayOfYear"    # I

    .line 957
    iget v0, p0, Lj$/time/Year;->year:I

    invoke-static {v0, p1}, Lj$/time/LocalDate;->ofYearDay(II)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public atMonth(I)Lj$/time/YearMonth;
    .locals 1
    .param p1, "month"    # I

    .line 994
    iget v0, p0, Lj$/time/Year;->year:I

    invoke-static {v0, p1}, Lj$/time/YearMonth;->of(II)Lj$/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public atMonth(Lj$/time/Month;)Lj$/time/YearMonth;
    .locals 1
    .param p1, "month"    # Lj$/time/Month;

    .line 975
    iget v0, p0, Lj$/time/Year;->year:I

    invoke-static {v0, p1}, Lj$/time/YearMonth;->of(ILj$/time/Month;)Lj$/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public atMonthDay(Lj$/time/MonthDay;)Lj$/time/LocalDate;
    .locals 1
    .param p1, "monthDay"    # Lj$/time/MonthDay;

    .line 1009
    iget v0, p0, Lj$/time/Year;->year:I

    invoke-virtual {p1, v0}, Lj$/time/MonthDay;->atYear(I)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lj$/time/Year;)I
    .locals 2
    .param p1, "other"    # Lj$/time/Year;

    .line 1024
    iget v0, p0, Lj$/time/Year;->year:I

    iget v1, p1, Lj$/time/Year;->year:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 135
    check-cast p1, Lj$/time/Year;

    invoke-virtual {p0, p1}, Lj$/time/Year;->compareTo(Lj$/time/Year;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1058
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1059
    return v0

    .line 1061
    :cond_0
    instance-of v1, p1, Lj$/time/Year;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1062
    iget v1, p0, Lj$/time/Year;->year:I

    move-object v3, p1

    check-cast v3, Lj$/time/Year;

    iget v3, v3, Lj$/time/Year;->year:I

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1064
    :cond_2
    return v2
.end method

.method public format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 939
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 940
    invoke-virtual {p1, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lj$/time/temporal/TemporalField;)I
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 469
    invoke-virtual {p0, p1}, Lj$/time/Year;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lj$/time/Year;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 497
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 498
    sget-object v0, Lj$/time/Year$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 503
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

    .line 501
    :pswitch_0
    iget v0, p0, Lj$/time/Year;->year:I

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    int-to-long v0, v1

    return-wide v0

    .line 500
    :pswitch_1
    iget v0, p0, Lj$/time/Year;->year:I

    int-to-long v0, v0

    return-wide v0

    .line 499
    :pswitch_2
    iget v0, p0, Lj$/time/Year;->year:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lj$/time/Year;->year:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lj$/time/Year;->year:I

    :goto_0
    int-to-long v0, v1

    return-wide v0

    .line 505
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue()I
    .locals 1

    .line 338
    iget v0, p0, Lj$/time/Year;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1074
    iget v0, p0, Lj$/time/Year;->year:I

    return v0
.end method

.method public isAfter(Lj$/time/Year;)Z
    .locals 2
    .param p1, "other"    # Lj$/time/Year;

    .line 1034
    iget v0, p0, Lj$/time/Year;->year:I

    iget v1, p1, Lj$/time/Year;->year:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBefore(Lj$/time/Year;)Z
    .locals 2
    .param p1, "other"    # Lj$/time/Year;

    .line 1044
    iget v0, p0, Lj$/time/Year;->year:I

    iget v1, p1, Lj$/time/Year;->year:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLeap()Z
    .locals 2

    .line 528
    iget v0, p0, Lj$/time/Year;->year:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lj$/time/Year;->isLeap(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 369
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 370
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 372
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
    .locals 3
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 403
    instance-of v0, p1, Lj$/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 404
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoUnit;->DECADES:Lj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoUnit;->CENTURIES:Lj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoUnit;->MILLENNIA:Lj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoUnit;->ERAS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 406
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalUnit;->isSupportedBy(Lj$/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isValidMonthDay(Lj$/time/MonthDay;)Z
    .locals 1
    .param p1, "monthDay"    # Lj$/time/MonthDay;

    .line 541
    if-eqz p1, :cond_0

    iget v0, p0, Lj$/time/Year;->year:I

    invoke-virtual {p1, v0}, Lj$/time/MonthDay;->isValidYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 550
    invoke-virtual {p0}, Lj$/time/Year;->isLeap()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16d

    :goto_0
    return v0
.end method

.method public minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Year;
    .locals 3
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 785
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/Year;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Year;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Lj$/time/Year;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Year;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/Year;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Year;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Year;
    .locals 1
    .param p1, "amountToSubtract"    # Lj$/time/temporal/TemporalAmount;

    .line 761
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/Year;

    return-object v0
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/Year;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Year;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lj$/time/Year;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Year;

    move-result-object p1

    return-object p1
.end method

.method public minusYears(J)Lj$/time/Year;
    .locals 3
    .param p1, "yearsToSubtract"    # J

    .line 798
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Year;->plusYears(J)Lj$/time/Year;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Year;->plusYears(J)Lj$/time/Year;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Year;->plusYears(J)Lj$/time/Year;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Year;
    .locals 3
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 709
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 710
    sget-object v0, Lj$/time/Year$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v1, p3

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 717
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

    .line 715
    :pswitch_0
    sget-object v0, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lj$/time/Year;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lj$/time/Year;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/Year;

    move-result-object v0

    return-object v0

    .line 714
    :pswitch_1
    const/16 v0, 0x3e8

    invoke-static {p1, p2, v0}, Lj$/time/Year$$ExternalSyntheticBackport2;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/Year;->plusYears(J)Lj$/time/Year;

    move-result-object v0

    return-object v0

    .line 713
    :pswitch_2
    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Lj$/time/Year$$ExternalSyntheticBackport1;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/Year;->plusYears(J)Lj$/time/Year;

    move-result-object v0

    return-object v0

    .line 712
    :pswitch_3
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Lj$/time/Year$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/Year;->plusYears(J)Lj$/time/Year;

    move-result-object v0

    return-object v0

    .line 711
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lj$/time/Year;->plusYears(J)Lj$/time/Year;

    move-result-object v0

    return-object v0

    .line 719
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->addTo(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/Year;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Year;
    .locals 1
    .param p1, "amountToAdd"    # Lj$/time/temporal/TemporalAmount;

    .line 656
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/Year;

    return-object v0
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/Year;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Year;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lj$/time/Year;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Year;

    move-result-object p1

    return-object p1
.end method

.method public plusYears(J)Lj$/time/Year;
    .locals 3
    .param p1, "yearsToAdd"    # J

    .line 732
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 733
    return-object p0

    .line 735
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    iget v1, p0, Lj$/time/Year;->year:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    invoke-static {v0}, Lj$/time/Year;->of(I)Lj$/time/Year;

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

    .line 823
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 824
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    return-object v0

    .line 825
    :cond_0
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->precision()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 826
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    return-object v0

    .line 828
    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$query(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 5
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 435
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 436
    iget v0, p0, Lj$/time/Year;->year:I

    const-wide/16 v1, 0x1

    if-gtz v0, :cond_0

    const-wide/32 v3, 0x3b9aca00

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x3b9ac9ff

    :goto_0
    invoke-static {v1, v2, v3, v4}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 438
    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$range(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1085
    iget v0, p0, Lj$/time/Year;->year:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 7
    .param p1, "endExclusive"    # Lj$/time/temporal/Temporal;
    .param p2, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 914
    invoke-static {p1}, Lj$/time/Year;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Year;

    move-result-object v0

    .line 915
    .local v0, "end":Lj$/time/Year;
    instance-of v1, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 916
    iget v1, v0, Lj$/time/Year;->year:I

    int-to-long v1, v1

    iget v3, p0, Lj$/time/Year;->year:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 917
    .local v1, "yearsUntil":J
    sget-object v3, Lj$/time/Year$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v4, p2

    check-cast v4, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 924
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

    .line 922
    :pswitch_0
    sget-object v3, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, v3}, Lj$/time/Year;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sget-object v5, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v5}, Lj$/time/Year;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    return-wide v3

    .line 921
    :pswitch_1
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    return-wide v3

    .line 920
    :pswitch_2
    const-wide/16 v3, 0x64

    div-long v3, v1, v3

    return-wide v3

    .line 919
    :pswitch_3
    const-wide/16 v3, 0xa

    div-long v3, v1, v3

    return-wide v3

    .line 918
    :pswitch_4
    return-wide v1

    .line 926
    .end local v1    # "yearsUntil":J
    :cond_0
    invoke-interface {p2, p0, v0}, Lj$/time/temporal/TemporalUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/Year;
    .locals 1
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;

    .line 574
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAdjuster;->adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/Year;

    return-object v0
.end method

.method public with(Lj$/time/temporal/TemporalField;J)Lj$/time/Year;
    .locals 5
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 620
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 621
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 622
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 623
    sget-object v1, Lj$/time/Year$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 628
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

    .line 626
    :pswitch_0
    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lj$/time/Year;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v3

    cmp-long v1, v3, p2

    if-nez v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    iget v1, p0, Lj$/time/Year;->year:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Lj$/time/Year;->of(I)Lj$/time/Year;

    move-result-object v1

    :goto_0
    return-object v1

    .line 625
    :pswitch_1
    long-to-int v1, p2

    invoke-static {v1}, Lj$/time/Year;->of(I)Lj$/time/Year;

    move-result-object v1

    return-object v1

    .line 624
    :pswitch_2
    iget v1, p0, Lj$/time/Year;->year:I

    if-ge v1, v2, :cond_1

    const-wide/16 v1, 0x1

    sub-long/2addr v1, p2

    goto :goto_1

    :cond_1
    move-wide v1, p2

    :goto_1
    long-to-int v2, v1

    invoke-static {v2}, Lj$/time/Year;->of(I)Lj$/time/Year;

    move-result-object v1

    return-object v1

    .line 630
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/TemporalField;->adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/Year;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lj$/time/Year;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/Year;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/Year;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/Year;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 1115
    iget v0, p0, Lj$/time/Year;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1116
    return-void
.end method
