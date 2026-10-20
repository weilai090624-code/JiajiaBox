.class final Lj$/time/DesugarClock$DesugarTickClock;
.super Lj$/time/Clock;
.source "DesugarClock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/DesugarClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DesugarTickClock"
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

    .line 172
    invoke-direct {p0}, Lj$/time/Clock;-><init>()V

    .line 173
    iput-object p1, p0, Lj$/time/DesugarClock$DesugarTickClock;->baseClock:Lj$/time/Clock;

    .line 174
    iput-wide p2, p0, Lj$/time/DesugarClock$DesugarTickClock;->tickNanos:J

    .line 175
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 205
    instance-of v0, p1, Lj$/time/DesugarClock$DesugarTickClock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 206
    move-object v0, p1

    check-cast v0, Lj$/time/DesugarClock$DesugarTickClock;

    .line 207
    .local v0, "other":Lj$/time/DesugarClock$DesugarTickClock;
    iget-object v2, p0, Lj$/time/DesugarClock$DesugarTickClock;->baseClock:Lj$/time/Clock;

    iget-object v3, v0, Lj$/time/DesugarClock$DesugarTickClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v2, v3}, Lj$/time/Clock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lj$/time/DesugarClock$DesugarTickClock;->tickNanos:J

    iget-wide v4, v0, Lj$/time/DesugarClock$DesugarTickClock;->tickNanos:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 209
    .end local v0    # "other":Lj$/time/DesugarClock$DesugarTickClock;
    :cond_1
    return v1
.end method

.method public getZone()Lj$/time/ZoneId;
    .locals 1

    .line 178
    iget-object v0, p0, Lj$/time/DesugarClock$DesugarTickClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->getZone()Lj$/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 213
    iget-object v0, p0, Lj$/time/DesugarClock$DesugarTickClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->hashCode()I

    move-result v0

    iget-wide v1, p0, Lj$/time/DesugarClock$DesugarTickClock;->tickNanos:J

    iget-wide v3, p0, Lj$/time/DesugarClock$DesugarTickClock;->tickNanos:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public instant()Lj$/time/Instant;
    .locals 7

    .line 194
    iget-wide v0, p0, Lj$/time/DesugarClock$DesugarTickClock;->tickNanos:J

    const-wide/32 v2, 0xf4240

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 195
    iget-object v0, p0, Lj$/time/DesugarClock$DesugarTickClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->millis()J

    move-result-wide v0

    .line 196
    .local v0, "millis":J
    iget-wide v4, p0, Lj$/time/DesugarClock$DesugarTickClock;->tickNanos:J

    div-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Lj$/time/Clock$TickClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v2

    return-object v2

    .line 198
    .end local v0    # "millis":J
    :cond_0
    iget-object v0, p0, Lj$/time/DesugarClock$DesugarTickClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    .line 199
    .local v0, "instant":Lj$/time/Instant;
    invoke-virtual {v0}, Lj$/time/Instant;->getNano()I

    move-result v1

    int-to-long v1, v1

    .line 200
    .local v1, "nanos":J
    iget-wide v3, p0, Lj$/time/DesugarClock$DesugarTickClock;->tickNanos:J

    invoke-static {v1, v2, v3, v4}, Lj$/time/Clock$TickClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    .line 201
    .local v3, "adjust":J
    invoke-virtual {v0, v3, v4}, Lj$/time/Instant;->minusNanos(J)Lj$/time/Instant;

    move-result-object v5

    return-object v5
.end method

.method public millis()J
    .locals 6

    .line 189
    iget-object v0, p0, Lj$/time/DesugarClock$DesugarTickClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->millis()J

    move-result-wide v0

    .line 190
    .local v0, "millis":J
    iget-wide v2, p0, Lj$/time/DesugarClock$DesugarTickClock;->tickNanos:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lj$/time/Clock$TickClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 217
    iget-object v0, p0, Lj$/time/DesugarClock$DesugarTickClock;->baseClock:Lj$/time/Clock;

    iget-wide v1, p0, Lj$/time/DesugarClock$DesugarTickClock;->tickNanos:J

    invoke-static {v1, v2}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DesugarTickClock["

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

    .line 182
    iget-object v0, p0, Lj$/time/DesugarClock$DesugarTickClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->getZone()Lj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    return-object p0

    .line 185
    :cond_0
    new-instance v0, Lj$/time/DesugarClock$DesugarTickClock;

    iget-object v1, p0, Lj$/time/DesugarClock$DesugarTickClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v1, p1}, Lj$/time/Clock;->withZone(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v1

    iget-wide v2, p0, Lj$/time/DesugarClock$DesugarTickClock;->tickNanos:J

    invoke-direct {v0, v1, v2, v3}, Lj$/time/DesugarClock$DesugarTickClock;-><init>(Lj$/time/Clock;J)V

    return-object v0
.end method
