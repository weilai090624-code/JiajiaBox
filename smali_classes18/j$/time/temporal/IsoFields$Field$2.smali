.class final enum Lj$/time/temporal/IsoFields$Field$2;
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
    .registers 4

    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lj$/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILj$/time/temporal/IsoFields-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILj$/time/temporal/IsoFields-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lj$/time/temporal/IsoFields$Field$2;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .registers 13
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lj$/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 415
    .local p1, "temporal":Lj$/time/temporal/Temporal;, "TR;"
    invoke-virtual {p0, p1}, Lj$/time/temporal/IsoFields$Field$2;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    .line 416
    .local v0, "curValue":J
    invoke-virtual {p0}, Lj$/time/temporal/IsoFields$Field$2;->range()Lj$/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Lj$/time/temporal/ValueRange;->checkValidValue(JLj$/time/temporal/TemporalField;)J

    .line 417
    sget-object v2, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    sget-object v3, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Lj$/time/temporal/Temporal;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sub-long v5, p2, v0

    const-wide/16 v7, 0x3

    mul-long v5, v5, v7

    add-long/2addr v3, v5

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method public getBaseUnit()Lj$/time/temporal/TemporalUnit;
    .registers 2

    .line 383
    sget-object v0, Lj$/time/temporal/IsoFields;->QUARTER_YEARS:Lj$/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public getFrom(Lj$/time/temporal/TemporalAccessor;)J
    .registers 8
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 399
    invoke-virtual {p0, p1}, Lj$/time/temporal/IsoFields$Field$2;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 402
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    .line 403
    .local v0, "moy":J
    const-wide/16 v2, 0x2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3

    div-long/2addr v2, v4

    return-wide v2

    .line 400
    .end local v0    # "moy":J
    :cond_13
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: QuarterOfYear"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRangeUnit()Lj$/time/temporal/TemporalUnit;
    .registers 2

    .line 387
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z
    .registers 3
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 395
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lj$/time/temporal/IsoFields;->isIso(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public range()Lj$/time/temporal/ValueRange;
    .registers 5

    .line 391
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x4

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;
    .registers 4
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 406
    invoke-virtual {p0, p1}, Lj$/time/temporal/IsoFields$Field$2;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 409
    invoke-super {p0, p1}, Lj$/time/temporal/IsoFields$Field;->rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 407
    :cond_b
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: QuarterOfYear"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 421
    const-string v0, "QuarterOfYear"

    return-object v0
.end method
