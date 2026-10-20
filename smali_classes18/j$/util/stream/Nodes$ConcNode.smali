.class final Lj$/util/stream/Nodes$ConcNode;
.super Lj$/util/stream/Nodes$AbstractConcNode;
.source "Nodes.java"

# interfaces
.implements Lj$/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/Nodes$ConcNode$OfDouble;,
        Lj$/util/stream/Nodes$ConcNode$OfLong;,
        Lj$/util/stream/Nodes$ConcNode$OfInt;,
        Lj$/util/stream/Nodes$ConcNode$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/Nodes$AbstractConcNode<",
        "TT;",
        "Lj$/util/stream/Node<",
        "TT;>;>;",
        "Lj$/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/stream/Node;Lj$/util/stream/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Node<",
            "TT;>;",
            "Lj$/util/stream/Node<",
            "TT;>;)V"
        }
    .end annotation

    .line 791
    .local p0, "this":Lj$/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "left":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p2, "right":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/Nodes$AbstractConcNode;-><init>(Lj$/util/stream/Node;Lj$/util/stream/Node;)V

    .line 792
    return-void
.end method


# virtual methods
.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 810
    .local p0, "this":Lj$/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    invoke-virtual {p0}, Lj$/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    .line 811
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 813
    long-to-int v2, v0

    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 814
    .local v2, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lj$/util/stream/Nodes$ConcNode;->copyInto([Ljava/lang/Object;I)V

    .line 815
    return-object v2

    .line 812
    .end local v2    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 3
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 801
    .local p0, "this":Lj$/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    iget-object v0, p0, Lj$/util/stream/Nodes$ConcNode;->left:Lj$/util/stream/Node;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    .line 805
    iget-object v0, p0, Lj$/util/stream/Nodes$ConcNode;->right:Lj$/util/stream/Node;

    iget-object v1, p0, Lj$/util/stream/Nodes$ConcNode;->left:Lj$/util/stream/Node;

    invoke-interface {v1}, Lj$/util/stream/Node;->count()J

    move-result-wide v1

    long-to-int v2, v1

    add-int/2addr v2, p2

    invoke-interface {v0, p1, v2}, Lj$/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    .line 806
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 820
    .local p0, "this":Lj$/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Lj$/util/stream/Nodes$ConcNode;->left:Lj$/util/stream/Node;

    invoke-interface {v0, p1}, Lj$/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    .line 821
    iget-object v0, p0, Lj$/util/stream/Nodes$ConcNode;->right:Lj$/util/stream/Node;

    invoke-interface {v0, p1}, Lj$/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    .line 822
    return-void
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

    .line 796
    .local p0, "this":Lj$/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    new-instance v0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;

    invoke-direct {v0, p0}, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;-><init>(Lj$/util/stream/Node;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 841
    .local p0, "this":Lj$/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    invoke-virtual {p0}, Lj$/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    .line 842
    iget-object v0, p0, Lj$/util/stream/Nodes$ConcNode;->left:Lj$/util/stream/Node;

    iget-object v1, p0, Lj$/util/stream/Nodes$ConcNode;->right:Lj$/util/stream/Node;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    const-string v0, "ConcNode[%s.%s]"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 844
    :cond_0
    invoke-virtual {p0}, Lj$/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v0, "ConcNode[size=%d]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 16
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)",
            "Lj$/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 826
    .local p0, "this":Lj$/util/stream/Nodes$ConcNode;, "Ljava/util/stream/Nodes$ConcNode<TT;>;"
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lj$/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v1

    cmp-long v3, p3, v1

    if-nez v3, :cond_0

    .line 827
    return-object v0

    .line 828
    :cond_0
    iget-object v1, v0, Lj$/util/stream/Nodes$ConcNode;->left:Lj$/util/stream/Node;

    invoke-interface {v1}, Lj$/util/stream/Node;->count()J

    move-result-wide v8

    .line 829
    .local v8, "leftCount":J
    cmp-long v1, p1, v8

    if-ltz v1, :cond_1

    .line 830
    iget-object v2, v0, Lj$/util/stream/Nodes$ConcNode;->right:Lj$/util/stream/Node;

    sub-long v3, p1, v8

    sub-long v5, p3, v8

    move-object/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lj$/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v1

    return-object v1

    .line 831
    :cond_1
    cmp-long v1, p3, v8

    if-gtz v1, :cond_2

    .line 832
    iget-object v2, v0, Lj$/util/stream/Nodes$ConcNode;->left:Lj$/util/stream/Node;

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lj$/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v1

    return-object v1

    .line 834
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lj$/util/stream/Nodes$ConcNode;->getShape()Lj$/util/stream/StreamShape;

    move-result-object v1

    iget-object v2, v0, Lj$/util/stream/Nodes$ConcNode;->left:Lj$/util/stream/Node;

    move-wide/from16 v3, p1

    move-wide v5, v8

    move-object/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lj$/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v2

    iget-object v10, v0, Lj$/util/stream/Nodes$ConcNode;->right:Lj$/util/stream/Node;

    sub-long v13, p3, v8

    .line 835
    const-wide/16 v11, 0x0

    move-object/from16 v15, p5

    invoke-interface/range {v10 .. v15}, Lj$/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v3

    .line 834
    invoke-static {v1, v2, v3}, Lj$/util/stream/Nodes;->conc(Lj$/util/stream/StreamShape;Lj$/util/stream/Node;Lj$/util/stream/Node;)Lj$/util/stream/Node;

    move-result-object v1

    return-object v1
.end method
