.class public final Lj$/time/temporal/TemporalAdjusters;
.super Ljava/lang/Object;
.source "TemporalAdjusters.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method public static dayOfWeekInMonth(ILj$/time/DayOfWeek;)Lj$/time/temporal/TemporalAdjuster;
    .locals 2
    .param p0, "ordinal"    # I
    .param p1, "dayOfWeek"    # Lj$/time/DayOfWeek;

    .line 347
    const-string v0, "dayOfWeek"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 348
    invoke-virtual {p1}, Lj$/time/DayOfWeek;->getValue()I

    move-result v0

    .line 349
    .local v0, "dowValue":I
    if-ltz p0, :cond_0

    .line 350
    new-instance v1, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda0;-><init>(II)V

    return-object v1

    .line 358
    :cond_0
    new-instance v1, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0}, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda1;-><init>(II)V

    return-object v1
.end method

.method public static firstDayOfMonth()Lj$/time/temporal/TemporalAdjuster;
    .locals 1

    .line 166
    new-instance v0, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda3;-><init>()V

    return-object v0
.end method

.method public static firstDayOfNextMonth()Lj$/time/temporal/TemporalAdjuster;
    .locals 1

    .line 209
    new-instance v0, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda12;-><init>()V

    return-object v0
.end method

.method public static firstDayOfNextYear()Lj$/time/temporal/TemporalAdjuster;
    .locals 1

    .line 270
    new-instance v0, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda4;-><init>()V

    return-object v0
.end method

.method public static firstDayOfYear()Lj$/time/temporal/TemporalAdjuster;
    .locals 1

    .line 230
    new-instance v0, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda7;-><init>()V

    return-object v0
.end method

.method public static firstInMonth(Lj$/time/DayOfWeek;)Lj$/time/temporal/TemporalAdjuster;
    .locals 1
    .param p0, "dayOfWeek"    # Lj$/time/DayOfWeek;

    .line 291
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lj$/time/temporal/TemporalAdjusters;->dayOfWeekInMonth(ILj$/time/DayOfWeek;)Lj$/time/temporal/TemporalAdjuster;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$dayOfWeekInMonth$7(IILj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 9
    .param p0, "dowValue"    # I
    .param p1, "ordinal"    # I
    .param p2, "temporal"    # Lj$/time/temporal/Temporal;

    .line 351
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    const-wide/16 v1, 0x1

    invoke-interface {p2, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    .line 352
    .local v0, "temp":Lj$/time/temporal/Temporal;
    sget-object v3, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Lj$/time/temporal/Temporal;->get(Lj$/time/temporal/TemporalField;)I

    move-result v3

    .line 353
    .local v3, "curDow":I
    sub-int v4, p0, v3

    add-int/lit8 v4, v4, 0x7

    rem-int/lit8 v4, v4, 0x7

    .line 354
    .local v4, "dowDiff":I
    int-to-long v5, v4

    int-to-long v7, p1

    sub-long/2addr v7, v1

    const-wide/16 v1, 0x7

    mul-long v7, v7, v1

    add-long/2addr v5, v7

    long-to-int v1, v5

    .line 355
    .end local v4    # "dowDiff":I
    .local v1, "dowDiff":I
    int-to-long v4, v1

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v4, v5, v2}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$dayOfWeekInMonth$8(IILj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 9
    .param p0, "dowValue"    # I
    .param p1, "ordinal"    # I
    .param p2, "temporal"    # Lj$/time/temporal/Temporal;

    .line 359
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p2, v1}, Lj$/time/temporal/Temporal;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    .line 360
    .local v0, "temp":Lj$/time/temporal/Temporal;
    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Lj$/time/temporal/Temporal;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    .line 361
    .local v1, "curDow":I
    sub-int v2, p0, v1

    .line 362
    .local v2, "daysDiff":I
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 v3, v2, -0x7

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    move v2, v3

    .line 363
    int-to-long v3, v2

    neg-int v5, p1

    int-to-long v5, v5

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x7

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    long-to-int v2, v3

    .line 364
    int-to-long v3, v2

    sget-object v5, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v3, v4, v5}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v3

    return-object v3
.end method

