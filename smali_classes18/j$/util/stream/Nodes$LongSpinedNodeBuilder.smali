.class final Lj$/util/stream/Nodes$LongSpinedNodeBuilder;
.super Lj$/util/stream/SpinedBuffer$OfLong;
.source "Nodes.java"

# interfaces
.implements Lj$/util/stream/Node$OfLong;
.implements Lj$/util/stream/Node$Builder$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongSpinedNodeBuilder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private building:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1706
    const-class v0, Lj$/util/stream/Nodes;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1711
    invoke-direct {p0}, Lj$/util/stream/SpinedBuffer$OfLong;-><init>()V

    .line 1709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    .line 1711
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
    .locals 0
    .param p1, "i"    # J

    .line 1736
    nop

    .line 1737
    invoke-super {p0, p1, p2}, Lj$/util/stream/SpinedBuffer$OfLong;->accept(J)V

    .line 1738
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

.method public synthetic asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$OfPrimitive$-CC;->$default$asArray(Lj$/util/stream/Node$OfPrimitive;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .line 1706
    invoke-virtual {p0}, Lj$/util/stream/Nodes$LongSpinedNodeBuilder;->asPrimitiveArray()[J

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[J
    .locals 1

    .line 1755
    nop

    .line 1756
    invoke-super {p0}, Lj$/util/stream/SpinedBuffer$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public begin(J)V
    .locals 1
    .param p1, "size"    # J

    .line 1728
    nop

    .line 1729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    .line 1730
    invoke-virtual {p0}, Lj$/util/stream/Nodes$LongSpinedNodeBuilder;->clear()V

    .line 1731
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/Nodes$LongSpinedNodeBuilder;->ensureCapacity(J)V

    .line 1732
    return-void
.end method

.method public build()Lj$/util/stream/Node$OfLong;
    .locals 0

    .line 1761
    nop

    .line 1762
    return-object p0
.end method

.method public bridge synthetic build()Lj$/util/stream/Node;
    .locals 1

    .line 1706
    invoke-virtual {p0}, Lj$/util/stream/Nodes$LongSpinedNodeBuilder;->build()Lj$/util/stream/Node$OfLong;

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

    .line 1706
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/Nodes$LongSpinedNodeBuilder;->copyInto([JI)V

    return-void
.end method

.method public copyInto([JI)V
    .locals 0
    .param p1, "array"    # [J
    .param p2, "offset"    # I

    .line 1749
    nop

    .line 1750
    invoke-super {p0, p1, p2}, Lj$/util/stream/SpinedBuffer$OfLong;->copyInto(Ljava/lang/Object;I)V

    .line 1751
    return-void
.end method

.method public synthetic copyInto([Ljava/lang/Long;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Node$OfLong$-CC;->$default$copyInto(Lj$/util/stream/Node$OfLong;[Ljava/lang/Long;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Node$OfLong$-CC;->$default$copyInto(Lj$/util/stream/Node$OfLong;[Ljava/lang/Object;I)V

    return-void
.end method

.method public end()V
    .locals 1

    .line 1742
    nop

    .line 1743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    .line 1745
    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0

    .line 1706
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Nodes$LongSpinedNodeBuilder;->forEach(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public forEach(Ljava/util/function/LongConsumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 1721
    nop

    .line 1722
    invoke-super {p0, p1}, Lj$/util/stream/SpinedBuffer$OfLong;->forEach(Ljava/lang/Object;)V

    .line 1723
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

    invoke-static {p0}, Lj$/util/stream/Node$OfLong$-CC;->$default$getShape(Lj$/util/stream/Node$OfLong;)Lj$/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Lj$/util/Spliterator$OfLong;
    .locals 1

    .line 1715
    nop

    .line 1716
    invoke-super {p0}, Lj$/util/stream/SpinedBuffer$OfLong;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1706
    invoke-virtual {p0}, Lj$/util/stream/Nodes$LongSpinedNodeBuilder;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 1706
    invoke-virtual {p0}, Lj$/util/stream/Nodes$LongSpinedNodeBuilder;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfLong;
    .locals 0

    invoke-static/range {p0 .. p5}, Lj$/util/stream/Node$OfLong$-CC;->$default$truncate(Lj$/util/stream/Node$OfLong;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfPrimitive;
    .locals 0

    invoke-static/range {p0 .. p5}, Lj$/util/stream/Node$OfLong$-CC;->$default$truncate(Lj$/util/stream/Node$OfLong;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0

    invoke-static/range {p0 .. p5}, Lj$/util/stream/Node$OfLong$-CC;->$default$truncate(Lj$/util/stream/Node$OfLong;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method
