.class final Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;
.super Lj$/util/stream/Nodes$SizedCollectorTask;
.source "Nodes.java"

# interfaces
.implements Lj$/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes$SizedCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/Nodes$SizedCollectorTask<",
        "TP_IN;",
        "Ljava/lang/Long;",
        "Lj$/util/stream/Sink$OfLong;",
        "Lj$/util/stream/Nodes$SizedCollectorTask$OfLong<",
        "TP_IN;>;>;",
        "Lj$/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field private final array:[J


# direct methods
.method constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/PipelineHelper;[J)V
    .locals 1
    .param p3, "array"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;",
            "Lj$/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;[J)V"
        }
    .end annotation

    .line 1974
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<TP_IN;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p2, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0}, Lj$/util/stream/Nodes$SizedCollectorTask;-><init>(Lj$/util/Spliterator;Lj$/util/stream/PipelineHelper;I)V

    .line 1975
    iput-object p3, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    .line 1976
    return-void
.end method

.method constructor <init>(Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;Lj$/util/Spliterator;JJ)V
    .locals 9
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Nodes$SizedCollectorTask$OfLong<",
            "TP_IN;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;JJ)V"
        }
    .end annotation

    .line 1980
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<TP_IN;>;"
    .local p1, "parent":Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<TP_IN;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    iget-object v0, p1, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    array-length v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lj$/util/stream/Nodes$SizedCollectorTask;-><init>(Lj$/util/stream/Nodes$SizedCollectorTask;Lj$/util/Spliterator;JJI)V

    .line 1981
    iget-object v0, p1, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    iput-object v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    .line 1982
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "value"    # J

    .line 1992
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<TP_IN;>;"
    iget v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;->index:I

    iget v1, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;->fence:I

    if-ge v0, v1, :cond_0

    .line 1995
    iget-object v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    iget v1, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;->index:I

    aput-wide p1, v0, v1

    .line 1996
    return-void

    .line 1993
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
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

.method public synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/LongConsumer$-CC;->$default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method

.method makeChild(Lj$/util/Spliterator;JJ)Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;
    .locals 8
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;JJ)",
            "Lj$/util/stream/Nodes$SizedCollectorTask$OfLong<",
            "TP_IN;>;"
        }
    .end annotation

    .line 1987
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<TP_IN;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v7, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;-><init>(Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;Lj$/util/Spliterator;JJ)V

    return-object v7
.end method

.method bridge synthetic makeChild(Lj$/util/Spliterator;JJ)Lj$/util/stream/Nodes$SizedCollectorTask;
    .locals 0

    .line 1967
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<TP_IN;>;"
    invoke-virtual/range {p0 .. p5}, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;->makeChild(Lj$/util/Spliterator;JJ)Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;

    move-result-object p1

    return-object p1
.end method
