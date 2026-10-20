.class final Lj$/time/format/DateTimeParseContext;
.super Ljava/lang/Object;
.source "DateTimeParseContext.java"


# instance fields
.field private caseSensitive:Z

.field private chronoListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/Consumer<",
            "Lj$/time/chrono/Chronology;",
            ">;>;"
        }
    .end annotation
.end field

.field private formatter:Lj$/time/format/DateTimeFormatter;

.field private final parsed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lj$/time/format/Parsed;",
            ">;"
        }
    .end annotation
.end field

.field private strict:Z


# direct methods
.method constructor <init>(Lj$/time/format/DateTimeFormatter;)V
    .locals 2
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/time/format/DateTimeParseContext;->caseSensitive:Z

    .line 105
    iput-boolean v0, p0, Lj$/time/format/DateTimeParseContext;->strict:Z

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    .line 122
    iput-object p1, p0, Lj$/time/format/DateTimeParseContext;->formatter:Lj$/time/format/DateTimeFormatter;

    .line 123
    iget-object v0, p0, Lj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    new-instance v1, Lj$/time/format/Parsed;

    invoke-direct {v1}, Lj$/time/format/Parsed;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method static charEqualsIgnoreCase(CC)Z
    .locals 2
    .param p0, "c1"    # C
    .param p1, "c2"    # C

    .line 256
    if-eq p0, p1, :cond_1

    .line 257
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-eq v0, v1, :cond_1

    .line 258
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 256
    :goto_1
    return v0
.end method

.method private currentParsed()Lj$/time/format/Parsed;
    .locals 2

    .line 310
    iget-object v0, p0, Lj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    iget-object v1, p0, Lj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/format/Parsed;

    return-object v0
.end method


# virtual methods
.method addChronoChangedListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lj$/time/chrono/Chronology;",
            ">;)V"
        }
    .end annotation

    .line 401
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/time/chrono/Chronology;>;"
    iget-object v0, p0, Lj$/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj$/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    .line 404
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method charEquals(CC)Z
    .locals 1
    .param p1, "ch1"    # C
    .param p2, "ch2"    # C

    .line 242
    invoke-virtual {p0}, Lj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 245
    :cond_1
    invoke-static {p1, p2}, Lj$/time/format/DateTimeParseContext;->charEqualsIgnoreCase(CC)Z

    move-result v0

    return v0
.end method

.method copy()Lj$/time/format/DateTimeParseContext;
    .locals 2

    .line 131
    new-instance v0, Lj$/time/format/DateTimeParseContext;

    iget-object v1, p0, Lj$/time/format/DateTimeParseContext;->formatter:Lj$/time/format/DateTimeFormatter;

    invoke-direct {v0, v1}, Lj$/time/format/DateTimeParseContext;-><init>(Lj$/time/format/DateTimeFormatter;)V

    .line 132
    .local v0, "newContext":Lj$/time/format/DateTimeParseContext;
    iget-boolean v1, p0, Lj$/time/format/DateTimeParseContext;->caseSensitive:Z

    iput-boolean v1, v0, Lj$/time/format/DateTimeParseContext;->caseSensitive:Z

    .line 133
    iget-boolean v1, p0, Lj$/time/format/DateTimeParseContext;->strict:Z

    iput-boolean v1, v0, Lj$/time/format/DateTimeParseContext;->strict:Z

    .line 134
    return-object v0
.end method

.method endOptional(Z)V
    .locals 2
    .param p1, "successful"    # Z

    .line 296
    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    iget-object v1, p0, Lj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    iget-object v1, p0, Lj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 301
    :goto_0
    return-void
.end method

.method getDecimalStyle()Lj$/time/format/DecimalStyle;
    .locals 1

    .line 158
    iget-object v0, p0, Lj$/time/format/DateTimeParseContext;->formatter:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatter;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method

