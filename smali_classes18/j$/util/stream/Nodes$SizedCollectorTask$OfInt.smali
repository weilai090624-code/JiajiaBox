.class final Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;
.super Lj$/util/stream/Nodes$SizedCollectorTask;
.source "Nodes.java"

# interfaces
.implements Lj$/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes$SizedCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/Nodes$SizedCollectorTask<",
        "TP_IN;",
        "Ljava/lang/Integer;",
        "Lj$/util/stream/Sink$OfInt;",
        "Lj$/util/stream/Nodes$SizedCollectorTask$OfInt<",
        "TP_IN;>;>;",
        "Lj$/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field private final array:[I


# direct methods
.method constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/PipelineHelper;[I)V
    .locals 1
    .param p3, "array"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;",
            "Lj$/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 1942
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfInt<TP_IN;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p2, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0}, Lj$/util/stream/Nodes$SizedCollectorTask;-><init>(Lj$/util/Spliterator;Lj$/util/stream/PipelineHelper;I)V

    .line 1943
    iput-object p3, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;->array:[I

    .line 1944
    return-void
.end method

.method constructor <init>(Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;Lj$/util/Spliterator;JJ)V
    .locals 9
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Nodes$SizedCollectorTask$OfInt<",
            "TP_IN;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;JJ)V"
        }
    .end annotation

    .line 1948
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfInt<TP_IN;>;"
    .local p1, "parent":Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfInt<TP_IN;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    iget-object v0, p1, Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;->array:[I

    array-length v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lj$/util/stream/Nodes$SizedCollectorTask;-><init>(Lj$/util/stream/Nodes$SizedCollectorTask;Lj$/util/Spliterator;JJI)V

    .line 1949
    iget-object v0, p1, Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;->array:[I

    iput-object v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;->array:[I

    .line 1950
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3
    .param p1, "value"    # I

    .line 1960
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfInt<TP_IN;>;"
    iget v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;->index:I

    iget v1, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;->fence:I

    if-ge v0, v1, :cond_0

    .line 1963
    iget-object v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;->array:[I

    iget v1, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;->index:I

    aput p1, v0, v1

    .line 1964
    return-void

    .line 1961
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic accept(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Sink$OfInt$-CC;->$default$accept(Lj$/util/stream/Sink$OfInt;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Sink$OfInt$-CC;->$default$accept(Lj$/util/stream/Sink$OfInt;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method makeChild(Lj$/util/Spliterator;JJ)Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;
    .locals 8
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;JJ)",
            "Lj$/util/stream/Nodes$SizedCollectorTask$OfInt<",
            "TP_IN;>;"
        }
    .end annotation

    .line 1955
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfInt<TP_IN;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v7, Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;-><init>(Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;Lj$/util/Spliterator;JJ)V

    return-object v7
.end method

.method bridge synthetic makeChild(Lj$/util/Spliterator;JJ)Lj$/util/stream/Nodes$SizedCollectorTask;
    .locals 0

    .line 1935
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfInt<TP_IN;>;"
    invoke-virtual/range {p0 .. p5}, Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;->makeChild(Lj$/util/Spliterator;JJ)Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;

    move-result-object p1

    return-object p1
.end method
