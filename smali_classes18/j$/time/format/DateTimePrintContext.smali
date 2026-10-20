.class final Lj$/time/format/DateTimePrintContext;
.super Ljava/lang/Object;
.source "DateTimePrintContext.java"


# instance fields
.field private formatter:Lj$/time/format/DateTimeFormatter;

.field private optional:I

.field private temporal:Lj$/time/temporal/TemporalAccessor;


# direct methods
.method constructor <init>(Lj$/time/temporal/TemporalAccessor;Lj$/time/format/DateTimeFormatter;)V
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;
    .param p2, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1, p2}, Lj$/time/format/DateTimePrintContext;->adjust(Lj$/time/temporal/TemporalAccessor;Lj$/time/format/DateTimeFormatter;)Lj$/time/temporal/TemporalAccessor;

    move-result-object v0

    iput-object v0, p0, Lj$/time/format/DateTimePrintContext;->temporal:Lj$/time/temporal/TemporalAccessor;

    .line 120
    iput-object p2, p0, Lj$/time/format/DateTimePrintContext;->formatter:Lj$/time/format/DateTimeFormatter;

    .line 121
    return-void
.end method

.method private static adjust(Lj$/time/temporal/TemporalAccessor;Lj$/time/format/DateTimeFormatter;)Lj$/time/temporal/TemporalAccessor;
    .locals 11
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 125
    invoke-virtual {p1}, Lj$/time/format/DateTimeFormatter;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    .line 126
    .local v0, "overrideChrono":Lj$/time/chrono/Chronology;
    invoke-virtual {p1}, Lj$/time/format/DateTimeFormatter;->getZone()Lj$/time/ZoneId;

    move-result-object v1

    .line 127
    .local v1, "overrideZone":Lj$/time/ZoneId;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 128
    return-object p0

    .line 132
    :cond_0
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v2

    invoke-interface {p0, v2}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/chrono/Chronology;

    .line 133
    .local v2, "temporalChrono":Lj$/time/chrono/Chronology;
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zoneId()Lj$/time/temporal/TemporalQuery;

    move-result-object v3

    invoke-interface {p0, v3}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/ZoneId;

    .line 134
    .local v3, "temporalZone":Lj$/time/ZoneId;
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    const/4 v0, 0x0

    .line 137
    :cond_1
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    const/4 v1, 0x0

    .line 140
    :cond_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 141
    return-object p0

    .line 145
    :cond_3
    if-eqz v0, :cond_4

    move-object v4, v0

    goto :goto_0

    :cond_4
    move-object v4, v2

    .line 146
    .local v4, "effectiveChrono":Lj$/time/chrono/Chronology;
    :goto_0
    if-eqz v1, :cond_7

    .line 148
    sget-object v5, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v5}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 149
    sget-object v5, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-static {v4, v5}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj$/time/chrono/Chronology;

    .line 150
    .local v5, "chrono":Lj$/time/chrono/Chronology;
    invoke-static {p0}, Lj$/time/Instant;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Lj$/time/chrono/Chronology;->zonedDateTime(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v6

    return-object v6

    .line 153
    .end local v5    # "chrono":Lj$/time/chrono/Chronology;
    :cond_5
    invoke-virtual {v1}, Lj$/time/ZoneId;->normalized()Lj$/time/ZoneId;

    move-result-object v5

    instance-of v5, v5, Lj$/time/ZoneOffset;

    if-eqz v5, :cond_7

    sget-object v5, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v5}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    .line 154
    invoke-interface {p0, v5}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v5

    invoke-virtual {v1}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v6

    sget-object v7, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    invoke-virtual {v6, v7}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v6

    invoke-virtual {v6}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    if-ne v5, v6, :cond_6

    goto :goto_1

    .line 155
    :cond_6
    new-instance v5, Lj$/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to apply override zone \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' because the temporal object being formatted has a different offset but does not represent an instant: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    move-object v5, v1

    goto :goto_2

    :cond_8
    move-object v5, v3

    .line 162
    .local v5, "effectiveZone":Lj$/time/ZoneId;
    :goto_2
    if-eqz v0, :cond_e

    .line 163
    sget-object v6, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v6}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 164
    invoke-interface {v4, p0}, Lj$/time/chrono/Chronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v6

    .local v6, "effectiveDate":Lj$/time/chrono/ChronoLocalDate;
    goto :goto_5

    .line 167
    .end local v6    # "effectiveDate":Lj$/time/chrono/ChronoLocalDate;
    :cond_9
    sget-object v6, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    if-ne v0, v6, :cond_a

    if-eqz v2, :cond_d

    .line 168
    :cond_a
    invoke-static {}, Lj$/time/temporal/ChronoField;->values()[Lj$/time/temporal/ChronoField;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_d

    aget-object v9, v6, v8

    .line 169
    .local v9, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v9}, Lj$/time/temporal/ChronoField;->isDateBased()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {p0, v9}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_4

    .line 170
    :cond_b
    new-instance v6, Lj$/time/DateTimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to apply override chronology \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' because the temporal object being formatted contains date fields but does not represent a whole date: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 168
    .end local v9    # "f":Lj$/time/temporal/ChronoField;
    :cond_c
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 176
    :cond_d
    const/4 v6, 0x0

    .restart local v6    # "effectiveDate":Lj$/time/chrono/ChronoLocalDate;
    goto :goto_5

    .line 179
    .end local v6    # "effectiveDate":Lj$/time/chrono/ChronoLocalDate;
    :cond_e
    const/4 v6, 0x0

    .line 185
    .restart local v6    # "effectiveDate":Lj$/time/chrono/ChronoLocalDate;
    :goto_5
    new-instance v7, Lj$/time/format/DateTimePrintContext$1;

    invoke-direct {v7, v6, p0, v4, v5}, Lj$/time/format/DateTimePrintContext$1;-><init>(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalAccessor;Lj$/time/chrono/Chronology;Lj$/time/ZoneId;)V

    return-object v7
