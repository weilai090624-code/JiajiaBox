.class Lj$/util/stream/ReduceOps$6ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Lj$/util/stream/ReduceOps$AccumulatingSink;
.implements Lj$/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/ReduceOps;->makeInt(Ljava/util/function/IntBinaryOperator;)Lj$/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/stream/ReduceOps$AccumulatingSink<",
        "Ljava/lang/Integer;",
        "Lj$/util/OptionalInt;",
        "Lj$/util/stream/ReduceOps$6ReducingSink;",
        ">;",
        "Lj$/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field private empty:Z

.field private state:I

.field final synthetic val$operator:Ljava/util/function/IntBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/function/IntBinaryOperator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lj$/util/stream/ReduceOps$6ReducingSink;->val$operator:Ljava/util/function/IntBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .registers 3

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;D)V

    return-void
.end method

.method public accept(I)V
    .registers 4
    .param p1, "t"    # I

    .line 340
    iget-boolean v0, p0, Lj$/util/stream/ReduceOps$6ReducingSink;->empty:Z

    if-eqz v0, :cond_a

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/ReduceOps$6ReducingSink;->empty:Z

    .line 342
    iput p1, p0, Lj$/util/stream/ReduceOps$6ReducingSink;->state:I

    goto :goto_14

    .line 345
    :cond_a
    iget-object v0, p0, Lj$/util/stream/ReduceOps$6ReducingSink;->val$operator:Ljava/util/function/IntBinaryOperator;

    iget v1, p0, Lj$/util/stream/ReduceOps$6ReducingSink;->state:I

    invoke-interface {v0, v1, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    iput v0, p0, Lj$/util/stream/ReduceOps$6ReducingSink;->state:I

    .line 347
    :goto_14
    return-void
.end method

.method public synthetic accept(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;J)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Integer;)V
    .registers 2

    invoke-static {p0, p1}, Lj$/util/stream/Sink$OfInt$-CC;->$default$accept(Lj$/util/stream/Sink$OfInt;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lj$/util/stream/Sink$OfInt$-CC;->$default$accept(Lj$/util/stream/Sink$OfInt;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public begin(J)V
    .registers 4
    .param p1, "size"    # J

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/ReduceOps$6ReducingSink;->empty:Z

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/ReduceOps$6ReducingSink;->state:I

    .line 336
    return-void
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$cancellationRequested(Lj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public combine(Lj$/util/stream/ReduceOps$6ReducingSink;)V
    .registers 3
    .param p1, "other"    # Lj$/util/stream/ReduceOps$6ReducingSink;

    .line 356
    iget-boolean v0, p1, Lj$/util/stream/ReduceOps$6ReducingSink;->empty:Z

    if-nez v0, :cond_9

    .line 357
    iget v0, p1, Lj$/util/stream/ReduceOps$6ReducingSink;->state:I

    invoke-virtual {p0, v0}, Lj$/util/stream/ReduceOps$6ReducingSink;->accept(I)V

    .line 358
    :cond_9
    return-void
.end method

.method public bridge synthetic combine(Lj$/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    .line 328
    check-cast p1, Lj$/util/stream/ReduceOps$6ReducingSink;

    invoke-virtual {p0, p1}, Lj$/util/stream/ReduceOps$6ReducingSink;->combine(Lj$/util/stream/ReduceOps$6ReducingSink;)V

    return-void
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$end(Lj$/util/stream/Sink;)V

    return-void
.end method

.method public get()Lj$/util/OptionalInt;
    .registers 2

    .line 351
    iget-boolean v0, p0, Lj$/util/stream/ReduceOps$6ReducingSink;->empty:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lj$/util/OptionalInt;->empty()Lj$/util/OptionalInt;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget v0, p0, Lj$/util/stream/ReduceOps$6ReducingSink;->state:I

    invoke-static {v0}, Lj$/util/OptionalInt;->of(I)Lj$/util/OptionalInt;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 328
    invoke-virtual {p0}, Lj$/util/stream/ReduceOps$6ReducingSink;->get()Lj$/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method
