.class public final Lj$/time/Instant;
.super Ljava/lang/Object;
.source "Instant.java"

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
        "Lj$/time/Instant;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final EPOCH:Lj$/time/Instant;

.field public static final MAX:Lj$/time/Instant;

.field private static final MAX_SECOND:J = 0x701cd2fa9578ffL

.field public static final MIN:Lj$/time/Instant;

.field private static final MIN_SECOND:J = -0x701cefeb9bec00L

.field private static final serialVersionUID:J = -0x93d170fdcc5dce4L


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 213
    new-instance v0, Lj$/time/Instant;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lj$/time/Instant;-><init>(JI)V

    sput-object v0, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    .line 232
    const-wide v0, -0x701cefeb9bec00L

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v0

    sput-object v0, Lj$/time/Instant;->MIN:Lj$/time/Instant;

    .line 243
    const-wide v0, 0x701cd2fa9578ffL

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v0

    sput-object v0, Lj$/time/Instant;->MAX:Lj$/time/Instant;

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 0
    .param p1, "epochSecond"    # J
    .param p3, "nanos"    # I

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-wide p1, p0, Lj$/time/Instant;->seconds:J

    .line 426
    iput p3, p0, Lj$/time/Instant;->nanos:I

    .line 427
    return-void
.end method

.method private static create(JI)Lj$/time/Instant;
    .locals 5
    .param p0, "seconds"    # J
    .param p2, "nanoOfSecond"    # I

    .line 407
    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 408
    sget-object v0, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    return-object v0

    .line 410
    :cond_0
    const-wide v0, -0x701cefeb9bec00L

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    .line 413
    new-instance v0, Lj$/time/Instant;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/Instant;-><init>(JI)V

    return-object v0

    .line 411
    :cond_1
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "Instant exceeds minimum or maximum instant"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;
    .locals 5
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 368
    instance-of v0, p0, Lj$/time/Instant;

    if-eqz v0, :cond_0

    .line 369
    move-object v0, p0

    check-cast v0, Lj$/time/Instant;

    return-object v0

    .line 371
    :cond_0
    const-string v0, "temporal"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 373
    :try_start_0
    sget-object v0, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    .line 374
    .local v0, "instantSecs":J
    sget-object v2, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    invoke-interface {p0, v2}, Lj$/time/temporal/TemporalAccessor;->get(Lj$/time/temporal/TemporalField;)I

    move-result v2

    .line 375
    .local v2, "nanoOfSecond":I
    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v3
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 376
    .end local v0    # "instantSecs":J
    .end local v2    # "nanoOfSecond":I
    :catch_0
    move-exception v0

    .line 377
    .local v0, "ex":Lj$/time/DateTimeException;
    new-instance v1, Lj$/time/DateTimeException;

    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain Instant from TemporalAccessor: "

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