.end method


# virtual methods
.method endOptional()V
    .locals 1

    .line 276
    iget v0, p0, Lj$/time/format/DateTimePrintContext;->optional:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lj$/time/format/DateTimePrintContext;->optional:I

    .line 277
    return-void
.end method

.method getDecimalStyle()Lj$/time/format/DecimalStyle;
    .locals 1

    .line 261
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext;->formatter:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatter;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method

.method getLocale()Ljava/util/Locale;
    .locals 1

    .line 250
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext;->formatter:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getTemporal()Lj$/time/temporal/TemporalAccessor;
    .locals 1

    .line 238
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext;->temporal:Lj$/time/temporal/TemporalAccessor;

    return-object v0
.end method

.method getValue(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;
    .locals 2
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 305
    iget v0, p0, Lj$/time/format/DateTimePrintContext;->optional:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lj$/time/format/DateTimePrintContext;->temporal:Lj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x0

    return-object v0

    .line 308
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext;->temporal:Lj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method getValue(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 287
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext;->temporal:Lj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    .line 288
    .local v0, "result":Ljava/lang/Object;, "TR;"
    if-nez v0, :cond_1

    iget v1, p0, Lj$/time/format/DateTimePrintContext;->optional:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    new-instance v1, Lj$/time/DateTimeException;

    iget-object v2, p0, Lj$/time/format/DateTimePrintContext;->temporal:Lj$/time/temporal/TemporalAccessor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to extract "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from temporal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :cond_1
    :goto_0
    return-object v0
.end method

.method startOptional()V
    .locals 1

    .line 269
    iget v0, p0, Lj$/time/format/DateTimePrintContext;->optional:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/time/format/DateTimePrintContext;->optional:I

    .line 270
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext;->temporal:Lj$/time/temporal/TemporalAccessor;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
