.class public final synthetic Lj$/util/concurrent/Flow$Publisher$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/concurrent/Flow$Publisher;


# instance fields
.field public final synthetic wrappedValue:Ljava/util/concurrent/Flow$Publisher;


# direct methods
.method private synthetic constructor <init>(Ljava/util/concurrent/Flow$Publisher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/concurrent/Flow$Publisher$VivifiedWrapper;->wrappedValue:Ljava/util/concurrent/Flow$Publisher;

    return-void
.end method

.method public static synthetic convert(Ljava/util/concurrent/Flow$Publisher;)Lj$/util/concurrent/Flow$Publisher;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Lj$/util/concurrent/Flow$Publisher$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Lj$/util/concurrent/Flow$Publisher$Wrapper;

    iget-object p0, p0, Lj$/util/concurrent/Flow$Publisher$Wrapper;->wrappedValue:Lj$/util/concurrent/Flow$Publisher;

    return-object p0

    :cond_d
    new-instance v0, Lj$/util/concurrent/Flow$Publisher$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/util/concurrent/Flow$Publisher$VivifiedWrapper;-><init>(Ljava/util/concurrent/Flow$Publisher;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lj$/util/concurrent/Flow$Publisher$VivifiedWrapper;->wrappedValue:Ljava/util/concurrent/Flow$Publisher;

    instance-of v1, p1, Lj$/util/concurrent/Flow$Publisher$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Lj$/util/concurrent/Flow$Publisher$VivifiedWrapper;

    iget-object p1, p1, Lj$/util/concurrent/Flow$Publisher$VivifiedWrapper;->wrappedValue:Ljava/util/concurrent/Flow$Publisher;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Lj$/util/concurrent/Flow$Publisher$VivifiedWrapper;->wrappedValue:Ljava/util/concurrent/Flow$Publisher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic subscribe(Lj$/util/concurrent/Flow$Subscriber;)V
    .registers 3

    iget-object v0, p0, Lj$/util/concurrent/Flow$Publisher$VivifiedWrapper;->wrappedValue:Ljava/util/concurrent/Flow$Publisher;

    invoke-static {p1}, Lj$/util/concurrent/Flow$Subscriber$Wrapper;->convert(Lj$/util/concurrent/Flow$Subscriber;)Ljava/util/concurrent/Flow$Subscriber;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/Flow$Publisher;->subscribe(Ljava/util/concurrent/Flow$Subscriber;)V

    return-void
.end method
