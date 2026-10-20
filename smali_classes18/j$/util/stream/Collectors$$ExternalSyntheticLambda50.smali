.class public final synthetic Lj$/util/stream/Collectors$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lj$/util/stream/Collector;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/Collector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda50;->f$0:Lj$/util/stream/Collector;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda50;->f$0:Lj$/util/stream/Collector;

    invoke-static {v0}, Lj$/util/stream/Collectors;->lambda$partitioningBy$64(Lj$/util/stream/Collector;)Lj$/util/stream/Collectors$Partition;

    move-result-object v0

    return-object v0
.end method
