.class public final synthetic Lj$/time/Clock$VivifiedWrapper;
.super Lj$/time/Clock;
.source "D8$$SyntheticClass"


# instance fields
.field public final synthetic wrappedValue:Ljava/time/Clock;


# direct methods
.method private synthetic constructor <init>(Ljava/time/Clock;)V
    .locals 0

    invoke-direct {p0}, Lj$/time/Clock;-><init>()V

    iput-object p1, p0, Lj$/time/Clock$VivifiedWrapper;->wrappedValue:Ljava/time/Clock;

    return-void
.end method

.method public static synthetic convert(Ljava/time/Clock;)Lj$/time/Clock;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/time/Clock$Wrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/time/Clock$Wrapper;

    iget-object p0, p0, Lj$/time/Clock$Wrapper;->wrappedValue:Lj$/time/Clock;

    return-object p0

    :cond_1
    new-instance v0, Lj$/time/Clock$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/time/Clock$VivifiedWrapper;-><init>(Ljava/time/Clock;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/time/Clock$VivifiedWrapper;->wrappedValue:Ljava/time/Clock;

    instance-of v1, p1, Lj$/time/Clock$VivifiedWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/time/Clock$VivifiedWrapper;

    iget-object p1, p1, Lj$/time/Clock$VivifiedWrapper;->wrappedValue:Ljava/time/Clock;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic getZone()Lj$/time/ZoneId;
    .locals 1

    iget-object v0, p0, Lj$/time/Clock$VivifiedWrapper;->wrappedValue:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {v0}, Lj$/time/TimeConversions;->convert(Ljava/time/ZoneId;)Lj$/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/time/Clock$VivifiedWrapper;->wrappedValue:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic instant()Lj$/time/Instant;
    .locals 1

    iget-object v0, p0, Lj$/time/Clock$VivifiedWrapper;->wrappedValue:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Lj$/time/TimeConversions;->convert(Ljava/time/Instant;)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public synthetic millis()J
    .locals 2

    iget-object v0, p0, Lj$/time/Clock$VivifiedWrapper;->wrappedValue:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic withZone(Lj$/time/ZoneId;)Lj$/time/Clock;
    .locals 1

    iget-object v0, p0, Lj$/time/Clock$VivifiedWrapper;->wrappedValue:Ljava/time/Clock;

    invoke-static {p1}, Lj$/time/TimeConversions;->convert(Lj$/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/time/Clock;->withZone(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object p1

    invoke-static {p1}, Lj$/time/Clock$VivifiedWrapper;->convert(Ljava/time/Clock;)Lj$/time/Clock;

    move-result-object p1

    return-object p1
.end method
