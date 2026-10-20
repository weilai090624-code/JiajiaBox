.class final enum Lj$/time/temporal/IsoFields$Field$4;
.super Lj$/time/temporal/IsoFields$Field;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/temporal/IsoFields$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 516
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lj$/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILj$/time/temporal/IsoFields-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILj$/time/temporal/IsoFields-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/time/temporal/IsoFields$Field$4;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .locals 8
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lj$/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 549
    .local p1, "temporal":Lj$/time/temporal/Temporal;, "TR;"
    invoke-virtual {p0, p1}, Lj$/time/temporal/IsoFields$Field$4;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    invoke-virtual {p0}, Lj$/time/temporal/IsoFields$Field$4;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/IsoFields$Field$4;->WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;

    invoke-virtual {v0, p2, p3, v1}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    .line 553
    .local v0, "newWby":I
    invoke-static {p1}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v1

    .line 554
    .local v1, "date":Lj$/time/LocalDate;
    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-virtual {v1, v2}, Lj$/time/LocalDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v2

    .line 555
    .local v2, "dow":I
    invoke-static {v1}, Lj$/time/temporal/IsoFields$Field;->-$$Nest$smgetWeek(Lj$/time/LocalDate;)I

    move-result v3

    .line 556
    .local v3, "week":I
    const/16 v4, 0x35

    if-ne v3, v4, :cond_0

    invoke-static {v0}, Lj$/time/temporal/IsoFields$Field;->-$$Nest$smgetWeekRange(I)I

    move-result v4

    const/16 v5, 0x34

    if-ne v4, v5, :cond_0

    .line 557
    const/16 v3, 0x34

    .line 559
    :cond_0
    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static {v0, v5, v4}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v4

    .line 560
    .local v4, "resolved":Lj$/time/LocalDate;
    sget-object v5, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-virtual {v4, v5}, Lj$/time/LocalDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v5

    sub-int v5, v2, v5

    add-int/lit8 v6, v3, -0x1

    mul-int/lit8 v6, v6, 0x7

    add-int/2addr v5, v6

    .line 561
    .local v5, "days":I
    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v4

    .line 562
    invoke-interface {p1, v4}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;

    move-result-object v6

    return-object v6

    .line 550
    .end local v0    # "newWby":I
    .end local v1    # "date":Lj$/time/LocalDate;
    .end local v2    # "dow":I
    .end local v3    # "week":I
    .end local v4    # "resolved":Lj$/time/LocalDate;
    .end local v5    # "days":I
    :cond_1
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekBasedYear"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaseUnit()Lj$/time/temporal/TemporalUnit;
    .locals 1

    .line 519
    sget-object v0, Lj$/time/temporal/IsoFields;->WEEK_BASED_YEARS:Lj$/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public getFrom(Lj$/time/temporal/TemporalAccessor;)J
    .locals 2
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 535
    invoke-virtual {p0, p1}, Lj$/time/temporal/IsoFields$Field$4;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-static {p1}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v0

    invoke-static {v0}, Lj$/time/temporal/IsoFields$Field;->-$$Nest$smgetWeekBasedYear(Lj$/time/LocalDate;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 536
    :cond_0
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekBasedYear"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRangeUnit()Lj$/time/temporal/TemporalUnit;
    .locals 1

    .line 523
    sget-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 531
    sget-object v0, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lj$/time/temporal/IsoFields;->isIso(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public range()Lj$/time/temporal/ValueRange;
    .locals 1

    .line 527
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;
    .locals 2
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 541
    invoke-virtual {p0, p1}, Lj$/time/temporal/IsoFields$Field$4;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    invoke-super {p0, p1}, Lj$/time/temporal/IsoFields$Field;->rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 542
    :cond_0
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekBasedYear"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 566
    const-string v0, "WeekBasedYear"

    return-object v0
.end method
