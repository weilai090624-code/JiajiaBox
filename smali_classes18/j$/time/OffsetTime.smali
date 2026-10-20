.class public final Lj$/time/OffsetTime;
.super Ljava/lang/Object;
.source "OffsetTime.java"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/Temporal;",
        "Lj$/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Lj$/time/OffsetTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final MAX:Lj$/time/OffsetTime;

.field public static final MIN:Lj$/time/OffsetTime;

.field private static final serialVersionUID:J = 0x64d0affdfec1386cL


# instance fields
.field private final offset:Lj$/time/ZoneOffset;

.field private final time:Lj$/time/LocalTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 128
    sget-object v0, Lj$/time/LocalTime;->MIN:Lj$/time/LocalTime;

    sget-object v1, Lj$/time/ZoneOffset;->MAX:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/LocalTime;->atOffset(Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    sput-object v0, Lj$/time/OffsetTime;->MIN:Lj$/time/OffsetTime;

    .line 136
    sget-object v0, Lj$/time/LocalTime;->MAX:Lj$/time/LocalTime;

    sget-object v1, Lj$/time/ZoneOffset;->MIN:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/LocalTime;->atOffset(Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    sput-object v0, Lj$/time/OffsetTime;->MAX:Lj$/time/OffsetTime;

    return-void
.end method

.method private constructor <init>(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)V
    .locals 1
    .param p1, "time"    # Lj$/time/LocalTime;
    .param p2, "offset"    # Lj$/time/ZoneOffset;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const-string v0, "time"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/LocalTime;

    iput-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    .line 339
    const-string v0, "offset"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneOffset;

    iput-object v0, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    .line 340
    return-void
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/OffsetTime;
    .locals 5
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 287
    instance-of v0, p0, Lj$/time/OffsetTime;

    if-eqz v0, :cond_0

    .line 288
    move-object v0, p0

    check-cast v0, Lj$/time/OffsetTime;

    return-object v0

    .line 291
    :cond_0
    :try_start_0
    invoke-static {p0}, Lj$/time/LocalTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalTime;

    move-result-object v0

    .line 292
    .local v0, "time":Lj$/time/LocalTime;
    invoke-static {p0}, Lj$/time/ZoneOffset;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 293
    .local v1, "offset":Lj$/time/ZoneOffset;
    new-instance v2, Lj$/time/OffsetTime;

    invoke-direct {v2, v0, v1}, Lj$/time/OffsetTime;-><init>(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)V
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 294
    .end local v0    # "time":Lj$/time/LocalTime;
    .end local v1    # "offset":Lj$/time/ZoneOffset;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "ex":Lj$/time/DateTimeException;
    new-instance v1, Lj$/time/DateTimeException;

    .line 296
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain OffsetTime from TemporalAccessor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static now()Lj$/time/OffsetTime;
    .locals 1

    .line 166
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/OffsetTime;->now(Lj$/time/Clock;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lj$/time/Clock;)Lj$/time/OffsetTime;
    .locals 2
    .param p0, "clock"    # Lj$/time/Clock;

    .line 199
    const-string v0, "clock"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    invoke-virtual {p0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    .line 201
    .local v0, "now":Lj$/time/Instant;
    invoke-virtual {p0}, Lj$/time/Clock;->getZone()Lj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/OffsetTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetTime;

    move-result-object v1

    return-object v1
.end method

.method public static now(Lj$/time/ZoneId;)Lj$/time/OffsetTime;
    .locals 1
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 183
    invoke-static {p0}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/OffsetTime;->now(Lj$/time/Clock;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIILj$/time/ZoneOffset;)Lj$/time/OffsetTime;
    .locals 2
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I
    .param p3, "nanoOfSecond"    # I
    .param p4, "offset"    # Lj$/time/ZoneOffset;

    .line 236
    new-instance v0, Lj$/time/OffsetTime;

    invoke-static {p0, p1, p2, p3}, Lj$/time/LocalTime;->of(IIII)Lj$/time/LocalTime;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lj$/time/OffsetTime;-><init>(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)V

    return-object v0
.end method

.method public static of(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;
    .locals 1
    .param p0, "time"    # Lj$/time/LocalTime;
    .param p1, "offset"    # Lj$/time/ZoneOffset;

    .line 213
    new-instance v0, Lj$/time/OffsetTime;

    invoke-direct {v0, p0, p1}, Lj$/time/OffsetTime;-><init>(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)V

    return-object v0
.end method

.method public static ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetTime;
    .locals 9
    .param p0, "instant"    # Lj$/time/Instant;
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 256
    const-string v0, "instant"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 258
    invoke-virtual {p1}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    .line 259
    .local v0, "rules":Lj$/time/zone/ZoneRules;
    invoke-virtual {v0, p0}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 260
    .local v1, "offset":Lj$/time/ZoneOffset;
    invoke-virtual {p0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 261
    .local v2, "localSecond":J
    const v4, 0x15180

    invoke-static {v2, v3, v4}, Lj$/time/OffsetTime$$ExternalSyntheticBackport0;->m(JI)I

    move-result v4

    .line 262
    .local v4, "secsOfDay":I
    int-to-long v5, v4

    const-wide/32 v7, 0x3b9aca00

    mul-long v5, v5, v7

    invoke-virtual {p0}, Lj$/time/Instant;->getNano()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Lj$/time/LocalTime;->ofNanoOfDay(J)Lj$/time/LocalTime;

    move-result-object v5

    .line 263
    .local v5, "time":Lj$/time/LocalTime;
    new-instance v6, Lj$/time/OffsetTime;

    invoke-direct {v6, v5, v1}, Lj$/time/OffsetTime;-><init>(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)V

    return-object v6
.end method

.method public static parse(Ljava/lang/CharSequence;)Lj$/time/OffsetTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 312
    sget-object v0, Lj$/time/format/DateTimeFormatter;->ISO_OFFSET_TIME:Lj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lj$/time/OffsetTime;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/OffsetTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 326
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 327
    new-instance v0, Lj$/time/OffsetTime$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lj$/time/OffsetTime$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p0, v0}, Lj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/OffsetTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/ObjectInput;)Lj$/time/OffsetTime;
    .locals 3
    .param p0, "in"    # Ljava/io/ObjectInput;

    .line 1433
    invoke-static {p0}, Lj$/time/LocalTime;->readExternal(Ljava/io/DataInput;)Lj$/time/LocalTime;

    move-result-object v0

    .line 1434
    .local v0, "time":Lj$/time/LocalTime;
    invoke-static {p0}, Lj$/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 1435
    .local v1, "offset":Lj$/time/ZoneOffset;
    invoke-static {v0, v1}, Lj$/time/OffsetTime;->of(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v2

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 1424
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toEpochNano()J
    .locals 6

    .line 1230
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    .line 1231
    .local v0, "nod":J
    iget-object v2, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v2}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    .line 1232
    .local v2, "offsetNanos":J
    sub-long v4, v0, v2

    return-wide v4
.end method

.method private with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;
    .locals 1
    .param p1, "time"    # Lj$/time/LocalTime;
    .param p2, "offset"    # Lj$/time/ZoneOffset;

    .line 349
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v0, p2}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    return-object p0

    .line 352
    :cond_0
    new-instance v0, Lj$/time/OffsetTime;

    invoke-direct {v0, p1, p2}, Lj$/time/OffsetTime;-><init>(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1414
    new-instance v0, Lj$/time/Ser;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 4
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 1121
    sget-object v0, Lj$/time/temporal/ChronoField;->NANO_OF_DAY:Lj$/time/temporal/ChronoField;

    iget-object v1, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    .line 1122
    invoke-virtual {v1}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    iget-object v2, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    .line 1123
    invoke-virtual {v2}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    .line 1121
    return-object v0
.end method

.method public atDate(Lj$/time/LocalDate;)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "date"    # Lj$/time/LocalDate;

    .line 1220
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-static {p1, v0, v1}, Lj$/time/OffsetDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lj$/time/OffsetTime;)I
    .locals 4
    .param p1, "other"    # Lj$/time/OffsetTime;

    .line 1286
    iget-object v0, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    iget-object v1, p1, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    iget-object v1, p1, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, v1}, Lj$/time/LocalTime;->compareTo(Lj$/time/LocalTime;)I

    move-result v0

    return v0

    .line 1289
    :cond_0
    invoke-direct {p0}, Lj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Lj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 1290
    .local v0, "compare":I
    if-nez v0, :cond_1

    .line 1291
    iget-object v1, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    iget-object v2, p1, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v1, v2}, Lj$/time/LocalTime;->compareTo(Lj$/time/LocalTime;)I

    move-result v0

    .line 1293
    :cond_1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 118
    check-cast p1, Lj$/time/OffsetTime;

    invoke-virtual {p0, p1}, Lj$/time/OffsetTime;->compareTo(Lj$/time/OffsetTime;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1358
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1359
    return v0

    .line 1361
    :cond_0
    instance-of v1, p1, Lj$/time/OffsetTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1362
    move-object v1, p1

    check-cast v1, Lj$/time/OffsetTime;

    .line 1363
    .local v1, "other":Lj$/time/OffsetTime;
    iget-object v3, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    iget-object v4, v1, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v3, v4}, Lj$/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    iget-object v4, v1, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v3, v4}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1365
    .end local v1    # "other":Lj$/time/OffsetTime;
    :cond_2
    return v2
