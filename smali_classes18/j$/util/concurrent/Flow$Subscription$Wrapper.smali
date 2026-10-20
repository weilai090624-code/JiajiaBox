.class public final synthetic Lj$/util/concurrent/Flow$Subscription$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Flow$Subscription;


# instance fields
.field public final synthetic wrappedValue:Lj$/util/concurrent/Flow$Subscription;


# direct methods
.method private synthetic constructor <init>(Lj$/util/concurrent/Flow$Subscription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/concurrent/Flow$Subscription$Wrapper;->wrappedValue:Lj$/util/concurrent/Flow$Subscription;

    return-void
.end method

.method public static synthetic convert(Lj$/util/concurrent/Flow$Subscription;)Ljava/util/concurrent/Flow$Subscription;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/concurrent/Flow$Subscription$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/concurrent/Flow$Subscription$VivifiedWrapper;

    iget-object p0, p0, Lj$/util/concurrent/Flow$Subscription$VivifiedWrapper;->wrappedValue:Ljava/util/concurrent/Flow$Subscription;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/concurrent/Flow$Subscription$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/concurrent/Flow$Subscription$Wrapper;-><init>(Lj$/util/concurrent/Flow$Subscription;)V

    return-object v0
.end method


# virtual methods
.method public synthetic cancel()V
    .locals 1

    iget-object v0, p0, Lj$/util/concurrent/Flow$Subscription$Wrapper;->wrappedValue:Lj$/util/concurrent/Flow$Subscription;

    invoke-interface {v0}, Lj$/util/concurrent/Flow$Subscription;->cancel()V

    return-void
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/concurrent/Flow$Subscription$Wrapper;->wrappedValue:Lj$/util/concurrent/Flow$Subscription;

    instance-of v1, p1, Lj$/util/concurrent/Flow$Subscription$Wrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/concurrent/Flow$Subscription$Wrapper;

    iget-object p1, p1, Lj$/util/concurrent/Flow$Subscription$Wrapper;->wrappedValue:Lj$/util/concurrent/Flow$Subscription;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/concurrent/Flow$Subscription$Wrapper;->wrappedValue:Lj$/util/concurrent/Flow$Subscription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic request(J)V
    .locals 1

    iget-object v0, p0, Lj$/util/concurrent/Flow$Subscription$Wrapper;->wrappedValue:Lj$/util/concurrent/Flow$Subscription;

    invoke-interface {v0, p1, p2}, Lj$/util/concurrent/Flow$Subscription;->request(J)V

    return-void
.end method
