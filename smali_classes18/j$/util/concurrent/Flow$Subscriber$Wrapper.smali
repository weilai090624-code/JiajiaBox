.class public final synthetic Lj$/util/concurrent/Flow$Subscriber$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Flow$Subscriber;


# instance fields
.field public final synthetic wrappedValue:Lj$/util/concurrent/Flow$Subscriber;


# direct methods
.method private synthetic constructor <init>(Lj$/util/concurrent/Flow$Subscriber;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/concurrent/Flow$Subscriber$Wrapper;->wrappedValue:Lj$/util/concurrent/Flow$Subscriber;

    return-void
.end method

.method public static synthetic convert(Lj$/util/concurrent/Flow$Subscriber;)Ljava/util/concurrent/Flow$Subscriber;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/concurrent/Flow$Subscriber$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/concurrent/Flow$Subscriber$VivifiedWrapper;

    iget-object p0, p0, Lj$/util/concurrent/Flow$Subscriber$VivifiedWrapper;->wrappedValue:Ljava/util/concurrent/Flow$Subscriber;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/concurrent/Flow$Subscriber$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/concurrent/Flow$Subscriber$Wrapper;-><init>(Lj$/util/concurrent/Flow$Subscriber;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/concurrent/Flow$Subscriber$Wrapper;->wrappedValue:Lj$/util/concurrent/Flow$Subscriber;

    instance-of v1, p1, Lj$/util/concurrent/Flow$Subscriber$Wrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/concurrent/Flow$Subscriber$Wrapper;

    iget-object p1, p1, Lj$/util/concurrent/Flow$Subscriber$Wrapper;->wrappedValue:Lj$/util/concurrent/Flow$Subscriber;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/concurrent/Flow$Subscriber$Wrapper;->wrappedValue:Lj$/util/concurrent/Flow$Subscriber;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic onComplete()V
    .locals 1

    iget-object v0, p0, Lj$/util/concurrent/Flow$Subscriber$Wrapper;->wrappedValue:Lj$/util/concurrent/Flow$Subscriber;

    invoke-interface {v0}, Lj$/util/concurrent/Flow$Subscriber;->onComplete()V

    return-void
.end method

.method public synthetic onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lj$/util/concurrent/Flow$Subscriber$Wrapper;->wrappedValue:Lj$/util/concurrent/Flow$Subscriber;

    invoke-interface {v0, p1}, Lj$/util/concurrent/Flow$Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/concurrent/Flow$Subscriber$Wrapper;->wrappedValue:Lj$/util/concurrent/Flow$Subscriber;

    invoke-interface {v0, p1}, Lj$/util/concurrent/Flow$Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onSubscribe(Ljava/util/concurrent/Flow$Subscription;)V
    .locals 1

    iget-object v0, p0, Lj$/util/concurrent/Flow$Subscriber$Wrapper;->wrappedValue:Lj$/util/concurrent/Flow$Subscriber;

    invoke-static {p1}, Lj$/util/concurrent/Flow$Subscription$VivifiedWrapper;->convert(Ljava/util/concurrent/Flow$Subscription;)Lj$/util/concurrent/Flow$Subscription;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/concurrent/Flow$Subscriber;->onSubscribe(Lj$/util/concurrent/Flow$Subscription;)V

    return-void
.end method
