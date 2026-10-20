.class final Lj$/time/Clock$TickClock;
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
    name = "TickClock"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5a4531089f29d952L


# instance fields
.field private final baseClock:Lj$/time/Clock;

.field private final tickNanos:J


# direct methods
.method constructor <init>(Lj$/time/Clock;J)V
    .locals 0
    .param p1, "baseClock"    # Lj$/time/Clock;
    .param p2, "tickNanos"    # J

    .line 694
    invoke-direct {p0}, Lj$/time/Clock;-><init>()V

    .line 695
    iput-object p1, p0, Lj$/time/Clock$TickClock;->baseClock:Lj$/time/Clock;

    .line 696
    iput-wide p2, p0, Lj$/time/Clock$TickClock;->tickNanos:J

    .line 697
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 727
    instance-of v0, p1, Lj$/time/Clock$TickClock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 728
    move-object v0, p1

    check-cast v0, Lj$/time/Clock$TickClock;

    .line 729
    .local v0, "other":Lj$/time/Clock$TickClock;
    iget-object v2, p0, Lj$/time/Clock$TickClock;->baseClock:Lj$/time/Clock;

    iget-object v3, v0, Lj$/time/Clock$TickClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v2, v3}, Lj$/time/Clock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lj$/time/Clock$TickClock;->tickNanos:J

    iget-wide v4, v0, Lj$/time/Clock$TickClock;->tickNanos:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 731
    .end local v0    # "other":Lj$/time/Clock$TickClock;
    :cond_1
    return v1
.end method

.method public getZone()Lj$/time/ZoneId;
    .locals 1

    .line 700
    iget-object v0, p0, Lj$/time/Clock$TickClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->getZone()Lj$/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 735
    iget-object v0, p0, Lj$/time/Clock$TickClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->hashCode()I

    move-result v0

    iget-wide v1, p0, Lj$/time/Clock$TickClock;->tickNanos:J

    iget-wide v3, p0, Lj$/time/Clock$TickClock;->tickNanos:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public instant()Lj$/time/Instant;
    .locals 7

    .line 716
    iget-wide v0, p0, Lj$/time/Clock$TickClock;->tickNanos:J

    const-wide/32 v2, 0xf4240

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 717
    iget-object v0, p0, Lj$/time/Clock$TickClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->millis()J

    move-result-wide v0

    .line 718
    .local v0, "millis":J
    iget-wide v4, p0, Lj$/time/Clock$TickClock;->tickNanos:J

    div-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Lj$/time/Clock$TickClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v2

    return-object v2

    .line 720
    .end local v0    # "millis":J
    :cond_0
    iget-object v0, p0, Lj$/time/Clock$TickClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    .line 721
    .local v0, "instant":Lj$/time/Instant;
    invoke-virtual {v0}, Lj$/time/Instant;->getNano()I

    move-result v1

    int-to-long v1, v1

    .line 722
    .local v1, "nanos":J
    iget-wide v3, p0, Lj$/time/Clock$TickClock;->tickNanos:J

    invoke-static {v1, v2, v3, v4}, Lj$/time/Clock$TickClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    .line 723
    .local v3, "adjust":J
    invoke-virtual {v0, v3, v4}, Lj$/time/Instant;->minusNanos(J)Lj$/time/Instant;

    move-result-object v5

    return-object v5
.end method

.method public millis()J
    .locals 6

    .line 711
    iget-object v0, p0, Lj$/time/Clock$TickClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->millis()J

    move-result-wide v0

    .line 712
    .local v0, "millis":J
    iget-wide v2, p0, Lj$/time/Clock$TickClock;->tickNanos:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lj$/time/Clock$TickClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 739
    iget-object v0, p0, Lj$/time/Clock$TickClock;->baseClock:Lj$/time/Clock;

    iget-wide v1, p0, Lj$/time/Clock$TickClock;->tickNanos:J

    invoke-static {v1, v2}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TickClock["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withZone(Lj$/time/ZoneId;)Lj$/time/Clock;
    .locals 4
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 704
    iget-object v0, p0, Lj$/time/Clock$TickClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->getZone()Lj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    return-object p0

    .line 707
    :cond_0
    new-instance v0, Lj$/time/Clock$TickClock;

    iget-object v1, p0, Lj$/time/Clock$TickClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v1, p1}, Lj$/time/Clock;->withZone(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v1

    iget-wide v2, p0, Lj$/time/Clock$TickClock;->tickNanos:J

    invoke-direct {v0, v1, v2, v3}, Lj$/time/Clock$TickClock;-><init>(Lj$/time/Clock;J)V

    return-object v0
.end method
