.class public final Lj$/time/OffsetDateTime;
.super Ljava/lang/Object;
.source "OffsetDateTime.java"

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
        "Lj$/time/OffsetDateTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final MAX:Lj$/time/OffsetDateTime;

.field public static final MIN:Lj$/time/OffsetDateTime;

.field private static final serialVersionUID:J = 0x1fbfbc5d57d80062L


# instance fields
.field private final dateTime:Lj$/time/LocalDateTime;

.field private final offset:Lj$/time/ZoneOffset;


# direct methods
.method public static synthetic $r8$lambda$_Z1rTp0fj6xv3b7HSM-00eRmwNU(Lj$/time/OffsetDateTime;Lj$/time/OffsetDateTime;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/OffsetDateTime;->compareInstant(Lj$/time/OffsetDateTime;Lj$/time/OffsetDateTime;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 138
    sget-object v0, Lj$/time/LocalDateTime;->MIN:Lj$/time/LocalDateTime;

    sget-object v1, Lj$/time/ZoneOffset;->MAX:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/LocalDateTime;->atOffset(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    sput-object v0, Lj$/time/OffsetDateTime;->MIN:Lj$/time/OffsetDateTime;

    .line 146
    sget-object v0, Lj$/time/LocalDateTime;->MAX:Lj$/time/LocalDateTime;

    sget-object v1, Lj$/time/ZoneOffset;->MIN:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/LocalDateTime;->atOffset(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    sput-object v0, Lj$/time/OffsetDateTime;->MAX:Lj$/time/OffsetDateTime;

    return-void
.end method

.method private constructor <init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V
    .locals 1
    .param p1, "dateTime"    # Lj$/time/LocalDateTime;
    .param p2, "offset"    # Lj$/time/ZoneOffset;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    const-string v0, "dateTime"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDateTime;

    iput-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    .line 414
    const-string v0, "offset"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneOffset;

    iput-object v0, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    .line 415
    return-void
.end method

.method private static compareInstant(Lj$/time/OffsetDateTime;Lj$/time/OffsetDateTime;)I
    .locals 4
    .param p0, "datetime1"    # Lj$/time/OffsetDateTime;
    .param p1, "datetime2"    # Lj$/time/OffsetDateTime;

    .line 174
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->toLocalDateTime()Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->toLocalDateTime()Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/LocalDateTime;->compareTo(Lj$/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    return v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 178
    .local v0, "cmp":I
    if-nez v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalTime;->getNano()I

    move-result v1

    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/LocalTime;->getNano()I

    move-result v2

    sub-int v0, v1, v2

    .line 181
    :cond_1
    return v0
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/OffsetDateTime;
    .locals 5
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 355
    instance-of v0, p0, Lj$/time/OffsetDateTime;

    if-eqz v0, :cond_0

    .line 356
    move-object v0, p0

    check-cast v0, Lj$/time/OffsetDateTime;

    return-object v0

    .line 359
    :cond_0
    :try_start_0
    invoke-static {p0}, Lj$/time/ZoneOffset;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZoneOffset;

    move-result-object v0

    .line 360
    .local v0, "offset":Lj$/time/ZoneOffset;
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localDate()Lj$/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p0, v1}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/LocalDate;

    .line 361
    .local v1, "date":Lj$/time/LocalDate;
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localTime()Lj$/time/temporal/TemporalQuery;

    move-result-object v2

    invoke-interface {p0, v2}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/LocalTime;

    .line 362
    .local v2, "time":Lj$/time/LocalTime;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 363
    invoke-static {v1, v2, v0}, Lj$/time/OffsetDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v3

    return-object v3

    .line 365
    :cond_1
    invoke-static {p0}, Lj$/time/Instant;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    move-result-object v3

    .line 366
    .local v3, "instant":Lj$/time/Instant;
    invoke-static {v3, v0}, Lj$/time/OffsetDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object v4
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 368
    .end local v0    # "offset":Lj$/time/ZoneOffset;
    .end local v1    # "date":Lj$/time/LocalDate;
    .end local v2    # "time":Lj$/time/LocalTime;
    .end local v3    # "instant":Lj$/time/Instant;
    :catch_0
    move-exception v0

    .line 369
    .local v0, "ex":Lj$/time/DateTimeException;
    new-instance v1, Lj$/time/DateTimeException;

    .line 370
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain OffsetDateTime from TemporalAccessor: "

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

.method public static now()Lj$/time/OffsetDateTime;
    .locals 1

    .line 212
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/OffsetDateTime;->now(Lj$/time/Clock;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lj$/time/Clock;)Lj$/time/OffsetDateTime;
    .locals 2
    .param p0, "clock"    # Lj$/time/Clock;

    .line 245
    const-string v0, "clock"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 246
    invoke-virtual {p0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    .line 247
    .local v0, "now":Lj$/time/Instant;
    invoke-virtual {p0}, Lj$/time/Clock;->getZone()Lj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/OffsetDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object v1

    return-object v1
.end method

.method public static now(Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;
    .locals 1
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 229
    invoke-static {p0}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/OffsetDateTime;->now(Lj$/time/Clock;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIIIIILj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "nanoOfSecond"    # I
    .param p7, "offset"    # Lj$/time/ZoneOffset;

    .line 306
    invoke-static/range {p0 .. p6}, Lj$/time/LocalDateTime;->of(IIIIIII)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 307
    .local v0, "dt":Lj$/time/LocalDateTime;
    new-instance v1, Lj$/time/OffsetDateTime;

    invoke-direct {v1, v0, p7}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V

    return-object v1
.end method

.method public static of(Lj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;
    .locals 2
    .param p0, "date"    # Lj$/time/LocalDate;
    .param p1, "time"    # Lj$/time/LocalTime;
    .param p2, "offset"    # Lj$/time/ZoneOffset;

    .line 262
    invoke-static {p0, p1}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 263
    .local v0, "dt":Lj$/time/LocalDateTime;
    new-instance v1, Lj$/time/OffsetDateTime;

    invoke-direct {v1, v0, p2}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V

    return-object v1
.end method

.method public static of(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;
    .locals 1
    .param p0, "dateTime"    # Lj$/time/LocalDateTime;
    .param p1, "offset"    # Lj$/time/ZoneOffset;

    .line 276
    new-instance v0, Lj$/time/OffsetDateTime;

    invoke-direct {v0, p0, p1}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V

    return-object v0
.end method

.method public static ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;
    .locals 5
    .param p0, "instant"    # Lj$/time/Instant;
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 324
    const-string v0, "instant"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 325
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 326
    invoke-virtual {p1}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    .line 327
    .local v0, "rules":Lj$/time/zone/ZoneRules;
    invoke-virtual {v0, p0}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 328
    .local v1, "offset":Lj$/time/ZoneOffset;
    invoke-virtual {p0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {p0}, Lj$/time/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Lj$/time/LocalDateTime;->ofEpochSecond(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v2

    .line 329
    .local v2, "ldt":Lj$/time/LocalDateTime;
    new-instance v3, Lj$/time/OffsetDateTime;

    invoke-direct {v3, v2, v1}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V

    return-object v3
.end method

.method public static parse(Ljava/lang/CharSequence;)Lj$/time/OffsetDateTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 387
    sget-object v0, Lj$/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lj$/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/OffsetDateTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 401
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 402
    new-instance v0, Lj$/time/OffsetDateTime$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lj$/time/OffsetDateTime$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p0, v0}, Lj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/OffsetDateTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/ObjectInput;)Lj$/time/OffsetDateTime;
    .locals 3
    .param p0, "in"    # Ljava/io/ObjectInput;

    .line 1948
    invoke-static {p0}, Lj$/time/LocalDateTime;->readExternal(Ljava/io/DataInput;)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 1949
    .local v0, "dateTime":Lj$/time/LocalDateTime;
    invoke-static {p0}, Lj$/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 1950
    .local v1, "offset":Lj$/time/ZoneOffset;
    invoke-static {v0, v1}, Lj$/time/OffsetDateTime;->of(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v2

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 1939
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lj$/time/OffsetDateTime;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Lj$/time/OffsetDateTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/time/OffsetDateTime$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method private with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;
    .locals 1
    .param p1, "dateTime"    # Lj$/time/LocalDateTime;
    .param p2, "offset"    # Lj$/time/ZoneOffset;

    .line 424
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v0, p2}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    return-object p0

    .line 427
    :cond_0
    new-instance v0, Lj$/time/OffsetDateTime;

    invoke-direct {v0, p1, p2}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1929
    new-instance v0, Lj$/time/Ser;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 4
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 1595
    sget-object v0, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    .line 1596
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->NANO_OF_DAY:Lj$/time/temporal/ChronoField;

    .line 1597
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    .line 1598
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    .line 1595
    return-object v0
.end method

.method public atZoneSameInstant(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 2
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 1694
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-static {v0, v1, p1}, Lj$/time/ZonedDateTime;->ofInstant(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atZoneSimilarLocal(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 2
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 1722
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-static {v0, p1, v1}, Lj$/time/ZonedDateTime;->ofLocal(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lj$/time/OffsetDateTime;)I
    .locals 3
    .param p1, "other"    # Lj$/time/OffsetDateTime;

    .line 1803
    invoke-static {p0, p1}, Lj$/time/OffsetDateTime;->compareInstant(Lj$/time/OffsetDateTime;Lj$/time/OffsetDateTime;)I

    move-result v0

    .line 1804
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 1805
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->toLocalDateTime()Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->toLocalDateTime()Lj$/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/time/LocalDateTime;->compareTo(Lj$/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    .line 1807
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 128
    check-cast p1, Lj$/time/OffsetDateTime;

    invoke-virtual {p0, p1}, Lj$/time/OffsetDateTime;->compareTo(Lj$/time/OffsetDateTime;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1873
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1874
    return v0

    .line 1876
    :cond_0
    instance-of v1, p1, Lj$/time/OffsetDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1877
    move-object v1, p1

    check-cast v1, Lj$/time/OffsetDateTime;

    .line 1878
    .local v1, "other":Lj$/time/OffsetDateTime;
    iget-object v3, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v4, v1, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v3, v4}, Lj$/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    iget-object v4, v1, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v3, v4}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1880
    .end local v1    # "other":Lj$/time/OffsetDateTime;
    :cond_2
    return v2
.end method

.method public format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 1673
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1674
    invoke-virtual {p1, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lj$/time/temporal/TemporalField;)I
    .locals 2
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 597
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 598
    sget-object v0, Lj$/time/OffsetDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 604
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 602
    :pswitch_0
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    return v0

    .line 600
    :pswitch_1
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$get(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 782
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Lj$/time/DayOfWeek;
    .locals 1

    .line 810
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .line 793
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 832
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .locals 2
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 634
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 635
    sget-object v0, Lj$/time/OffsetDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 639
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 637
    :pswitch_0
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 636
    :pswitch_1
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    return-wide v0

    .line 641
    :cond_0
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMinute()I
    .locals 1

    .line 841
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Lj$/time/Month;
    .locals 1

    .line 771
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getMonth()Lj$/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .line 756
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    .line 859
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Lj$/time/ZoneOffset;
    .locals 1

    .line 653
    iget-object v0, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    .line 850
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 742
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->getYear()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1890
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lj$/time/OffsetDateTime;)Z
    .locals 6
    .param p1, "other"    # Lj$/time/OffsetDateTime;

    .line 1822
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 1823
    .local v0, "thisEpochSec":J
    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    .line 1824
    .local v2, "otherEpochSec":J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1825
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/LocalTime;->getNano()I

    move-result v4

    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v5

    invoke-virtual {v5}, Lj$/time/LocalTime;->getNano()I

    move-result v5

    if-le v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 1824
    :goto_1
    return v4
.end method

.method public isBefore(Lj$/time/OffsetDateTime;)Z
    .locals 6
    .param p1, "other"    # Lj$/time/OffsetDateTime;

    .line 1839
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 1840
    .local v0, "thisEpochSec":J
    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    .line 1841
    .local v2, "otherEpochSec":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1842
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/LocalTime;->getNano()I

    move-result v4

    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v5

    invoke-virtual {v5}, Lj$/time/LocalTime;->getNano()I

    move-result v5

    if-ge v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 1841
    :goto_1
    return v4
.end method

.method public isEqual(Lj$/time/OffsetDateTime;)Z
    .locals 5
    .param p1, "other"    # Lj$/time/OffsetDateTime;

    .line 1856
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1857
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalTime;->getNano()I

    move-result v0

    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalTime;->getNano()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1856
    :goto_0
    return v0
.end method

.method public isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 485
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSupported(Lj$/time/temporal/TemporalUnit;)Z
    .locals 3
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 526
    instance-of v0, p1, Lj$/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 527
    sget-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 529
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalUnit;->isSupportedBy(Lj$/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/OffsetDateTime;
    .locals 3
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1381
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/OffsetDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Lj$/time/OffsetDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/OffsetDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/OffsetDateTime;
    .locals 1
    .param p1, "amountToSubtract"    # Lj$/time/temporal/TemporalAmount;

    .line 1357
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/OffsetDateTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 128
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/OffsetDateTime;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lj$/time/OffsetDateTime;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Lj$/time/OffsetDateTime;
    .locals 3
    .param p1, "days"    # J

    .line 1468
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/OffsetDateTime;->plusDays(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/OffsetDateTime;->plusDays(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/OffsetDateTime;->plusDays(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusHours(J)Lj$/time/OffsetDateTime;
    .locals 3
    .param p1, "hours"    # J

    .line 1481
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/OffsetDateTime;->plusHours(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/OffsetDateTime;->plusHours(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/OffsetDateTime;->plusHours(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusMinutes(J)Lj$/time/OffsetDateTime;
    .locals 3
    .param p1, "minutes"    # J

    .line 1494
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/OffsetDateTime;->plusMinutes(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/OffsetDateTime;->plusMinutes(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/OffsetDateTime;->plusMinutes(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusMonths(J)Lj$/time/OffsetDateTime;
    .locals 3
    .param p1, "months"    # J

    .line 1430
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/OffsetDateTime;->plusMonths(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/OffsetDateTime;->plusMonths(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/OffsetDateTime;->plusMonths(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusNanos(J)Lj$/time/OffsetDateTime;
    .locals 3
    .param p1, "nanos"    # J

    .line 1520
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/OffsetDateTime;->plusNanos(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/OffsetDateTime;->plusNanos(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/OffsetDateTime;->plusNanos(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusSeconds(J)Lj$/time/OffsetDateTime;
    .locals 3
    .param p1, "seconds"    # J

    .line 1507
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/OffsetDateTime;->plusSeconds(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/OffsetDateTime;->plusSeconds(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/OffsetDateTime;->plusSeconds(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusWeeks(J)Lj$/time/OffsetDateTime;
    .locals 3
    .param p1, "weeks"    # J

    .line 1449
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/OffsetDateTime;->plusWeeks(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/OffsetDateTime;->plusWeeks(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/OffsetDateTime;->plusWeeks(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusYears(J)Lj$/time/OffsetDateTime;
    .locals 3
    .param p1, "years"    # J

    .line 1406
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/OffsetDateTime;->plusYears(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/OffsetDateTime;->plusYears(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/OffsetDateTime;->plusYears(J)Lj$/time/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1189
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/LocalDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0

    .line 1192
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->addTo(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/OffsetDateTime;

    return-object v0
.end method

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/OffsetDateTime;
    .locals 1
    .param p1, "amountToAdd"    # Lj$/time/temporal/TemporalAmount;

    .line 1159
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/OffsetDateTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 128
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/OffsetDateTime;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lj$/time/OffsetDateTime;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "days"    # J

    .line 1279
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->plusDays(J)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "hours"    # J

    .line 1292
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->plusHours(J)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "minutes"    # J

    .line 1305
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->plusMinutes(J)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "months"    # J

    .line 1241
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->plusMonths(J)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "nanos"    # J

    .line 1331
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->plusNanos(J)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "seconds"    # J

    .line 1318
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->plusSeconds(J)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusWeeks(J)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "weeks"    # J

    .line 1260
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->plusWeeks(J)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "years"    # J

    .line 1217
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDateTime;->plusYears(J)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1545
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->offset()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_6

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zone()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1547
    :cond_0
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zoneId()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1548
    const/4 v0, 0x0

    return-object v0

    .line 1549
    :cond_1
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localDate()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 1550
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 1551
    :cond_2
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localTime()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 1552
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 1553
    :cond_3
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 1554
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    return-object v0

    .line 1555
    :cond_4
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->precision()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 1556
    sget-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    return-object v0

    .line 1560
    :cond_5
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalQuery;->queryFrom(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1546
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 558
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 559
    sget-object v0, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 560
    :cond_1
    :goto_0
    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 564
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toEpochSecond()J
    .locals 2

    .line 1774
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/LocalDateTime;->toEpochSecond(Lj$/time/ZoneOffset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toInstant()Lj$/time/Instant;
    .locals 2

    .line 1761
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/LocalDateTime;->toInstant(Lj$/time/ZoneOffset;)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDate()Lj$/time/LocalDate;
    .locals 1

    .line 728
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Lj$/time/LocalDateTime;
    .locals 1

    .line 715
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public toLocalTime()Lj$/time/LocalTime;
    .locals 1

    .line 823
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public toOffsetTime()Lj$/time/OffsetTime;
    .locals 2

    .line 1734
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-static {v0, v1}, Lj$/time/OffsetTime;->of(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1912
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

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

.method public toZonedDateTime()Lj$/time/ZonedDateTime;
    .locals 2

    .line 1749
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-static {v0, v1}, Lj$/time/ZonedDateTime;->of(Lj$/time/LocalDateTime;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lj$/time/temporal/TemporalUnit;)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1133
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->truncatedTo(Lj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 3
    .param p1, "endExclusive"    # Lj$/time/temporal/Temporal;
    .param p2, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1655
    invoke-static {p1}, Lj$/time/OffsetDateTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/OffsetDateTime;

    move-result-object v0

    .line 1656
    .local v0, "end":Lj$/time/OffsetDateTime;
    instance-of v1, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 1657
    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/OffsetDateTime;->withOffsetSameInstant(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    .line 1658
    iget-object v1, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v2, v0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v1, v2, p2}, Lj$/time/LocalDateTime;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v1

    return-wide v1

    .line 1660
    :cond_0
    invoke-interface {p2, p0, v0}, Lj$/time/temporal/TemporalUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1
.end method

.method public with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;

    .line 910
    instance-of v0, p1, Lj$/time/LocalDate;

    if-nez v0, :cond_4

    instance-of v0, p1, Lj$/time/LocalTime;

    if-nez v0, :cond_4

    instance-of v0, p1, Lj$/time/LocalDateTime;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 912
    :cond_0
    instance-of v0, p1, Lj$/time/Instant;

    if-eqz v0, :cond_1

    .line 913
    move-object v0, p1

    check-cast v0, Lj$/time/Instant;

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-static {v0, v1}, Lj$/time/OffsetDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0

    .line 914
    :cond_1
    instance-of v0, p1, Lj$/time/ZoneOffset;

    if-eqz v0, :cond_2

    .line 915
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    move-object v1, p1

    check-cast v1, Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0

    .line 916
    :cond_2
    instance-of v0, p1, Lj$/time/OffsetDateTime;

    if-eqz v0, :cond_3

    .line 917
    move-object v0, p1

    check-cast v0, Lj$/time/OffsetDateTime;

    return-object v0

    .line 919
    :cond_3
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAdjuster;->adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/OffsetDateTime;

    return-object v0

    .line 911
    :cond_4
    :goto_0
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public with(Lj$/time/temporal/TemporalField;J)Lj$/time/OffsetDateTime;
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 968
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 969
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 970
    .local v0, "f":Lj$/time/temporal/ChronoField;
    sget-object v1, Lj$/time/OffsetDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 976
    iget-object v1, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v1, p1, p2, p3}, Lj$/time/LocalDateTime;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalDateTime;

    move-result-object v1

    iget-object v2, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v1, v2}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v1

    return-object v1

    .line 973
    :pswitch_0
    iget-object v1, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p2, p3}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    invoke-static {v2}, Lj$/time/ZoneOffset;->ofTotalSeconds(I)Lj$/time/ZoneOffset;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v1

    return-object v1

    .line 971
    :pswitch_1
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->getNano()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v1

    iget-object v2, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-static {v1, v2}, Lj$/time/OffsetDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object v1

    return-object v1

    .line 978
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_0
    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/TemporalField;->adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/OffsetDateTime;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lj$/time/OffsetDateTime;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0

    .line 128
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/OffsetDateTime;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfMonth(I)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "dayOfMonth"    # I

    .line 1028
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->withDayOfMonth(I)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "dayOfYear"    # I

    .line 1045
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->withDayOfYear(I)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withHour(I)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "hour"    # I

    .line 1061
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->withHour(I)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "minute"    # I

    .line 1076
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->withMinute(I)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMonth(I)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "month"    # I

    .line 1011
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->withMonth(I)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "nanoOfSecond"    # I

    .line 1106
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->withNano(I)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withOffsetSameInstant(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;
    .locals 4
    .param p1, "offset"    # Lj$/time/ZoneOffset;

    .line 697
    iget-object v0, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {p1, v0}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    return-object p0

    .line 700
    :cond_0
    invoke-virtual {p1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    .line 701
    .local v0, "difference":I
    iget-object v1, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lj$/time/LocalDateTime;->plusSeconds(J)Lj$/time/LocalDateTime;

    move-result-object v1

    .line 702
    .local v1, "adjusted":Lj$/time/LocalDateTime;
    new-instance v2, Lj$/time/OffsetDateTime;

    invoke-direct {v2, v1, p1}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V

    return-object v2
.end method

.method public withOffsetSameLocal(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;
    .locals 1
    .param p1, "offset"    # Lj$/time/ZoneOffset;

    .line 674
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-direct {p0, v0, p1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withSecond(I)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "second"    # I

    .line 1091
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->withSecond(I)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Lj$/time/OffsetDateTime;
    .locals 2
    .param p1, "year"    # I

    .line 995
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->withYear(I)Lj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lj$/time/OffsetDateTime;->with(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;

    .line 1943
    iget-object v0, p0, Lj$/time/OffsetDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 1944
    iget-object v0, p0, Lj$/time/OffsetDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 1945
    return-void
.end method
