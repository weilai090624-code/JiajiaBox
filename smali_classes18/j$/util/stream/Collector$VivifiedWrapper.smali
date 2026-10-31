.class public final synthetic Lj$/util/stream/Collector$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/stream/Collector;


# instance fields
.field public final synthetic wrappedValue:Ljava/util/stream/Collector;


# direct methods
.method private synthetic constructor <init>(Ljava/util/stream/Collector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/Collector$VivifiedWrapper;->wrappedValue:Ljava/util/stream/Collector;

    return-void
.end method

.method public static synthetic convert(Ljava/util/stream/Collector;)Lj$/util/stream/Collector;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Lj$/util/stream/Collector$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Lj$/util/stream/Collector$Wrapper;

    iget-object p0, p0, Lj$/util/stream/Collector$Wrapper;->wrappedValue:Lj$/util/stream/Collector;

    return-object p0

    :cond_d
    new-instance v0, Lj$/util/stream/Collector$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/util/stream/Collector$VivifiedWrapper;-><init>(Ljava/util/stream/Collector;)V

    return-object v0
.end method


# virtual methods
.method public synthetic accumulator()Ljava/util/function/BiConsumer;
    .registers 2

    iget-object v0, p0, Lj$/util/stream/Collector$VivifiedWrapper;->wrappedValue:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic characteristics()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lj$/util/stream/Collector$VivifiedWrapper;->wrappedValue:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/StreamApiFlips;->flipCharacteristicSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic combiner()Ljava/util/function/BinaryOperator;
    .registers 2

    iget-object v0, p0, Lj$/util/stream/Collector$VivifiedWrapper;->wrappedValue:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lj$/util/stream/Collector$VivifiedWrapper;->wrappedValue:Ljava/util/stream/Collector;

    instance-of v1, p1, Lj$/util/stream/Collector$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Lj$/util/stream/Collector$VivifiedWrapper;

    iget-object p1, p1, Lj$/util/stream/Collector$VivifiedWrapper;->wrappedValue:Ljava/util/stream/Collector;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic finisher()Ljava/util/function/Function;
    .registers 2

    iget-object v0, p0, Lj$/util/stream/Collector$VivifiedWrapper;->wrappedValue:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Lj$/util/stream/Collector$VivifiedWrapper;->wrappedValue:Ljava/util/stream/Collector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic supplier()Ljava/util/function/Supplier;
    .registers 2

    iget-object v0, p0, Lj$/util/stream/Collector$VivifiedWrapper;->wrappedValue:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    return-object v0
.end method
