.class Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZoneIdPrinterParser"
.end annotation


# static fields
.field private static volatile cachedPrefixTree:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile cachedPrefixTreeCI:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;

.field private final query:Lj$/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/time/temporal/TemporalQuery<",
            "Lj$/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/time/temporal/TemporalQuery;Ljava/lang/String;)V
    .locals 0
    .param p2, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalQuery<",
            "Lj$/time/ZoneId;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4201
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<Ljava/time/ZoneId;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4202
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Lj$/time/temporal/TemporalQuery;

    .line 4203
    iput-object p2, p0, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    .line 4204
    return-void
.end method

.method private parseOffsetBased(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I
    .locals 6
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "prefixPos"    # I
    .param p4, "position"    # I
    .param p5, "parser"    # Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .line 4308
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 4309
    .local v0, "prefix":Ljava/lang/String;
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt p4, v1, :cond_0

    .line 4310
    invoke-static {v0}, Lj$/time/ZoneId;->of(Ljava/lang/String;)Lj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {p1, v1}, Lj$/time/format/DateTimeParseContext;->setParsed(Lj$/time/ZoneId;)V

    .line 4311
    return p4

    .line 4315
    :cond_0
    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_4

    .line 4316
    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2}, Lj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4321
    :cond_1
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->copy()Lj$/time/format/DateTimeParseContext;

    move-result-object v1

    .line 4322
    .local v1, "newContext":Lj$/time/format/DateTimeParseContext;
    invoke-virtual {p5, v1, p2, p4}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v2

    .line 4324
    .local v2, "endPos":I
    if-gez v2, :cond_3

    .line 4325
    :try_start_0
    sget-object v3, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    if-ne p5, v3, :cond_2

    .line 4326
    not-int v3, p3

    return v3

    .line 4328
    :cond_2
    invoke-static {v0}, Lj$/time/ZoneId;->of(Ljava/lang/String;)Lj$/time/ZoneId;

    move-result-object v3

    invoke-virtual {p1, v3}, Lj$/time/format/DateTimeParseContext;->setParsed(Lj$/time/ZoneId;)V

    .line 4329
    return p4

    .line 4331
    :cond_3
    sget-object v3, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    invoke-virtual {v1, v3}, Lj$/time/format/DateTimeParseContext;->getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v4, v3

    .line 4332
    .local v4, "offset":I
    invoke-static {v4}, Lj$/time/ZoneOffset;->ofTotalSeconds(I)Lj$/time/ZoneOffset;

    move-result-object v3

    .line 4333
    .local v3, "zoneOffset":Lj$/time/ZoneOffset;
    invoke-static {v0, v3}, Lj$/time/ZoneId;->ofOffset(Ljava/lang/String;Lj$/time/ZoneOffset;)Lj$/time/ZoneId;

    move-result-object v5

    invoke-virtual {p1, v5}, Lj$/time/format/DateTimeParseContext;->setParsed(Lj$/time/ZoneId;)V
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4334
    return v2

    .line 4335
    .end local v3    # "zoneOffset":Lj$/time/ZoneOffset;
    .end local v4    # "offset":I
    :catch_0
    move-exception v3

    .line 4336
    .local v3, "dte":Lj$/time/DateTimeException;
    not-int v4, p3

    return v4

    .line 4317
    .end local v1    # "newContext":Lj$/time/format/DateTimeParseContext;
    .end local v2    # "endPos":I
    .end local v3    # "dte":Lj$/time/DateTimeException;
    :cond_4
    :goto_0
    invoke-static {v0}, Lj$/time/ZoneId;->of(Ljava/lang/String;)Lj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {p1, v1}, Lj$/time/format/DateTimeParseContext;->setParsed(Lj$/time/ZoneId;)V

    .line 4318
    return p4
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 2
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 4208
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Lj$/time/temporal/TemporalQuery;

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneId;

    .line 4209
    .local v0, "zone":Lj$/time/ZoneId;
    if-nez v0, :cond_0

    .line 4210
    const/4 v1, 0x0

    return v1

    .line 4212
    :cond_0
    invoke-virtual {v0}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4213
    const/4 v1, 0x1

    return v1
.end method