.method getEffectiveChronology()Lj$/time/chrono/Chronology;
    .locals 2

    .line 167
    invoke-direct {p0}, Lj$/time/format/DateTimeParseContext;->currentParsed()Lj$/time/format/Parsed;

    move-result-object v0

    iget-object v0, v0, Lj$/time/format/Parsed;->chrono:Lj$/time/chrono/Chronology;

    .line 168
    .local v0, "chrono":Lj$/time/chrono/Chronology;
    if-nez v0, :cond_0

    .line 169
    iget-object v1, p0, Lj$/time/format/DateTimeParseContext;->formatter:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v1}, Lj$/time/format/DateTimeFormatter;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    .line 170
    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 174
    :cond_0
    return-object v0
.end method

.method getLocale()Ljava/util/Locale;
    .locals 1

    .line 147
    iget-object v0, p0, Lj$/time/format/DateTimeParseContext;->formatter:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 348
    invoke-direct {p0}, Lj$/time/format/DateTimeParseContext;->currentParsed()Lj$/time/format/Parsed;

    move-result-object v0

    iget-object v0, v0, Lj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method isCaseSensitive()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lj$/time/format/DateTimeParseContext;->caseSensitive:Z

    return v0
.end method

.method isStrict()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lj$/time/format/DateTimeParseContext;->strict:Z

    return v0
.end method

.method setCaseSensitive(Z)V
    .locals 0
    .param p1, "caseSensitive"    # Z

    .line 193
    iput-boolean p1, p0, Lj$/time/format/DateTimeParseContext;->caseSensitive:Z

    .line 194
    return-void
.end method

.method setParsed(Lj$/time/ZoneId;)V
    .locals 1
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 416
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 417
    invoke-direct {p0}, Lj$/time/format/DateTimeParseContext;->currentParsed()Lj$/time/format/Parsed;

    move-result-object v0

    iput-object p1, v0, Lj$/time/format/Parsed;->zone:Lj$/time/ZoneId;

    .line 418
    return-void
.end method

