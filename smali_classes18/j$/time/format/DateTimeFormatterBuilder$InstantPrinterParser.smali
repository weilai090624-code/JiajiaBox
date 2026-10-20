.class final Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InstantPrinterParser"
.end annotation


# static fields
.field private static final SECONDS_0000_TO_1970:J = 0xe79747c00L

.field private static final SECONDS_PER_10000_YEARS:J = 0x497968bd80L


# instance fields
.field private final fractionalDigits:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "fractionalDigits"    # I

    .line 3407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3408
    iput p1, p0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    .line 3409
    return-void
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 20
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3414
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v2

    .line 3415
    .local v2, "inSecs":Ljava/lang/Long;
    const/4 v4, 0x0

    .line 3416
    .local v4, "inNanos":Ljava/lang/Long;
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimePrintContext;->getTemporal()Lj$/time/temporal/TemporalAccessor;

    move-result-object v5

    sget-object v6, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    invoke-interface {v5, v6}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3417
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimePrintContext;->getTemporal()Lj$/time/temporal/TemporalAccessor;

    move-result-object v5

    sget-object v6, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    invoke-interface {v5, v6}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3419
    :cond_0
    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 3420
    return v5

    .line 3422
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3423
    .local v6, "inSec":J
    sget-object v8, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_0

    :cond_2
    const-wide/16 v11, 0x0

    :goto_0
    invoke-virtual {v8, v11, v12}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v8

    .line 3425
    .local v8, "inNano":I
    const-wide v11, -0xe79747c00L

    const-string v13, ":00"

    const-wide/16 v14, 0x1

    const-wide v16, 0xe79747c00L

    const-wide v9, 0x497968bd80L

    cmp-long v18, v6, v11

    if-ltz v18, :cond_5

    .line 3427
    sub-long v11, v6, v9

    add-long v11, v11, v16

    .line 3428
    .local v11, "zeroSecs":J
    invoke-static {v11, v12, v9, v10}, Lj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v18

    add-long v14, v18, v14

    .line 3429
    .local v14, "hi":J
    invoke-static {v11, v12, v9, v10}, Lj$/time/Clock$TickClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v9

    .line 3430
    .local v9, "lo":J
    move-object/from16 v18, v2

    .end local v2    # "inSecs":Ljava/lang/Long;
    .local v18, "inSecs":Ljava/lang/Long;
    sub-long v2, v9, v16

    move-object/from16 v19, v4

    .end local v4    # "inNanos":Ljava/lang/Long;
    .local v19, "inNanos":Ljava/lang/Long;
    sget-object v4, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v2, v3, v5, v4}, Lj$/time/LocalDateTime;->ofEpochSecond(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v2

    .line 3431
    .local v2, "ldt":Lj$/time/LocalDateTime;
    const-wide/16 v3, 0x0

    cmp-long v5, v14, v3

    if-lez v5, :cond_3

    .line 3432
    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3434
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3435
    invoke-virtual {v2}, Lj$/time/LocalDateTime;->getSecond()I

    move-result v3

    if-nez v3, :cond_4

    .line 3436
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3438
    .end local v2    # "ldt":Lj$/time/LocalDateTime;
    .end local v9    # "lo":J
    .end local v11    # "zeroSecs":J
    .end local v14    # "hi":J
    :cond_4
    goto :goto_1

    .line 3440
    .end local v18    # "inSecs":Ljava/lang/Long;
    .end local v19    # "inNanos":Ljava/lang/Long;
    .local v2, "inSecs":Ljava/lang/Long;
    .restart local v4    # "inNanos":Ljava/lang/Long;
    :cond_5
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    .end local v2    # "inSecs":Ljava/lang/Long;
    .end local v4    # "inNanos":Ljava/lang/Long;
    .restart local v18    # "inSecs":Ljava/lang/Long;
    .restart local v19    # "inNanos":Ljava/lang/Long;
    add-long v2, v6, v16

    .line 3441
    .local v2, "zeroSecs":J
    div-long v11, v2, v9

    .line 3442
    .local v11, "hi":J
    rem-long v9, v2, v9

    .line 3443
    .restart local v9    # "lo":J
    sub-long v14, v9, v16

    sget-object v4, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v14, v15, v5, v4}, Lj$/time/LocalDateTime;->ofEpochSecond(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v4

    .line 3444
    .local v4, "ldt":Lj$/time/LocalDateTime;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 3445
    .local v5, "pos":I
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3446
    invoke-virtual {v4}, Lj$/time/LocalDateTime;->getSecond()I

    move-result v14

    if-nez v14, :cond_6

    .line 3447
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3449
    :cond_6
    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-gez v15, :cond_9

    .line 3450
    invoke-virtual {v4}, Lj$/time/LocalDateTime;->getYear()I

    move-result v13

    const/16 v14, -0x2710

    if-ne v13, v14, :cond_7

    .line 3451
    add-int/lit8 v13, v5, 0x2

    const-wide/16 v14, 0x1

    sub-long v14, v11, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v5, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3452
    :cond_7
    const-wide/16 v13, 0x0

    cmp-long v15, v9, v13

    if-nez v15, :cond_8

    .line 3453
    invoke-virtual {v1, v5, v11, v12}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3455
    :cond_8
    add-int/lit8 v13, v5, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    invoke-virtual {v1, v13, v14, v15}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    .line 3460
    .end local v2    # "zeroSecs":J
    .end local v4    # "ldt":Lj$/time/LocalDateTime;
    .end local v5    # "pos":I
    .end local v9    # "lo":J
    .end local v11    # "hi":J
    :cond_9
    :goto_1
    iget v2, v0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v2, :cond_a

    if-gtz v8, :cond_b

    :cond_a
    iget v2, v0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-lez v2, :cond_f

    .line 3461
    :cond_b
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3462
    const v2, 0x5f5e100

    .line 3463
    .local v2, "div":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget v4, v0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_c

    if-gtz v8, :cond_e

    :cond_c
    iget v4, v0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_d

    if-gtz v8, :cond_e

    rem-int/lit8 v4, v3, 0x3

    if-nez v4, :cond_e

    :cond_d
    iget v4, v0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-ge v3, v4, :cond_f

    .line 3466
    :cond_e
    div-int v4, v8, v2

    .line 3467
    .local v4, "digit":I
    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3468
    mul-int v5, v4, v2

    sub-int/2addr v8, v5

    .line 3469
    div-int/lit8 v2, v2, 0xa

    .line 3465
    .end local v4    # "digit":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3472
    .end local v2    # "div":I
    .end local v3    # "i":I
    :cond_f
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3473
    const/4 v2, 0x1

    return v2
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 28
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 3479
    move-object/from16 v1, p0

    move/from16 v8, p3

    iget v0, v1, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    const/4 v2, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v1, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    :goto_0
    move v9, v0

    .line 3480
    .local v9, "minDigits":I
    iget v0, v1, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :cond_1
    iget v0, v1, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    :goto_1
    move v10, v0

    .line 3481
    .local v10, "maxDigits":I
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v3, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    .line 3482
    invoke-virtual {v0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->append(Lj$/time/format/DateTimeFormatter;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v3, 0x54

    invoke-virtual {v0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v3, Lj$/time/temporal/ChronoField;->HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    .line 3483
    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v5, Lj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Lj$/time/temporal/ChronoField;

    .line 3484
    invoke-virtual {v0, v5, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v3, Lj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Lj$/time/temporal/ChronoField;

    .line 3485
    invoke-virtual {v0, v3, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v3, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 3486
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v9, v10, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendFraction(Lj$/time/temporal/TemporalField;IIZ)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 3487
    const/16 v3, 0x5a

    invoke-virtual {v0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 3488
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter()Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lj$/time/format/DateTimeFormatter;->toPrinterParser(Z)Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v11

    .line 3489
    .local v11, "parser":Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->copy()Lj$/time/format/DateTimeParseContext;

    move-result-object v12

    .line 3490
    .local v12, "newContext":Lj$/time/format/DateTimeParseContext;
    move-object/from16 v13, p2

    invoke-virtual {v11, v12, v13, v8}, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v14

    .line 3491
    .local v14, "pos":I
    if-gez v14, :cond_2

    .line 3492
    return v14

    .line 3496
    :cond_2
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v12, v0}, Lj$/time/format/DateTimeParseContext;->getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3497
    .local v4, "yearParsed":J
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v12, v0}, Lj$/time/format/DateTimeParseContext;->getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v22

    .line 3498
    .local v22, "month":I
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {v12, v0}, Lj$/time/format/DateTimeParseContext;->getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v23

    .line 3499
    .local v23, "day":I
    sget-object v0, Lj$/time/temporal/ChronoField;->HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    invoke-virtual {v12, v0}, Lj$/time/format/DateTimeParseContext;->getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 3500
    .local v0, "hour":I
    sget-object v3, Lj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v12, v3}, Lj$/time/format/DateTimeParseContext;->getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v6

    .line 3501
    .local v6, "min":I
    sget-object v3, Lj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Lj$/time/temporal/ChronoField;

    invoke-virtual {v12, v3}, Lj$/time/format/DateTimeParseContext;->getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v24

    .line 3502
    .local v24, "secVal":Ljava/lang/Long;
    sget-object v3, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    invoke-virtual {v12, v3}, Lj$/time/format/DateTimeParseContext;->getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v25

    .line 3503
    .local v25, "nanoVal":Ljava/lang/Long;
    if-eqz v24, :cond_3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->intValue()I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 3504
    .local v3, "sec":I
    :goto_2
    if-eqz v25, :cond_4

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->intValue()I

    move-result v2

    .line 3505
    .local v2, "nano":I
    :cond_4
    const/4 v7, 0x0

    .line 3506
    .local v7, "days":I
    const/16 v15, 0x18

    if-ne v0, v15, :cond_5

    if-nez v6, :cond_5

    if-nez v3, :cond_5

    if-nez v2, :cond_5

    .line 3507
    const/4 v0, 0x0

    .line 3508
    const/4 v7, 0x1

    move/from16 v26, v0

    move/from16 v27, v3

    move v3, v7

    goto :goto_3

    .line 3509
    :cond_5
    const/16 v15, 0x17

    if-ne v0, v15, :cond_6

    const/16 v15, 0x3b

    if-ne v6, v15, :cond_6

    const/16 v15, 0x3c

    if-ne v3, v15, :cond_6

    .line 3510
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->setParsedLeapSecond()V

    .line 3511
    const/16 v3, 0x3b

    move/from16 v26, v0

    move/from16 v27, v3

    move v3, v7

    goto :goto_3

    .line 3513
    :cond_6
    move/from16 v26, v0

    move/from16 v27, v3

    move v3, v7

    .end local v0    # "hour":I
    .end local v7    # "days":I
    .local v3, "days":I
    .local v26, "hour":I
    .local v27, "sec":I
    :goto_3
    long-to-int v0, v4

    rem-int/lit16 v7, v0, 0x2710

    .line 3516
    .local v7, "year":I
    const/16 v21, 0x0

    move v15, v7

    move/from16 v16, v22

    move/from16 v17, v23

    move/from16 v18, v26

    move/from16 v19, v6

    move/from16 v20, v27

    :try_start_0
    invoke-static/range {v15 .. v21}, Lj$/time/LocalDateTime;->of(IIIIIII)Lj$/time/LocalDateTime;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move v15, v2

    .end local v2    # "nano":I
    .local v15, "nano":I
    int-to-long v1, v3

    :try_start_1
    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDateTime;->plusDays(J)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 3517
    .local v0, "ldt":Lj$/time/LocalDateTime;
    sget-object v1, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/LocalDateTime;->toEpochSecond(Lj$/time/ZoneOffset;)J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3518
    .local v1, "instantSecs":J
    const-wide/16 v16, 0x2710

    move/from16 v18, v6

    move/from16 v19, v7

    .end local v6    # "min":I
    .end local v7    # "year":I
    .local v18, "min":I
    .local v19, "year":I
    :try_start_2
    div-long v6, v4, v16
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-wide/from16 v16, v4

    move v5, v3

    .end local v3    # "days":I
    .end local v4    # "yearParsed":J
    .local v5, "days":I
    .local v16, "yearParsed":J
    const-wide v3, 0x497968bd80L

    :try_start_3
    invoke-static {v6, v7, v3, v4}, Lj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    add-long v0, v1, v3

    .line 3521
    .end local v1    # "instantSecs":J
    .local v0, "instantSecs":J
    nop

    .line 3522
    move v7, v14

    .line 3523
    .local v7, "successPos":I
    sget-object v3, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    move-object/from16 v2, p1

    move/from16 v20, v5

    .end local v5    # "days":I
    .local v20, "days":I
    move-wide v4, v0

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result v21

    .line 3524
    .end local v7    # "successPos":I
    .local v21, "successPos":I
    sget-object v3, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    int-to-long v4, v15

    move/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result v2

    return v2

    .line 3519
    .end local v0    # "instantSecs":J
    .end local v20    # "days":I
    .end local v21    # "successPos":I
    .restart local v5    # "days":I
    :catch_0
    move-exception v0

    move/from16 v20, v5

    .end local v5    # "days":I
    .restart local v20    # "days":I
    goto :goto_4

    .end local v16    # "yearParsed":J
    .end local v20    # "days":I
    .restart local v3    # "days":I
    .restart local v4    # "yearParsed":J
    :catch_1
    move-exception v0

    move/from16 v20, v3

    move-wide/from16 v16, v4

    .end local v3    # "days":I
    .end local v4    # "yearParsed":J
    .restart local v16    # "yearParsed":J
    .restart local v20    # "days":I
    goto :goto_4

    .end local v16    # "yearParsed":J
    .end local v18    # "min":I
    .end local v19    # "year":I
    .end local v20    # "days":I
    .restart local v3    # "days":I
    .restart local v4    # "yearParsed":J
    .restart local v6    # "min":I
    .local v7, "year":I
    :catch_2
    move-exception v0

    move/from16 v20, v3

    move-wide/from16 v16, v4

    move/from16 v18, v6

    move/from16 v19, v7

    .end local v3    # "days":I
    .end local v4    # "yearParsed":J
    .end local v6    # "min":I
    .end local v7    # "year":I
    .restart local v16    # "yearParsed":J
    .restart local v18    # "min":I
    .restart local v19    # "year":I
    .restart local v20    # "days":I
    goto :goto_4

    .end local v15    # "nano":I
    .end local v16    # "yearParsed":J
    .end local v18    # "min":I
    .end local v19    # "year":I
    .end local v20    # "days":I
    .restart local v2    # "nano":I
    .restart local v3    # "days":I
    .restart local v4    # "yearParsed":J
    .restart local v6    # "min":I
    .restart local v7    # "year":I
    :catch_3
    move-exception v0

    move v15, v2

    move/from16 v20, v3

    move-wide/from16 v16, v4

    move/from16 v18, v6

    move/from16 v19, v7

    .line 3520
    .end local v2    # "nano":I
    .end local v3    # "days":I
    .end local v4    # "yearParsed":J
    .end local v6    # "min":I
    .end local v7    # "year":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v15    # "nano":I
    .restart local v16    # "yearParsed":J
    .restart local v18    # "min":I
    .restart local v19    # "year":I
    .restart local v20    # "days":I
    :goto_4
    not-int v1, v8

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 3529
    const-string v0, "Instant()"

    return-object v0
.end method
