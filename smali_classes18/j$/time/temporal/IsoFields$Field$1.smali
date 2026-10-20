.class final enum Lj$/time/temporal/IsoFields$Field$1;
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

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lj$/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILj$/time/temporal/IsoFields-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILj$/time/temporal/IsoFields-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/time/temporal/IsoFields$Field$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .locals 7
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lj$/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 339
    .local p1, "temporal":Lj$/time/temporal/Temporal;, "TR;"
    invoke-virtual {p0, p1}, Lj$/time/temporal/IsoFields$Field$1;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    .line 340
    .local v0, "curValue":J
    invoke-virtual {p0}, Lj$/time/temporal/IsoFields$Field$1;->range()Lj$/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Lj$/time/temporal/ValueRange;->checkValidValue(JLj$/time/temporal/TemporalField;)J

    .line 341
    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    sget-object v3, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Lj$/time/temporal/Temporal;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sub-long v5, p2, v0

    add-long/2addr v3, v5

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method public getBaseUnit()Lj$/time/temporal/TemporalUnit;
    .locals 1

    .line 294
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public getFrom(Lj$/time/temporal/TemporalAccessor;)J
    .locals 7
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 327
    invoke-virtual {p0, p1}, Lj$/time/temporal/IsoFields$Field$1;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    .line 331
    .local v0, "doy":I
    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    .line 332
    .local v1, "moy":I
    sget-object v2, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v2

    .line 333
    .local v2, "year":J
    invoke-static {}, Lj$/time/temporal/IsoFields$Field;->-$$Nest$sfgetQUARTER_DAYS()[I

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    div-int/lit8 v5, v5, 0x3

    sget-object v6, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-virtual {v6, v2, v3}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    add-int/2addr v5, v6

    aget v4, v4, v5

    sub-int v4, v0, v4

    int-to-long v4, v4

    return-wide v4

    .line 328
    .end local v0    # "doy":I
    .end local v1    # "moy":I
    .end local v2    # "year":J
    :cond_1
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: DayOfQuarter"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRangeUnit()Lj$/time/temporal/TemporalUnit;
    .locals 1

    .line 298
    sget-object v0, Lj$/time/temporal/IsoFields;->QUARTER_YEARS:Lj$/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 306
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    .line 307
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

    .line 306
    :goto_0
    return v0
.end method

.method public range()Lj$/time/temporal/ValueRange;
    .locals 6

    .line 302
    const-wide/16 v2, 0x5a

    const-wide/16 v4, 0x5c

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Lj$/time/temporal/ValueRange;->of(JJJ)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;
    .locals 9
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 311
    invoke-virtual {p0, p1}, Lj$/time/temporal/IsoFields$Field$1;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 314
    sget-object v0, Lj$/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Lj$/time/temporal/IsoFields$Field;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    .line 315
    .local v0, "qoy":J
    const-wide/16 v2, 0x5b

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    .line 316
    sget-object v6, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v6}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v6

    .line 317
    .local v6, "year":J
    sget-object v8, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-virtual {v8, v6, v7}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x5a

    :goto_0
    invoke-static {v4, v5, v2, v3}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 318
    .end local v6    # "year":J
    :cond_1
    const-wide/16 v6, 0x2

    cmp-long v8, v0, v6

    if-nez v8, :cond_2

    .line 319
    invoke-static {v4, v5, v2, v3}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 320
    :cond_2
    const-wide/16 v2, 0x3

    cmp-long v6, v0, v2

    if-eqz v6, :cond_4

    const-wide/16 v2, 0x4

    cmp-long v6, v0, v2

    if-nez v6, :cond_3

    goto :goto_1

    .line 323
    :cond_3
    invoke-virtual {p0}, Lj$/time/temporal/IsoFields$Field$1;->range()Lj$/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 321
    :cond_4
    :goto_1
    const-wide/16 v2, 0x5c

    invoke-static {v4, v5, v2, v3}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 312
    .end local v0    # "qoy":J
    :cond_5
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: DayOfQuarter"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolve(Ljava/util/Map;Lj$/time/temporal/TemporalAccessor;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .locals 16
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

    .line 346
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    sget-object v3, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 347
    .local v3, "yearLong":Ljava/lang/Long;
    sget-object v4, Lj$/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Lj$/time/temporal/IsoFields$Field;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 348
    .local v4, "qoyLong":Ljava/lang/Long;
    if-eqz v3, :cond_5

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 351
    :cond_0
    sget-object v5, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v5

    .line 352
    .local v5, "y":I
    sget-object v6, Lj$/time/temporal/IsoFields$Field$1;->DAY_OF_QUARTER:Lj$/time/temporal/IsoFields$Field;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 353
    .local v6, "doq":J
    invoke-static/range {p2 .. p2}, Lj$/time/temporal/IsoFields$Field;->-$$Nest$smensureIso(Lj$/time/temporal/TemporalAccessor;)V

    .line 355
    sget-object v8, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    const/4 v9, 0x3

    const-wide/16 v10, 0x1

    const/4 v12, 0x1

    if-ne v2, v8, :cond_1

    .line 356
    invoke-static {v5, v12, v12}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13, v10, v11}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v12

    invoke-static {v12, v13, v9}, Lj$/time/temporal/IsoFields$Field$1$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v8

    .line 357
    .local v8, "date":Lj$/time/LocalDate;
    invoke-static {v6, v7, v10, v11}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v6

    goto :goto_1

    .line 359
    .end local v8    # "date":Lj$/time/LocalDate;
    :cond_1
    sget-object v8, Lj$/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Lj$/time/temporal/IsoFields$Field;

    invoke-virtual {v8}, Lj$/time/temporal/IsoFields$Field;->range()Lj$/time/temporal/ValueRange;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sget-object v15, Lj$/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Lj$/time/temporal/IsoFields$Field;

    invoke-virtual {v8, v13, v14, v15}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v8

    .line 360
    .local v8, "qoy":I
    add-int/lit8 v13, v8, -0x1

    mul-int/lit8 v13, v13, 0x3

    add-int/2addr v13, v12

    invoke-static {v5, v13, v12}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v9

    .line 361
    .local v9, "date":Lj$/time/LocalDate;
    cmp-long v12, v6, v10

    if-ltz v12, :cond_2

    const-wide/16 v12, 0x5a

    cmp-long v14, v6, v12

    if-lez v14, :cond_4

    .line 362
    :cond_2
    sget-object v12, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    if-ne v2, v12, :cond_3

    .line 363
    invoke-virtual {v0, v9}, Lj$/time/temporal/IsoFields$Field$1;->rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object v12

    invoke-virtual {v12, v6, v7, v0}, Lj$/time/temporal/ValueRange;->checkValidValue(JLj$/time/temporal/TemporalField;)J

    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lj$/time/temporal/IsoFields$Field$1;->range()Lj$/time/temporal/ValueRange;

    move-result-object v12

    invoke-virtual {v12, v6, v7, v0}, Lj$/time/temporal/ValueRange;->checkValidValue(JLj$/time/temporal/TemporalField;)J

    .line 368
    :cond_4
    :goto_0
    sub-long/2addr v6, v10

    move-object v8, v9

    .line 370
    .end local v9    # "date":Lj$/time/LocalDate;
    .local v8, "date":Lj$/time/LocalDate;
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v9, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v9, Lj$/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Lj$/time/temporal/IsoFields$Field;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-virtual {v8, v6, v7}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v9

    return-object v9

    .line 349
    .end local v5    # "y":I
    .end local v6    # "doq":J
    .end local v8    # "date":Lj$/time/LocalDate;
    :cond_5
    :goto_2
    const/4 v5, 0x0

    return-object v5
.end method

.method public bridge synthetic resolve(Ljava/util/Map;Lj$/time/temporal/TemporalAccessor;Lj$/time/format/ResolverStyle;)Lj$/time/temporal/TemporalAccessor;
    .locals 0

    .line 291
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/temporal/IsoFields$Field$1;->resolve(Ljava/util/Map;Lj$/time/temporal/TemporalAccessor;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 377
    const-string v0, "DayOfQuarter"

    return-object v0
.end method
