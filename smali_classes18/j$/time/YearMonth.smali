.class public final Lj$/time/YearMonth;
.super Ljava/lang/Object;
.source "YearMonth.java"

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
        "Lj$/time/YearMonth;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final PARSER:Lj$/time/format/DateTimeFormatter;

.field private static final serialVersionUID:J = 0x3a0e6ceaf57ebbc6L


# instance fields
.field private final month:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 141
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    sget-object v2, Lj$/time/format/SignStyle;->EXCEEDS_PAD:Lj$/time/format/SignStyle;

    .line 142
    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 143
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    .line 144
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter()Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/YearMonth;->PARSER:Lj$/time/format/DateTimeFormatter;

    .line 141
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput p1, p0, Lj$/time/YearMonth;->year:I

    .line 307
    iput p2, p0, Lj$/time/YearMonth;->month:I

    .line 308
    return-void
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/YearMonth;
    .locals 5
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 252
    instance-of v0, p0, Lj$/time/YearMonth;

    if-eqz v0, :cond_0

    .line 253
    move-object v0, p0

    check-cast v0, Lj$/time/YearMonth;

    return-object v0

    .line 255
    :cond_0
    const-string v0, "temporal"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    :try_start_0
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-static {p0}, Lj$/time/chrono/Chronology$-CC;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    invoke-static {p0}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v0

    move-object p0, v0

    .line 260
    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    invoke-static {v0, v1}, Lj$/time/YearMonth;->of(II)Lj$/time/YearMonth;

    move-result-object v0
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "ex":Lj$/time/DateTimeException;
    new-instance v1, Lj$/time/DateTimeException;

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain YearMonth from TemporalAccessor: "

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