.method private nanosUntil(Lj$/time/Instant;)J
    .locals 6
    .param p1, "end"    # Lj$/time/Instant;

    .line 1163
    iget-wide v0, p1, Lj$/time/Instant;->seconds:J

    iget-wide v2, p0, Lj$/time/Instant;->seconds:J

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v0

    .line 1164
    .local v0, "secsDiff":J
    const-wide/32 v2, 0x3b9aca00

    invoke-static {v0, v1, v2, v3}, Lj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v2

    .line 1165
    .local v2, "totalNanos":J
    iget v4, p1, Lj$/time/Instant;->nanos:I

    iget v5, p0, Lj$/time/Instant;->nanos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public static now()Lj$/time/Instant;
    .locals 1

    .line 273
    invoke-static {}, Lj$/time/Clock;->systemUTC()Lj$/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lj$/time/Clock;)Lj$/time/Instant;
    .locals 1
    .param p0, "clock"    # Lj$/time/Clock;

    .line 288
    const-string v0, "clock"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 289
    invoke-virtual {p0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static ofEpochMilli(J)Lj$/time/Instant;
    .locals 4
    .param p0, "epochMilli"    # J

    .line 344
    const/16 v0, 0x3e8

    invoke-static {p0, p1, v0}, Lj$/time/Instant$$ExternalSyntheticBackport7;->m(JI)J

    move-result-wide v1

    .line 345
    .local v1, "secs":J
    invoke-static {p0, p1, v0}, Lj$/time/Instant$$ExternalSyntheticBackport8;->m(JI)I

    move-result v0

    .line 346
    .local v0, "mos":I
    const v3, 0xf4240

    mul-int v3, v3, v0

    invoke-static {v1, v2, v3}, Lj$/time/Instant;->create(JI)Lj$/time/Instant;

    move-result-object v3

    return-object v3
.end method

.method public static ofEpochSecond(J)Lj$/time/Instant;
    .locals 1
    .param p0, "epochSecond"    # J

    .line 304
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lj$/time/Instant;->create(JI)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static ofEpochSecond(JJ)Lj$/time/Instant;
    .locals 4
    .param p0, "epochSecond"    # J
    .param p2, "nanoAdjustment"    # J

    .line 328
    const-wide/32 v0, 0x3b9aca00

    invoke-static {p2, p3, v0, v1}, Lj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    .line 329
    .local v2, "secs":J
    invoke-static {p2, p3, v0, v1}, Lj$/time/Clock$TickClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 330
    .local v1, "nos":I
    invoke-static {v2, v3, v1}, Lj$/time/Instant;->create(JI)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lj$/time/Instant;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 395
    sget-object v0, Lj$/time/format/DateTimeFormatter;->ISO_INSTANT:Lj$/time/format/DateTimeFormatter;

    new-instance v1, Lj$/time/Instant$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lj$/time/Instant$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, p0, v1}, Lj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/Instant;

    return-object v0
.end method

