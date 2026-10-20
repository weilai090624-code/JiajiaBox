.class public final synthetic Lj$/util/stream/Collectors$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lj$/util/stream/Collector;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/Collector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda51;->f$0:Lj$/util/stream/Collector;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda51;->f$0:Lj$/util/stream/Collector;

    check-cast p1, Lj$/util/stream/Collectors$Partition;

    invoke-static {v0, p1}, Lj$/util/stream/Collectors;->lambda$partitioningBy$65(Lj$/util/stream/Collector;Lj$/util/stream/Collectors$Partition;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
