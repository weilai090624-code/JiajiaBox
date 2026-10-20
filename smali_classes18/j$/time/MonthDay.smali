.class public final Lj$/time/MonthDay;
.super Ljava/lang/Object;
.source "MonthDay.java"

# interfaces
.implements Lj$/time/temporal/TemporalAccessor;
.implements Lj$/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/TemporalAccessor;",
        "Lj$/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Lj$/time/MonthDay;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final PARSER:Lj$/time/format/DateTimeFormatter;

.field private static final serialVersionUID:J = -0xd0888991b3ac078L


# instance fields
.field private final day:I

.field private final month:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 137
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 138
    const-string v1, "--"

    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    .line 139
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 140
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    .line 141
    invoke-virtual {v0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter()Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/MonthDay;->PARSER:Lj$/time/format/DateTimeFormatter;

    .line 137
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput p1, p0, Lj$/time/MonthDay;->month:I

    .line 321
    iput p2, p0, Lj$/time/MonthDay;->day:I

    .line 322
    return-void
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/MonthDay;
    .locals 5
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 268
    instance-of v0, p0, Lj$/time/MonthDay;

    if-eqz v0, :cond_0

    .line 269
    move-object v0, p0

    check-cast v0, Lj$/time/MonthDay;

    return-object v0

    .line 272
    :cond_0
    :try_start_0
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-static {p0}, Lj$/time/chrono/Chronology$-CC;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    invoke-static {p0}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v0

    move-object p0, v0

    .line 275
    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    invoke-static {v0, v1}, Lj$/time/MonthDay;->of(II)Lj$/time/MonthDay;

    move-result-object v0
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "ex":Lj$/time/DateTimeException;
    new-instance v1, Lj$/time/DateTimeException;

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain MonthDay from TemporalAccessor: "

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

.method public static now()Lj$/time/MonthDay;
    .locals 1

    .line 166
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/MonthDay;->now(Lj$/time/Clock;)Lj$/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lj$/time/Clock;)Lj$/time/MonthDay;
    .locals 3
    .param p0, "clock"    # Lj$/time/Clock;

    .line 196
    invoke-static {p0}, Lj$/time/LocalDate;->now(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object v0

    .line 197
    .local v0, "now":Lj$/time/LocalDate;
    invoke-virtual {v0}, Lj$/time/LocalDate;->getMonth()Lj$/time/Month;

    move-result-object v1

    invoke-virtual {v0}, Lj$/time/LocalDate;->getDayOfMonth()I

    move-result v2

    invoke-static {v1, v2}, Lj$/time/MonthDay;->of(Lj$/time/Month;I)Lj$/time/MonthDay;

    move-result-object v1

    return-object v1
.end method

.method public static now(Lj$/time/ZoneId;)Lj$/time/MonthDay;
    .locals 1
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 182
    invoke-static {p0}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/MonthDay;->now(Lj$/time/Clock;)Lj$/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static of(II)Lj$/time/MonthDay;
    .locals 1
    .param p0, "month"    # I
    .param p1, "dayOfMonth"    # I

    .line 244
    invoke-static {p0}, Lj$/time/Month;->of(I)Lj$/time/Month;

    move-result-object v0

    invoke-static {v0, p1}, Lj$/time/MonthDay;->of(Lj$/time/Month;I)Lj$/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lj$/time/Month;I)Lj$/time/MonthDay;
    .locals 4
    .param p0, "month"    # Lj$/time/Month;
    .param p1, "dayOfMonth"    # I

    .line 218
    const-string v0, "month"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 220
    invoke-virtual {p0}, Lj$/time/Month;->maxLength()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 224
    new-instance v0, Lj$/time/MonthDay;

    invoke-virtual {p0}, Lj$/time/Month;->getValue()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lj$/time/MonthDay;-><init>(II)V

    return-object v0

    .line 221
    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    .line 222
    invoke-virtual {p0}, Lj$/time/Month;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal value for DayOfMonth field, value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid for month "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lj$/time/MonthDay;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 294
    sget-object v0, Lj$/time/MonthDay;->PARSER:Lj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lj$/time/MonthDay;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/MonthDay;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 308
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 309
    new-instance v0, Lj$/time/MonthDay$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/time/MonthDay$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0, v0}, Lj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/MonthDay;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/MonthDay;
    .locals 3
    .param p0, "in"    # Ljava/io/DataInput;

    .line 787
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 788
    .local v0, "month":B
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 789
    .local v1, "day":B
    invoke-static {v0, v1}, Lj$/time/MonthDay;->of(II)Lj$/time/MonthDay;

    move-result-object v2

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 778
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 768
    new-instance v0, Lj$/time/Ser;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 5
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 628
    invoke-static {p1}, Lj$/time/chrono/Chronology$-CC;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Lj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    iget v1, p0, Lj$/time/MonthDay;->month:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 632
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Lj$/time/temporal/Temporal;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    iget v3, p0, Lj$/time/MonthDay;->day:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    .line 629
    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atYear(I)Lj$/time/LocalDate;
    .locals 2
    .param p1, "year"    # I

    .line 665
    iget v0, p0, Lj$/time/MonthDay;->month:I

    invoke-virtual {p0, p1}, Lj$/time/MonthDay;->isValidYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lj$/time/MonthDay;->day:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    :goto_0
    invoke-static {p1, v0, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lj$/time/MonthDay;)I
    .locals 3
    .param p1, "other"    # Lj$/time/MonthDay;

    .line 680
    iget v0, p0, Lj$/time/MonthDay;->month:I

    iget v1, p1, Lj$/time/MonthDay;->month:I

    sub-int/2addr v0, v1

    .line 681
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 682
    iget v1, p0, Lj$/time/MonthDay;->day:I

    iget v2, p1, Lj$/time/MonthDay;->day:I

    sub-int v0, v1, v2

    .line 684
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 127
    check-cast p1, Lj$/time/MonthDay;

    invoke-virtual {p0, p1}, Lj$/time/MonthDay;->compareTo(Lj$/time/MonthDay;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 718
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 719
    return v0

    .line 721
    :cond_0
    instance-of v1, p1, Lj$/time/MonthDay;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 722
    move-object v1, p1

    check-cast v1, Lj$/time/MonthDay;

    .line 723
    .local v1, "other":Lj$/time/MonthDay;
    iget v3, p0, Lj$/time/MonthDay;->month:I

    iget v4, v1, Lj$/time/MonthDay;->month:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lj$/time/MonthDay;->day:I

    iget v4, v1, Lj$/time/MonthDay;->day:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 725
    .end local v1    # "other":Lj$/time/MonthDay;
    :cond_2
    return v2
.end method

.method public format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 645
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 646
    invoke-virtual {p1, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lj$/time/temporal/TemporalField;)I
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 417
    invoke-virtual {p0, p1}, Lj$/time/MonthDay;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lj$/time/MonthDay;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 494
    iget v0, p0, Lj$/time/MonthDay;->day:I

    return v0
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 445
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 446
    sget-object v0, Lj$/time/MonthDay$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 451
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

    .line 449
    :pswitch_0
    iget v0, p0, Lj$/time/MonthDay;->month:I

    int-to-long v0, v0

    return-wide v0

    .line 448
    :pswitch_1
    iget v0, p0, Lj$/time/MonthDay;->day:I

    int-to-long v0, v0

    return-wide v0

    .line 453
    :cond_0
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMonth()Lj$/time/Month;
    .locals 1

    .line 483
    iget v0, p0, Lj$/time/MonthDay;->month:I

    invoke-static {v0}, Lj$/time/Month;->of(I)Lj$/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .line 468
    iget v0, p0, Lj$/time/MonthDay;->month:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 735
    iget v0, p0, Lj$/time/MonthDay;->month:I

    shl-int/lit8 v0, v0, 0x6

    iget v1, p0, Lj$/time/MonthDay;->day:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lj$/time/MonthDay;)Z
    .locals 1
    .param p1, "other"    # Lj$/time/MonthDay;

    .line 694
    invoke-virtual {p0, p1}, Lj$/time/MonthDay;->compareTo(Lj$/time/MonthDay;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBefore(Lj$/time/MonthDay;)Z
    .locals 1
    .param p1, "other"    # Lj$/time/MonthDay;

    .line 704
    invoke-virtual {p0, p1}, Lj$/time/MonthDay;->compareTo(Lj$/time/MonthDay;)I

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
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 350
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 351
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 353
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

.method public isValidYear(I)Z
    .locals 3
    .param p1, "year"    # I

    .line 509
    iget v0, p0, Lj$/time/MonthDay;->day:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lj$/time/MonthDay;->month:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    int-to-long v0, p1

    invoke-static {v0, v1}, Lj$/time/Year;->isLeap(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    return v0
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

    .line 593
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 594
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    return-object v0

    .line 596
    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$query(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 7
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 381
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 382
    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 383
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 384
    invoke-virtual {p0}, Lj$/time/MonthDay;->getMonth()Lj$/time/Month;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Month;->minLength()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p0}, Lj$/time/MonthDay;->getMonth()Lj$/time/Month;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Month;->maxLength()I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v1, 0x1

    invoke-static/range {v1 .. v6}, Lj$/time/temporal/ValueRange;->of(JJJ)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 386
    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$range(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 749
    iget v2, p0, Lj$/time/MonthDay;->month:I

    if-ge v2, v1, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lj$/time/MonthDay;->month:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 750
    iget v2, p0, Lj$/time/MonthDay;->day:I

    if-ge v2, v1, :cond_1

    const-string v1, "-0"

    goto :goto_1

    :cond_1
    const-string v1, "-"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lj$/time/MonthDay;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 751
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 748
    return-object v0
.end method

.method public with(Lj$/time/Month;)Lj$/time/MonthDay;
    .locals 3
    .param p1, "month"    # Lj$/time/Month;

    .line 543
    const-string v0, "month"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 544
    invoke-virtual {p1}, Lj$/time/Month;->getValue()I

    move-result v0

    iget v1, p0, Lj$/time/MonthDay;->month:I

    if-ne v0, v1, :cond_0

    .line 545
    return-object p0

    .line 547
    :cond_0
    iget v0, p0, Lj$/time/MonthDay;->day:I

    invoke-virtual {p1}, Lj$/time/Month;->maxLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 548
    .local v0, "day":I
    new-instance v1, Lj$/time/MonthDay;

    invoke-virtual {p1}, Lj$/time/Month;->getValue()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lj$/time/MonthDay;-><init>(II)V

    return-object v1
.end method

.method public withDayOfMonth(I)Lj$/time/MonthDay;
    .locals 1
    .param p1, "dayOfMonth"    # I

    .line 565
    iget v0, p0, Lj$/time/MonthDay;->day:I

    if-ne p1, v0, :cond_0

    .line 566
    return-object p0

    .line 568
    :cond_0
    iget v0, p0, Lj$/time/MonthDay;->month:I

    invoke-static {v0, p1}, Lj$/time/MonthDay;->of(II)Lj$/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public withMonth(I)Lj$/time/MonthDay;
    .locals 1
    .param p1, "month"    # I

    .line 527
    invoke-static {p1}, Lj$/time/Month;->of(I)Lj$/time/Month;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/MonthDay;->with(Lj$/time/Month;)Lj$/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 782
    iget v0, p0, Lj$/time/MonthDay;->month:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 783
    iget v0, p0, Lj$/time/MonthDay;->day:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 784
    return-void
.end method