.method static synthetic lambda$firstDayOfMonth$1(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3
    .param p0, "temporal"    # Lj$/time/temporal/Temporal;

    .line 166
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    const-wide/16 v1, 0x1

    invoke-interface {p0, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$firstDayOfNextMonth$3(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 4
    .param p0, "temporal"    # Lj$/time/temporal/Temporal;

    .line 209
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    const-wide/16 v1, 0x1

    invoke-interface {p0, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    sget-object v3, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v1, v2, v3}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$firstDayOfNextYear$6(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 4
    .param p0, "temporal"    # Lj$/time/temporal/Temporal;

    .line 270
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    const-wide/16 v1, 0x1

    invoke-interface {p0, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    sget-object v3, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v1, v2, v3}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$firstDayOfYear$4(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3
    .param p0, "temporal"    # Lj$/time/temporal/Temporal;

    .line 230
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    const-wide/16 v1, 0x1

    invoke-interface {p0, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$lastDayOfMonth$2(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3
    .param p0, "temporal"    # Lj$/time/temporal/Temporal;

    .line 189
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Lj$/time/temporal/Temporal;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$lastDayOfYear$5(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3
    .param p0, "temporal"    # Lj$/time/temporal/Temporal;

    .line 251
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Lj$/time/temporal/Temporal;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$next$9(ILj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 5
    .param p0, "dowValue"    # I
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 389
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/Temporal;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    .line 390
    .local v0, "calDow":I
    sub-int v1, v0, p0

    .line 391
    .local v1, "daysDiff":I
    if-ltz v1, :cond_0

    rsub-int/lit8 v2, v1, 0x7

    goto :goto_0

    :cond_0
    neg-int v2, v1

    :goto_0
    int-to-long v2, v2

    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$nextOrSame$10(ILj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 5
    .param p0, "dowValue"    # I
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 415
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/Temporal;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    .line 416
    .local v0, "calDow":I
    if-ne v0, p0, :cond_0

    .line 417
    return-object p1

    .line 419
    :cond_0
    sub-int v1, v0, p0

    .line 420
    .local v1, "daysDiff":I
    if-ltz v1, :cond_1

    rsub-int/lit8 v2, v1, 0x7

    goto :goto_0

    :cond_1
    neg-int v2, v1

    :goto_0
    int-to-long v2, v2

    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$ofDateAdjuster$0(Ljava/util/function/UnaryOperator;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3
    .param p0, "dateBasedAdjuster"    # Ljava/util/function/UnaryOperator;
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 142
    invoke-static {p1}, Lj$/time/LocalDate;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object v0

    .line 143
    .local v0, "input":Lj$/time/LocalDate;
    invoke-interface {p0, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/LocalDate;

    .line 144
    .local v1, "output":Lj$/time/LocalDate;
    invoke-interface {p1, v1}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$previous$11(ILj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 5
    .param p0, "dowValue"    # I
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 443
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/Temporal;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    .line 444
    .local v0, "calDow":I
    sub-int v1, p0, v0

    .line 445
    .local v1, "daysDiff":I
    if-ltz v1, :cond_0

    rsub-int/lit8 v2, v1, 0x7

    goto :goto_0

    :cond_0
    neg-int v2, v1

    :goto_0
    int-to-long v2, v2

    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$previousOrSame$12(ILj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 5
    .param p0, "dowValue"    # I
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 469
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/Temporal;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    .line 470
    .local v0, "calDow":I
    if-ne v0, p0, :cond_0

    .line 471
    return-object p1

    .line 473
    :cond_0
    sub-int v1, p0, v0

    .line 474
    .local v1, "daysDiff":I
    if-ltz v1, :cond_1

    rsub-int/lit8 v2, v1, 0x7

    goto :goto_0

    :cond_1
    neg-int v2, v1

    :goto_0
    int-to-long v2, v2

    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method public static lastDayOfMonth()Lj$/time/temporal/TemporalAdjuster;
    .locals 1

    .line 189
    new-instance v0, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda9;-><init>()V

    return-object v0
.end method

.method public static lastDayOfYear()Lj$/time/temporal/TemporalAdjuster;
    .locals 1

    .line 251
    new-instance v0, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda10;-><init>()V

    return-object v0
.end method

.method public static lastInMonth(Lj$/time/DayOfWeek;)Lj$/time/temporal/TemporalAdjuster;
    .locals 1
    .param p0, "dayOfWeek"    # Lj$/time/DayOfWeek;

    .line 311
    const/4 v0, -0x1

    invoke-static {v0, p0}, Lj$/time/temporal/TemporalAdjusters;->dayOfWeekInMonth(ILj$/time/DayOfWeek;)Lj$/time/temporal/TemporalAdjuster;

    move-result-object v0

    return-object v0
.end method

.method public static next(Lj$/time/DayOfWeek;)Lj$/time/temporal/TemporalAdjuster;
    .locals 2
    .param p0, "dayOfWeek"    # Lj$/time/DayOfWeek;

    .line 387
    invoke-virtual {p0}, Lj$/time/DayOfWeek;->getValue()I

    move-result v0

    .line 388
    .local v0, "dowValue":I
    new-instance v1, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda11;-><init>(I)V

    return-object v1
.end method

.method public static nextOrSame(Lj$/time/DayOfWeek;)Lj$/time/temporal/TemporalAdjuster;
    .locals 2
    .param p0, "dayOfWeek"    # Lj$/time/DayOfWeek;

    .line 413
    invoke-virtual {p0}, Lj$/time/DayOfWeek;->getValue()I

    move-result v0

    .line 414
    .local v0, "dowValue":I
    new-instance v1, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda6;-><init>(I)V

    return-object v1
.end method

.method public static ofDateAdjuster(Ljava/util/function/UnaryOperator;)Lj$/time/temporal/TemporalAdjuster;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "Lj$/time/LocalDate;",
            ">;)",
            "Lj$/time/temporal/TemporalAdjuster;"
        }
    .end annotation

    .line 140
    .local p0, "dateBasedAdjuster":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljava/time/LocalDate;>;"
    const-string v0, "dateBasedAdjuster"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    new-instance v0, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/UnaryOperator;)V

    return-object v0
.end method

.method public static previous(Lj$/time/DayOfWeek;)Lj$/time/temporal/TemporalAdjuster;
    .locals 2
    .param p0, "dayOfWeek"    # Lj$/time/DayOfWeek;

    .line 441
    invoke-virtual {p0}, Lj$/time/DayOfWeek;->getValue()I

    move-result v0

    .line 442
    .local v0, "dowValue":I
    new-instance v1, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda2;-><init>(I)V

    return-object v1
.end method

.method public static previousOrSame(Lj$/time/DayOfWeek;)Lj$/time/temporal/TemporalAdjuster;
    .locals 2
    .param p0, "dayOfWeek"    # Lj$/time/DayOfWeek;

    .line 467
    invoke-virtual {p0}, Lj$/time/DayOfWeek;->getValue()I

    move-result v0

    .line 468
    .local v0, "dowValue":I
    new-instance v1, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda8;-><init>(I)V

    return-object v1
.end method
