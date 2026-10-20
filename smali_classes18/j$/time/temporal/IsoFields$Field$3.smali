.class final enum Lj$/time/temporal/IsoFields$Field$3;
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

    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lj$/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILj$/time/temporal/IsoFields-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILj$/time/temporal/IsoFields-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/time/temporal/IsoFields$Field$3;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .locals 3
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lj$/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 470
    .local p1, "temporal":Lj$/time/temporal/Temporal;, "TR;"
    invoke-virtual {p0}, Lj$/time/temporal/IsoFields$Field$3;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p0}, Lj$/time/temporal/ValueRange;->checkValidValue(JLj$/time/temporal/TemporalField;)J

    .line 471
    invoke-virtual {p0, p1}, Lj$/time/temporal/IsoFields$Field$3;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public getBaseUnit()Lj$/time/temporal/TemporalUnit;
    .locals 1

    .line 438
    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 427
    const-string v0, "locale"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 433
    const-string v0, "Week"

    return-object v0
.end method

.method public getFrom(Lj$/time/temporal/TemporalAccessor;)J
    .locals 2
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 461
    invoke-virtual {p0, p1}, Lj$/time/temporal/IsoFields$Field$3;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-static {p1}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v0

    invoke-static {v0}, Lj$/time/temporal/IsoFields$Field;->-$$Nest$smgetWeek(Lj$/time/LocalDate;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 462
    :cond_0
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRangeUnit()Lj$/time/temporal/TemporalUnit;
    .locals 1

    .line 442
    sget-object v0, Lj$/time/temporal/IsoFields;->WEEK_BASED_YEARS:Lj$/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 450
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
    .locals 6

    .line 446
    const-wide/16 v2, 0x34

    const-wide/16 v4, 0x35

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Lj$/time/temporal/ValueRange;->of(JJJ)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;
    .locals 2
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 454
    invoke-virtual {p0, p1}, Lj$/time/temporal/IsoFields$Field$3;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-static {p1}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v0

    invoke-static {v0}, Lj$/time/temporal/IsoFields$Field;->-$$Nest$smgetWeekRange(Lj$/time/LocalDate;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 455
    :cond_0
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolve(Ljava/util/Map;Lj$/time/temporal/TemporalAccessor;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .locals 18
    .param p2, "partialTemporal"    # Lj$/time/temporal/TemporalAccessor;
    .param p3, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/temporal/TemporalAccessor;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 476
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    sget-object v3, Lj$/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 477
    .local v3, "wbyLong":Ljava/lang/Long;
    sget-object v4, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 478
    .local v4, "dowLong":Ljava/lang/Long;
    if-eqz v3, :cond_7

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 481
    :cond_0
    sget-object v5, Lj$/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;

    invoke-virtual {v5}, Lj$/time/temporal/IsoFields$Field;->range()Lj$/time/temporal/ValueRange;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Lj$/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;

    invoke-virtual {v5, v6, v7, v8}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v5

    .line 482
    .local v5, "wby":I
    sget-object v6, Lj$/time/temporal/IsoFields$Field$3;->WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 483
    .local v6, "wowby":J
    invoke-static/range {p2 .. p2}, Lj$/time/temporal/IsoFields$Field;->-$$Nest$smensureIso(Lj$/time/temporal/TemporalAccessor;)V

    .line 484
    const/4 v8, 0x1

    const/4 v9, 0x4

    invoke-static {v5, v8, v9}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v8

    .line 485
    .local v8, "date":Lj$/time/LocalDate;
    sget-object v9, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    const-wide/16 v10, 0x1

    if-ne v2, v9, :cond_3

    .line 486
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 487
    .local v12, "dow":J
    const-wide/16 v14, 0x7

    cmp-long v9, v12, v14

    if-lez v9, :cond_1

    .line 488
    sub-long v16, v12, v10

    div-long v10, v16, v14

    invoke-virtual {v8, v10, v11}, Lj$/time/LocalDate;->plusWeeks(J)Lj$/time/LocalDate;

    move-result-object v8

    .line 489
    const-wide/16 v9, 0x1

    sub-long v16, v12, v9

    rem-long v16, v16, v14

    add-long v12, v16, v9

    move-wide v14, v9

    goto :goto_0

    .line 490
    :cond_1
    move-wide v9, v10

    cmp-long v11, v12, v9

    if-gez v11, :cond_2

    .line 491
    invoke-static {v12, v13, v14, v15}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v16

    div-long v9, v16, v14

    invoke-virtual {v8, v9, v10}, Lj$/time/LocalDate;->plusWeeks(J)Lj$/time/LocalDate;

    move-result-object v8

    .line 492
    const-wide/16 v9, 0x6

    add-long/2addr v9, v12

    rem-long/2addr v9, v14

    const-wide/16 v14, 0x1

    add-long v12, v9, v14

    goto :goto_0

    .line 490
    :cond_2
    move-wide v14, v9

    .line 494
    :goto_0
    invoke-static {v6, v7, v14, v15}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lj$/time/LocalDate;->plusWeeks(J)Lj$/time/LocalDate;

    move-result-object v9

    sget-object v10, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-virtual {v9, v10, v12, v13}, Lj$/time/LocalDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalDate;

    move-result-object v8

    .line 495
    .end local v12    # "dow":J
    goto :goto_2

    .line 496
    :cond_3
    move-wide v14, v10

    sget-object v9, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v9

    .line 497
    .local v9, "dow":I
    cmp-long v10, v6, v14

    if-ltz v10, :cond_4

    const-wide/16 v10, 0x34

    cmp-long v12, v6, v10

    if-lez v12, :cond_6

    .line 498
    :cond_4
    sget-object v10, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    if-ne v2, v10, :cond_5

    .line 499
    invoke-static {v8}, Lj$/time/temporal/IsoFields$Field;->-$$Nest$smgetWeekRange(Lj$/time/LocalDate;)Lj$/time/temporal/ValueRange;

    move-result-object v10

    invoke-virtual {v10, v6, v7, v0}, Lj$/time/temporal/ValueRange;->checkValidValue(JLj$/time/temporal/TemporalField;)J

    goto :goto_1

    .line 501
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lj$/time/temporal/IsoFields$Field$3;->range()Lj$/time/temporal/ValueRange;

    move-result-object v10

    invoke-virtual {v10, v6, v7, v0}, Lj$/time/temporal/ValueRange;->checkValidValue(JLj$/time/temporal/TemporalField;)J

    .line 504
    :cond_6
    :goto_1
    const-wide/16 v10, 0x1

    sub-long v10, v6, v10

    invoke-virtual {v8, v10, v11}, Lj$/time/LocalDate;->plusWeeks(J)Lj$/time/LocalDate;

    move-result-object v10

    sget-object v11, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    int-to-long v12, v9

    invoke-virtual {v10, v11, v12, v13}, Lj$/time/LocalDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalDate;

    move-result-object v8

    .line 506
    .end local v9    # "dow":I
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v9, Lj$/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v9, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    return-object v8

    .line 479
    .end local v5    # "wby":I
    .end local v6    # "wowby":J
    .end local v8    # "date":Lj$/time/LocalDate;
    :cond_7
    :goto_3
    const/4 v5, 0x0

    return-object v5
.end method

.method public bridge synthetic resolve(Ljava/util/Map;Lj$/time/temporal/TemporalAccessor;Lj$/time/format/ResolverStyle;)Lj$/time/temporal/TemporalAccessor;
    .locals 0

    .line 424
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/temporal/IsoFields$Field$3;->resolve(Ljava/util/Map;Lj$/time/temporal/TemporalAccessor;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 513
    const-string v0, "WeekOfWeekBasedYear"

    return-object v0
.end method
