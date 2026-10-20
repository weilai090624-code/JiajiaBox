.class final Lj$/time/Clock$OffsetClock;
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
    name = "OffsetClock"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1bdc04b7477ef050L


# instance fields
.field private final baseClock:Lj$/time/Clock;

.field private final offset:Lj$/time/Duration;


# direct methods
.method constructor <init>(Lj$/time/Clock;Lj$/time/Duration;)V
    .locals 0
    .param p1, "baseClock"    # Lj$/time/Clock;
    .param p2, "offset"    # Lj$/time/Duration;

    .line 644
    invoke-direct {p0}, Lj$/time/Clock;-><init>()V

    .line 645
    iput-object p1, p0, Lj$/time/Clock$OffsetClock;->baseClock:Lj$/time/Clock;

    .line 646
    iput-object p2, p0, Lj$/time/Clock$OffsetClock;->offset:Lj$/time/Duration;

    .line 647
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 669
    instance-of v0, p1, Lj$/time/Clock$OffsetClock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 670
    move-object v0, p1

    check-cast v0, Lj$/time/Clock$OffsetClock;

    .line 671
    .local v0, "other":Lj$/time/Clock$OffsetClock;
    iget-object v2, p0, Lj$/time/Clock$OffsetClock;->baseClock:Lj$/time/Clock;

    iget-object v3, v0, Lj$/time/Clock$OffsetClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v2, v3}, Lj$/time/Clock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lj$/time/Clock$OffsetClock;->offset:Lj$/time/Duration;

    iget-object v3, v0, Lj$/time/Clock$OffsetClock;->offset:Lj$/time/Duration;

    invoke-virtual {v2, v3}, Lj$/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 673
    .end local v0    # "other":Lj$/time/Clock$OffsetClock;
    :cond_1
    return v1
.end method

.method public getZone()Lj$/time/ZoneId;
    .locals 1

    .line 650
    iget-object v0, p0, Lj$/time/Clock$OffsetClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->getZone()Lj$/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 677
    iget-object v0, p0, Lj$/time/Clock$OffsetClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/Clock$OffsetClock;->offset:Lj$/time/Duration;

    invoke-virtual {v1}, Lj$/time/Duration;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public instant()Lj$/time/Instant;
    .locals 2

    .line 665
    iget-object v0, p0, Lj$/time/Clock$OffsetClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lj$/time/Clock$OffsetClock;->offset:Lj$/time/Duration;

    invoke-virtual {v0, v1}, Lj$/time/Instant;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public millis()J
    .locals 4

    .line 661
    iget-object v0, p0, Lj$/time/Clock$OffsetClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->millis()J

    move-result-wide v0

    iget-object v2, p0, Lj$/time/Clock$OffsetClock;->offset:Lj$/time/Duration;

    invoke-virtual {v2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 681
    iget-object v0, p0, Lj$/time/Clock$OffsetClock;->baseClock:Lj$/time/Clock;

    iget-object v1, p0, Lj$/time/Clock$OffsetClock;->offset:Lj$/time/Duration;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OffsetClock["

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
    .locals 3
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 654
    iget-object v0, p0, Lj$/time/Clock$OffsetClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v0}, Lj$/time/Clock;->getZone()Lj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    return-object p0

    .line 657
    :cond_0
    new-instance v0, Lj$/time/Clock$OffsetClock;

    iget-object v1, p0, Lj$/time/Clock$OffsetClock;->baseClock:Lj$/time/Clock;

    invoke-virtual {v1, p1}, Lj$/time/Clock;->withZone(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v1

    iget-object v2, p0, Lj$/time/Clock$OffsetClock;->offset:Lj$/time/Duration;

    invoke-direct {v0, v1, v2}, Lj$/time/Clock$OffsetClock;-><init>(Lj$/time/Clock;Lj$/time/Duration;)V

    return-object v0
.end method
