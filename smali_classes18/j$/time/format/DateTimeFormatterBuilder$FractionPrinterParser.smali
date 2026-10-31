.class final Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
.super Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FractionPrinterParser"
.end annotation


# instance fields
.field private final decimalPoint:Z


# direct methods
.method constructor <init>(Lj$/time/temporal/TemporalField;IIZ)V
    .registers 11
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "decimalPoint"    # Z

    .line 3090
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIZI)V

    .line 3091
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3092
    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 3095
    if-ltz p2, :cond_62

    const/16 v0, 0x9

    if-gt p2, v0, :cond_62

    .line 3098
    const/4 v1, 0x1

    if-lt p3, v1, :cond_49

    if-gt p3, v0, :cond_49

    .line 3101
    if-lt p3, p2, :cond_26

    .line 3105
    return-void

    .line 3102
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum width must exceed or equal the minimum width but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3099
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum width must be from 1 to 9 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3096
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minimum width must be from 0 to 9 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3093
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field must have a fixed set of values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lj$/time/temporal/TemporalField;IIZI)V
    .registers 12
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "decimalPoint"    # Z
    .param p5, "subsequentWidth"    # I

    .line 3117
    sget-object v4, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;I)V

    .line 3118
    iput-boolean p4, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    .line 3119
    return-void
.end method

.method private convertFromFraction(Ljava/math/BigDecimal;)J
    .registers 8
    .param p1, "fraction"    # Ljava/math/BigDecimal;

    .line 3274
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-interface {v0}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    .line 3275
    .local v0, "range":Lj$/time/temporal/ValueRange;
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    .line 3276
    .local v1, "minBD":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3277
    .local v2, "rangeBD":Ljava/math/BigDecimal;
    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v3, v4, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 3278
    .local v3, "valueBD":Ljava/math/BigDecimal;
    invoke-virtual {v3}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v4

    return-wide v4
.end method

.method private convertToFraction(J)Ljava/math/BigDecimal;
    .registers 9
    .param p1, "value"    # J

    .line 3247
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-interface {v0}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    .line 3248
    .local v0, "range":Lj$/time/temporal/ValueRange;
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {v0, p1, p2, v1}, Lj$/time/temporal/ValueRange;->checkValidValue(JLj$/time/temporal/TemporalField;)J

    .line 3249
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    .line 3250
    .local v1, "minBD":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3251
    .local v2, "rangeBD":Ljava/math/BigDecimal;
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 3252
    .local v3, "valueBD":Ljava/math/BigDecimal;
    const/16 v4, 0x9

    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v3, v2, v4, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 3254
    .local v4, "fraction":Ljava/math/BigDecimal;
    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-nez v5, :cond_40

    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_44

    :cond_40
    invoke-static {v4}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    :goto_44
    return-object v5
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 9
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3162
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 3163
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_a

    .line 3164
    const/4 v1, 0x0

    return v1

    .line 3166
    :cond_a
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object v1

    .line 3167
    .local v1, "decimalStyle":Lj$/time/format/DecimalStyle;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->convertToFraction(J)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3168
    .local v2, "fraction":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    if-nez v3, :cond_3b

    .line 3169
    iget v3, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-lez v3, :cond_6c

    .line 3170
    iget-boolean v3, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v3, :cond_2b

    .line 3171
    invoke-virtual {v1}, Lj$/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3173
    :cond_2b
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2c
    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-ge v3, v4, :cond_3a

    .line 3174
    invoke-virtual {v1}, Lj$/time/format/DecimalStyle;->getZeroDigit()C

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3173
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .end local v3    # "i":I
    :cond_3a
    goto :goto_6c

    .line 3178
    :cond_3b
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3179
    .local v3, "outputScale":I
    sget-object v4, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3180
    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3181
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lj$/time/format/DecimalStyle;->convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3182
    iget-boolean v5, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v5, :cond_69

    .line 3183
    invoke-virtual {v1}, Lj$/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3185
    :cond_69
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3187
    .end local v3    # "outputScale":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_6c
    :goto_6c
    const/4 v3, 0x1

    return v3
.end method