.method protected getTree(Lj$/time/format/DateTimeParseContext;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 6
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;

    .line 4224
    invoke-static {}, Lj$/time/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v0

    .line 4225
    .local v0, "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 4226
    .local v1, "regionIdsSize":I
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4227
    sget-object v2, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    sget-object v2, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;

    .line 4228
    .local v2, "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_6

    .line 4229
    :cond_1
    monitor-enter p0

    .line 4230
    :try_start_0
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;

    goto :goto_1

    :cond_2
    sget-object v3, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;

    :goto_1
    move-object v2, v3

    .line 4231
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_5

    .line 4232
    :cond_3
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, p1}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Ljava/util/Set;Lj$/time/format/DateTimeParseContext;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    .line 4233
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4234
    sput-object v2, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;

    goto :goto_2

    .line 4236
    :cond_4
    sput-object v2, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;

    .line 4239
    :cond_5
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4241
    :cond_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    return-object v3

    .line 4239
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 12
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 4251
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4252
    .local v0, "length":I
    if-gt p3, v0, :cond_9

    .line 4255
    if-ne p3, v0, :cond_0

    .line 4256
    not-int v1, p3

    return v1

    .line 4260
    :cond_0
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 4261
    .local v1, "nextChar":C
    const/16 v2, 0x2b

    if-eq v1, v2, :cond_8

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    goto/16 :goto_0

    .line 4263
    :cond_1
    add-int/lit8 v2, p3, 0x2

    if-lt v0, v2, :cond_5

    .line 4264
    add-int/lit8 v2, p3, 0x1

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 4265
    .local v2, "nextNextChar":C
    const/16 v3, 0x55

    invoke-virtual {p1, v1, v3}, Lj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    const/16 v4, 0x54

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2, v4}, Lj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4266
    add-int/lit8 v3, p3, 0x3

    if-lt v0, v3, :cond_2

    add-int/lit8 v3, p3, 0x2

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x43

    invoke-virtual {p1, v3, v4}, Lj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4267
    add-int/lit8 v8, p3, 0x3

    sget-object v9, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result v3

    return v3

    .line 4269
    :cond_2
    add-int/lit8 v8, p3, 0x2

    sget-object v9, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result v3

    return v3

    .line 4270
    :cond_3
    const/16 v3, 0x47

    invoke-virtual {p1, v1, v3}, Lj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v3, p3, 0x3

    if-lt v0, v3, :cond_5

    .line 4271
    const/16 v3, 0x4d

    invoke-virtual {p1, v2, v3}, Lj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v3, p3, 0x2

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3, v4}, Lj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4272
    add-int/lit8 v3, p3, 0x4

    if-lt v0, v3, :cond_4

    add-int/lit8 v3, p3, 0x3

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    invoke-virtual {p1, v3, v4}, Lj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4273
    const-string v3, "GMT0"

    invoke-static {v3}, Lj$/time/ZoneId;->of(Ljava/lang/String;)Lj$/time/ZoneId;

    move-result-object v3

    invoke-virtual {p1, v3}, Lj$/time/format/DateTimeParseContext;->setParsed(Lj$/time/ZoneId;)V

    .line 4274
    add-int/lit8 v3, p3, 0x4

    return v3

    .line 4276
    :cond_4
    add-int/lit8 v8, p3, 0x3

    sget-object v9, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result v3

    return v3

    .line 4281
    .end local v2    # "nextNextChar":C
    :cond_5
    invoke-virtual {p0, p1}, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->getTree(Lj$/time/format/DateTimeParseContext;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v2

    .line 4282
    .local v2, "tree":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, p3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 4283
    .local v3, "ppos":Ljava/text/ParsePosition;
    invoke-virtual {v2, p2, v3}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v4

    .line 4284
    .local v4, "parsedZoneId":Ljava/lang/String;
    if-nez v4, :cond_7

    .line 4285
    const/16 v5, 0x5a

    invoke-virtual {p1, v1, v5}, Lj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4286
    sget-object v5, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-virtual {p1, v5}, Lj$/time/format/DateTimeParseContext;->setParsed(Lj$/time/ZoneId;)V

    .line 4287
    add-int/lit8 v5, p3, 0x1

    return v5

    .line 4289
    :cond_6
    not-int v5, p3

    return v5

    .line 4291
    :cond_7
    invoke-static {v4}, Lj$/time/ZoneId;->of(Ljava/lang/String;)Lj$/time/ZoneId;

    move-result-object v5

    invoke-virtual {p1, v5}, Lj$/time/format/DateTimeParseContext;->setParsed(Lj$/time/ZoneId;)V

    .line 4292
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    return v5

    .line 4262
    .end local v2    # "tree":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .end local v3    # "ppos":Ljava/text/ParsePosition;
    .end local v4    # "parsedZoneId":Ljava/lang/String;
    :cond_8
    :goto_0
    sget-object v11, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    move v10, p3

    invoke-direct/range {v6 .. v11}, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result v2

    return v2

    .line 4253
    .end local v1    # "nextChar":C
    :cond_9
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4342
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    return-object v0
.end method
