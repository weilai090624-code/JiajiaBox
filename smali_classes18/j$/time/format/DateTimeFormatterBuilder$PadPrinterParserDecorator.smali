.class final Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
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
    name = "PadPrinterParserDecorator"
.end annotation


# instance fields
.field private final padChar:C

.field private final padWidth:I

.field private final printerParser:Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# direct methods
.method constructor <init>(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V
    .locals 0
    .param p1, "printerParser"    # Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .param p2, "padWidth"    # I
    .param p3, "padChar"    # C

    .line 2425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2427
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 2428
    iput p2, p0, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    .line 2429
    iput-char p3, p0, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    .line 2430
    return-void
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 6
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2434
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2435
    .local v0, "preLen":I
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {v1, p1, p2}, Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2436
    const/4 v1, 0x0

    return v1

    .line 2438
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2439
    .local v1, "len":I
    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    if-gt v1, v2, :cond_2

    .line 2443
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 2444
    iget-char v3, p0, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {p2, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2443
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2446
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 2440
    :cond_2
    new-instance v2, Lj$/time/DateTimeException;

    iget v3, p0, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot print as output of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " characters exceeds pad width of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 5
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2452
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    .line 2454
    .local v0, "strict":Z
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p3, v1, :cond_5

    .line 2457
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 2458
    not-int v1, p3

    return v1

    .line 2460
    :cond_0
    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    add-int/2addr v1, p3

    .line 2461
    .local v1, "endPos":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 2462
    if-eqz v0, :cond_1

    .line 2463
    not-int v2, p3

    return v2

    .line 2465
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2467
    :cond_2
    move v2, p3

    .line 2468
    .local v2, "pos":I
    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iget-char v4, p0, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {p1, v3, v4}, Lj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2469
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2471
    :cond_3
    const/4 v3, 0x0

    invoke-interface {p2, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2472
    iget-object v3, p0, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {v3, p1, p2, v2}, Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v3

    .line 2473
    .local v3, "resultPos":I
    if-eq v3, v1, :cond_4

    if-eqz v0, :cond_4

    .line 2474
    add-int v4, p3, v2

    not-int v4, v4

    return v4

    .line 2476
    :cond_4
    return v3

    .line 2455
    .end local v1    # "endPos":I
    .end local v2    # "pos":I
    .end local v3    # "resultPos":I
    :cond_5
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 2481
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    iget-char v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const-string v2, ")"

    goto :goto_0

    :cond_0
    iget-char v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pad("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
