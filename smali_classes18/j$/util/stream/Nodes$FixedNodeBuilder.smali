.class final Lj$/util/stream/Nodes$FixedNodeBuilder;
.super Lj$/util/stream/Nodes$ArrayNode;
.source "Nodes.java"

# interfaces
.implements Lj$/util/stream/Node$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FixedNodeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/Nodes$ArrayNode<",
        "TT;>;",
        "Lj$/util/stream/Node$Builder<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1202
    const-class v0, Lj$/util/stream/Nodes;

    return-void
.end method

.method constructor <init>(JLjava/util/function/IntFunction;)V
    .locals 0
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)V"
        }
    .end annotation

    .line 1207
    .local p0, "this":Lj$/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/Nodes$ArrayNode;-><init>(JLjava/util/function/IntFunction;)V

    .line 1208
    nop

    .line 1209
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1229
    .local p0, "this":Lj$/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    iget-object v1, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1230
    iget-object v0, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    aput-object p1, v0, v1

    .line 1235
    return-void

    .line 1232
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    .line 1233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 1232
    const-string v1, "Accept exceeded fixed size of %d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public begin(J)V
    .locals 5
    .param p1, "size"    # J

    .line 1221
    .local p0, "this":Lj$/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    iget-object v0, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    .line 1224
    iput v2, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    .line 1225
    return-void

    .line 1222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1223
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v3, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const/4 v1, 0x1

    aput-object v3, v4, v1

    .line 1222
    const-string v1, "Begin size %d is not equal to fixed size %d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lj$/util/stream/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 1213
    .local p0, "this":Lj$/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    iget v0, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    iget-object v1, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1216
    return-object p0

    .line 1214
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    .line 1215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 1214
    const-string v1, "Current size %d is less than fixed size %d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic cancellationRequested()Z
    .locals 1

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$cancellationRequested(Lj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public end()V
    .locals 5

    .line 1239
    .local p0, "this":Lj$/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    iget v0, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    iget-object v1, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1242
    return-void

    .line 1240
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    .line 1241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 1240
    const-string v1, "End size %d is less than fixed size %d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1246
    .local p0, "this":Lj$/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    iget-object v0, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    sub-int/2addr v0, v1

    .line 1247
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lj$/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 1246
    const-string v0, "FixedNodeBuilder[%d][%s]"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
