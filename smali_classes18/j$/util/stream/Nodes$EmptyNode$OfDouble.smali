.class final Lj$/util/stream/Nodes$EmptyNode$OfDouble;
.super Lj$/util/stream/Nodes$EmptyNode;
.source "Nodes.java"

# interfaces
.implements Lj$/util/stream/Node$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes$EmptyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Nodes$EmptyNode<",
        "Ljava/lang/Double;",
        "[D",
        "Ljava/util/function/DoubleConsumer;",
        ">;",
        "Lj$/util/stream/Node$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 631
    invoke-direct {p0}, Lj$/util/stream/Nodes$EmptyNode;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .line 627
    invoke-virtual {p0}, Lj$/util/stream/Nodes$EmptyNode$OfDouble;->asPrimitiveArray()[D

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[D
    .registers 2

    .line 640
    invoke-static {}, Lj$/util/stream/Nodes;->-$$Nest$sfgetEMPTY_DOUBLE_ARRAY()[D

    move-result-object v0

    return-object v0
.end method

.method public synthetic copyInto([Ljava/lang/Double;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lj$/util/stream/Node$OfDouble$-CC;->$default$copyInto(Lj$/util/stream/Node$OfDouble;[Ljava/lang/Double;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lj$/util/stream/Node$OfDouble$-CC;->$default$copyInto(Lj$/util/stream/Node$OfDouble;[Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic forEach(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Lj$/util/stream/Node$OfDouble$-CC;->$default$forEach(Lj$/util/stream/Node$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic getChild(I)Lj$/util/stream/Node$OfPrimitive;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/stream/Node$OfPrimitive$-CC;->$default$getChild(Lj$/util/stream/Node$OfPrimitive;I)Lj$/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChild(I)Lj$/util/stream/Node;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/stream/Node$OfPrimitive$-CC;->$default$getChild(Lj$/util/stream/Node$OfPrimitive;I)Lj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getShape()Lj$/util/stream/StreamShape;
    .registers 2

    invoke-static {p0}, Lj$/util/stream/Node$OfDouble$-CC;->$default$getShape(Lj$/util/stream/Node$OfDouble;)Lj$/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/stream/Node$OfDouble$-CC;->$default$newArray(Lj$/util/stream/Node$OfDouble;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[D
    .registers 2

    invoke-static {p0, p1}, Lj$/util/stream/Node$OfDouble$-CC;->$default$newArray(Lj$/util/stream/Node$OfDouble;I)[D

    move-result-object p1

    return-object p1
.end method

.method public spliterator()Lj$/util/Spliterator$OfDouble;
    .registers 2

    .line 635
    invoke-static {}, Lj$/util/Spliterators;->emptyDoubleSpliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator$OfPrimitive;
    .registers 2

    .line 627
    invoke-virtual {p0}, Lj$/util/stream/Nodes$EmptyNode$OfDouble;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator;
    .registers 2

    .line 627
    invoke-virtual {p0}, Lj$/util/stream/Nodes$EmptyNode$OfDouble;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfDouble;
    .registers 6

    invoke-static/range {p0 .. p5}, Lj$/util/stream/Node$OfDouble$-CC;->$default$truncate(Lj$/util/stream/Node$OfDouble;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfPrimitive;
    .registers 6

    invoke-static/range {p0 .. p5}, Lj$/util/stream/Node$OfDouble$-CC;->$default$truncate(Lj$/util/stream/Node$OfDouble;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;
    .registers 6

    invoke-static/range {p0 .. p5}, Lj$/util/stream/Node$OfDouble$-CC;->$default$truncate(Lj$/util/stream/Node$OfDouble;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method
