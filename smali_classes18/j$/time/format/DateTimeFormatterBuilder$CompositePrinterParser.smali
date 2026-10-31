.class final Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
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
    name = "CompositePrinterParser"
.end annotation


# instance fields
.field private final optional:Z

.field private final printerParsers:[Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .registers 4
    .param p2, "optional"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;",
            ">;Z)V"
        }
    .end annotation

    .line 2328
    .local p1, "printerParsers":Ljava/util/List;, "Ljava/util/List<Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-direct {p0, v0, p2}, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>([Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V

    .line 2329
    return-void
.end method

.method constructor <init>([Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V
    .registers 3
    .param p1, "printerParsers"    # [Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .param p2, "optional"    # Z

    .line 2331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2332
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 2333
    iput-boolean p2, p0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    .line 2334
    return-void
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 10
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2351
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2352
    .local v0, "length":I
    iget-boolean v1, p0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_b

    .line 2353
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->startOptional()V

    .line 2356
    :cond_b
    :try_start_b
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    const/4 v4, 0x1

    if-ge v3, v2, :cond_29

    aget-object v5, v1, v3

    .line 2357
    .local v5, "pp":Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-interface {v5, p1, p2}, Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 2358
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_31

    .line 2359
    nop

    .line 2363
    iget-boolean v1, p0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_25

    .line 2364
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->endOptional()V

    .line 2359
    :cond_25
    return v4

    .line 2356
    .end local v5    # "pp":Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2363
    :cond_29
    iget-boolean v1, p0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_30

    .line 2364
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->endOptional()V

    .line 2367
    :cond_30
    return v4

    .line 2363
    :catchall_31
    move-exception v1

    iget-boolean v2, p0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v2, :cond_39

    .line 2364
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->endOptional()V

    .line 2366
    :cond_39
    throw v1
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 10
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2372
    iget-boolean v0, p0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 2373
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->startOptional()V

    .line 2374
    move v0, p3

    .line 2375
    .local v0, "pos":I
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_1e

    aget-object v5, v2, v4

    .line 2376
    .local v5, "pp":Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-interface {v5, p1, p2, v0}, Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2377
    if-gez v0, :cond_1b

    .line 2378
    invoke-virtual {p1, v1}, Lj$/time/format/DateTimeParseContext;->endOptional(Z)V

    .line 2379
    return p3

    .line 2375
    .end local v5    # "pp":Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 2382
    :cond_1e
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lj$/time/format/DateTimeParseContext;->endOptional(Z)V

    .line 2383
    return v0

    .line 2385
    .end local v0    # "pos":I
    :cond_23
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v2, v0

    :goto_26
    if-ge v1, v2, :cond_34

    aget-object v3, v0, v1

    .line 2386
    .local v3, "pp":Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-interface {v3, p1, p2, p3}, Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result p3

    .line 2387
    if-gez p3, :cond_31

    .line 2388
    goto :goto_34

    .line 2385
    .end local v3    # "pp":Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 2391
    :cond_34
    :goto_34
    return p3
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 2397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2398
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    if-eqz v1, :cond_2f

    .line 2399
    iget-boolean v1, p0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_10

    const-string v1, "["

    goto :goto_12

    :cond_10
    const-string v1, "("

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_23

    aget-object v4, v1, v3

    .line 2401
    .local v4, "pp":Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2400
    .end local v4    # "pp":Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 2403
    :cond_23
    iget-boolean v1, p0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_2a

    const-string v1, "]"

    goto :goto_2c

    :cond_2a
    const-string v1, ")"

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2405
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withOptional(Z)Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .registers 4
    .param p1, "optional"    # Z

    .line 2343
    iget-boolean v0, p0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-ne p1, v0, :cond_5

    .line 2344
    return-object p0

    .line 2346
    :cond_5
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-direct {v0, v1, p1}, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>([Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V

    return-object v0
.end method
