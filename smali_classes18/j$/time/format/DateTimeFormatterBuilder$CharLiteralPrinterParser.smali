.class final Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;
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
    name = "CharLiteralPrinterParser"
.end annotation


# instance fields
.field private final literal:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .param p1, "literal"    # C

    .line 2557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2558
    iput-char p1, p0, Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    .line 2559
    return-void
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 1
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2563
    iget-char v0, p0, Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2564
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 4
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2569
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2570
    .local v0, "length":I
    if-ne p3, v0, :cond_0

    .line 2571
    not-int v1, p3

    return v1

    .line 2573
    :cond_0
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2574
    .local v1, "ch":C
    iget-char v2, p0, Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    if-eq v1, v2, :cond_2

    .line 2575
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2576
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    iget-char v3, p0, Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 2577
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    iget-char v3, p0, Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 2578
    :cond_1
    not-int v2, p3

    return v2

    .line 2581
    :cond_2
    add-int/lit8 v2, p3, 0x1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2586
    iget-char v0, p0, Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    .line 2587
    const-string v0, "\'\'"

    return-object v0

    .line 2589
    :cond_0
    iget-char v0, p0, Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
