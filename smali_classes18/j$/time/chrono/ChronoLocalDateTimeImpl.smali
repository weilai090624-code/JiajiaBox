.class final Lj$/time/chrono/ChronoLocalDateTimeImpl;
.super Ljava/lang/Object;
.source "ChronoLocalDateTimeImpl.java"

# interfaces
.implements Lj$/time/chrono/ChronoLocalDateTime;
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/TemporalAdjuster;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Lj$/time/chrono/ChronoLocalDate;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/time/chrono/ChronoLocalDateTime<",
        "TD;>;",
        "Lj$/time/temporal/Temporal;",
        "Lj$/time/temporal/TemporalAdjuster;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final HOURS_PER_DAY:I = 0x18

.field static final MICROS_PER_DAY:J = 0x141dd76000L

.field static final MILLIS_PER_DAY:J = 0x5265c00L

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field static final NANOS_PER_HOUR:J = 0x34630b8a000L

.field static final NANOS_PER_MINUTE:J = 0xdf8475800L

.field static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field static final SECONDS_PER_DAY:I = 0x15180

.field static final SECONDS_PER_HOUR:I = 0xe10

.field static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final serialVersionUID:J = 0x3f3a2d24660eebe2L


# instance fields
.field private final transient date:Lj$/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final transient time:Lj$/time/LocalTime;


# direct methods
.method private constructor <init>(Lj$/time/chrono/ChronoLocalDate;Lj$/time/LocalTime;)V
    .registers 4
    .param p2, "time"    # Lj$/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lj$/time/LocalTime;",
            ")V"
        }
    .end annotation

    .line 202
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    .local p1, "date":Lj$/time/chrono/ChronoLocalDate;, "TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const-string v0, "date"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    const-string v0, "time"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    iput-object p1, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    .line 206
    iput-object p2, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    .line 207
    return-void
.end method