.method private getProlepticMonth()J
    .locals 4

    .line 500
    iget v0, p0, Lj$/time/YearMonth;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget v2, p0, Lj$/time/YearMonth;->month:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static now()Lj$/time/YearMonth;
    .locals 1

    .line 169
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/YearMonth;->now(Lj$/time/Clock;)Lj$/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lj$/time/Clock;)Lj$/time/YearMonth;
    .locals 3
    .param p0, "clock"    # Lj$/time/Clock;

    .line 199
    invoke-static {p0}, Lj$/time/LocalDate;->now(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object v0

    .line 200
    .local v0, "now":Lj$/time/LocalDate;
    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lj$/time/LocalDate;->getMonth()Lj$/time/Month;

    move-result-object v2

    invoke-static {v1, v2}, Lj$/time/YearMonth;->of(ILj$/time/Month;)Lj$/time/YearMonth;

    move-result-object v1

    return-object v1
.end method

.method public static now(Lj$/time/ZoneId;)Lj$/time/YearMonth;
    .locals 1
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 185
    invoke-static {p0}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/YearMonth;->now(Lj$/time/Clock;)Lj$/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static of(II)Lj$/time/YearMonth;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I

    .line 226
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 227
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 228
    new-instance v0, Lj$/time/YearMonth;

    invoke-direct {v0, p0, p1}, Lj$/time/YearMonth;-><init>(II)V

    return-object v0
.end method

.method public static of(ILj$/time/Month;)Lj$/time/YearMonth;
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # Lj$/time/Month;

    .line 213
    const-string v0, "month"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    invoke-virtual {p1}, Lj$/time/Month;->getValue()I

    move-result v0

    invoke-static {p0, v0}, Lj$/time/YearMonth;->of(II)Lj$/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lj$/time/YearMonth;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 280
    sget-object v0, Lj$/time/YearMonth;->PARSER:Lj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lj$/time/YearMonth;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/YearMonth;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 294
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 295
    new-instance v0, Lj$/time/YearMonth$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lj$/time/YearMonth$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p1, p0, v0}, Lj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/YearMonth;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/YearMonth;
    .locals 3
    .param p0, "in"    # Ljava/io/DataInput;

    .line 1245
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1246
    .local v0, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 1247
    .local v1, "month":B
    invoke-static {v0, v1}, Lj$/time/YearMonth;->of(II)Lj$/time/YearMonth;

    move-result-object v2

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 1236
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private with(II)Lj$/time/YearMonth;
    .locals 1
    .param p1, "newYear"    # I
    .param p2, "newMonth"    # I

    .line 319
    iget v0, p0, Lj$/time/YearMonth;->year:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lj$/time/YearMonth;->month:I

    if-ne v0, p2, :cond_0

    .line 320
    return-object p0

    .line 322
    :cond_0
    new-instance v0, Lj$/time/YearMonth;

    invoke-direct {v0, p1, p2}, Lj$/time/YearMonth;-><init>(II)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1226
    new-instance v0, Lj$/time/Ser;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 991
    invoke-static {p1}, Lj$/time/chrono/Chronology$-CC;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Lj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    sget-object v0, Lj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Lj$/time/temporal/ChronoField;

    invoke-direct {p0}, Lj$/time/YearMonth;->getProlepticMonth()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    .line 992
    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atDay(I)Lj$/time/LocalDate;
    .locals 2
    .param p1, "dayOfMonth"    # I

    .line 1095
    iget v0, p0, Lj$/time/YearMonth;->year:I

    iget v1, p0, Lj$/time/YearMonth;->month:I

    invoke-static {v0, v1, p1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public atEndOfMonth()Lj$/time/LocalDate;
    .locals 3

    .line 1113
    iget v0, p0, Lj$/time/YearMonth;->year:I

    iget v1, p0, Lj$/time/YearMonth;->month:I

    invoke-virtual {p0}, Lj$/time/YearMonth;->lengthOfMonth()I

    move-result v2

    invoke-static {v0, v1, v2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lj$/time/YearMonth;)I
    .locals 3
    .param p1, "other"    # Lj$/time/YearMonth;

    .line 1128
    iget v0, p0, Lj$/time/YearMonth;->year:I

    iget v1, p1, Lj$/time/YearMonth;->year:I

    sub-int/2addr v0, v1

    .line 1129
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 1130
    iget v1, p0, Lj$/time/YearMonth;->month:I

    iget v2, p1, Lj$/time/YearMonth;->month:I

    sub-int v0, v1, v2

    .line 1132
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 131
    check-cast p1, Lj$/time/YearMonth;

    invoke-virtual {p0, p1}, Lj$/time/YearMonth;->compareTo(Lj$/time/YearMonth;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1166
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1167
    return v0

    .line 1169
    :cond_0
    instance-of v1, p1, Lj$/time/YearMonth;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1170
    move-object v1, p1

    check-cast v1, Lj$/time/YearMonth;

    .line 1171
    .local v1, "other":Lj$/time/YearMonth;
    iget v3, p0, Lj$/time/YearMonth;->year:I

    iget v4, v1, Lj$/time/YearMonth;->year:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lj$/time/YearMonth;->month:I

    iget v4, v1, Lj$/time/YearMonth;->month:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1173
    .end local v1    # "other":Lj$/time/YearMonth;
    :cond_2
    return v2
.end method

.method public format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 1072
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1073
    invoke-virtual {p1, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lj$/time/temporal/TemporalField;)I
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 458
    invoke-virtual {p0, p1}, Lj$/time/YearMonth;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lj$/time/YearMonth;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 486
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 487
    sget-object v0, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 494
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

    .line 492
    :pswitch_0
    iget v0, p0, Lj$/time/YearMonth;->year:I

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    int-to-long v0, v1

    return-wide v0

    .line 491
    :pswitch_1
    iget v0, p0, Lj$/time/YearMonth;->year:I

    int-to-long v0, v0

    return-wide v0

    .line 490
    :pswitch_2
    iget v0, p0, Lj$/time/YearMonth;->year:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lj$/time/YearMonth;->year:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lj$/time/YearMonth;->year:I

    :goto_0
    int-to-long v0, v1

    return-wide v0

    .line 489
    :pswitch_3
    invoke-direct {p0}, Lj$/time/YearMonth;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    .line 488
    :pswitch_4
    iget v0, p0, Lj$/time/YearMonth;->month:I

    int-to-long v0, v0

    return-wide v0

    .line 496
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

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

.method public getMonth()Lj$/time/Month;
    .locals 1

    .line 543
    iget v0, p0, Lj$/time/YearMonth;->month:I

    invoke-static {v0}, Lj$/time/Month;->of(I)Lj$/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .line 528
    iget v0, p0, Lj$/time/YearMonth;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 514
    iget v0, p0, Lj$/time/YearMonth;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1183
    iget v0, p0, Lj$/time/YearMonth;->year:I

    iget v1, p0, Lj$/time/YearMonth;->month:I

    shl-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lj$/time/YearMonth;)Z
    .locals 1
    .param p1, "other"    # Lj$/time/YearMonth;

    .line 1142
    invoke-virtual {p0, p1}, Lj$/time/YearMonth;->compareTo(Lj$/time/YearMonth;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBefore(Lj$/time/YearMonth;)Z
    .locals 1
    .param p1, "other"    # Lj$/time/YearMonth;

    .line 1152
    invoke-virtual {p0, p1}, Lj$/time/YearMonth;->compareTo(Lj$/time/YearMonth;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLeapYear()Z
    .locals 3

    .line 566
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    iget v1, p0, Lj$/time/YearMonth;->year:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 355
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 356
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Lj$/time/temporal/ChronoField;

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

    .line 359
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

    .line 391
    instance-of v0, p1, Lj$/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 392
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_1

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

    .line 394
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

.method public isValidDay(I)Z
    .locals 2
    .param p1, "dayOfMonth"    # I

    .line 579
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lj$/time/YearMonth;->lengthOfMonth()I

    move-result v1

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lengthOfMonth()I
    .locals 2

    .line 591
    invoke-virtual {p0}, Lj$/time/YearMonth;->getMonth()Lj$/time/Month;

    move-result-object v0

    invoke-virtual {p0}, Lj$/time/YearMonth;->isLeapYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lj$/time/Month;->length(Z)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 1

    .line 602
    invoke-virtual {p0}, Lj$/time/YearMonth;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16d

    :goto_0
    return v0
.end method

.method public minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/YearMonth;
    .locals 3
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 904
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/YearMonth;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/YearMonth;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Lj$/time/YearMonth;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/YearMonth;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/YearMonth;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/YearMonth;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/YearMonth;
    .locals 1
    .param p1, "amountToSubtract"    # Lj$/time/temporal/TemporalAmount;

    .line 880
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/YearMonth;

    return-object v0
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/YearMonth;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lj$/time/YearMonth;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public minusMonths(J)Lj$/time/YearMonth;
    .locals 3
    .param p1, "monthsToSubtract"    # J

    .line 930
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/YearMonth;->plusMonths(J)Lj$/time/YearMonth;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/YearMonth;->plusMonths(J)Lj$/time/YearMonth;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/YearMonth;->plusMonths(J)Lj$/time/YearMonth;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusYears(J)Lj$/time/YearMonth;
    .locals 3
    .param p1, "yearsToSubtract"    # J

    .line 917
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/YearMonth;->plusYears(J)Lj$/time/YearMonth;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/YearMonth;->plusYears(J)Lj$/time/YearMonth;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/YearMonth;->plusYears(J)Lj$/time/YearMonth;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/YearMonth;
    .locals 3
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 806
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 807
    sget-object v0, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v1, p3

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 815
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

    .line 813
    :pswitch_0
    sget-object v0, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lj$/time/YearMonth;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lj$/time/YearMonth;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 812
    :pswitch_1
    const/16 v0, 0x3e8

    invoke-static {p1, p2, v0}, Lj$/time/YearMonth$$ExternalSyntheticBackport4;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/YearMonth;->plusYears(J)Lj$/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 811
    :pswitch_2
    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Lj$/time/YearMonth$$ExternalSyntheticBackport3;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/YearMonth;->plusYears(J)Lj$/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 810
    :pswitch_3
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Lj$/time/YearMonth$$ExternalSyntheticBackport2;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/YearMonth;->plusYears(J)Lj$/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 809
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lj$/time/YearMonth;->plusYears(J)Lj$/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 808
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lj$/time/YearMonth;->plusMonths(J)Lj$/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 817
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->addTo(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/YearMonth;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/YearMonth;
    .locals 1
    .param p1, "amountToAdd"    # Lj$/time/temporal/TemporalAmount;

    .line 750
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/YearMonth;

    return-object v0
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/YearMonth;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lj$/time/YearMonth;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public plusMonths(J)Lj$/time/YearMonth;
    .locals 8
    .param p1, "monthsToAdd"    # J

    .line 847
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 848
    return-object p0

    .line 850
    :cond_0
    iget v0, p0, Lj$/time/YearMonth;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget v2, p0, Lj$/time/YearMonth;->month:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 851
    .local v0, "monthCount":J
    add-long v2, v0, p1

    .line 852
    .local v2, "calcMonths":J
    sget-object v4, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    const/16 v5, 0xc

    invoke-static {v2, v3, v5}, Lj$/time/YearMonth$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v4

    .line 853
    .local v4, "newYear":I
    invoke-static {v2, v3, v5}, Lj$/time/YearMonth$$ExternalSyntheticBackport1;->m(JI)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 854
    .local v5, "newMonth":I
    invoke-direct {p0, v4, v5}, Lj$/time/YearMonth;->with(II)Lj$/time/YearMonth;

    move-result-object v6

    return-object v6
.end method

.method public plusYears(J)Lj$/time/YearMonth;
    .locals 3
    .param p1, "yearsToAdd"    # J

    .line 830
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 831
    return-object p0

    .line 833
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    iget v1, p0, Lj$/time/YearMonth;->year:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 834
    .local v0, "newYear":I
    iget v1, p0, Lj$/time/YearMonth;->month:I

    invoke-direct {p0, v0, v1}, Lj$/time/YearMonth;->with(II)Lj$/time/YearMonth;

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

    .line 955
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 956
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    return-object v0

    .line 957
    :cond_0
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->precision()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 958
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    return-object v0

    .line 960
    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$query(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 5
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 423
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 424
    invoke-virtual {p0}, Lj$/time/YearMonth;->getYear()I

    move-result v0

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

    .line 426
    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$range(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1196
    iget v0, p0, Lj$/time/YearMonth;->year:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1197
    .local v0, "absYear":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1198
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_1

    .line 1199
    iget v2, p0, Lj$/time/YearMonth;->year:I

    if-gez v2, :cond_0

    .line 1200
    iget v2, p0, Lj$/time/YearMonth;->year:I

    add-int/lit16 v2, v2, -0x2710

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1202
    :cond_0
    iget v2, p0, Lj$/time/YearMonth;->year:I

    add-int/lit16 v2, v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1205
    :cond_1
    iget v2, p0, Lj$/time/YearMonth;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1207
    :goto_0
    iget v2, p0, Lj$/time/YearMonth;->month:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    const-string v2, "-0"

    goto :goto_1

    :cond_2
    const-string v2, "-"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lj$/time/YearMonth;->month:I

    .line 1208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1207
    return-object v2
.end method

.method public until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 7
    .param p1, "endExclusive"    # Lj$/time/temporal/Temporal;
    .param p2, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1046
    invoke-static {p1}, Lj$/time/YearMonth;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/YearMonth;

    move-result-object v0

    .line 1047
    .local v0, "end":Lj$/time/YearMonth;
    instance-of v1, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 1048
    invoke-direct {v0}, Lj$/time/YearMonth;->getProlepticMonth()J

    move-result-wide v1

    invoke-direct {p0}, Lj$/time/YearMonth;->getProlepticMonth()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1049
    .local v1, "monthsUntil":J
    sget-object v3, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v4, p2

    check-cast v4, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1057
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

    .line 1055
    :pswitch_0
    sget-object v3, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, v3}, Lj$/time/YearMonth;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sget-object v5, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v5}, Lj$/time/YearMonth;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    return-wide v3

    .line 1054
    :pswitch_1
    const-wide/16 v3, 0x2ee0

    div-long v3, v1, v3

    return-wide v3

    .line 1053
    :pswitch_2
    const-wide/16 v3, 0x4b0

    div-long v3, v1, v3

    return-wide v3

    .line 1052
    :pswitch_3
    const-wide/16 v3, 0x78

    div-long v3, v1, v3

    return-wide v3

    .line 1051
    :pswitch_4
    const-wide/16 v3, 0xc

    div-long v3, v1, v3

    return-wide v3

    .line 1050
    :pswitch_5
    return-wide v1

    .line 1059
    .end local v1    # "monthsUntil":J
    :cond_0
    invoke-interface {p2, p0, v0}, Lj$/time/temporal/TemporalUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/YearMonth;
    .locals 1
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;

    .line 630
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAdjuster;->adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/YearMonth;

    return-object v0
.end method

.method public with(Lj$/time/temporal/TemporalField;J)Lj$/time/YearMonth;
    .locals 5
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 683
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 684
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 685
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 686
    sget-object v1, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 693
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

    .line 691
    :pswitch_0
    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lj$/time/YearMonth;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v3

    cmp-long v1, v3, p2

    if-nez v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    iget v1, p0, Lj$/time/YearMonth;->year:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lj$/time/YearMonth;->withYear(I)Lj$/time/YearMonth;

    move-result-object v1

    :goto_0
    return-object v1

    .line 690
    :pswitch_1
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lj$/time/YearMonth;->withYear(I)Lj$/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 689
    :pswitch_2
    iget v1, p0, Lj$/time/YearMonth;->year:I

    if-ge v1, v2, :cond_1

    const-wide/16 v1, 0x1

    sub-long/2addr v1, p2

    goto :goto_1

    :cond_1
    move-wide v1, p2

    :goto_1
    long-to-int v2, v1

    invoke-virtual {p0, v2}, Lj$/time/YearMonth;->withYear(I)Lj$/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 688
    :pswitch_3
    invoke-direct {p0}, Lj$/time/YearMonth;->getProlepticMonth()J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Lj$/time/YearMonth;->plusMonths(J)Lj$/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 687
    :pswitch_4
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lj$/time/YearMonth;->withMonth(I)Lj$/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 695
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/TemporalField;->adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/YearMonth;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lj$/time/YearMonth;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/YearMonth;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public withMonth(I)Lj$/time/YearMonth;
    .locals 3
    .param p1, "month"    # I

    .line 723
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 724
    iget v0, p0, Lj$/time/YearMonth;->year:I

    invoke-direct {p0, v0, p1}, Lj$/time/YearMonth;->with(II)Lj$/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Lj$/time/YearMonth;
    .locals 3
    .param p1, "year"    # I

    .line 709
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 710
    iget v0, p0, Lj$/time/YearMonth;->month:I

    invoke-direct {p0, p1, v0}, Lj$/time/YearMonth;->with(II)Lj$/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 1240
    iget v0, p0, Lj$/time/YearMonth;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1241
    iget v0, p0, Lj$/time/YearMonth;->month:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1242
    return-void
.end method
