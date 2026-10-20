.class public final Lj$/time/chrono/MinguoChronology;
.super Lj$/time/chrono/AbstractChronology;
.source "MinguoChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lj$/time/chrono/MinguoChronology;

.field static final YEARS_DIFFERENCE:I = 0x777

.field private static final serialVersionUID:J = 0xe6dfcf4568e9fbbL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lj$/time/chrono/MinguoChronology;

    invoke-direct {v0}, Lj$/time/chrono/MinguoChronology;-><init>()V

    sput-object v0, Lj$/time/chrono/MinguoChronology;->INSTANCE:Lj$/time/chrono/MinguoChronology;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Lj$/time/chrono/AbstractChronology;-><init>()V

    .line 127
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 361
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic date(III)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 107
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/MinguoChronology;->date(III)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lj$/time/chrono/Era;III)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 107
    invoke-virtual {p0, p1, p2, p3, p4}, Lj$/time/chrono/MinguoChronology;->date(Lj$/time/chrono/Era;III)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lj$/time/chrono/MinguoChronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public date(III)Lj$/time/chrono/MinguoDate;
    .locals 2
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 191
    new-instance v0, Lj$/time/chrono/MinguoDate;

    add-int/lit16 v1, p1, 0x777

    invoke-static {v1, p2, p3}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/chrono/MinguoDate;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public date(Lj$/time/chrono/Era;III)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 176
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/MinguoChronology;->prolepticYear(Lj$/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Lj$/time/chrono/MinguoChronology;->date(III)Lj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/MinguoDate;
    .locals 2
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 253
    instance-of v0, p1, Lj$/time/chrono/MinguoDate;

    if-eqz v0, :cond_0

    .line 254
    move-object v0, p1

    check-cast v0, Lj$/time/chrono/MinguoDate;

    return-object v0

    .line 256
    :cond_0
    new-instance v0, Lj$/time/chrono/MinguoDate;

    invoke-static {p1}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/chrono/MinguoDate;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateEpochDay(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 107
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/MinguoChronology;->dateEpochDay(J)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public dateEpochDay(J)Lj$/time/chrono/MinguoDate;
    .locals 2
    .param p1, "epochDay"    # J

    .line 233
    new-instance v0, Lj$/time/chrono/MinguoDate;

    invoke-static {p1, p2}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/chrono/MinguoDate;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateNow()Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lj$/time/chrono/MinguoChronology;->dateNow()Lj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Lj$/time/Clock;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lj$/time/chrono/MinguoChronology;->dateNow(Lj$/time/Clock;)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateNow(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lj$/time/chrono/MinguoChronology;->dateNow(Lj$/time/ZoneId;)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public dateNow()Lj$/time/chrono/MinguoDate;
    .locals 1

    .line 238
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/chrono/MinguoChronology;->dateNow(Lj$/time/Clock;)Lj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Lj$/time/Clock;)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "clock"    # Lj$/time/Clock;

    .line 248
    invoke-static {p1}, Lj$/time/LocalDate;->now(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/chrono/MinguoChronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Lj$/time/ZoneId;)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 243
    invoke-static {p1}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/chrono/MinguoChronology;->dateNow(Lj$/time/Clock;)Lj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 107
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/MinguoChronology;->dateYearDay(II)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 107
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/MinguoChronology;->dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(II)Lj$/time/chrono/MinguoDate;
    .locals 2
    .param p1, "prolepticYear"    # I
    .param p2, "dayOfYear"    # I

    .line 221
    new-instance v0, Lj$/time/chrono/MinguoDate;

    add-int/lit16 v1, p1, 0x777

    invoke-static {v1, p2}, Lj$/time/LocalDate;->ofYearDay(II)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/chrono/MinguoDate;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .line 207
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/MinguoChronology;->prolepticYear(Lj$/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lj$/time/chrono/MinguoChronology;->dateYearDay(II)Lj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic eraOf(I)Lj$/time/chrono/Era;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lj$/time/chrono/MinguoChronology;->eraOf(I)Lj$/time/chrono/MinguoEra;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Lj$/time/chrono/MinguoEra;
    .locals 1
    .param p1, "eraValue"    # I

    .line 303
    invoke-static {p1}, Lj$/time/chrono/MinguoEra;->of(I)Lj$/time/chrono/MinguoEra;

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

    .line 308
    invoke-static {}, Lj$/time/chrono/MinguoEra;->values()[Lj$/time/chrono/MinguoEra;

    move-result-object v0

    invoke-static {v0}, Lj$/time/Duration$DurationUnits$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    .line 158
    const-string v0, "roc"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 141
    const-string v0, "Minguo"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 3
    .param p1, "prolepticYear"    # J

    .line 290
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    const-wide/16 v1, 0x777

    add-long/2addr v1, p1

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
            "Lj$/time/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    .line 262
    invoke-super {p0, p1}, Lj$/time/chrono/AbstractChronology;->localDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public prolepticYear(Lj$/time/chrono/Era;I)I
    .locals 2
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I

    .line 295
    instance-of v0, p1, Lj$/time/chrono/MinguoEra;

    if-eqz v0, :cond_1

    .line 298
    sget-object v0, Lj$/time/chrono/MinguoEra;->ROC:Lj$/time/chrono/MinguoEra;

    if-ne p1, v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, p2, 0x1

    :goto_0
    return v0

    .line 296
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be MinguoEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;
    .locals 11
    .param p1, "field"    # Lj$/time/temporal/ChronoField;

    .line 314
    sget-object v0, Lj$/time/chrono/MinguoChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {p1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x777

    packed-switch v0, :pswitch_data_0

    .line 328
    invoke-virtual {p1}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 324
    :pswitch_0
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    .line 325
    .local v0, "range":Lj$/time/temporal/ValueRange;
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 320
    .end local v0    # "range":Lj$/time/temporal/ValueRange;
    :pswitch_1
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    .line 321
    .restart local v0    # "range":Lj$/time/temporal/ValueRange;
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v3

    sub-long v7, v3, v1

    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    neg-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    add-long v9, v3, v1

    invoke-static/range {v5 .. v10}, Lj$/time/temporal/ValueRange;->of(JJJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 316
    .end local v0    # "range":Lj$/time/temporal/ValueRange;
    :pswitch_2
    sget-object v0, Lj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    .line 317
    .restart local v0    # "range":Lj$/time/temporal/ValueRange;
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    const-wide/16 v3, 0x5994

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    sub-long/2addr v5, v3

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

    .line 107
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/MinguoChronology;->resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/MinguoDate;
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
            "Lj$/time/chrono/MinguoDate;"
        }
    .end annotation

    .line 334
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Lj$/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/MinguoDate;

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 351
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
            "Lj$/time/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    .line 274
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
            "Lj$/time/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    .line 268
    invoke-super {p0, p1}, Lj$/time/chrono/AbstractChronology;->zonedDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method
