.class public final synthetic Lj$/util/concurrent/Flow$Subscription$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/concurrent/Flow$Subscription;


# instance fields
.field public final synthetic wrappedValue:Ljava/util/concurrent/Flow$Subscription;


# direct methods
.method private synthetic constructor <init>(Ljava/util/concurrent/Flow$Subscription;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/concurrent/Flow$Subscription$VivifiedWrapper;->wrappedValue:Ljava/util/concurrent/Flow$Subscription;

    return-void
.end method

.method public static synthetic convert(Ljava/util/concurrent/Flow$Subscription;)Lj$/util/concurrent/Flow$Subscription;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Lj$/util/concurrent/Flow$Subscription$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Lj$/util/concurrent/Flow$Subscription$Wrapper;

    iget-object p0, p0, Lj$/util/concurrent/Flow$Subscription$Wrapper;->wrappedValue:Lj$/util/concurrent/Flow$Subscription;

    return-object p0

    :cond_d
    new-instance v0, Lj$/util/concurrent/Flow$Subscription$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/util/concurrent/Flow$Subscription$VivifiedWrapper;-><init>(Ljava/util/concurrent/Flow$Subscription;)V

    return-object v0
.end method


# virtual methods
.method public synthetic cancel()V
    .registers 2

    iget-object v0, p0, Lj$/util/concurrent/Flow$Subscription$VivifiedWrapper;->wrappedValue:Ljava/util/concurrent/Flow$Subscription;

    invoke-interface {v0}, Ljava/util/concurrent/Flow$Subscription;->cancel()V

    return-void
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lj$/util/concurrent/Flow$Subscription$VivifiedWrapper;->wrappedValue:Ljava/util/concurrent/Flow$Subscription;

    instance-of v1, p1, Lj$/util/concurrent/Flow$Subscription$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Lj$/util/concurrent/Flow$Subscription$VivifiedWrapper;

    iget-object p1, p1, Lj$/util/concurrent/Flow$Subscription$VivifiedWrapper;->wrappedValue:Ljava/util/concurrent/Flow$Subscription;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Lj$/util/concurrent/Flow$Subscription$VivifiedWrapper;->wrappedValue:Ljava/util/concurrent/Flow$Subscription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic request(J)V
    .registers 4

    iget-object v0, p0, Lj$/util/concurrent/Flow$Subscription$VivifiedWrapper;->wrappedValue:Ljava/util/concurrent/Flow$Subscription;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/Flow$Subscription;->request(J)V

    return-void
.end method
