.class Lj$/util/stream/ReduceOps$11ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Lj$/util/stream/ReduceOps$AccumulatingSink;
.implements Lj$/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/ReduceOps;->makeDouble(DLjava/util/function/DoubleBinaryOperator;)Lj$/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/stream/ReduceOps$AccumulatingSink<",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "Lj$/util/stream/ReduceOps$11ReducingSink;",
        ">;",
        "Lj$/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field private state:D

.field final synthetic val$identity:D

.field final synthetic val$operator:Ljava/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(DLjava/util/function/DoubleBinaryOperator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 634
    iput-wide p1, p0, Lj$/util/stream/ReduceOps$11ReducingSink;->val$identity:D

    iput-object p3, p0, Lj$/util/stream/ReduceOps$11ReducingSink;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 6
    .param p1, "t"    # D

    .line 645
    iget-object v0, p0, Lj$/util/stream/ReduceOps$11ReducingSink;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Lj$/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-interface {v0, v1, v2, p1, p2}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lj$/util/stream/ReduceOps$11ReducingSink;->state:D

    .line 646
    return-void
.end method

.method public synthetic accept(I)V
    .registers 2

    invoke-static {p0, p1}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;I)V

    return-void
.end method

.method public synthetic accept(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;J)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Double;)V
    .registers 2

    invoke-static {p0, p1}, Lj$/util/stream/Sink$OfDouble$-CC;->$default$accept(Lj$/util/stream/Sink$OfDouble;Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lj$/util/stream/Sink$OfDouble$-CC;->$default$accept(Lj$/util/stream/Sink$OfDouble;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method public begin(J)V
    .registers 5
    .param p1, "size"    # J

    .line 640
    iget-wide v0, p0, Lj$/util/stream/ReduceOps$11ReducingSink;->val$identity:D

    iput-wide v0, p0, Lj$/util/stream/ReduceOps$11ReducingSink;->state:D

    .line 641
    return-void
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$cancellationRequested(Lj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public combine(Lj$/util/stream/ReduceOps$11ReducingSink;)V
    .registers 4
    .param p1, "other"    # Lj$/util/stream/ReduceOps$11ReducingSink;

    .line 655
    iget-wide v0, p1, Lj$/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-virtual {p0, v0, v1}, Lj$/util/stream/ReduceOps$11ReducingSink;->accept(D)V

    .line 656
    return-void
.end method

.method public bridge synthetic combine(Lj$/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    .line 634
    check-cast p1, Lj$/util/stream/ReduceOps$11ReducingSink;

    invoke-virtual {p0, p1}, Lj$/util/stream/ReduceOps$11ReducingSink;->combine(Lj$/util/stream/ReduceOps$11ReducingSink;)V

    return-void
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$end(Lj$/util/stream/Sink;)V

    return-void
.end method

.method public get()Ljava/lang/Double;
    .registers 3

    .line 650
    iget-wide v0, p0, Lj$/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 634
    invoke-virtual {p0}, Lj$/util/stream/ReduceOps$11ReducingSink;->get()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
