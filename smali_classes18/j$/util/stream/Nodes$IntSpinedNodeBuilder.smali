.class final Lj$/util/stream/Nodes$IntSpinedNodeBuilder;
.super Lj$/util/stream/SpinedBuffer$OfInt;
.source "Nodes.java"

# interfaces
.implements Lj$/util/stream/Node$OfInt;
.implements Lj$/util/stream/Node$Builder$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntSpinedNodeBuilder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private building:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1646
    const-class v0, Lj$/util/stream/Nodes;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1651
    invoke-direct {p0}, Lj$/util/stream/SpinedBuffer$OfInt;-><init>()V

    .line 1649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    .line 1651
    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;D)V

    return-void
.end method

.method public accept(I)V
    .locals 0
    .param p1, "i"    # I

    .line 1676
    nop

    .line 1677
    invoke-super {p0, p1}, Lj$/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 1678
    return-void
.end method

.method public synthetic accept(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;J)V

    return-void
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

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$OfPrimitive$-CC;->$default$asArray(Lj$/util/stream/Node$OfPrimitive;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .line 1646
    invoke-virtual {p0}, Lj$/util/stream/Nodes$IntSpinedNodeBuilder;->asPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[I
    .locals 1

    .line 1695
    nop

    .line 1696
    invoke-super {p0}, Lj$/util/stream/SpinedBuffer$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public begin(J)V
    .locals 1
    .param p1, "size"    # J

    .line 1668
    nop

    .line 1669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    .line 1670
    invoke-virtual {p0}, Lj$/util/stream/Nodes$IntSpinedNodeBuilder;->clear()V

    .line 1671
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/Nodes$IntSpinedNodeBuilder;->ensureCapacity(J)V

    .line 1672
    return-void
.end method

.method public build()Lj$/util/stream/Node$OfInt;
    .locals 0

    .line 1701
    nop

    .line 1702
    return-object p0
.end method

.method public bridge synthetic build()Lj$/util/stream/Node;
    .locals 1

    .line 1646
    invoke-virtual {p0}, Lj$/util/stream/Nodes$IntSpinedNodeBuilder;->build()Lj$/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic cancellationRequested()Z
    .locals 1

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$cancellationRequested(Lj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0

    .line 1646
    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/Nodes$IntSpinedNodeBuilder;->copyInto([II)V

    return-void
.end method

.method public copyInto([II)V
    .locals 0
    .param p1, "array"    # [I
    .param p2, "offset"    # I

    .line 1689
    nop

    .line 1690
    invoke-super {p0, p1, p2}, Lj$/util/stream/SpinedBuffer$OfInt;->copyInto(Ljava/lang/Object;I)V

    .line 1691
    return-void
.end method

.method public synthetic copyInto([Ljava/lang/Integer;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Node$OfInt$-CC;->$default$copyInto(Lj$/util/stream/Node$OfInt;[Ljava/lang/Integer;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Node$OfInt$-CC;->$default$copyInto(Lj$/util/stream/Node$OfInt;[Ljava/lang/Object;I)V

    return-void
.end method

.method public end()V
    .locals 1

    .line 1682
    nop

    .line 1683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    .line 1685
    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0

    .line 1646
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Nodes$IntSpinedNodeBuilder;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEach(Ljava/util/function/IntConsumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 1661
    nop

    .line 1662
    invoke-super {p0, p1}, Lj$/util/stream/SpinedBuffer$OfInt;->forEach(Ljava/lang/Object;)V

    .line 1663
    return-void
.end method

.method public synthetic getChild(I)Lj$/util/stream/Node$OfPrimitive;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$OfPrimitive$-CC;->$default$getChild(Lj$/util/stream/Node$OfPrimitive;I)Lj$/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChild(I)Lj$/util/stream/Node;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$OfPrimitive$-CC;->$default$getChild(Lj$/util/stream/Node$OfPrimitive;I)Lj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getChildCount()I
    .locals 1

    invoke-static {p0}, Lj$/util/stream/Node$-CC;->$default$getChildCount(Lj$/util/stream/Node;)I

    move-result v0

    return v0
.end method

.method public synthetic getShape()Lj$/util/stream/StreamShape;
    .locals 1

    invoke-static {p0}, Lj$/util/stream/Node$OfInt$-CC;->$default$getShape(Lj$/util/stream/Node$OfInt;)Lj$/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Lj$/util/Spliterator$OfInt;
    .locals 1

    .line 1655
    nop

    .line 1656
    invoke-super {p0}, Lj$/util/stream/SpinedBuffer$OfInt;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1646
    invoke-virtual {p0}, Lj$/util/stream/Nodes$IntSpinedNodeBuilder;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 1646
    invoke-virtual {p0}, Lj$/util/stream/Nodes$IntSpinedNodeBuilder;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfInt;
    .locals 0

    invoke-static/range {p0 .. p5}, Lj$/util/stream/Node$OfInt$-CC;->$default$truncate(Lj$/util/stream/Node$OfInt;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfPrimitive;
    .locals 0

    invoke-static/range {p0 .. p5}, Lj$/util/stream/Node$OfInt$-CC;->$default$truncate(Lj$/util/stream/Node$OfInt;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0

    invoke-static/range {p0 .. p5}, Lj$/util/stream/Node$OfInt$-CC;->$default$truncate(Lj$/util/stream/Node$OfInt;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method
