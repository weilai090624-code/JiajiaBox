.class final Lj$/time/chrono/ChronoZonedDateTimeImpl;
.super Ljava/lang/Object;
.source "ChronoZonedDateTimeImpl.java"

# interfaces
.implements Lj$/time/chrono/ChronoZonedDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Lj$/time/chrono/ChronoLocalDate;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/time/chrono/ChronoZonedDateTime<",
        "TD;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4905b7f16d4b26a7L


# instance fields
.field private final transient dateTime:Lj$/time/chrono/ChronoLocalDateTimeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final transient offset:Lj$/time/ZoneOffset;

.field private final transient zone:Lj$/time/ZoneId;


# direct methods
.method private constructor <init>(Lj$/time/chrono/ChronoLocalDateTimeImpl;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V
    .locals 1
    .param p2, "offset"    # Lj$/time/ZoneOffset;
    .param p3, "zone"    # Lj$/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/chrono/ChronoLocalDateTimeImpl<",
            "TD;>;",
            "Lj$/time/ZoneOffset;",
            "Lj$/time/ZoneId;",
            ")V"
        }
    .end annotation

    .line 218
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    .local p1, "dateTime":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const-string v0, "dateTime"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/ChronoLocalDateTimeImpl;

    iput-object v0, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Lj$/time/chrono/ChronoLocalDateTimeImpl;

    .line 220
    const-string v0, "offset"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneOffset;

    iput-object v0, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->offset:Lj$/time/ZoneOffset;

    .line 221
    const-string v0, "zone"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneId;

    iput-object v0, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->zone:Lj$/time/ZoneId;

    .line 222
    return-void
.end method