.end method

.method public format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 1205
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1206
    invoke-virtual {p1, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lj$/time/temporal/TemporalField;)I
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 502
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$get(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 619
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .locals 2
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 530
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 531
    sget-object v0, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 532
    iget-object v0, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v0}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 534
    :cond_0
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 536
    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .locals 1

    .line 628
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    .line 646
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Lj$/time/ZoneOffset;
    .locals 1

    .line 548
    iget-object v0, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    .line 637
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1375
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lj$/time/OffsetTime;)Z
    .locals 5
    .param p1, "other"    # Lj$/time/OffsetTime;

    .line 1309
    invoke-direct {p0}, Lj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Lj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBefore(Lj$/time/OffsetTime;)Z
    .locals 5
    .param p1, "other"    # Lj$/time/OffsetTime;

    .line 1324
    invoke-direct {p0}, Lj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Lj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEqual(Lj$/time/OffsetTime;)Z
    .locals 5
    .param p1, "other"    # Lj$/time/OffsetTime;

    .line 1339
    invoke-direct {p0}, Lj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Lj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 396
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 397
    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 399
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isSupported(Lj$/time/temporal/TemporalUnit;)Z
    .locals 1
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 432
    instance-of v0, p1, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 433
    invoke-interface {p1}, Lj$/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v0

    return v0

    .line 435
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalUnit;->isSupportedBy(Lj$/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/OffsetTime;
    .locals 3
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 993
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/OffsetTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/OffsetTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Lj$/time/OffsetTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/OffsetTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/OffsetTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/OffsetTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/OffsetTime;
    .locals 1
    .param p1, "amountToSubtract"    # Lj$/time/temporal/TemporalAmount;

    .line 969
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/OffsetTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/OffsetTime;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lj$/time/OffsetTime;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public minusHours(J)Lj$/time/OffsetTime;
    .locals 2
    .param p1, "hours"    # J

    .line 1009
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalTime;->minusHours(J)Lj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMinutes(J)Lj$/time/OffsetTime;
    .locals 2
    .param p1, "minutes"    # J

    .line 1024
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalTime;->minusMinutes(J)Lj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusNanos(J)Lj$/time/OffsetTime;
    .locals 2
    .param p1, "nanos"    # J

    .line 1054
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalTime;->minusNanos(J)Lj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Lj$/time/OffsetTime;
    .locals 2
    .param p1, "seconds"    # J

    .line 1039
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalTime;->minusSeconds(J)Lj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/OffsetTime;
    .locals 2
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 879
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/LocalTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0

    .line 882
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->addTo(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/OffsetTime;

    return-object v0
.end method

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/OffsetTime;
    .locals 1
    .param p1, "amountToAdd"    # Lj$/time/temporal/TemporalAmount;

    .line 849
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/OffsetTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/OffsetTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lj$/time/OffsetTime;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(J)Lj$/time/OffsetTime;
    .locals 2
    .param p1, "hours"    # J

    .line 898
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalTime;->plusHours(J)Lj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Lj$/time/OffsetTime;
    .locals 2
    .param p1, "minutes"    # J

    .line 913
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalTime;->plusMinutes(J)Lj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Lj$/time/OffsetTime;
    .locals 2
    .param p1, "nanos"    # J

    .line 943
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalTime;->plusNanos(J)Lj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Lj$/time/OffsetTime;
    .locals 2
    .param p1, "seconds"    # J

    .line 928
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalTime;->plusSeconds(J)Lj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1079
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->offset()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_7

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zone()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_3

    .line 1081
    :cond_0
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zoneId()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    or-int/2addr v0, v1

    if-nez v0, :cond_6

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localDate()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    goto :goto_2

    .line 1083
    :cond_3
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localTime()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 1084
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    return-object v0

    .line 1085
    :cond_4
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->precision()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 1086
    sget-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    return-object v0

    .line 1090
    :cond_5
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalQuery;->queryFrom(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1082
    :cond_6
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 1080
    :cond_7
    :goto_3
    iget-object v0, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    return-object v0
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 464
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 465
    sget-object v0, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 466
    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 468
    :cond_0
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 470
    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toEpochSecond(Lj$/time/LocalDate;)J
    .locals 6
    .param p1, "date"    # Lj$/time/LocalDate;

    .line 1250
    const-string v0, "date"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1251
    invoke-virtual {p1}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    .line 1252
    .local v0, "epochDay":J
    const-wide/32 v2, 0x15180

    mul-long v2, v2, v0

    iget-object v4, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v4}, Lj$/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 1253
    .local v2, "secs":J
    iget-object v4, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v4}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 1254
    return-wide v2
.end method

.method public toLocalTime()Lj$/time/LocalTime;
    .locals 1

    .line 609
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1397
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lj$/time/temporal/TemporalUnit;)Lj$/time/OffsetTime;
    .locals 2
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 823
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->truncatedTo(Lj$/time/temporal/TemporalUnit;)Lj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 6
    .param p1, "endExclusive"    # Lj$/time/temporal/Temporal;
    .param p2, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1178
    invoke-static {p1}, Lj$/time/OffsetTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/OffsetTime;

    move-result-object v0

    .line 1179
    .local v0, "end":Lj$/time/OffsetTime;
    instance-of v1, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 1180
    invoke-direct {v0}, Lj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v1

    invoke-direct {p0}, Lj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1181
    .local v1, "nanosUntil":J
    sget-object v3, Lj$/time/OffsetTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v4, p2

    check-cast v4, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1190
    new-instance v3, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1188
    :pswitch_0
    const-wide v3, 0x274a48a78000L

    div-long v3, v1, v3

    return-wide v3

    .line 1187
    :pswitch_1
    const-wide v3, 0x34630b8a000L

    div-long v3, v1, v3

    return-wide v3

    .line 1186
    :pswitch_2
    const-wide v3, 0xdf8475800L

    div-long v3, v1, v3

    return-wide v3

    .line 1185
    :pswitch_3
    const-wide/32 v3, 0x3b9aca00

    div-long v3, v1, v3

    return-wide v3

    .line 1184
    :pswitch_4
    const-wide/32 v3, 0xf4240

    div-long v3, v1, v3

    return-wide v3

    .line 1183
    :pswitch_5
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    return-wide v3

    .line 1182
    :pswitch_6
    return-wide v1

    .line 1192
    .end local v1    # "nanosUntil":J
    :cond_0
    invoke-interface {p2, p0, v0}, Lj$/time/temporal/TemporalUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/OffsetTime;
    .locals 2
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;

    .line 681
    instance-of v0, p1, Lj$/time/LocalTime;

    if-eqz v0, :cond_0

    .line 682
    move-object v0, p1

    check-cast v0, Lj$/time/LocalTime;

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0

    .line 683
    :cond_0
    instance-of v0, p1, Lj$/time/ZoneOffset;

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    move-object v1, p1

    check-cast v1, Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0

    .line 685
    :cond_1
    instance-of v0, p1, Lj$/time/OffsetTime;

    if-eqz v0, :cond_2

    .line 686
    move-object v0, p1

    check-cast v0, Lj$/time/OffsetTime;

    return-object v0

    .line 688
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAdjuster;->adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/OffsetTime;

    return-object v0