.method private plus(JJ)Lj$/time/Instant;
    .locals 6
    .param p1, "secondsToAdd"    # J
    .param p3, "nanosToAdd"    # J

    .line 922
    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 923
    return-object p0

    .line 925
    :cond_0
    iget-wide v0, p0, Lj$/time/Instant;->seconds:J

    invoke-static {v0, v1, p1, p2}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    .line 926
    .local v0, "epochSec":J
    const-wide/32 v2, 0x3b9aca00

    div-long v4, p3, v2

    invoke-static {v0, v1, v4, v5}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    .line 927
    rem-long/2addr p3, v2

    .line 928
    iget v2, p0, Lj$/time/Instant;->nanos:I

    int-to-long v2, v2

    add-long/2addr v2, p3

    .line 929
    .local v2, "nanoAdjustment":J
    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v4

    return-object v4
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/Instant;
    .locals 5
    .param p0, "in"    # Ljava/io/DataInput;

    .line 1366
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 1367
    .local v0, "seconds":J
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 1368
    .local v2, "nanos":I
    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 1357
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private secondsUntil(Lj$/time/Instant;)J
    .locals 9
    .param p1, "end"    # Lj$/time/Instant;

    .line 1169
    iget-wide v0, p1, Lj$/time/Instant;->seconds:J

    iget-wide v2, p0, Lj$/time/Instant;->seconds:J

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v0

    .line 1170
    .local v0, "secsDiff":J
    iget v2, p1, Lj$/time/Instant;->nanos:I

    iget v3, p0, Lj$/time/Instant;->nanos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 1171
    .local v2, "nanosDiff":J
    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    .line 1172
    sub-long/2addr v0, v4

    goto :goto_0

    .line 1173
    :cond_0
    cmp-long v8, v0, v6

    if-gez v8, :cond_1

    cmp-long v8, v2, v6

    if-lez v8, :cond_1

    .line 1174
    add-long/2addr v0, v4

    .line 1176
    :cond_1
    :goto_0
    return-wide v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1347
    new-instance v0, Lj$/time/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 4
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 1095
    sget-object v0, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    iget-wide v1, p0, Lj$/time/Instant;->seconds:J

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    iget v2, p0, Lj$/time/Instant;->nanos:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atOffset(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;
    .locals 1
    .param p1, "offset"    # Lj$/time/ZoneOffset;

    .line 1195
    invoke-static {p0, p1}, Lj$/time/OffsetDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 1
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 1213
    invoke-static {p0, p1}, Lj$/time/ZonedDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lj$/time/Instant;)I
    .locals 4
    .param p1, "otherInstant"    # Lj$/time/Instant;

    .line 1255
    iget-wide v0, p0, Lj$/time/Instant;->seconds:J

    iget-wide v2, p1, Lj$/time/Instant;->seconds:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 1256
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 1257
    return v0

    .line 1259
    :cond_0
    iget v1, p0, Lj$/time/Instant;->nanos:I

    iget v2, p1, Lj$/time/Instant;->nanos:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 207
    check-cast p1, Lj$/time/Instant;

    invoke-virtual {p0, p1}, Lj$/time/Instant;->compareTo(Lj$/time/Instant;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "otherInstant"    # Ljava/lang/Object;

    .line 1299
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1300
    return v0

    .line 1302
    :cond_0
    instance-of v1, p1, Lj$/time/Instant;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1303
    move-object v1, p1

    check-cast v1, Lj$/time/Instant;

    .line 1304
    .local v1, "other":Lj$/time/Instant;
    iget-wide v3, p0, Lj$/time/Instant;->seconds:J

    iget-wide v5, v1, Lj$/time/Instant;->seconds:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    iget v3, p0, Lj$/time/Instant;->nanos:I

    iget v4, v1, Lj$/time/Instant;->nanos:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1307
    .end local v1    # "other":Lj$/time/Instant;
    :cond_2
    return v2
.end method

.method public get(Lj$/time/temporal/TemporalField;)I
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 559
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 560
    sget-object v0, Lj$/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 564
    :pswitch_0
    sget-object v0, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    iget-wide v1, p0, Lj$/time/Instant;->seconds:J

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    goto :goto_0

    .line 563
    :pswitch_1
    iget v0, p0, Lj$/time/Instant;->nanos:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    return v0

    .line 562
    :pswitch_2
    iget v0, p0, Lj$/time/Instant;->nanos:I

    div-int/lit16 v0, v0, 0x3e8

    return v0

    .line 561
    :pswitch_3
    iget v0, p0, Lj$/time/Instant;->nanos:I

    return v0

    .line 566
    :goto_0
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_0
    invoke-virtual {p0, p1}, Lj$/time/Instant;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEpochSecond()J
    .locals 2

    .line 619
    iget-wide v0, p0, Lj$/time/Instant;->seconds:J

    return-wide v0
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 596
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 597
    sget-object v0, Lj$/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 603
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :pswitch_0
    iget-wide v0, p0, Lj$/time/Instant;->seconds:J

    return-wide v0

    .line 600
    :pswitch_1
    iget v0, p0, Lj$/time/Instant;->nanos:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 599
    :pswitch_2
    iget v0, p0, Lj$/time/Instant;->nanos:I

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0

    .line 598
    :pswitch_3
    iget v0, p0, Lj$/time/Instant;->nanos:I

    int-to-long v0, v0

    return-wide v0

    .line 605
    :cond_0
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNano()I
    .locals 1

    .line 632
    iget v0, p0, Lj$/time/Instant;->nanos:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1317
    iget-wide v0, p0, Lj$/time/Instant;->seconds:J

    iget-wide v2, p0, Lj$/time/Instant;->seconds:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v1, v0

    iget v0, p0, Lj$/time/Instant;->nanos:I

    mul-int/lit8 v0, v0, 0x33

    add-int/2addr v1, v0

    return v1
.end method

.method public isAfter(Lj$/time/Instant;)Z
    .locals 1
    .param p1, "otherInstant"    # Lj$/time/Instant;

    .line 1272
    invoke-virtual {p0, p1}, Lj$/time/Instant;->compareTo(Lj$/time/Instant;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBefore(Lj$/time/Instant;)Z
    .locals 1
    .param p1, "otherInstant"    # Lj$/time/Instant;

    .line 1285
    invoke-virtual {p0, p1}, Lj$/time/Instant;->compareTo(Lj$/time/Instant;)I

    move-result v0

    if-gez v0, :cond_0

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

    .line 458
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 459
    sget-object v0, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 461
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
    .locals 3
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 495
    instance-of v0, p1, Lj$/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 496
    invoke-interface {p1}, Lj$/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 498
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalUnit;->isSupportedBy(Lj$/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Instant;
    .locals 3
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 979
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/Instant;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Instant;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Lj$/time/Instant;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Instant;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lj$/time/Instant;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Instant;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Instant;
    .locals 1
    .param p1, "amountToSubtract"    # Lj$/time/temporal/TemporalAmount;

    .line 955
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/Instant;

    return-object v0
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/Instant;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 207
    invoke-virtual {p0, p1}, Lj$/time/Instant;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public minusMillis(J)Lj$/time/Instant;
    .locals 3
    .param p1, "millisToSubtract"    # J

    .line 1011
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1012
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Instant;->plusMillis(J)Lj$/time/Instant;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Instant;->plusMillis(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0

    .line 1014
    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Instant;->plusMillis(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public minusNanos(J)Lj$/time/Instant;
    .locals 3
    .param p1, "nanosToSubtract"    # J

    .line 1028
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1029
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Instant;->plusNanos(J)Lj$/time/Instant;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Instant;->plusNanos(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0

    .line 1031
    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Instant;->plusNanos(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Lj$/time/Instant;
    .locals 3
    .param p1, "secondsToSubtract"    # J

    .line 994
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 995
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Instant;->plusSeconds(J)Lj$/time/Instant;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Instant;->plusSeconds(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0

    .line 997
    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Instant;->plusSeconds(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Instant;
    .locals 6
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 851
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 852
    sget-object v0, Lj$/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v1, p3

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 862
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :pswitch_0
    const v0, 0x15180

    invoke-static {p1, p2, v0}, Lj$/time/Instant$$ExternalSyntheticBackport3;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/Instant;->plusSeconds(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0

    .line 859
    :pswitch_1
    const v0, 0xa8c0

    invoke-static {p1, p2, v0}, Lj$/time/Instant$$ExternalSyntheticBackport2;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/Instant;->plusSeconds(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0

    .line 858
    :pswitch_2
    const/16 v0, 0xe10

    invoke-static {p1, p2, v0}, Lj$/time/Instant$$ExternalSyntheticBackport1;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/Instant;->plusSeconds(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0

    .line 857
    :pswitch_3
    const/16 v0, 0x3c

    invoke-static {p1, p2, v0}, Lj$/time/Instant$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/Instant;->plusSeconds(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0

    .line 856
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lj$/time/Instant;->plusSeconds(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0

    .line 855
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lj$/time/Instant;->plusMillis(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0

    .line 854
    :pswitch_6
    const-wide/32 v0, 0xf4240

    div-long v2, p1, v0

    rem-long v0, p1, v0

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    invoke-direct {p0, v2, v3, v0, v1}, Lj$/time/Instant;->plus(JJ)Lj$/time/Instant;

    move-result-object v0

    return-object v0

    .line 853
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lj$/time/Instant;->plusNanos(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0

    .line 864
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->addTo(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/Instant;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Instant;
    .locals 1
    .param p1, "amountToAdd"    # Lj$/time/temporal/TemporalAmount;

    .line 788
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAmount;->addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/Instant;

    return-object v0
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/Instant;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 207
    invoke-virtual {p0, p1}, Lj$/time/Instant;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public plusMillis(J)Lj$/time/Instant;
    .locals 6
    .param p1, "millisToAdd"    # J

    .line 893
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    rem-long v0, p1, v0

    const-wide/32 v4, 0xf4240

    mul-long v0, v0, v4

    invoke-direct {p0, v2, v3, v0, v1}, Lj$/time/Instant;->plus(JJ)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Lj$/time/Instant;
    .locals 2
    .param p1, "nanosToAdd"    # J

    .line 907
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lj$/time/Instant;->plus(JJ)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Lj$/time/Instant;
    .locals 2
    .param p1, "secondsToAdd"    # J

    .line 879
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lj$/time/Instant;->plus(JJ)Lj$/time/Instant;

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

    .line 1056
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->precision()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1057
    sget-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    return-object v0

    .line 1060
    :cond_0
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zoneId()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 1061
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zone()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->offset()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 1062
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localDate()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localTime()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1065
    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalQuery;->queryFrom(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1063
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 527
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$range(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toEpochMilli()J
    .locals 7

    .line 1232
    iget-wide v0, p0, Lj$/time/Instant;->seconds:J

    const-wide/16 v2, 0x0

    const v4, 0xf4240

    const/16 v5, 0x3e8

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    iget v0, p0, Lj$/time/Instant;->nanos:I

    if-lez v0, :cond_0

    .line 1233
    iget-wide v0, p0, Lj$/time/Instant;->seconds:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1, v5}, Lj$/time/Instant$$ExternalSyntheticBackport4;->m(JI)J

    move-result-wide v0

    .line 1234
    .local v0, "millis":J
    iget v2, p0, Lj$/time/Instant;->nanos:I

    div-int/2addr v2, v4

    sub-int/2addr v2, v5

    int-to-long v2, v2

    .line 1235
    .local v2, "adjustment":J
    invoke-static {v0, v1, v2, v3}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    return-wide v4

    .line 1237
    .end local v0    # "millis":J
    .end local v2    # "adjustment":J
    :cond_0
    iget-wide v0, p0, Lj$/time/Instant;->seconds:J

    invoke-static {v0, v1, v5}, Lj$/time/Instant$$ExternalSyntheticBackport5;->m(JI)J

    move-result-wide v0

    .line 1238
    .restart local v0    # "millis":J
    iget v2, p0, Lj$/time/Instant;->nanos:I

    div-int/2addr v2, v4

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1330
    sget-object v0, Lj$/time/format/DateTimeFormatter;->ISO_INSTANT:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lj$/time/temporal/TemporalUnit;)Lj$/time/Instant;
    .locals 10
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 749
    sget-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    .line 750
    return-object p0

    .line 752
    :cond_0
    invoke-interface {p1}, Lj$/time/temporal/TemporalUnit;->getDuration()Lj$/time/Duration;

    move-result-object v0

    .line 753
    .local v0, "unitDur":Lj$/time/Duration;
    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v1

    const-wide/32 v3, 0x15180

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 756
    invoke-virtual {v0}, Lj$/time/Duration;->toNanos()J

    move-result-wide v1

    .line 757
    .local v1, "dur":J
    const-wide v5, 0x4e94914f0000L

    rem-long/2addr v5, v1

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    .line 760
    iget-wide v5, p0, Lj$/time/Instant;->seconds:J

    rem-long/2addr v5, v3

    const-wide/32 v3, 0x3b9aca00

    mul-long v5, v5, v3

    iget v3, p0, Lj$/time/Instant;->nanos:I

    int-to-long v3, v3

    add-long/2addr v5, v3

    .line 761
    .local v5, "nod":J
    invoke-static {v5, v6, v1, v2}, Lj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    mul-long v3, v3, v1

    .line 762
    .local v3, "result":J
    sub-long v7, v3, v5

    invoke-virtual {p0, v7, v8}, Lj$/time/Instant;->plusNanos(J)Lj$/time/Instant;

    move-result-object v7

    return-object v7

    .line 758
    .end local v3    # "result":J
    .end local v5    # "nod":J
    :cond_1
    new-instance v3, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v4, "Unit must divide into a standard day without remainder"

    invoke-direct {v3, v4}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 754
    .end local v1    # "dur":J
    :cond_2
    new-instance v1, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v2, "Unit is too large to be used for truncation"

    invoke-direct {v1, v2}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 6
    .param p1, "endExclusive"    # Lj$/time/temporal/Temporal;
    .param p2, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 1144
    invoke-static {p1}, Lj$/time/Instant;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    move-result-object v0

    .line 1145
    .local v0, "end":Lj$/time/Instant;
    instance-of v1, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 1146
    move-object v1, p2

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    .line 1147
    .local v1, "f":Lj$/time/temporal/ChronoUnit;
    sget-object v2, Lj$/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v1}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1157
    new-instance v2, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported unit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1155
    :pswitch_0
    invoke-direct {p0, v0}, Lj$/time/Instant;->secondsUntil(Lj$/time/Instant;)J

    move-result-wide v2

    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    return-wide v2

    .line 1154
    :pswitch_1
    invoke-direct {p0, v0}, Lj$/time/Instant;->secondsUntil(Lj$/time/Instant;)J

    move-result-wide v2

    const-wide/32 v4, 0xa8c0

    div-long/2addr v2, v4

    return-wide v2

    .line 1153
    :pswitch_2
    invoke-direct {p0, v0}, Lj$/time/Instant;->secondsUntil(Lj$/time/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0xe10

    div-long/2addr v2, v4

    return-wide v2

    .line 1152
    :pswitch_3
    invoke-direct {p0, v0}, Lj$/time/Instant;->secondsUntil(Lj$/time/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    return-wide v2

    .line 1151
    :pswitch_4
    invoke-direct {p0, v0}, Lj$/time/Instant;->secondsUntil(Lj$/time/Instant;)J

    move-result-wide v2

    return-wide v2

    .line 1150
    :pswitch_5
    invoke-virtual {v0}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {p0}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v2

    return-wide v2

    .line 1149
    :pswitch_6
    invoke-direct {p0, v0}, Lj$/time/Instant;->nanosUntil(Lj$/time/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2

    .line 1148
    :pswitch_7
    invoke-direct {p0, v0}, Lj$/time/Instant;->nanosUntil(Lj$/time/Instant;)J

    move-result-wide v2

    return-wide v2

    .line 1159
    .end local v1    # "f":Lj$/time/temporal/ChronoUnit;
    :cond_0
    invoke-interface {p2, p0, v0}, Lj$/time/temporal/TemporalUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/Instant;
    .locals 1
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;

    .line 656
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAdjuster;->adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/Instant;

    return-object v0
.end method

.method public with(Lj$/time/temporal/TemporalField;J)Lj$/time/Instant;
    .locals 4
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 705
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_4

    .line 706
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 707
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 708
    sget-object v1, Lj$/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 720
    new-instance v1, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 718
    :pswitch_0
    iget-wide v1, p0, Lj$/time/Instant;->seconds:J

    cmp-long v3, p2, v1

    if-eqz v3, :cond_0

    iget v1, p0, Lj$/time/Instant;->nanos:I

    invoke-static {p2, p3, v1}, Lj$/time/Instant;->create(JI)Lj$/time/Instant;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1

    .line 710
    :pswitch_1
    long-to-int v1, p2

    const v2, 0xf4240

    mul-int v1, v1, v2

    .line 711
    .local v1, "nval":I
    iget v2, p0, Lj$/time/Instant;->nanos:I

    if-eq v1, v2, :cond_1

    iget-wide v2, p0, Lj$/time/Instant;->seconds:J

    invoke-static {v2, v3, v1}, Lj$/time/Instant;->create(JI)Lj$/time/Instant;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, p0

    :goto_1
    return-object v2

    .line 714
    .end local v1    # "nval":I
    :pswitch_2
    long-to-int v1, p2

    mul-int/lit16 v1, v1, 0x3e8

    .line 715
    .restart local v1    # "nval":I
    iget v2, p0, Lj$/time/Instant;->nanos:I

    if-eq v1, v2, :cond_2

    iget-wide v2, p0, Lj$/time/Instant;->seconds:J

    invoke-static {v2, v3, v1}, Lj$/time/Instant;->create(JI)Lj$/time/Instant;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, p0

    :goto_2
    return-object v2

    .line 717
    .end local v1    # "nval":I
    :pswitch_3
    iget v1, p0, Lj$/time/Instant;->nanos:I

    int-to-long v1, v1

    cmp-long v3, p2, v1

    if-eqz v3, :cond_3

    iget-wide v1, p0, Lj$/time/Instant;->seconds:J

    long-to-int v3, p2

    invoke-static {v1, v2, v3}, Lj$/time/Instant;->create(JI)Lj$/time/Instant;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, p0

    :goto_3
    return-object v1

    .line 722
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_4
    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/TemporalField;->adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/Instant;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 207
    invoke-virtual {p0, p1}, Lj$/time/Instant;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0

    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/Instant;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 1361
    iget-wide v0, p0, Lj$/time/Instant;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1362
    iget v0, p0, Lj$/time/Instant;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1363
    return-void
.end method
