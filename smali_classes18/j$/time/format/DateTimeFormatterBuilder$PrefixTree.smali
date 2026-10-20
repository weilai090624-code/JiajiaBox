.class Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrefixTree"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;,
        Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
    }
.end annotation


# instance fields
.field protected c0:C

.field protected child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

.field protected key:Ljava/lang/String;

.field protected sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

.field protected value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .locals 2
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4359
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    .line 4360
    iput-object p2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    .line 4361
    iput-object p3, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4362
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4363
    const v0, 0xffff

    iput-char v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    goto :goto_0

    .line 4365
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    .line 4367
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;Lj$/time/format/DateTimeFormatterBuilder-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-void
.end method

.method private add0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 4427
    invoke-virtual {p0, p1}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4428
    invoke-direct {p0, p1}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixLength(Ljava/lang/String;)I

    move-result v0

    .line 4429
    .local v0, "prefixLen":I
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    .line 4430
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4431
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4432
    .local v1, "subKey":Ljava/lang/String;
    iget-object v5, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4433
    .local v5, "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    :goto_0
    if-eqz v5, :cond_1

    .line 4434
    iget-char v6, v5, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v6, v7}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4435
    invoke-direct {v5, v1, p2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 4437
    :cond_0
    iget-object v5, v5, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    goto :goto_0

    .line 4440
    :cond_1
    invoke-virtual {p0, v1, p2, v4}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v2

    .line 4441
    .end local v5    # "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .local v2, "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    iget-object v4, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    iput-object v4, v2, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4442
    iput-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4443
    return v3

    .line 4449
    .end local v1    # "subKey":Ljava/lang/String;
    .end local v2    # "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_2
    iput-object p2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    .line 4450
    return v3

    .line 4453
    :cond_3
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    iget-object v6, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {p0, v1, v5, v6}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    .line 4454
    .local v1, "n1":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    .line 4455
    iput-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4456
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 4457
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v4}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v2

    .line 4458
    .local v2, "n2":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    iget-object v5, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    iput-object v2, v5, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4459
    iput-object v4, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    .line 4460
    .end local v2    # "n2":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    goto :goto_1

    .line 4461
    :cond_4
    iput-object p2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    .line 4463
    :goto_1
    return v3
.end method

.method public static newTree(Lj$/time/format/DateTimeParseContext;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 3
    .param p0, "context"    # Lj$/time/format/DateTimeParseContext;

    .line 4379
    invoke-virtual {p0}, Lj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4380
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-direct {v0, v1, v2, v2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0

    .line 4382
    :cond_0
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    invoke-direct {v0, v1, v2, v2, v2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;Lj$/time/format/DateTimeFormatterBuilder-IA;)V

    return-object v0
.end method

.method public static newTree(Ljava/util/Set;Lj$/time/format/DateTimeParseContext;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 3
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lj$/time/format/DateTimeParseContext;",
            ")",
            "Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;"
        }
    .end annotation

    .line 4393
    .local p0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Lj$/time/format/DateTimeParseContext;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v0

    .line 4394
    .local v0, "tree":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4395
    .local v2, "k":Ljava/lang/String;
    invoke-direct {v0, v2, v2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4396
    .end local v2    # "k":Ljava/lang/String;
    goto :goto_0

    .line 4397
    :cond_0
    return-object v0
.end method

.method private prefixLength(Ljava/lang/String;)I
    .locals 3
    .param p1, "k"    # Ljava/lang/String;

    .line 4558
    const/4 v0, 0x0

    .line 4559
    .local v0, "off":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4560
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4561
    return v0

    .line 4563
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4565
    :cond_1
    return v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 4423
    invoke-direct {p0, p1, p2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public copyTree()Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 4

    .line 4404
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    .line 4405
    .local v0, "copy":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v1, :cond_0

    .line 4406
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {v1}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->copyTree()Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    iput-object v1, v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4408
    :cond_0
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v1, :cond_1

    .line 4409
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {v1}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->copyTree()Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    iput-object v1, v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4411
    :cond_1
    return-object v0
.end method

.method protected isEqual(CC)Z
    .locals 1
    .param p1, "c1"    # C
    .param p2, "c2"    # C

    .line 4537
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public match(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "off"    # I
    .param p3, "end"    # I

    .line 4475
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixOf(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4476
    const/4 v0, 0x0

    return-object v0

    .line 4478
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    move p2, v0

    if-eq v0, p3, :cond_4

    .line 4479
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4481
    .local v0, "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_1
    iget-char v1, v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4482
    invoke-virtual {v0, p1, p2, p3}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    .line 4483
    .local v1, "found":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 4484
    return-object v1

    .line 4486
    :cond_2
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v2

    .line 4488
    .end local v1    # "found":Ljava/lang/String;
    :cond_3
    iget-object v0, v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4489
    if-nez v0, :cond_1

    .line 4491
    .end local v0    # "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_4
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v0
.end method

.method public match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 4504
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 4505
    .local v0, "off":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4506
    .local v1, "end":I
    invoke-virtual {p0, p1, v0, v1}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixOf(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4507
    const/4 v2, 0x0

    return-object v2

    .line 4509
    :cond_0
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 4510
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v2, :cond_3

    if-eq v0, v1, :cond_3

    .line 4511
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4513
    .local v2, "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_1
    iget-char v3, v2, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v3, v4}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4514
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 4515
    invoke-virtual {v2, p1, p2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v3

    .line 4516
    .local v3, "found":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 4517
    return-object v3

    .line 4521
    .end local v3    # "found":Ljava/lang/String;
    :cond_2
    iget-object v2, v2, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4522
    if-nez v2, :cond_1

    .line 4524
    .end local v2    # "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_3
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 4525
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v2
.end method

.method protected newNode(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4533
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-direct {v0, p1, p2, p3}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0
.end method

.method protected prefixOf(Ljava/lang/CharSequence;II)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "off"    # I
    .param p3, "end"    # I

    .line 4541
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4542
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 4544
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4545
    .local v0, "len":I
    sub-int v1, p3, p2

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4546
    return v2

    .line 4548
    :cond_1
    const/4 v1, 0x0

    .line 4549
    .local v1, "off0":I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "len":I
    .local v3, "len":I
    if-lez v0, :cond_3

    .line 4550
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "off0":I
    .local v4, "off0":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-virtual {p0, v0, p2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result p2

    if-nez p2, :cond_2

    .line 4551
    return v2

    .line 4550
    :cond_2
    move p2, v1

    move v0, v3

    move v1, v4

    goto :goto_0

    .line 4554
    .end local v4    # "off0":I
    .local v1, "off0":I
    .restart local p2    # "off":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected toKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "k"    # Ljava/lang/String;

    .line 4529
    return-object p1
.end method
