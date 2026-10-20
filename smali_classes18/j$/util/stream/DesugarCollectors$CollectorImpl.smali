.class Lj$/util/stream/DesugarCollectors$CollectorImpl;
.super Ljava/lang/Object;
.source "DesugarCollectors.java"

# interfaces
.implements Lj$/util/stream/Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/DesugarCollectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CollectorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/util/stream/Collector<",
        "TT;TA;TR;>;"
    }
.end annotation


# instance fields
.field private final accumulator:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final characteristics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field private final combiner:Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BinaryOperator<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final finisher:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TA;TR;>;"
        }
    .end annotation
.end field

.field private final supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TA;>;",
            "Ljava/util/function/BiConsumer<",
            "TA;TT;>;",
            "Ljava/util/function/BinaryOperator<",
            "TA;>;",
            "Ljava/util/Set<",
            "Lj$/util/stream/Collector$Characteristics;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p0, "this":Lj$/util/stream/DesugarCollectors$CollectorImpl;, "Ljava/util/stream/DesugarCollectors$CollectorImpl<TT;TA;TR;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local p2, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;TT;>;"
    .local p3, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    .local p4, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    invoke-static {}, Lj$/util/stream/DesugarCollectors;->-$$Nest$smcastingIdentity()Ljava/util/function/Function;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/DesugarCollectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 361
    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TA;>;",
            "Ljava/util/function/BiConsumer<",
            "TA;TT;>;",
            "Ljava/util/function/BinaryOperator<",
            "TA;>;",
            "Ljava/util/function/Function<",
            "TA;TR;>;",
            "Ljava/util/Set<",
            "Lj$/util/stream/Collector$Characteristics;",
            ">;)V"
        }
    .end annotation

    .line 348
    .local p0, "this":Lj$/util/stream/DesugarCollectors$CollectorImpl;, "Ljava/util/stream/DesugarCollectors$CollectorImpl<TT;TA;TR;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local p2, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;TT;>;"
    .local p3, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    .local p4, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TR;>;"
    .local p5, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p1, p0, Lj$/util/stream/DesugarCollectors$CollectorImpl;->supplier:Ljava/util/function/Supplier;

    .line 350
    iput-object p2, p0, Lj$/util/stream/DesugarCollectors$CollectorImpl;->accumulator:Ljava/util/function/BiConsumer;

    .line 351
    iput-object p3, p0, Lj$/util/stream/DesugarCollectors$CollectorImpl;->combiner:Ljava/util/function/BinaryOperator;

    .line 352
    iput-object p4, p0, Lj$/util/stream/DesugarCollectors$CollectorImpl;->finisher:Ljava/util/function/Function;

    .line 353
    iput-object p5, p0, Lj$/util/stream/DesugarCollectors$CollectorImpl;->characteristics:Ljava/util/Set;

    .line 354
    return-void
.end method


# virtual methods
.method public accumulator()Ljava/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiConsumer<",
            "TA;TT;>;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lj$/util/stream/DesugarCollectors$CollectorImpl;, "Ljava/util/stream/DesugarCollectors$CollectorImpl<TT;TA;TR;>;"
    iget-object v0, p0, Lj$/util/stream/DesugarCollectors$CollectorImpl;->accumulator:Ljava/util/function/BiConsumer;

    return-object v0
.end method

.method public characteristics()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lj$/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation

    .line 385
    .local p0, "this":Lj$/util/stream/DesugarCollectors$CollectorImpl;, "Ljava/util/stream/DesugarCollectors$CollectorImpl<TT;TA;TR;>;"
    iget-object v0, p0, Lj$/util/stream/DesugarCollectors$CollectorImpl;->characteristics:Ljava/util/Set;

    return-object v0
.end method

.method public combiner()Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BinaryOperator<",
            "TA;>;"
        }
    .end annotation

    .line 375
    .local p0, "this":Lj$/util/stream/DesugarCollectors$CollectorImpl;, "Ljava/util/stream/DesugarCollectors$CollectorImpl<TT;TA;TR;>;"
    iget-object v0, p0, Lj$/util/stream/DesugarCollectors$CollectorImpl;->combiner:Ljava/util/function/BinaryOperator;

    return-object v0
.end method

.method public finisher()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "TA;TR;>;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lj$/util/stream/DesugarCollectors$CollectorImpl;, "Ljava/util/stream/DesugarCollectors$CollectorImpl<TT;TA;TR;>;"
    iget-object v0, p0, Lj$/util/stream/DesugarCollectors$CollectorImpl;->finisher:Ljava/util/function/Function;

    return-object v0
.end method

.method public supplier()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "TA;>;"
        }
    .end annotation

    .line 370
    .local p0, "this":Lj$/util/stream/DesugarCollectors$CollectorImpl;, "Ljava/util/stream/DesugarCollectors$CollectorImpl<TT;TA;TR;>;"
    iget-object v0, p0, Lj$/util/stream/DesugarCollectors$CollectorImpl;->supplier:Ljava/util/function/Supplier;

    return-object v0
.end method
