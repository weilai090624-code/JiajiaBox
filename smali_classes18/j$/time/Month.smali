.class public final enum Lj$/time/Month;
.super Ljava/lang/Enum;
.source "Month.java"

# interfaces
.implements Lj$/time/temporal/TemporalAccessor;
.implements Lj$/time/temporal/TemporalAdjuster;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/time/Month;",
        ">;",
        "Lj$/time/temporal/TemporalAccessor;",
        "Lj$/time/temporal/TemporalAdjuster;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/time/Month;

.field public static final enum APRIL:Lj$/time/Month;

.field public static final enum AUGUST:Lj$/time/Month;

.field public static final enum DECEMBER:Lj$/time/Month;

.field private static final ENUMS:[Lj$/time/Month;

.field public static final enum FEBRUARY:Lj$/time/Month;

.field public static final enum JANUARY:Lj$/time/Month;

.field public static final enum JULY:Lj$/time/Month;

.field public static final enum JUNE:Lj$/time/Month;

.field public static final enum MARCH:Lj$/time/Month;

.field public static final enum MAY:Lj$/time/Month;

.field public static final enum NOVEMBER:Lj$/time/Month;

.field public static final enum OCTOBER:Lj$/time/Month;

.field public static final enum SEPTEMBER:Lj$/time/Month;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 112
    new-instance v0, Lj$/time/Month;

    const-string v1, "JANUARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/Month;->JANUARY:Lj$/time/Month;

    .line 117
    new-instance v0, Lj$/time/Month;

    const-string v1, "FEBRUARY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/Month;->FEBRUARY:Lj$/time/Month;

    .line 122
    new-instance v0, Lj$/time/Month;

    const-string v1, "MARCH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/Month;->MARCH:Lj$/time/Month;

    .line 127
    new-instance v0, Lj$/time/Month;

    const-string v1, "APRIL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/Month;->APRIL:Lj$/time/Month;

    .line 132
    new-instance v0, Lj$/time/Month;

    const-string v1, "MAY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/Month;->MAY:Lj$/time/Month;

    .line 137
    new-instance v0, Lj$/time/Month;

    const-string v1, "JUNE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/Month;->JUNE:Lj$/time/Month;

    .line 142
    new-instance v0, Lj$/time/Month;

    const-string v1, "JULY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/Month;->JULY:Lj$/time/Month;

    .line 147
    new-instance v0, Lj$/time/Month;

    const-string v1, "AUGUST"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/Month;->AUGUST:Lj$/time/Month;

    .line 152
    new-instance v0, Lj$/time/Month;

    const-string v1, "SEPTEMBER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/Month;->SEPTEMBER:Lj$/time/Month;

    .line 157
    new-instance v0, Lj$/time/Month;

    const-string v1, "OCTOBER"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/Month;->OCTOBER:Lj$/time/Month;

    .line 162
    new-instance v0, Lj$/time/Month;

    const-string v1, "NOVEMBER"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/Month;->NOVEMBER:Lj$/time/Month;

    .line 167
    new-instance v0, Lj$/time/Month;

    const-string v1, "DECEMBER"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/Month;->DECEMBER:Lj$/time/Month;

    .line 106
    const/16 v0, 0xc

    new-array v0, v0, [Lj$/time/Month;

    sget-object v1, Lj$/time/Month;->JANUARY:Lj$/time/Month;

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/Month;->FEBRUARY:Lj$/time/Month;

    aput-object v1, v0, v3

    sget-object v1, Lj$/time/Month;->MARCH:Lj$/time/Month;

    aput-object v1, v0, v4

    sget-object v1, Lj$/time/Month;->APRIL:Lj$/time/Month;

    aput-object v1, v0, v5

    sget-object v1, Lj$/time/Month;->MAY:Lj$/time/Month;

    aput-object v1, v0, v6

    sget-object v1, Lj$/time/Month;->JUNE:Lj$/time/Month;

    aput-object v1, v0, v7

    sget-object v1, Lj$/time/Month;->JULY:Lj$/time/Month;

    aput-object v1, v0, v8

    sget-object v1, Lj$/time/Month;->AUGUST:Lj$/time/Month;

    aput-object v1, v0, v9

    sget-object v1, Lj$/time/Month;->SEPTEMBER:Lj$/time/Month;

    aput-object v1, v0, v10

    sget-object v1, Lj$/time/Month;->OCTOBER:Lj$/time/Month;

    aput-object v1, v0, v11

    sget-object v1, Lj$/time/Month;->NOVEMBER:Lj$/time/Month;

    aput-object v1, v0, v12

    sget-object v1, Lj$/time/Month;->DECEMBER:Lj$/time/Month;

    aput-object v1, v0, v13

    sput-object v0, Lj$/time/Month;->$VALUES:[Lj$/time/Month;

    .line 171
    invoke-static {}, Lj$/time/Month;->values()[Lj$/time/Month;

    move-result-object v0

    sput-object v0, Lj$/time/Month;->ENUMS:[Lj$/time/Month;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Month;
    .registers 6
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 212
    instance-of v0, p0, Lj$/time/Month;

    if-eqz v0, :cond_8

    .line 213
    move-object v0, p0

    check-cast v0, Lj$/time/Month;

    return-object v0

    .line 216
    :cond_8
    :try_start_8
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-static {p0}, Lj$/time/chrono/Chronology$-CC;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 217
    invoke-static {p0}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v0

    move-object p0, v0

    .line 219
    :cond_19
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-static {v0}, Lj$/time/Month;->of(I)Lj$/time/Month;

    move-result-object v0
    :try_end_23
    .catch Lj$/time/DateTimeException; {:try_start_8 .. :try_end_23} :catch_24

    return-object v0

    .line 220
    :catch_24
    move-exception v0

    .line 221
    .local v0, "ex":Lj$/time/DateTimeException;
    new-instance v1, Lj$/time/DateTimeException;

    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain Month from TemporalAccessor: "

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

.method public static of(I)Lj$/time/Month;
    .registers 4
    .param p0, "month"    # I

    .line 186
    const/4 v0, 0x1

    if-lt p0, v0, :cond_e

    const/16 v0, 0xc

    if-gt p0, v0, :cond_e

    .line 189
    sget-object v0, Lj$/time/Month;->ENUMS:[Lj$/time/Month;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 187
    :cond_e
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for MonthOfYear: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/Month;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 106
    const-class v0, Lj$/time/Month;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/time/Month;

    return-object v0
.end method

.method public static values()[Lj$/time/Month;
    .registers 1

    .line 106
    sget-object v0, Lj$/time/Month;->$VALUES:[Lj$/time/Month;

    invoke-virtual {v0}, [Lj$/time/Month;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/Month;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .registers 5
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 609
    invoke-static {p1}, Lj$/time/chrono/Chronology$-CC;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Lj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 612
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0}, Lj$/time/Month;->getValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    .line 610
    :cond_18
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public firstDayOfYear(Z)I
    .registers 5
    .param p1, "leapYear"    # Z

    .line 496
    move v0, p1

    .line 497
    .local v0, "leap":I
    sget-object v1, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    invoke-virtual {p0}, Lj$/time/Month;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_30

    .line 522
    add-int/lit16 v1, v0, 0x14f

    return v1

    .line 517
    :pswitch_f
    add-int/lit16 v1, v0, 0x112

    return v1

    .line 513
    :pswitch_12
    add-int/lit16 v1, v0, 0xd5

    return v1

    .line 511
    :pswitch_15
    add-int/lit16 v1, v0, 0xb6

    return v1

    .line 507
    :pswitch_18
    add-int/lit8 v1, v0, 0x79

    return v1

    .line 503
    :pswitch_1b
    add-int/lit8 v1, v0, 0x3c

    return v1

    .line 499
    :pswitch_1e
    const/4 v1, 0x1

    return v1

    .line 519
    :pswitch_20
    add-int/lit16 v1, v0, 0x131

    return v1

    .line 515
    :pswitch_23
    add-int/lit16 v1, v0, 0xf4

    return v1

    .line 509
    :pswitch_26
    add-int/lit16 v1, v0, 0x98

    return v1

    .line 505
    :pswitch_29
    add-int/lit8 v1, v0, 0x5b

    return v1

    .line 501
    :pswitch_2c
    const/16 v1, 0x20

    return v1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public firstMonthOfQuarter()Lj$/time/Month;
    .registers 3

    .line 539
    sget-object v0, Lj$/time/Month;->ENUMS:[Lj$/time/Month;

    invoke-virtual {p0}, Lj$/time/Month;->ordinal()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get(Lj$/time/temporal/TemporalField;)I
    .registers 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 342
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    .line 343
    invoke-virtual {p0}, Lj$/time/Month;->getValue()I

    move-result v0

    return v0

    .line 345
    :cond_9
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$get(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getDisplayName(Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "style"    # Lj$/time/format/TextStyle;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 254
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, p1}, Lj$/time/format/DateTimeFormatterBuilder;->appendText(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 372
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_a

    .line 373
    invoke-virtual {p0}, Lj$/time/Month;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 374
    :cond_a
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-nez v0, :cond_13

    .line 377
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 375
    :cond_13
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
.end method

.method public getValue()I
    .registers 2

    .line 236
    invoke-virtual {p0}, Lj$/time/Month;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSupported(Lj$/time/temporal/TemporalField;)Z
    .registers 5
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 279
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 280
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1

    .line 282
    :cond_d
    if-eqz p1, :cond_16

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public length(Z)I
    .registers 4
    .param p1, "leapYear"    # Z

    .line 426
    sget-object v0, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    invoke-virtual {p0}, Lj$/time/Month;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 435
    const/16 v0, 0x1f

    return v0

    .line 433
    :pswitch_e
    const/16 v0, 0x1e

    return v0

    .line 428
    :pswitch_11
    if-eqz p1, :cond_16

    const/16 v0, 0x1d

    goto :goto_18

    :cond_16
    const/16 v0, 0x1c

    :goto_18
    return v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public maxLength()I
    .registers 3

    .line 472
    sget-object v0, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    invoke-virtual {p0}, Lj$/time/Month;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 481
    const/16 v0, 0x1f

    return v0

    .line 479
    :pswitch_e
    const/16 v0, 0x1e

    return v0

    .line 474
    :pswitch_11
    const/16 v0, 0x1d

    return v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public minLength()I
    .registers 3

    .line 449
    sget-object v0, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    invoke-virtual {p0}, Lj$/time/Month;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 458
    const/16 v0, 0x1f

    return v0

    .line 456
    :pswitch_e
    const/16 v0, 0x1e

    return v0

    .line 451
    :pswitch_11
    const/16 v0, 0x1c

    return v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public minus(J)Lj$/time/Month;
    .registers 5
    .param p1, "months"    # J

    .line 409
    const-wide/16 v0, 0xc

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Lj$/time/Month;->plus(J)Lj$/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public plus(J)Lj$/time/Month;
    .registers 7
    .param p1, "months"    # J

    .line 393
    const-wide/16 v0, 0xc

    rem-long v0, p1, v0

    long-to-int v1, v0

    .line 394
    .local v1, "amount":I
    sget-object v0, Lj$/time/Month;->ENUMS:[Lj$/time/Month;

    invoke-virtual {p0}, Lj$/time/Month;->ordinal()I

    move-result v2

    add-int/lit8 v3, v1, 0xc

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0xc

    aget-object v0, v0, v2

    return-object v0
.end method

.method public query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 564
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 565
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    return-object v0

    .line 566
    :cond_9
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->precision()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 567
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    return-object v0

    .line 569
    :cond_12
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$query(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 309
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    .line 310
    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 312
    :cond_9
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$range(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method
