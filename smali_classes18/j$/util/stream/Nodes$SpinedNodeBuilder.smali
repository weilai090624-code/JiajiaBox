.class final Lj$/util/stream/Nodes$SpinedNodeBuilder;
.super Lj$/util/stream/SpinedBuffer;
.source "Nodes.java"

# interfaces
.implements Lj$/util/stream/Node;
.implements Lj$/util/stream/Node$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpinedNodeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/SpinedBuffer<",
        "TT;>;",
        "Lj$/util/stream/Node<",
        "TT;>;",
        "Lj$/util/stream/Node$Builder<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private building:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1254
    const-class v0, Lj$/util/stream/Nodes;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1259
    .local p0, "this":Lj$/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    invoke-direct {p0}, Lj$/util/stream/SpinedBuffer;-><init>()V

    .line 1257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    .line 1259
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

.method public synthetic accept(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;J)V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1284
    .local p0, "this":Lj$/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    nop

    .line 1285
    invoke-super {p0, p1}, Lj$/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    .line 1286
    return-void
.end method

.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 1303
    .local p0, "this":Lj$/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "arrayFactory":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    nop

    .line 1304
    invoke-super {p0, p1}, Lj$/util/stream/SpinedBuffer;->asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public begin(J)V
    .locals 1
    .param p1, "size"    # J

    .line 1276
    .local p0, "this":Lj$/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    nop

    .line 1277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    .line 1278
    invoke-virtual {p0}, Lj$/util/stream/Nodes$SpinedNodeBuilder;->clear()V

    .line 1279
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/Nodes$SpinedNodeBuilder;->ensureCapacity(J)V

    .line 1280
    return-void
.end method

.method public build()Lj$/util/stream/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 1309
    .local p0, "this":Lj$/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    nop

    .line 1310
    return-object p0
.end method

.method public synthetic cancellationRequested()Z
    .locals 1

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$cancellationRequested(Lj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 0
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 1297
    .local p0, "this":Lj$/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    nop

    .line 1298
    invoke-super {p0, p1, p2}, Lj$/util/stream/SpinedBuffer;->copyInto([Ljava/lang/Object;I)V

    .line 1299
    return-void
.end method

.method public end()V
    .locals 1

    .line 1290
    .local p0, "this":Lj$/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    nop

    .line 1291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    .line 1293
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1269
    .local p0, "this":Lj$/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    nop

    .line 1270
    invoke-super {p0, p1}, Lj$/util/stream/SpinedBuffer;->forEach(Ljava/util/function/Consumer;)V

    .line 1271
    return-void
.end method

.method public synthetic getChild(I)Lj$/util/stream/Node;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$getChild(Lj$/util/stream/Node;I)Lj$/util/stream/Node;

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

    invoke-static {p0}, Lj$/util/stream/Node$-CC;->$default$getShape(Lj$/util/stream/Node;)Lj$/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1263
    .local p0, "this":Lj$/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    nop

    .line 1264
    invoke-super {p0}, Lj$/util/stream/SpinedBuffer;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0

    invoke-static/range {p0 .. p5}, Lj$/util/stream/Node$-CC;->$default$truncate(Lj$/util/stream/Node;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method
