.class public final Lj$/time/chrono/ThaiBuddhistChronology;
.super Lj$/time/chrono/AbstractChronology;
.source "ThaiBuddhistChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ERA_FULL_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_NARROW_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_SHORT_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALLBACK_LANGUAGE:Ljava/lang/String; = "en"

.field public static final INSTANCE:Lj$/time/chrono/ThaiBuddhistChronology;

.field private static final TARGET_LANGUAGE:Ljava/lang/String; = "th"

.field static final YEARS_DIFFERENCE:I = 0x21f

.field private static final serialVersionUID:J = 0x26862bec417f21daL


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 114
    new-instance v0, Lj$/time/chrono/ThaiBuddhistChronology;

    invoke-direct {v0}, Lj$/time/chrono/ThaiBuddhistChronology;-><init>()V

    sput-object v0, Lj$/time/chrono/ThaiBuddhistChronology;->INSTANCE:Lj$/time/chrono/ThaiBuddhistChronology;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lj$/time/chrono/ThaiBuddhistChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lj$/time/chrono/ThaiBuddhistChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lj$/time/chrono/ThaiBuddhistChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    .line 148
    sget-object v0, Lj$/time/chrono/ThaiBuddhistChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    const-string v1, "BB"

    const-string v2, "BE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "en"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lj$/time/chrono/ThaiBuddhistChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "th"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lj$/time/chrono/ThaiBuddhistChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    const-string v1, "B.B."

    const-string v3, "B.E."

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lj$/time/chrono/ThaiBuddhistChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    const-string v1, "\u0e1e.\u0e28."

    const-string v3, "\u0e1b\u0e35\u0e01\u0e48\u0e2d\u0e19\u0e04\u0e23\u0e34\u0e2a\u0e15\u0e4c\u0e01\u0e32\u0e25\u0e17\u0e35\u0e48"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lj$/time/chrono/ThaiBuddhistChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    const-string v1, "Before Buddhist"

    const-string v5, "Budhhist Era"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lj$/time/chrono/ThaiBuddhistChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    const-string v1, "\u0e1e\u0e38\u0e17\u0e18\u0e28\u0e31\u0e01\u0e23\u0e32\u0e0a"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Lj$/time/chrono/AbstractChronology;-><init>()V

    .line 164
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 398
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic date(III)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/ThaiBuddhistChronology;->date(III)Lj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lj$/time/chrono/Era;III)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2, p3, p4}, Lj$/time/chrono/ThaiBuddhistChronology;->date(Lj$/time/chrono/Era;III)Lj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lj$/time/chrono/ThaiBuddhistChronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public date(III)Lj$/time/chrono/ThaiBuddhistDate;
    .locals 2
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 228
    new-instance v0, Lj$/time/chrono/ThaiBuddhistDate;

    add-int/lit16 v1, p1, -0x21f

    invoke-static {v1, p2, p3}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/chrono/ThaiBuddhistDate;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public date(Lj$/time/chrono/Era;III)Lj$/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 213
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/ThaiBuddhistChronology;->prolepticYear(Lj$/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Lj$/time/chrono/ThaiBuddhistChronology;->date(III)Lj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ThaiBuddhistDate;
    .locals 2
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 290
    instance-of v0, p1, Lj$/time/chrono/ThaiBuddhistDate;

    if-eqz v0, :cond_0

    .line 291
    move-object v0, p1

    check-cast v0, Lj$/time/chrono/ThaiBuddhistDate;

    return-object v0

    .line 293
    :cond_0
    new-instance v0, Lj$/time/chrono/ThaiBuddhistDate;

    invoke-static {p1}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/chrono/ThaiBuddhistDate;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateEpochDay(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/ThaiBuddhistChronology;->dateEpochDay(J)Lj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public dateEpochDay(J)Lj$/time/chrono/ThaiBuddhistDate;
    .locals 2
    .param p1, "epochDay"    # J

    .line 270
    new-instance v0, Lj$/time/chrono/ThaiBuddhistDate;

    invoke-static {p1, p2}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/chrono/ThaiBuddhistDate;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateNow()Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lj$/time/chrono/ThaiBuddhistChronology;->dateNow()Lj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Lj$/time/Clock;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lj$/time/chrono/ThaiBuddhistChronology;->dateNow(Lj$/time/Clock;)Lj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateNow(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lj$/time/chrono/ThaiBuddhistChronology;->dateNow(Lj$/time/ZoneId;)Lj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public dateNow()Lj$/time/chrono/ThaiBuddhistDate;
    .locals 1

    .line 275
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/chrono/ThaiBuddhistChronology;->dateNow(Lj$/time/Clock;)Lj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Lj$/time/Clock;)Lj$/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "clock"    # Lj$/time/Clock;

    .line 285
    invoke-static {p1}, Lj$/time/LocalDate;->now(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/chrono/ThaiBuddhistChronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Lj$/time/ZoneId;)Lj$/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 280
    invoke-static {p1}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/chrono/ThaiBuddhistChronology;->dateNow(Lj$/time/Clock;)Lj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/ThaiBuddhistChronology;->dateYearDay(II)Lj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/ThaiBuddhistChronology;->dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(II)Lj$/time/chrono/ThaiBuddhistDate;
    .locals 2
    .param p1, "prolepticYear"    # I
    .param p2, "dayOfYear"    # I

    .line 258
    new-instance v0, Lj$/time/chrono/ThaiBuddhistDate;

    add-int/lit16 v1, p1, -0x21f

    invoke-static {v1, p2}, Lj$/time/LocalDate;->ofYearDay(II)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/chrono/ThaiBuddhistDate;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .line 244
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/ThaiBuddhistChronology;->prolepticYear(Lj$/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lj$/time/chrono/ThaiBuddhistChronology;->dateYearDay(II)Lj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic eraOf(I)Lj$/time/chrono/Era;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lj$/time/chrono/ThaiBuddhistChronology;->eraOf(I)Lj$/time/chrono/ThaiBuddhistEra;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Lj$/time/chrono/ThaiBuddhistEra;
    .locals 1
    .param p1, "eraValue"    # I

    .line 340
    invoke-static {p1}, Lj$/time/chrono/ThaiBuddhistEra;->of(I)Lj$/time/chrono/ThaiBuddhistEra;

    move-result-object v0

    return-object v0
.end method

.method public eras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/time/chrono/Era;",
            ">;"
        }
    .end annotation

    .line 345
    invoke-static {}, Lj$/time/chrono/ThaiBuddhistEra;->values()[Lj$/time/chrono/ThaiBuddhistEra;

    move-result-object v0

    invoke-static {v0}, Lj$/time/Duration$DurationUnits$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    .line 195
    const-string v0, "buddhist"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 178
    const-string v0, "ThaiBuddhist"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 3
    .param p1, "prolepticYear"    # J

    .line 327
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    const-wide/16 v1, 0x21f

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public localDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAccessor;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "Lj$/time/chrono/ThaiBuddhistDate;",
            ">;"
        }
    .end annotation

    .line 299
    invoke-super {p0, p1}, Lj$/time/chrono/AbstractChronology;->localDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public prolepticYear(Lj$/time/chrono/Era;I)I
    .locals 2
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I

    .line 332
    instance-of v0, p1, Lj$/time/chrono/ThaiBuddhistEra;

    if-eqz v0, :cond_1

    .line 335
    sget-object v0, Lj$/time/chrono/ThaiBuddhistEra;->BE:Lj$/time/chrono/ThaiBuddhistEra;

    if-ne p1, v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, p2, 0x1

    :goto_0
    return v0

    .line 333
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be BuddhistEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;
    .locals 13
    .param p1, "field"    # Lj$/time/temporal/ChronoField;

    .line 351
    sget-object v0, Lj$/time/chrono/ThaiBuddhistChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {p1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x21f

    packed-switch v0, :pswitch_data_0

    .line 365
    invoke-virtual {p1}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 361
    :pswitch_0
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    .line 362
    .local v0, "range":Lj$/time/temporal/ValueRange;
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    add-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 357
    .end local v0    # "range":Lj$/time/temporal/ValueRange;
    :pswitch_1
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    .line 358
    .restart local v0    # "range":Lj$/time/temporal/ValueRange;
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    add-long/2addr v3, v1

    neg-long v3, v3

    const-wide/16 v5, 0x1

    add-long v9, v3, v5

    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v3

    add-long v11, v3, v1

    const-wide/16 v7, 0x1

    invoke-static/range {v7 .. v12}, Lj$/time/temporal/ValueRange;->of(JJJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 353
    .end local v0    # "range":Lj$/time/temporal/ValueRange;
    :pswitch_2
    sget-object v0, Lj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    .line 354
    .restart local v0    # "range":Lj$/time/temporal/ValueRange;
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    const-wide/16 v3, 0x1974

    add-long/2addr v1, v3

    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-static {v1, v2, v5, v6}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/ThaiBuddhistChronology;->resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p2, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ThaiBuddhistDate;"
        }
    .end annotation

    .line 371
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Lj$/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 388
    invoke-super {p0}, Lj$/time/chrono/AbstractChronology;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "instant"    # Lj$/time/Instant;
    .param p2, "zone"    # Lj$/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/Instant;",
            "Lj$/time/ZoneId;",
            ")",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "Lj$/time/chrono/ThaiBuddhistDate;",
            ">;"
        }
    .end annotation

    .line 311
    invoke-super {p0, p1, p2}, Lj$/time/chrono/AbstractChronology;->zonedDateTime(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAccessor;",
            ")",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "Lj$/time/chrono/ThaiBuddhistDate;",
            ">;"
        }
    .end annotation

    .line 305
    invoke-super {p0, p1}, Lj$/time/chrono/AbstractChronology;->zonedDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method
