.class abstract Lj$/util/stream/Nodes$ConcNode$OfPrimitive;
.super Lj$/util/stream/Nodes$AbstractConcNode;
.source "Nodes.java"

# interfaces
.implements Lj$/util/stream/Node$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes$ConcNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Lj$/util/Spliterator$OfPrimitive<",
        "TE;TT_CONS;TT_SP",
        "LITR;",
        ">;T_NODE::",
        "Lj$/util/stream/Node$OfPrimitive<",
        "TE;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;>",
        "Lj$/util/stream/Nodes$AbstractConcNode<",
        "TE;TT_NODE;>;",
        "Lj$/util/stream/Node$OfPrimitive<",
        "TE;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/stream/Node$OfPrimitive;Lj$/util/stream/Node$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;TT_NODE;)V"
        }
    .end annotation

    .line 855
    .local p0, "this":Lj$/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode$OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "left":Lj$/util/stream/Node$OfPrimitive;, "TT_NODE;"
    .local p2, "right":Lj$/util/stream/Node$OfPrimitive;, "TT_NODE;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/Nodes$AbstractConcNode;-><init>(Lj$/util/stream/Node;Lj$/util/stream/Node;)V

    .line 856
    return-void
.end method


# virtual methods
.method public synthetic asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$OfPrimitive$-CC;->$default$asArray(Lj$/util/stream/Node$OfPrimitive;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public asPrimitiveArray()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_ARR;"
        }
    .end annotation

    .line 874
    .local p0, "this":Lj$/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode$OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-virtual {p0}, Lj$/util/stream/Nodes$ConcNode$OfPrimitive;->count()J

    move-result-wide v0

    .line 875
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 877
    long-to-int v2, v0

    invoke-virtual {p0, v2}, Lj$/util/stream/Nodes$ConcNode$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v2

    .line 878
    .local v2, "array":Ljava/lang/Object;, "TT_ARR;"
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lj$/util/stream/Nodes$ConcNode$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    .line 879
    return-object v2

    .line 876
    .end local v2    # "array":Ljava/lang/Object;, "TT_ARR;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public copyInto(Ljava/lang/Object;I)V
    .locals 3
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;I)V"
        }
    .end annotation

    .line 866
    .local p0, "this":Lj$/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode$OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "array":Ljava/lang/Object;, "TT_ARR;"
    iget-object v0, p0, Lj$/util/stream/Nodes$ConcNode$OfPrimitive;->left:Lj$/util/stream/Node;

    check-cast v0, Lj$/util/stream/Node$OfPrimitive;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Node$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    .line 869
    iget-object v0, p0, Lj$/util/stream/Nodes$ConcNode$OfPrimitive;->right:Lj$/util/stream/Node;

    check-cast v0, Lj$/util/stream/Node$OfPrimitive;

    iget-object v1, p0, Lj$/util/stream/Nodes$ConcNode$OfPrimitive;->left:Lj$/util/stream/Node;

    check-cast v1, Lj$/util/stream/Node$OfPrimitive;

    invoke-interface {v1}, Lj$/util/stream/Node$OfPrimitive;->count()J

    move-result-wide v1

    long-to-int v2, v1

    add-int/2addr v2, p2

    invoke-interface {v0, p1, v2}, Lj$/util/stream/Node$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    .line 870
    return-void
.end method

.method public forEach(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 860
    .local p0, "this":Lj$/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode$OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    iget-object v0, p0, Lj$/util/stream/Nodes$ConcNode$OfPrimitive;->left:Lj$/util/stream/Node;

    check-cast v0, Lj$/util/stream/Node$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    .line 861
    iget-object v0, p0, Lj$/util/stream/Nodes$ConcNode$OfPrimitive;->right:Lj$/util/stream/Node;

    check-cast v0, Lj$/util/stream/Node$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    .line 862
    return-void
.end method

.method public bridge synthetic getChild(I)Lj$/util/stream/Node$OfPrimitive;
    .locals 0

    .line 848
    .local p0, "this":Lj$/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode$OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-super {p0, p1}, Lj$/util/stream/Nodes$AbstractConcNode;->getChild(I)Lj$/util/stream/Node;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Node$OfPrimitive;

    return-object p1
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-static {p0}, Lj$/util/stream/Node$OfPrimitive$-CC;->$default$spliterator(Lj$/util/stream/Node$OfPrimitive;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 884
    .local p0, "this":Lj$/util/stream/Nodes$ConcNode$OfPrimitive;, "Ljava/util/stream/Nodes$ConcNode$OfPrimitive<TE;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-virtual {p0}, Lj$/util/stream/Nodes$ConcNode$OfPrimitive;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    cmp-long v7, v0, v2

    if-gez v7, :cond_0

    .line 885
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/util/stream/Nodes$ConcNode$OfPrimitive;->left:Lj$/util/stream/Node;

    iget-object v2, p0, Lj$/util/stream/Nodes$ConcNode$OfPrimitive;->right:Lj$/util/stream/Node;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v4

    aput-object v2, v3, v6

    const-string v0, "%s[%s.%s]"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 887
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lj$/util/stream/Nodes$ConcNode$OfPrimitive;->count()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object v1, v2, v4

    const-string v0, "%s[size=%d]"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0

    invoke-static/range {p0 .. p5}, Lj$/util/stream/Node$OfPrimitive$-CC;->$default$truncate(Lj$/util/stream/Node$OfPrimitive;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method
