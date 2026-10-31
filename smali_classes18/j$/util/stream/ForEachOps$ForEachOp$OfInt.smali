.class final Lj$/util/stream/ForEachOps$ForEachOp$OfInt;
.super Lj$/util/stream/ForEachOps$ForEachOp;
.source "ForEachOps.java"

# interfaces
.implements Lj$/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/ForEachOps$ForEachOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/ForEachOps$ForEachOp<",
        "Ljava/lang/Integer;",
        ">;",
        "Lj$/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field final consumer:Ljava/util/function/IntConsumer;


# direct methods
.method constructor <init>(Ljava/util/function/IntConsumer;Z)V
    .registers 3
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;
    .param p2, "ordered"    # Z

    .line 193
    invoke-direct {p0, p2}, Lj$/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    .line 194
    iput-object p1, p0, Lj$/util/stream/ForEachOps$ForEachOp$OfInt;->consumer:Ljava/util/function/IntConsumer;

    .line 195
    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 3
    .param p1, "t"    # I

    .line 204
    iget-object v0, p0, Lj$/util/stream/ForEachOps$ForEachOp$OfInt;->consumer:Ljava/util/function/IntConsumer;

    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 205
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

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;
    .registers 3

    .line 188
    invoke-super {p0, p1, p2}, Lj$/util/stream/ForEachOps$ForEachOp;->evaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluateSequential(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;
    .registers 3

    .line 188
    invoke-super {p0, p1, p2}, Lj$/util/stream/ForEachOps$ForEachOp;->evaluateSequential(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 188
    invoke-super {p0}, Lj$/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public inputShape()Lj$/util/stream/StreamShape;
    .registers 2

    .line 199
    sget-object v0, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    return-object v0
.end method
