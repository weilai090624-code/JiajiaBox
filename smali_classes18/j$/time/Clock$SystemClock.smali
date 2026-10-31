.class final Lj$/time/Clock$SystemClock;
.super Lj$/time/Clock;
.source "Clock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SystemClock"
.end annotation


# static fields
.field private static final OFFSET_SEED:J

.field static final UTC:Lj$/time/Clock$SystemClock;

.field private static final serialVersionUID:J = 0x5d8b8814510769ebL


# instance fields
.field private final zone:Lj$/time/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x400

    sub-long/2addr v0, v2

    sput-wide v0, Lj$/time/Clock$SystemClock;->OFFSET_SEED:J

    .line 484
    new-instance v0, Lj$/time/Clock$SystemClock;

    sget-object v1, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-direct {v0, v1}, Lj$/time/Clock$SystemClock;-><init>(Lj$/time/ZoneId;)V

    sput-object v0, Lj$/time/Clock$SystemClock;->UTC:Lj$/time/Clock$SystemClock;

    return-void
.end method

.method constructor <init>(Lj$/time/ZoneId;)V
    .registers 2
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 497
    invoke-direct {p0}, Lj$/time/Clock;-><init>()V

    .line 498
    iput-object p1, p0, Lj$/time/Clock$SystemClock;->zone:Lj$/time/ZoneId;

    .line 500
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .param p1, "is"    # Ljava/io/ObjectInputStream;

    .line 579
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 581
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 563
    instance-of v0, p1, Lj$/time/Clock$SystemClock;

    if-eqz v0, :cond_10

    .line 564
    iget-object v0, p0, Lj$/time/Clock$SystemClock;->zone:Lj$/time/ZoneId;

    move-object v1, p1

    check-cast v1, Lj$/time/Clock$SystemClock;

    iget-object v1, v1, Lj$/time/Clock$SystemClock;->zone:Lj$/time/ZoneId;

    invoke-virtual {v0, v1}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 566
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public getZone()Lj$/time/ZoneId;
    .registers 2

    .line 503
    iget-object v0, p0, Lj$/time/Clock$SystemClock;->zone:Lj$/time/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 570
    iget-object v0, p0, Lj$/time/Clock$SystemClock;->zone:Lj$/time/ZoneId;

    invoke-virtual {v0}, Lj$/time/ZoneId;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public instant()Lj$/time/Instant;
    .registers 3

    .line 525
    invoke-virtual {p0}, Lj$/time/Clock$SystemClock;->millis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public millis()J
    .registers 3

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 574
    iget-object v0, p0, Lj$/time/Clock$SystemClock;->zone:Lj$/time/ZoneId;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemClock["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withZone(Lj$/time/ZoneId;)Lj$/time/Clock;
    .registers 3
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 507
    iget-object v0, p0, Lj$/time/Clock$SystemClock;->zone:Lj$/time/ZoneId;

    invoke-virtual {p1, v0}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 508
    return-object p0

    .line 510
    :cond_9
    new-instance v0, Lj$/time/Clock$SystemClock;

    invoke-direct {v0, p1}, Lj$/time/Clock$SystemClock;-><init>(Lj$/time/ZoneId;)V

    return-object v0
.end method
