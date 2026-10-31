.class public final synthetic Lj$/util/stream/BaseStream$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/stream/BaseStream;


# instance fields
.field public final synthetic wrappedValue:Lj$/util/stream/BaseStream;


# direct methods
.method private synthetic constructor <init>(Lj$/util/stream/BaseStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    return-void
.end method

.method public static synthetic convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Lj$/util/stream/BaseStream$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Lj$/util/stream/BaseStream$VivifiedWrapper;

    iget-object p0, p0, Lj$/util/stream/BaseStream$VivifiedWrapper;->wrappedValue:Ljava/util/stream/BaseStream;

    return-object p0

    :cond_d
    instance-of v0, p0, Lj$/util/stream/DoubleStream;

    if-eqz v0, :cond_18

    check-cast p0, Lj$/util/stream/DoubleStream;

    invoke-static {p0}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0

    :cond_18
    instance-of v0, p0, Lj$/util/stream/IntStream;

    if-eqz v0, :cond_23

    check-cast p0, Lj$/util/stream/IntStream;

    invoke-static {p0}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0

    :cond_23
    instance-of v0, p0, Lj$/util/stream/LongStream;

    if-eqz v0, :cond_2e

    check-cast p0, Lj$/util/stream/LongStream;

    invoke-static {p0}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0

    :cond_2e
    instance-of v0, p0, Lj$/util/stream/Stream;

    if-eqz v0, :cond_39

    check-cast p0, Lj$/util/stream/Stream;

    invoke-static {p0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_39
    new-instance v0, Lj$/util/stream/BaseStream$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/stream/BaseStream$Wrapper;-><init>(Lj$/util/stream/BaseStream;)V

    return-object v0
.end method


# virtual methods
.method public synthetic close()V
    .registers 2

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->close()V

    return-void
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    instance-of v1, p1, Lj$/util/stream/BaseStream$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Lj$/util/stream/BaseStream$Wrapper;

    iget-object p1, p1, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isParallel()Z
    .registers 2

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->isParallel()Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;
    .registers 3

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    invoke-interface {v0, p1}, Lj$/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic parallel()Ljava/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->parallel()Lj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic sequential()Ljava/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic unordered()Ljava/util/stream/BaseStream;
    .registers 2

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->unordered()Lj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method
