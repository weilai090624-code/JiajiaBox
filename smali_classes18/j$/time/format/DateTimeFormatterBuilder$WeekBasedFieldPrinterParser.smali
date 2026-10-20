.class final Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;
.super Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeekBasedFieldPrinterParser"
.end annotation


# instance fields
.field private chr:C

.field private count:I


# direct methods
.method constructor <init>(CIII)V
    .locals 6
    .param p1, "chr"    # C
    .param p2, "count"    # I
    .param p3, "minWidth"    # I
    .param p4, "maxWidth"    # I

    .line 4848
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIIII)V

    .line 4849
    return-void
.end method

.method constructor <init>(CIIII)V
    .locals 6
    .param p1, "chr"    # C
    .param p2, "count"    # I
    .param p3, "minWidth"    # I
    .param p4, "maxWidth"    # I
    .param p5, "subsequentWidth"    # I

    .line 4863
    const/4 v1, 0x0

    sget-object v4, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;I)V

    .line 4864
    iput-char p1, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    .line 4865
    iput p2, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    .line 4866
    return-void
.end method

.method private printerParser(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .locals 11
    .param p1, "locale"    # Ljava/util/Locale;

    .line 4911
    invoke-static {p1}, Lj$/time/temporal/WeekFields;->of(Ljava/util/Locale;)Lj$/time/temporal/WeekFields;

    move-result-object v0

    .line 4912
    .local v0, "weekDef":Lj$/time/temporal/WeekFields;
    const/4 v1, 0x0

    .line 4913
    .local v1, "field":Lj$/time/temporal/TemporalField;
    iget-char v2, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    sparse-switch v2, :sswitch_data_0

    .line 4935
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unreachable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4929
    :sswitch_0
    invoke-virtual {v0}, Lj$/time/temporal/WeekFields;->weekOfWeekBasedYear()Lj$/time/temporal/TemporalField;

    move-result-object v1

    .line 4930
    goto :goto_1

    .line 4926
    :sswitch_1
    invoke-virtual {v0}, Lj$/time/temporal/WeekFields;->dayOfWeek()Lj$/time/temporal/TemporalField;

    move-result-object v1

    .line 4927
    goto :goto_1

    .line 4915
    :sswitch_2
    invoke-virtual {v0}, Lj$/time/temporal/WeekFields;->weekBasedYear()Lj$/time/temporal/TemporalField;

    move-result-object v1

    .line 4916
    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4917
    new-instance v10, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    sget-object v7, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Lj$/time/LocalDate;

    iget v8, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->subsequentWidth:I

    const/4 v9, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, v10

    move-object v3, v1

    invoke-direct/range {v2 .. v9}, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIILj$/time/chrono/ChronoLocalDate;ILj$/time/format/DateTimeFormatterBuilder-IA;)V

    return-object v10

    .line 4920
    :cond_0
    new-instance v8, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    .line 4921
    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    sget-object v2, Lj$/time/format/SignStyle;->NORMAL:Lj$/time/format/SignStyle;

    goto :goto_0

    :cond_1
    sget-object v2, Lj$/time/format/SignStyle;->EXCEEDS_PAD:Lj$/time/format/SignStyle;

    :goto_0
    move-object v6, v2

    iget v7, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->subsequentWidth:I

    const/16 v5, 0x13

    move-object v2, v8

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;I)V

    .line 4920
    return-object v8

    .line 4932
    :sswitch_3
    invoke-virtual {v0}, Lj$/time/temporal/WeekFields;->weekOfMonth()Lj$/time/temporal/TemporalField;

    move-result-object v1

    .line 4933
    nop

    .line 4937
    :goto_1
    new-instance v8, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->minWidth:I

    iget v5, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->maxWidth:I

    sget-object v6, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    iget v7, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->subsequentWidth:I

    move-object v2, v8

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;I)V

    return-object v8

    nop

    :sswitch_data_0
    .sparse-switch
        0x57 -> :sswitch_3
        0x59 -> :sswitch_2
        0x63 -> :sswitch_1
        0x65 -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 1
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 4895
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->printerParser(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v0

    return v0
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 4900
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->printerParser(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 4943
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4944
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Localized("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4945
    iget-char v1, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    const/16 v2, 0x59

    const-string v3, ","

    if-ne v1, v2, :cond_3

    .line 4946
    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4947
    const-string v1, "WeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4948
    :cond_0
    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 4949
    const-string v1, "ReducedValue(WeekBasedYear,2,2,2000-01-01)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4951
    :cond_1
    const-string v1, "WeekBasedYear,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4952
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4953
    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    sget-object v2, Lj$/time/format/SignStyle;->NORMAL:Lj$/time/format/SignStyle;

    goto :goto_0

    :cond_2
    sget-object v2, Lj$/time/format/SignStyle;->EXCEEDS_PAD:Lj$/time/format/SignStyle;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4956
    :cond_3
    iget-char v1, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 4962
    :sswitch_0
    const-string v1, "WeekOfWeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4963
    goto :goto_1

    .line 4959
    :sswitch_1
    const-string v1, "DayOfWeek"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4960
    goto :goto_1

    .line 4965
    :sswitch_2
    const-string v1, "WeekOfMonth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4966
    nop

    .line 4970
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4971
    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4973
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4974
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x57 -> :sswitch_2
        0x63 -> :sswitch_1
        0x65 -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method bridge synthetic withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 1

    .line 4835
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    move-result-object v0

    return-object v0
.end method

.method withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;
    .locals 8

    .line 4875
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4876
    return-object p0

    .line 4878
    :cond_0
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    iget-char v3, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    iget v5, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->minWidth:I

    iget v6, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->maxWidth:I

    const/4 v7, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIIII)V

    return-object v0
.end method

.method bridge synthetic withSubsequentWidth(I)Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 0

    .line 4835
    invoke-virtual {p0, p1}, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->withSubsequentWidth(I)Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    move-result-object p1

    return-object p1
.end method

.method withSubsequentWidth(I)Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;
    .locals 7
    .param p1, "subsequentWidth"    # I

    .line 4889
    new-instance v6, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    iget-char v1, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    iget v3, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->minWidth:I

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->maxWidth:I

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->subsequentWidth:I

    add-int v5, v0, p1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIIII)V

    return-object v6
.end method
