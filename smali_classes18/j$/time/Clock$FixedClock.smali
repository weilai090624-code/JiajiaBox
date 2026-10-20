.class final Lj$/time/Clock$FixedClock;
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
    name = "FixedClock"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x671e0bb19c27c88eL


# instance fields
.field private final instant:Lj$/time/Instant;

.field private final zone:Lj$/time/ZoneId;


# direct methods
.method constructor <init>(Lj$/time/Instant;Lj$/time/ZoneId;)V
    .locals 0
    .param p1, "fixedInstant"    # Lj$/time/Instant;
    .param p2, "zone"    # Lj$/time/ZoneId;

    .line 594
    invoke-direct {p0}, Lj$/time/Clock;-><init>()V

    .line 595
    iput-object p1, p0, Lj$/time/Clock$FixedClock;->instant:Lj$/time/Instant;

    .line 596
    iput-object p2, p0, Lj$/time/Clock$FixedClock;->zone:Lj$/time/ZoneId;

    .line 597
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 619
    instance-of v0, p1, Lj$/time/Clock$FixedClock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 620
    move-object v0, p1

    check-cast v0, Lj$/time/Clock$FixedClock;

    .line 621
    .local v0, "other":Lj$/time/Clock$FixedClock;
    iget-object v2, p0, Lj$/time/Clock$FixedClock;->instant:Lj$/time/Instant;

    iget-object v3, v0, Lj$/time/Clock$FixedClock;->instant:Lj$/time/Instant;

    invoke-virtual {v2, v3}, Lj$/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lj$/time/Clock$FixedClock;->zone:Lj$/time/ZoneId;

    iget-object v3, v0, Lj$/time/Clock$FixedClock;->zone:Lj$/time/ZoneId;

    invoke-virtual {v2, v3}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 623
    .end local v0    # "other":Lj$/time/Clock$FixedClock;
    :cond_1
    return v1
.end method

.method public getZone()Lj$/time/ZoneId;
    .locals 1

    .line 600
    iget-object v0, p0, Lj$/time/Clock$FixedClock;->zone:Lj$/time/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 627
    iget-object v0, p0, Lj$/time/Clock$FixedClock;->instant:Lj$/time/Instant;

    invoke-virtual {v0}, Lj$/time/Instant;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/Clock$FixedClock;->zone:Lj$/time/ZoneId;

    invoke-virtual {v1}, Lj$/time/ZoneId;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public instant()Lj$/time/Instant;
    .locals 1

    .line 615
    iget-object v0, p0, Lj$/time/Clock$FixedClock;->instant:Lj$/time/Instant;

    return-object v0
.end method

.method public millis()J
    .locals 2

    .line 611
    iget-object v0, p0, Lj$/time/Clock$FixedClock;->instant:Lj$/time/Instant;

    invoke-virtual {v0}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 631
    iget-object v0, p0, Lj$/time/Clock$FixedClock;->instant:Lj$/time/Instant;

    iget-object v1, p0, Lj$/time/Clock$FixedClock;->zone:Lj$/time/ZoneId;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FixedClock["

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
    .locals 2
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 604
    iget-object v0, p0, Lj$/time/Clock$FixedClock;->zone:Lj$/time/ZoneId;

    invoke-virtual {p1, v0}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    return-object p0

    .line 607
    :cond_0
    new-instance v0, Lj$/time/Clock$FixedClock;

    iget-object v1, p0, Lj$/time/Clock$FixedClock;->instant:Lj$/time/Instant;

    invoke-direct {v0, v1, p1}, Lj$/time/Clock$FixedClock;-><init>(Lj$/time/Instant;Lj$/time/ZoneId;)V

    return-object v0
.end method