.method static ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 8
    .param p0, "chrono"    # Lj$/time/chrono/Chronology;
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lj$/time/chrono/ChronoLocalDate;",
            ">(",
            "Lj$/time/chrono/Chronology;",
            "Lj$/time/temporal/Temporal;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTimeImpl<",
            "TR;>;"
        }
    .end annotation

    .line 188
    move-object v0, p1

    check-cast v0, Lj$/time/chrono/ChronoLocalDateTimeImpl;

    .line 189
    .local v0, "other":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TR;>;"
    invoke-virtual {v0}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p0, v1}, Lj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 193
    return-object v0

    .line 190
    :cond_e
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-interface {p0}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-virtual {v0}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v3

    invoke-interface {v3}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Chronology mismatch, required: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", actual: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static of(Lj$/time/chrono/ChronoLocalDate;Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 3
    .param p1, "time"    # Lj$/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lj$/time/chrono/ChronoLocalDate;",
            ">(TR;",
            "Lj$/time/LocalTime;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTimeImpl<",
            "TR;>;"
        }
    .end annotation

    .line 174
    .local p0, "date":Lj$/time/chrono/ChronoLocalDate;, "TR;"
    new-instance v0, Lj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-direct {v0, p0, p1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;-><init>(Lj$/time/chrono/ChronoLocalDate;Lj$/time/LocalTime;)V

    return-object v0
.end method

.method private plusDays(J)Lj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 5
    .param p1, "days"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lj$/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 322
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, p1, p2, v1}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    iget-object v1, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->with(Lj$/time/temporal/Temporal;Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusHours(J)Lj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 13
    .param p1, "hours"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lj$/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v1, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v9}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Lj$/time/chrono/ChronoLocalDate;JJJJ)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusMinutes(J)Lj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 13
    .param p1, "minutes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lj$/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 330
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v1, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v9}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Lj$/time/chrono/ChronoLocalDate;JJJJ)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusNanos(J)Lj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 13
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lj$/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 338
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v1, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v8, p1

    invoke-direct/range {v0 .. v9}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Lj$/time/chrono/ChronoLocalDate;JJJJ)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusWithOverflow(Lj$/time/chrono/ChronoLocalDate;JJJJ)Lj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 26
    .param p2, "hours"    # J
    .param p4, "minutes"    # J
    .param p6, "seconds"    # J
    .param p8, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;JJJJ)",
            "Lj$/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 344
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    .local p1, "newDate":Lj$/time/chrono/ChronoLocalDate;, "TD;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    or-long v2, p2, p4

    or-long v2, v2, p6

    or-long v2, v2, p8

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_17

    .line 345
    iget-object v2, v0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    invoke-direct {v0, v1, v2}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->with(Lj$/time/temporal/Temporal;Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    return-object v2

    .line 347
    :cond_17
    const-wide v2, 0x4e94914f0000L

    div-long v4, p8, v2

    const-wide/32 v6, 0x15180

    div-long v8, p6, v6

    add-long/2addr v4, v8

    const-wide/16 v8, 0x5a0

    div-long v10, p4, v8

    add-long/2addr v4, v10

    const-wide/16 v10, 0x18

    div-long v12, p2, v10

    add-long/2addr v4, v12

    .line 351
    .local v4, "totDays":J
    rem-long v12, p8, v2

    rem-long v6, p6, v6

    const-wide/32 v14, 0x3b9aca00

    mul-long v6, v6, v14

    add-long/2addr v12, v6

    rem-long v6, p4, v8

    const-wide v8, 0xdf8475800L

    mul-long v6, v6, v8

    add-long/2addr v12, v6

    rem-long v6, p2, v10

    const-wide v8, 0x34630b8a000L

    mul-long v6, v6, v8

    add-long/2addr v12, v6

    .line 355
    .local v12, "totNanos":J
    iget-object v6, v0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    invoke-virtual {v6}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    .line 356
    .local v6, "curNoD":J
    add-long/2addr v12, v6

    .line 357
    invoke-static {v12, v13, v2, v3}, Lj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 358
    invoke-static {v12, v13, v2, v3}, Lj$/time/Clock$TickClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    .line 359
    .local v2, "newNoD":J
    cmp-long v8, v2, v6

    if-nez v8, :cond_63

    iget-object v8, v0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    goto :goto_67

    :cond_63
    invoke-static {v2, v3}, Lj$/time/LocalTime;->ofNanoOfDay(J)Lj$/time/LocalTime;

    move-result-object v8

    .line 360
    .local v8, "newTime":Lj$/time/LocalTime;
    :goto_67
    sget-object v9, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v4, v5, v9}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v9

    invoke-direct {v0, v9, v8}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->with(Lj$/time/temporal/Temporal;Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v9

    return-object v9
.end method

.method static readExternal(Ljava/io/ObjectInput;)Lj$/time/chrono/ChronoLocalDateTime;
    .registers 4
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "*>;"
        }
    .end annotation

    .line 432
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/ChronoLocalDate;

    .line 433
    .local v0, "date":Lj$/time/chrono/ChronoLocalDate;
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/LocalTime;

    .line 434
    .local v1, "time":Lj$/time/LocalTime;
    invoke-interface {v0, v1}, Lj$/time/chrono/ChronoLocalDate;->atTime(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 423
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private with(Lj$/time/temporal/Temporal;Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 5
    .param p1, "newDate"    # Lj$/time/temporal/Temporal;
    .param p2, "newTime"    # Lj$/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/Temporal;",
            "Lj$/time/LocalTime;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 218
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    if-ne v0, p1, :cond_9

    iget-object v0, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    if-ne v0, p2, :cond_9

    .line 219
    return-object p0

    .line 222
    :cond_9
    iget-object v0, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {v0, p1}, Lj$/time/chrono/ChronoLocalDateImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 223
    .local v0, "cd":Lj$/time/chrono/ChronoLocalDate;, "TD;"
    new-instance v1, Lj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-direct {v1, v0, p2}, Lj$/time/chrono/ChronoLocalDateTimeImpl;-><init>(Lj$/time/chrono/ChronoLocalDate;Lj$/time/LocalTime;)V

    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .line 413
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    new-instance v0, Lj$/time/chrono/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public synthetic adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$adjustInto(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public atZone(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .registers 3
    .param p1, "zone"    # Lj$/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/ZoneId;",
            ")",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 366
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Lj$/time/chrono/ChronoLocalDateTimeImpl;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Lj$/time/chrono/ChronoLocalDateTime;)I
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$compareTo(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/chrono/ChronoLocalDateTime;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$compareTo(Lj$/time/chrono/ChronoLocalDateTime;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 440
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 441
    return v0

    .line 443
    :cond_4
    instance-of v1, p1, Lj$/time/chrono/ChronoLocalDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 444
    move-object v1, p1

    check-cast v1, Lj$/time/chrono/ChronoLocalDateTime;

    invoke-virtual {p0, v1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->compareTo(Lj$/time/chrono/ChronoLocalDateTime;)I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0

    .line 446
    :cond_15
    return v2
.end method

.method public synthetic format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$format(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Lj$/time/temporal/TemporalField;)I
    .registers 5
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 258
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1b

    .line 259
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 260
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    invoke-virtual {v1, p1}, Lj$/time/LocalTime;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Lj$/time/chrono/ChronoLocalDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v1

    :goto_1a
    return v1

    .line 262
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_1b
    invoke-virtual {p0, p1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public synthetic getChronology()Lj$/time/chrono/Chronology;
    .registers 2

    invoke-static {p0}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$getChronology(Lj$/time/chrono/ChronoLocalDateTime;)Lj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 267
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1b

    .line 268
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 269
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    invoke-virtual {v1, p1}, Lj$/time/LocalTime;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Lj$/time/chrono/ChronoLocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    :goto_1a
    return-wide v1

    .line 271
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_1b
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 451
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalTime;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public synthetic isAfter(Lj$/time/chrono/ChronoLocalDateTime;)Z
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$isAfter(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    return p1
.end method

.method public synthetic isBefore(Lj$/time/chrono/ChronoLocalDateTime;)Z
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$isBefore(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    return p1
.end method

.method public synthetic isEqual(Lj$/time/chrono/ChronoLocalDateTime;)Z
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$isEqual(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    return p1
.end method

.method public isSupported(Lj$/time/temporal/TemporalField;)Z
    .registers 6
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 240
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    .line 241
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 242
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->isDateBased()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :cond_17
    :goto_17
    return v1

    .line 244
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_18
    if-eqz p1, :cond_21

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method public synthetic isSupported(Lj$/time/temporal/TemporalUnit;)Z
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$isSupported(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalUnit;)Z

    move-result p1

    return p1
.end method

.method public synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDateTime;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$minus(Lj$/time/chrono/ChronoLocalDateTime;JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDateTime;
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$minus(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$minus(Lj$/time/chrono/ChronoLocalDateTime;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$minus(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDateTime;
    .registers 4

    .line 100
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDateTime;
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$plus(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 10
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lj$/time/temporal/TemporalUnit;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 305
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_71

    .line 306
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/ChronoUnit;

    .line 307
    .local v0, "f":Lj$/time/temporal/ChronoUnit;
    sget-object v1, Lj$/time/chrono/ChronoLocalDateTimeImpl$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_80

    .line 316
    iget-object v1, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    iget-object v2, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v1, v2}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->with(Lj$/time/temporal/Temporal;Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 314
    :pswitch_1f
    const-wide/16 v1, 0x100

    div-long v3, p1, v1

    invoke-direct {p0, v3, v4}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/16 v4, 0xc

    mul-long v1, v1, v4

    invoke-direct {v3, v1, v2}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plusHours(J)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 313
    :pswitch_32
    invoke-direct {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plusHours(J)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 312
    :pswitch_37
    invoke-direct {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plusMinutes(J)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 311
    :pswitch_3c
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plusSeconds(J)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 310
    :pswitch_41
    const-wide/32 v1, 0x5265c00

    div-long v3, p1, v1

    invoke-direct {p0, v3, v4}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/32 v4, 0xf4240

    mul-long v1, v1, v4

    invoke-direct {v3, v1, v2}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 309
    :pswitch_56
    const-wide v1, 0x141dd76000L

    div-long v3, p1, v1

    invoke-direct {p0, v3, v4}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/16 v4, 0x3e8

    mul-long v1, v1, v4

    invoke-direct {v3, v1, v2}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 308
    :pswitch_6c
    invoke-direct {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 318
    .end local v0    # "f":Lj$/time/temporal/ChronoUnit;
    :cond_71
    iget-object v0, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->addTo(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_56
        :pswitch_41
        :pswitch_3c
        :pswitch_37
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .registers 4

    .line 100
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$plus(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method plusSeconds(J)Lj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 13
    .param p1, "seconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lj$/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v1, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v9}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Lj$/time/chrono/ChronoLocalDate;JJJJ)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$query(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .registers 4
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 249
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1b

    .line 250
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 251
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    invoke-virtual {v1, p1}, Lj$/time/LocalTime;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Lj$/time/chrono/ChronoLocalDate;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    :goto_1a
    return-object v1

    .line 253
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_1b
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toEpochSecond(Lj$/time/ZoneOffset;)J
    .registers 4

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$toEpochSecond(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/ZoneOffset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic toInstant(Lj$/time/ZoneOffset;)Lj$/time/Instant;
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoLocalDateTime$-CC;->$default$toInstant(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/ZoneOffset;)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public toLocalDate()Lj$/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 229
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    return-object v0
.end method

.method public toLocalTime()Lj$/time/LocalTime;
    .registers 2

    .line 234
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 456
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "T"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .registers 8
    .param p1, "endExclusive"    # Lj$/time/temporal/Temporal;
    .param p2, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 372
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const-string v0, "endExclusive"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 374
    invoke-virtual {p0}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/Chronology;->localDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    .line 375
    .local v0, "end":Lj$/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    instance-of v1, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_9a

    .line 376
    invoke-interface {p2}, Lj$/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 377
    sget-object v1, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Lj$/time/chrono/ChronoLocalDateTime;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    iget-object v3, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    sget-object v4, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Lj$/time/chrono/ChronoLocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 378
    .local v1, "amount":J
    sget-object v3, Lj$/time/chrono/ChronoLocalDateTimeImpl$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v4, p2

    check-cast v4, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_a4

    goto :goto_6c

    .line 385
    :pswitch_35
    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lj$/time/chrono/ChronoLocalDateTimeImpl$$ExternalSyntheticBackport3;->m(JI)J

    move-result-wide v1

    goto :goto_6c

    .line 384
    :pswitch_3b
    const/16 v3, 0x18

    invoke-static {v1, v2, v3}, Lj$/time/chrono/ChronoLocalDateTimeImpl$$ExternalSyntheticBackport2;->m(JI)J

    move-result-wide v1

    goto :goto_6c

    .line 383
    :pswitch_42
    const/16 v3, 0x5a0

    invoke-static {v1, v2, v3}, Lj$/time/chrono/ChronoLocalDateTimeImpl$$ExternalSyntheticBackport1;->m(JI)J

    move-result-wide v1

    goto :goto_6c

    .line 382
    :pswitch_49
    const v3, 0x15180

    invoke-static {v1, v2, v3}, Lj$/time/chrono/ChronoLocalDateTimeImpl$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v1

    goto :goto_6c

    .line 381
    :pswitch_51
    const-wide/32 v3, 0x5265c00

    invoke-static {v1, v2, v3, v4}, Lj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v1

    goto :goto_6c

    .line 380
    :pswitch_59
    const-wide v3, 0x141dd76000L

    invoke-static {v1, v2, v3, v4}, Lj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v1

    goto :goto_6c

    .line 379
    :pswitch_63
    const-wide v3, 0x4e94914f0000L

    invoke-static {v1, v2, v3, v4}, Lj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v1

    .line 387
    :goto_6c
    iget-object v3, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lj$/time/LocalTime;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    return-wide v3

    .line 389
    .end local v1    # "amount":J
    :cond_7b
    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    .line 390
    .local v1, "endDate":Lj$/time/chrono/ChronoLocalDate;
    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v2

    iget-object v3, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    invoke-virtual {v2, v3}, Lj$/time/LocalTime;->isBefore(Lj$/time/LocalTime;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 391
    const-wide/16 v2, 0x1

    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v2, v3, v4}, Lj$/time/chrono/ChronoLocalDate;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    .line 393
    :cond_93
    iget-object v2, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {v2, v1, p2}, Lj$/time/chrono/ChronoLocalDate;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v2

    return-wide v2

    .line 395
    .end local v1    # "endDate":Lj$/time/chrono/ChronoLocalDate;
    :cond_9a
    const-string v1, "unit"

    invoke-static {p2, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 396
    invoke-interface {p2, p0, v0}, Lj$/time/temporal/TemporalUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_63
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_42
        :pswitch_3b
        :pswitch_35
    .end packed-switch
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDateTime;
    .registers 2

    .line 100
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDateTime;
    .registers 4

    .line 100
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 4
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAdjuster;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 278
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Lj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_e

    .line 280
    move-object v0, p1

    check-cast v0, Lj$/time/chrono/ChronoLocalDate;

    iget-object v1, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->with(Lj$/time/temporal/Temporal;Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    .line 281
    :cond_e
    instance-of v0, p1, Lj$/time/LocalTime;

    if-eqz v0, :cond_1c

    .line 282
    iget-object v0, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    move-object v1, p1

    check-cast v1, Lj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->with(Lj$/time/temporal/Temporal;Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    .line 283
    :cond_1c
    instance-of v0, p1, Lj$/time/chrono/ChronoLocalDateTimeImpl;

    if-eqz v0, :cond_2e

    .line 284
    iget-object v0, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    .line 286
    :cond_2e
    iget-object v0, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAdjuster;->adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Lj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 7
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalField;",
            "J)",
            "Lj$/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 291
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_27

    .line 292
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 293
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 294
    iget-object v1, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    iget-object v2, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    invoke-virtual {v2, p1, p2, p3}, Lj$/time/LocalTime;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalTime;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->with(Lj$/time/temporal/Temporal;Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 296
    :cond_1a
    iget-object v1, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    iget-object v2, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    invoke-direct {p0, v1, v2}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->with(Lj$/time/temporal/Temporal;Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    .line 299
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_27
    iget-object v0, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/TemporalField;->adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .registers 2

    .line 100
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .registers 4

    .line 100
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;

    .line 427
    .local p0, "this":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->date:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 428
    iget-object v0, p0, Lj$/time/chrono/ChronoLocalDateTimeImpl;->time:Lj$/time/LocalTime;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 429
    return-void
.end method
