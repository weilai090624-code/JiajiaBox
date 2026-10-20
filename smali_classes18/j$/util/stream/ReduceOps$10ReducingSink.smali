.class Lj$/util/stream/ReduceOps$10ReducingSink;
.super Lj$/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Lj$/util/stream/ReduceOps$AccumulatingSink;
.implements Lj$/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/ReduceOps;->makeLong(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BinaryOperator;)Lj$/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/ReduceOps$Box<",
        "TR;>;",
        "Lj$/util/stream/ReduceOps$AccumulatingSink<",
        "Ljava/lang/Long;",
        "TR;",
        "Lj$/util/stream/ReduceOps$10ReducingSink;",
        ">;",
        "Lj$/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava/util/function/ObjLongConsumer;

.field final synthetic val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic val$supplier:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 560
    iput-object p1, p0, Lj$/util/stream/ReduceOps$10ReducingSink;->val$supplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Lj$/util/stream/ReduceOps$10ReducingSink;->val$accumulator:Ljava/util/function/ObjLongConsumer;

    iput-object p3, p0, Lj$/util/stream/ReduceOps$10ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    invoke-direct {p0}, Lj$/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;D)V

    return-void
.end method

.method public synthetic accept(I)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;I)V

    return-void
.end method

.method public accept(J)V
    .locals 2
    .param p1, "t"    # J

    .line 569
    iget-object v0, p0, Lj$/util/stream/ReduceOps$10ReducingSink;->val$accumulator:Ljava/util/function/ObjLongConsumer;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/ObjLongConsumer;->accept(Ljava/lang/Object;J)V

    .line 570
    return-void
.end method

.method public synthetic accept(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Sink$OfLong$-CC;->$default$accept(Lj$/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Sink$OfLong$-CC;->$default$accept(Lj$/util/stream/Sink$OfLong;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/LongConsumer$-CC;->$default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method

.method public begin(J)V
    .locals 1
    .param p1, "size"    # J

    .line 564
    iget-object v0, p0, Lj$/util/stream/ReduceOps$10ReducingSink;->val$supplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    .line 565
    return-void
.end method

.method public synthetic cancellationRequested()Z
    .locals 1

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$cancellationRequested(Lj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public combine(Lj$/util/stream/ReduceOps$10ReducingSink;)V
    .locals 3
    .param p1, "other"    # Lj$/util/stream/ReduceOps$10ReducingSink;

    .line 574
    iget-object v0, p0, Lj$/util/stream/ReduceOps$10ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    iget-object v2, p1, Lj$/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    .line 575
    return-void
.end method

.method public bridge synthetic combine(Lj$/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 560
    check-cast p1, Lj$/util/stream/ReduceOps$10ReducingSink;

    invoke-virtual {p0, p1}, Lj$/util/stream/ReduceOps$10ReducingSink;->combine(Lj$/util/stream/ReduceOps$10ReducingSink;)V

    return-void
.end method

.method public synthetic end()V
    .locals 0

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$end(Lj$/util/stream/Sink;)V

    return-void
.end method