.method setParsed(Lj$/time/chrono/Chronology;)V
    .locals 5
    .param p1, "chrono"    # Lj$/time/chrono/Chronology;

    .line 382
    const-string v0, "chrono"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 383
    invoke-direct {p0}, Lj$/time/format/DateTimeParseContext;->currentParsed()Lj$/time/format/Parsed;

    move-result-object v0

    iput-object p1, v0, Lj$/time/format/Parsed;->chrono:Lj$/time/chrono/Chronology;

    .line 384
    iget-object v0, p0, Lj$/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/function/Consumer;

    .line 387
    .local v0, "tmp":[Ljava/util/function/Consumer;, "[Ljava/util/function/Consumer<Ljava/time/chrono/Chronology;>;"
    iget-object v1, p0, Lj$/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/function/Consumer;

    .line 388
    .local v1, "listeners":[Ljava/util/function/Consumer;, "[Ljava/util/function/Consumer<Ljava/time/chrono/Chronology;>;"
    iget-object v2, p0, Lj$/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 389
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 390
    .local v4, "l":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/time/chrono/Chronology;>;"
    invoke-interface {v4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 389
    .end local v4    # "l":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/time/chrono/Chronology;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "tmp":[Ljava/util/function/Consumer;, "[Ljava/util/function/Consumer<Ljava/time/chrono/Chronology;>;"
    .end local v1    # "listeners":[Ljava/util/function/Consumer;, "[Ljava/util/function/Consumer<Ljava/time/chrono/Chronology;>;"
    :cond_0
    return-void
.end method

.method setParsedField(Lj$/time/temporal/TemporalField;JII)I
    .locals 4
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "value"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I

    .line 364
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 365
    invoke-direct {p0}, Lj$/time/format/DateTimeParseContext;->currentParsed()Lj$/time/format/Parsed;

    move-result-object v0

    iget-object v0, v0, Lj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 366
    .local v0, "old":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-eqz v3, :cond_0

    not-int v1, p4

    goto :goto_0

    :cond_0
    move v1, p5

    :goto_0
    return v1
.end method

.method setParsedLeapSecond()V
    .locals 2

    .line 424
    invoke-direct {p0}, Lj$/time/format/DateTimeParseContext;->currentParsed()Lj$/time/format/Parsed;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj$/time/format/Parsed;->leapSecond:Z

    .line 425
    return-void
.end method

.method setStrict(Z)V
    .locals 0
    .param p1, "strict"    # Z

    .line 279
    iput-boolean p1, p0, Lj$/time/format/DateTimeParseContext;->strict:Z

    .line 280
    return-void
.end method

.method startOptional()V
    .locals 2

    .line 287
    iget-object v0, p0, Lj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-direct {p0}, Lj$/time/format/DateTimeParseContext;->currentParsed()Lj$/time/format/Parsed;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/format/Parsed;->copy()Lj$/time/format/Parsed;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 6
    .param p1, "cs1"    # Ljava/lang/CharSequence;
    .param p2, "offset1"    # I
    .param p3, "cs2"    # Ljava/lang/CharSequence;
    .param p4, "offset2"    # I
    .param p5, "length"    # I

    .line 209
    add-int v0, p2, p5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_6

    add-int v0, p4, p5

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_3

    .line 212
    :cond_0
    invoke-virtual {p0}, Lj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_2

    .line 214
    add-int v1, p2, v0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 215
    .local v1, "ch1":C
    add-int v3, p4, v0

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 216
    .local v3, "ch2":C
    if-eq v1, v3, :cond_1

    .line 217
    return v2

    .line 213
    .end local v1    # "ch1":C
    .end local v3    # "ch2":C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    goto :goto_2

    .line 221
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p5, :cond_5

    .line 222
    add-int v1, p2, v0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 223
    .restart local v1    # "ch1":C
    add-int v3, p4, v0

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 224
    .restart local v3    # "ch2":C
    if-eq v1, v3, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_4

    .line 225
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-eq v4, v5, :cond_4

    .line 226
    return v2

    .line 221
    .end local v1    # "ch1":C
    .end local v3    # "ch2":C
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 230
    .end local v0    # "i":I
    :cond_5
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 210
    :cond_6
    :goto_3
    return v2
.end method

.method toResolved(Lj$/time/format/ResolverStyle;Ljava/util/Set;)Lj$/time/temporal/TemporalAccessor;
    .locals 2
    .param p1, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/format/ResolverStyle;",
            "Ljava/util/Set<",
            "Lj$/time/temporal/TemporalField;",
            ">;)",
            "Lj$/time/temporal/TemporalAccessor;"
        }
    .end annotation

    .line 328
    .local p2, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    invoke-direct {p0}, Lj$/time/format/DateTimeParseContext;->currentParsed()Lj$/time/format/Parsed;

    move-result-object v0

    .line 329
    .local v0, "parsed":Lj$/time/format/Parsed;
    invoke-virtual {p0}, Lj$/time/format/DateTimeParseContext;->getEffectiveChronology()Lj$/time/chrono/Chronology;

    move-result-object v1

    iput-object v1, v0, Lj$/time/format/Parsed;->chrono:Lj$/time/chrono/Chronology;

    .line 330
    iget-object v1, v0, Lj$/time/format/Parsed;->zone:Lj$/time/ZoneId;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lj$/time/format/Parsed;->zone:Lj$/time/ZoneId;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/time/format/DateTimeParseContext;->formatter:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v1}, Lj$/time/format/DateTimeFormatter;->getZone()Lj$/time/ZoneId;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lj$/time/format/Parsed;->zone:Lj$/time/ZoneId;

    .line 331
    invoke-virtual {v0, p1, p2}, Lj$/time/format/Parsed;->resolve(Lj$/time/format/ResolverStyle;Ljava/util/Set;)Lj$/time/temporal/TemporalAccessor;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 435
    invoke-direct {p0}, Lj$/time/format/DateTimeParseContext;->currentParsed()Lj$/time/format/Parsed;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/format/Parsed;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toUnresolved()Lj$/time/format/Parsed;
    .locals 1

    .line 319
    invoke-direct {p0}, Lj$/time/format/DateTimeParseContext;->currentParsed()Lj$/time/format/Parsed;

    move-result-object v0

    return-object v0
.end method