.end method

.method public with(Lj$/time/temporal/TemporalField;J)Lj$/time/OffsetTime;
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 728
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 729
    sget-object v0, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 730
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 731
    .local v0, "f":Lj$/time/temporal/ChronoField;
    iget-object v1, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p2, p3}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    invoke-static {v2}, Lj$/time/ZoneOffset;->ofTotalSeconds(I)Lj$/time/ZoneOffset;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v1

    return-object v1

    .line 733
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_0
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/LocalTime;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0

    .line 735
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/TemporalField;->adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/OffsetTime;

    return-object v0
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lj$/time/OffsetTime;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/OffsetTime;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public withHour(I)Lj$/time/OffsetTime;
    .locals 2
    .param p1, "hour"    # I

    .line 751
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->withHour(I)Lj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Lj$/time/OffsetTime;
    .locals 2
    .param p1, "minute"    # I

    .line 766
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->withMinute(I)Lj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Lj$/time/OffsetTime;
    .locals 2
    .param p1, "nanoOfSecond"    # I

    .line 796
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->withNano(I)Lj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withOffsetSameInstant(Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;
    .locals 4
    .param p1, "offset"    # Lj$/time/ZoneOffset;

    .line 591
    iget-object v0, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {p1, v0}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    return-object p0

    .line 594
    :cond_0
    invoke-virtual {p1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    .line 595
    .local v0, "difference":I
    iget-object v1, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lj$/time/LocalTime;->plusSeconds(J)Lj$/time/LocalTime;

    move-result-object v1

    .line 596
    .local v1, "adjusted":Lj$/time/LocalTime;
    new-instance v2, Lj$/time/OffsetTime;

    invoke-direct {v2, v1, p1}, Lj$/time/OffsetTime;-><init>(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)V

    return-object v2
.end method

.method public withOffsetSameLocal(Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;
    .locals 2
    .param p1, "offset"    # Lj$/time/ZoneOffset;

    .line 569
    if-eqz p1, :cond_0

    iget-object v0, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {p1, v0}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/OffsetTime;

    iget-object v1, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-direct {v0, v1, p1}, Lj$/time/OffsetTime;-><init>(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)V

    :goto_0
    return-object v0
.end method

.method public withSecond(I)Lj$/time/OffsetTime;
    .locals 2
    .param p1, "second"    # I

    .line 781
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->withSecond(I)Lj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetTime;->with(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;

    .line 1428
    iget-object v0, p0, Lj$/time/OffsetTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 1429
    iget-object v0, p0, Lj$/time/OffsetTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 1430
    return-void
.end method