.method isFixedWidth(Lj$/time/format/DateTimeParseContext;)Z
    .registers 4
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;

    .line 3154
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-nez v0, :cond_12

    .line 3155
    const/4 v0, 0x1

    return v0

    .line 3157
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 23
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 3192
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual/range {p0 .. p1}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->isFixedWidth(Lj$/time/format/DateTimeParseContext;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_13

    :cond_11
    const/4 v2, 0x0

    goto :goto_15

    :cond_13
    :goto_13
    iget v2, v0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    .line 3193
    .local v2, "effectiveMin":I
    :goto_15
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual/range {p0 .. p1}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->isFixedWidth(Lj$/time/format/DateTimeParseContext;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_25

    :cond_22
    const/16 v3, 0x9

    goto :goto_27

    :cond_25
    :goto_25
    iget v3, v0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    .line 3194
    .local v3, "effectiveMax":I
    :goto_27
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 3195
    .local v4, "length":I
    if-ne v1, v4, :cond_33

    .line 3197
    if-lez v2, :cond_31

    not-int v5, v1

    goto :goto_32

    :cond_31
    move v5, v1

    :goto_32
    return v5

    .line 3199
    :cond_33
    iget-boolean v5, v0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v5, :cond_4d

    .line 3200
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object v6

    invoke-virtual {v6}, Lj$/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v6

    if-eq v5, v6, :cond_4b

    .line 3202
    if-lez v2, :cond_49

    not-int v5, v1

    goto :goto_4a

    :cond_49
    move v5, v1

    :goto_4a
    return v5

    .line 3204
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    .line 3206
    .end local p3    # "position":I
    .local v1, "position":I
    :cond_4d
    add-int v11, v1, v2

    .line 3207
    .local v11, "minEndPos":I
    if-le v11, v4, :cond_53

    .line 3208
    not-int v5, v1

    return v5

    .line 3210
    :cond_53
    add-int v5, v1, v3

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 3211
    .local v12, "maxEndPos":I
    const/4 v5, 0x0

    .line 3212
    .local v5, "total":I
    move v6, v1

    move v13, v5

    .line 3213
    .end local v5    # "total":I
    .local v6, "pos":I
    .local v13, "total":I
    :goto_5c
    if-ge v6, v12, :cond_7e

    .line 3214
    add-int/lit8 v5, v6, 0x1

    move-object/from16 v14, p2

    .end local v6    # "pos":I
    .local v5, "pos":I
    invoke-interface {v14, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 3215
    .local v6, "ch":C
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object v7

    invoke-virtual {v7, v6}, Lj$/time/format/DecimalStyle;->convertToDigit(C)I

    move-result v7

    .line 3216
    .local v7, "digit":I
    if-gez v7, :cond_78

    .line 3217
    if-ge v5, v11, :cond_74

    .line 3218
    not-int v8, v1

    return v8

    .line 3220
    :cond_74
    add-int/lit8 v5, v5, -0x1

    .line 3221
    move v15, v5

    goto :goto_81

    .line 3223
    :cond_78
    mul-int/lit8 v8, v13, 0xa

    add-int v13, v8, v7

    .line 3224
    .end local v6    # "ch":C
    .end local v7    # "digit":I
    move v6, v5

    goto :goto_5c

    .line 3213
    .end local v5    # "pos":I
    .local v6, "pos":I
    :cond_7e
    move-object/from16 v14, p2

    move v15, v6

    .line 3225
    .end local v6    # "pos":I
    .local v15, "pos":I
    :goto_81
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v13}, Ljava/math/BigDecimal;-><init>(I)V

    sub-int v6, v15, v1

    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v10

    .line 3226
    .local v10, "fraction":Ljava/math/BigDecimal;
    invoke-direct {v0, v10}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->convertFromFraction(Ljava/math/BigDecimal;)J

    move-result-wide v16

    .line 3227
    .local v16, "value":J
    iget-object v6, v0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    move-object/from16 v5, p1

    move-wide/from16 v7, v16

    move v9, v1

    move-object/from16 v18, v10

    .end local v10    # "fraction":Ljava/math/BigDecimal;
    .local v18, "fraction":Ljava/math/BigDecimal;
    move v10, v15

    invoke-virtual/range {v5 .. v10}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result v5

    return v5
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 3283
    iget-boolean v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v0, :cond_7

    const-string v0, ",DecimalPoint"

    goto :goto_9

    :cond_7
    const-string v0, ""

    .line 3284
    .local v0, "decimal":Ljava/lang/String;
    :goto_9
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    iget v3, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fraction("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    .registers 9

    .line 3128
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 3129
    return-object p0

    .line 3131
    :cond_6
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    iget-object v3, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    iget v5, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    iget-boolean v6, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    const/4 v7, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIZI)V

    return-object v0
.end method

.method bridge synthetic withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 2

    .line 3078
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    move-result-object v0

    return-object v0
.end method

.method withSubsequentWidth(I)Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    .registers 9
    .param p1, "subsequentWidth"    # I

    .line 3142
    new-instance v6, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    iget v3, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    iget-boolean v4, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->subsequentWidth:I

    add-int v5, v0, p1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIZI)V

    return-object v6
.end method

.method bridge synthetic withSubsequentWidth(I)Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 2

    .line 3078
    invoke-virtual {p0, p1}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->withSubsequentWidth(I)Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    move-result-object p1

    return-object p1
.end method