.method private create(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTimeImpl;
    .locals 1
    .param p1, "instant"    # Lj$/time/Instant;
    .param p2, "zone"    # Lj$/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/Instant;",
            "Lj$/time/ZoneId;",
            ")",
            "Lj$/time/chrono/ChronoZonedDateTimeImpl<",
            "TD;>;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->ofInstant(Lj$/time/chrono/Chronology;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method static ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoZonedDateTimeImpl;
    .locals 6
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
            "Lj$/time/chrono/ChronoZonedDateTimeImpl<",
            "TR;>;"
        }
    .end annotation

    .line 202
    move-object v0, p1

    check-cast v0, Lj$/time/chrono/ChronoZonedDateTimeImpl;

    .line 203
    .local v0, "other":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TR;>;"
    invoke-virtual {v0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p0, v1}, Lj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    return-object v0

    .line 204
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-interface {p0}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual {v0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Lj$/time/chrono/Chronology;

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

.method static ofBest(Lj$/time/chrono/ChronoLocalDateTimeImpl;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 6
    .param p1, "zone"    # Lj$/time/ZoneId;
    .param p2, "preferredOffset"    # Lj$/time/ZoneOffset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lj$/time/chrono/ChronoLocalDate;",
            ">(",
            "Lj$/time/chrono/ChronoLocalDateTimeImpl<",
            "TR;>;",
            "Lj$/time/ZoneId;",
            "Lj$/time/ZoneOffset;",
            ")",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "TR;>;"
        }
    .end annotation

    .line 136
    .local p0, "localDateTime":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TR;>;"
    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    instance-of v0, p1, Lj$/time/ZoneOffset;

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Lj$/time/chrono/ChronoZonedDateTimeImpl;

    move-object v1, p1

    check-cast v1, Lj$/time/ZoneOffset;

    invoke-direct {v0, p0, v1, p1}, Lj$/time/chrono/ChronoZonedDateTimeImpl;-><init>(Lj$/time/chrono/ChronoLocalDateTimeImpl;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V

    return-object v0

    .line 141
    :cond_0
    invoke-virtual {p1}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    .line 142
    .local v0, "rules":Lj$/time/zone/ZoneRules;
    invoke-static {p0}, Lj$/time/LocalDateTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDateTime;

    move-result-object v1

    .line 143
    .local v1, "isoLDT":Lj$/time/LocalDateTime;
    invoke-virtual {v0, v1}, Lj$/time/zone/ZoneRules;->getValidOffsets(Lj$/time/LocalDateTime;)Ljava/util/List;

    move-result-object v2

    .line 145
    .local v2, "validOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/time/ZoneOffset;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 146
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/ZoneOffset;

    .local v3, "offset":Lj$/time/ZoneOffset;
    goto :goto_0

    .line 147
    .end local v3    # "offset":Lj$/time/ZoneOffset;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 148
    invoke-virtual {v0, v1}, Lj$/time/zone/ZoneRules;->getTransition(Lj$/time/LocalDateTime;)Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v3

    .line 149
    .local v3, "trans":Lj$/time/zone/ZoneOffsetTransition;
    invoke-virtual {v3}, Lj$/time/zone/ZoneOffsetTransition;->getDuration()Lj$/time/Duration;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plusSeconds(J)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p0

    .line 150
    invoke-virtual {v3}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Lj$/time/ZoneOffset;

    move-result-object v3

    .line 151
    .local v3, "offset":Lj$/time/ZoneOffset;
    goto :goto_0

    .line 152
    .end local v3    # "offset":Lj$/time/ZoneOffset;
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    move-object v3, p2

    .restart local v3    # "offset":Lj$/time/ZoneOffset;
    goto :goto_0

    .line 155
    .end local v3    # "offset":Lj$/time/ZoneOffset;
    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/ZoneOffset;

    .line 158
    .restart local v3    # "offset":Lj$/time/ZoneOffset;
    :goto_0
    const-string v4, "offset"

    invoke-static {v3, v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    new-instance v4, Lj$/time/chrono/ChronoZonedDateTimeImpl;

    invoke-direct {v4, p0, v3, p1}, Lj$/time/chrono/ChronoZonedDateTimeImpl;-><init>(Lj$/time/chrono/ChronoLocalDateTimeImpl;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V

    return-object v4
.end method

.method static ofInstant(Lj$/time/chrono/Chronology;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTimeImpl;
    .locals 5
    .param p0, "chrono"    # Lj$/time/chrono/Chronology;
    .param p1, "instant"    # Lj$/time/Instant;
    .param p2, "zone"    # Lj$/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/chrono/Chronology;",
            "Lj$/time/Instant;",
            "Lj$/time/ZoneId;",
            ")",
            "Lj$/time/chrono/ChronoZonedDateTimeImpl<",
            "*>;"
        }
    .end annotation

    .line 171
    invoke-virtual {p2}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    .line 172
    .local v0, "rules":Lj$/time/zone/ZoneRules;
    invoke-virtual {v0, p1}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 173
    .local v1, "offset":Lj$/time/ZoneOffset;
    const-string v2, "offset"

    invoke-static {v1, v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {p1}, Lj$/time/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Lj$/time/LocalDateTime;->ofEpochSecond(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v2

    .line 175
    .local v2, "ldt":Lj$/time/LocalDateTime;
    invoke-interface {p0, v2}, Lj$/time/chrono/Chronology;->localDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v3

    check-cast v3, Lj$/time/chrono/ChronoLocalDateTimeImpl;

    .line 176
    .local v3, "cldt":Lj$/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<*>;"
    new-instance v4, Lj$/time/chrono/ChronoZonedDateTimeImpl;

    invoke-direct {v4, v3, v1, p2}, Lj$/time/chrono/ChronoZonedDateTimeImpl;-><init>(Lj$/time/chrono/ChronoLocalDateTimeImpl;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V

    return-object v4
.end method

.method static readExternal(Ljava/io/ObjectInput;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 4
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "*>;"
        }
    .end annotation

    .line 357
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/ChronoLocalDateTime;

    .line 358
    .local v0, "dateTime":Lj$/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/ZoneOffset;

    .line 359
    .local v1, "offset":Lj$/time/ZoneOffset;
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/ZoneId;

    .line 360
    .local v2, "zone":Lj$/time/ZoneId;
    invoke-interface {v0, v1}, Lj$/time/chrono/ChronoLocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v3

    invoke-interface {v3, v2}, Lj$/time/chrono/ChronoZonedDateTime;->withZoneSameLocal(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 347
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 337
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    new-instance v0, Lj$/time/chrono/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public synthetic compareTo(Lj$/time/chrono/ChronoZonedDateTime;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$compareTo(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$compareTo(Lj$/time/chrono/ChronoZonedDateTime;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 367
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 368
    return v0

    .line 370
    :cond_0
    instance-of v1, p1, Lj$/time/chrono/ChronoZonedDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 371
    move-object v1, p1

    check-cast v1, Lj$/time/chrono/ChronoZonedDateTime;

    invoke-virtual {p0, v1}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->compareTo(Lj$/time/chrono/ChronoZonedDateTime;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 373
    :cond_2
    return v2
.end method

.method public synthetic format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$format(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic get(Lj$/time/temporal/TemporalField;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$get(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public synthetic getChronology()Lj$/time/chrono/Chronology;
    .locals 1

    invoke-static {p0}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$getChronology(Lj$/time/chrono/ChronoZonedDateTime;)Lj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLong(Lj$/time/temporal/TemporalField;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$getLong(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset()Lj$/time/ZoneOffset;
    .locals 1

    .line 227
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->offset:Lj$/time/ZoneOffset;

    return-object v0
.end method

.method public getZone()Lj$/time/ZoneId;
    .locals 1

    .line 262
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->zone:Lj$/time/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 378
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->toLocalDateTime()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDateTime;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->getZone()Lj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public synthetic isAfter(Lj$/time/chrono/ChronoZonedDateTime;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$isAfter(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)Z

    move-result p1

    return p1
.end method

.method public synthetic isBefore(Lj$/time/chrono/ChronoZonedDateTime;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$isBefore(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)Z

    move-result p1

    return p1
.end method

.method public synthetic isEqual(Lj$/time/chrono/ChronoZonedDateTime;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$isEqual(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/chrono/ChronoZonedDateTime;)Z

    move-result p1

    return p1
.end method

.method public isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 279
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
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

.method public synthetic isSupported(Lj$/time/temporal/TemporalUnit;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$isSupported(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalUnit;)Z

    move-result p1

    return p1
.end method

.method public synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$minus(Lj$/time/chrono/ChronoZonedDateTime;JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$minus(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$minus(Lj$/time/chrono/ChronoZonedDateTime;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$minus(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 2
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lj$/time/temporal/TemporalUnit;",
            ")",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 302
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Lj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0

    .line 305
    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->addTo(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$plus(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 104
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$plus(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public synthetic query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$query(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$range(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toEpochSecond()J
    .locals 2

    invoke-static {p0}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$toEpochSecond(Lj$/time/chrono/ChronoZonedDateTime;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic toInstant()Lj$/time/Instant;
    .locals 1

    invoke-static {p0}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$toInstant(Lj$/time/chrono/ChronoZonedDateTime;)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toLocalDate()Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    invoke-static {p0}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$toLocalDate(Lj$/time/chrono/ChronoZonedDateTime;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Lj$/time/chrono/ChronoLocalDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 257
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Lj$/time/chrono/ChronoLocalDateTimeImpl;

    return-object v0
.end method

.method public synthetic toLocalTime()Lj$/time/LocalTime;
    .locals 1

    invoke-static {p0}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$toLocalTime(Lj$/time/chrono/ChronoZonedDateTime;)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 383
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->toLocalDateTime()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/ChronoLocalDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v1

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

    .line 384
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {p0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->getZone()Lj$/time/ZoneId;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 385
    invoke-virtual {p0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->getZone()Lj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_0
    return-object v0
.end method

.method public until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 3
    .param p1, "endExclusive"    # Lj$/time/temporal/Temporal;
    .param p2, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 311
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    const-string v0, "endExclusive"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    invoke-virtual {p0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/Chronology;->zonedDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    .line 314
    .local v0, "end":Lj$/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    instance-of v1, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->offset:Lj$/time/ZoneOffset;

    invoke-interface {v0, v1}, Lj$/time/chrono/ChronoZonedDateTime;->withZoneSameInstant(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Lj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-interface {v0}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v1

    return-wide v1

    .line 318
    :cond_0
    const-string v1, "unit"

    invoke-static {p2, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    invoke-interface {p2, p0, v0}, Lj$/time/temporal/TemporalUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1
.end method

.method public synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$with(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 4
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalField;",
            "J)",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 286
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 287
    .local v0, "f":Lj$/time/temporal/ChronoField;
    sget-object v1, Lj$/time/chrono/ChronoZonedDateTimeImpl$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 294
    iget-object v1, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Lj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v1, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    iget-object v2, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->zone:Lj$/time/ZoneId;

    iget-object v3, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->offset:Lj$/time/ZoneOffset;

    invoke-static {v1, v2, v3}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Lj$/time/chrono/ChronoLocalDateTimeImpl;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    return-object v1

    .line 290
    :pswitch_0
    invoke-virtual {v0, p2, p3}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v1

    invoke-static {v1}, Lj$/time/ZoneOffset;->ofTotalSeconds(I)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 291
    .local v1, "offset":Lj$/time/ZoneOffset;
    iget-object v2, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Lj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v2, v1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->toInstant(Lj$/time/ZoneOffset;)Lj$/time/Instant;

    move-result-object v2

    iget-object v3, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->zone:Lj$/time/ZoneId;

    invoke-direct {p0, v2, v3}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->create(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v2

    return-object v2

    .line 288
    .end local v1    # "offset":Lj$/time/ZoneOffset;
    :pswitch_1
    invoke-virtual {p0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->toEpochSecond()J

    move-result-wide v1

    sub-long v1, p2, v1

    sget-object v3, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0, v1, v2, v3}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    return-object v1

    .line 296
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/TemporalField;->adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Lj$/time/chrono/Chronology;Lj$/time/temporal/Temporal;)Lj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/ChronoZonedDateTime$-CC;->$default$with(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0

    .line 104
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withEarlierOffsetAtOverlap()Lj$/time/chrono/ChronoZonedDateTime;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->getZone()Lj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-static {p0}, Lj$/time/LocalDateTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/zone/ZoneRules;->getTransition(Lj$/time/LocalDateTime;)Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v0

    .line 233
    .local v0, "trans":Lj$/time/zone/ZoneOffsetTransition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj$/time/zone/ZoneOffsetTransition;->isOverlap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {v0}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Lj$/time/ZoneOffset;

    move-result-object v1

    .line 235
    .local v1, "earlierOffset":Lj$/time/ZoneOffset;
    iget-object v2, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v1, v2}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    new-instance v2, Lj$/time/chrono/ChronoZonedDateTimeImpl;

    iget-object v3, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Lj$/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v4, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->zone:Lj$/time/ZoneId;

    invoke-direct {v2, v3, v1, v4}, Lj$/time/chrono/ChronoZonedDateTimeImpl;-><init>(Lj$/time/chrono/ChronoLocalDateTimeImpl;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V

    return-object v2

    .line 239
    .end local v1    # "earlierOffset":Lj$/time/ZoneOffset;
    :cond_0
    return-object p0
.end method

.method public withLaterOffsetAtOverlap()Lj$/time/chrono/ChronoZonedDateTime;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation

    .line 244
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->getZone()Lj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-static {p0}, Lj$/time/LocalDateTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/zone/ZoneRules;->getTransition(Lj$/time/LocalDateTime;)Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v0

    .line 245
    .local v0, "trans":Lj$/time/zone/ZoneOffsetTransition;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Lj$/time/ZoneOffset;

    move-result-object v1

    .line 247
    .local v1, "offset":Lj$/time/ZoneOffset;
    invoke-virtual {p0}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    new-instance v2, Lj$/time/chrono/ChronoZonedDateTimeImpl;

    iget-object v3, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Lj$/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v4, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->zone:Lj$/time/ZoneId;

    invoke-direct {v2, v3, v1, v4}, Lj$/time/chrono/ChronoZonedDateTimeImpl;-><init>(Lj$/time/chrono/ChronoLocalDateTimeImpl;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V

    return-object v2

    .line 251
    .end local v1    # "offset":Lj$/time/ZoneOffset;
    :cond_0
    return-object p0
.end method

.method public withZoneSameInstant(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 2
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

    .line 272
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->zone:Lj$/time/ZoneId;

    invoke-virtual {v0, p1}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Lj$/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v1, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/chrono/ChronoLocalDateTimeImpl;->toInstant(Lj$/time/ZoneOffset;)Lj$/time/Instant;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->create(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public withZoneSameLocal(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 2
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

    .line 267
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Lj$/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v1, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->offset:Lj$/time/ZoneOffset;

    invoke-static {v0, p1, v1}, Lj$/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Lj$/time/chrono/ChronoLocalDateTimeImpl;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;

    .line 351
    .local p0, "this":Lj$/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Lj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->offset:Lj$/time/ZoneOffset;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lj$/time/chrono/ChronoZonedDateTimeImpl;->zone:Lj$/time/ZoneId;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 354
    return-void
.end method
