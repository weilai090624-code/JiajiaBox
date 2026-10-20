.class abstract Lj$/util/stream/Nodes$InternalNodeSpliterator;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "InternalNodeSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/Nodes$InternalNodeSpliterator$OfDouble;,
        Lj$/util/stream/Nodes$InternalNodeSpliterator$OfLong;,
        Lj$/util/stream/Nodes$InternalNodeSpliterator$OfInt;,
        Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;,
        Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Lj$/util/Spliterator<",
        "TT;>;N::",
        "Lj$/util/stream/Node<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field curChildIndex:I

.field curNode:Lj$/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field lastNodeSpliterator:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field tryAdvanceSpliterator:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field tryAdvanceStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/stream/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 959
    .local p0, "this":Lj$/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    .local p1, "curNode":Lj$/util/stream/Node;, "TN;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 960
    iput-object p1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    .line 961
    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    .line 1063
    .local p0, "this":Lj$/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    const/16 v0, 0x40

    return v0
.end method

.method public final estimateSize()J
    .locals 5

    .line 1046
    .local p0, "this":Lj$/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    if-nez v0, :cond_0

    .line 1047
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1051
    :cond_0
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Lj$/util/Spliterator;

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0

    .line 1054
    :cond_1
    const-wide/16 v0, 0x0

    .line 1055
    .local v0, "size":J
    iget v2, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    invoke-interface {v3}, Lj$/util/stream/Node;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1056
    iget-object v3, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    invoke-interface {v3, v2}, Lj$/util/stream/Node;->getChild(I)Lj$/util/stream/Node;

    move-result-object v3

    invoke-interface {v3}, Lj$/util/stream/Node;->count()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 1055
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1057
    .end local v2    # "i":I
    :cond_2
    return-wide v0
.end method

.method protected final findNextLeafNode(Ljava/util/Deque;)Lj$/util/stream/Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "TN;>;)TN;"
        }
    .end annotation

    .line 983
    .local p0, "this":Lj$/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    .local p1, "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    const/4 v0, 0x0

    .line 984
    .local v0, "n":Lj$/util/stream/Node;, "TN;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/stream/Node;

    move-object v0, v1

    if-eqz v1, :cond_3

    .line 985
    invoke-interface {v0}, Lj$/util/stream/Node;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 986
    invoke-interface {v0}, Lj$/util/stream/Node;->count()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 987
    return-object v0

    .line 989
    :cond_1
    invoke-interface {v0}, Lj$/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 990
    invoke-interface {v0, v1}, Lj$/util/stream/Node;->getChild(I)Lj$/util/stream/Node;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 989
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_2
    goto :goto_0

    .line 994
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$forEachRemaining(Lj$/util/Spliterator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getComparator(Lj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method protected final initStack()Ljava/util/Deque;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "TN;>;"
        }
    .end annotation

    .line 971
    .local p0, "this":Lj$/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 972
    .local v0, "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    iget-object v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    invoke-interface {v1}, Lj$/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    if-lt v1, v2, :cond_0

    .line 973
    iget-object v2, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    invoke-interface {v2, v1}, Lj$/util/stream/Node;->getChild(I)Lj$/util/stream/Node;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 972
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 974
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method protected final initTryAdvance()Z
    .locals 3

    .line 999
    .local p0, "this":Lj$/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1000
    return v1

    .line 1002
    :cond_0
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Lj$/util/Spliterator;

    if-nez v0, :cond_3

    .line 1003
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Lj$/util/Spliterator;

    if-nez v0, :cond_2

    .line 1005
    invoke-virtual {p0}, Lj$/util/stream/Nodes$InternalNodeSpliterator;->initStack()Ljava/util/Deque;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    .line 1006
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v0}, Lj$/util/stream/Nodes$InternalNodeSpliterator;->findNextLeafNode(Ljava/util/Deque;)Lj$/util/stream/Node;

    move-result-object v0

    .line 1007
    .local v0, "leaf":Lj$/util/stream/Node;, "TN;"
    if-eqz v0, :cond_1

    .line 1008
    invoke-interface {v0}, Lj$/util/stream/Node;->spliterator()Lj$/util/Spliterator;

    move-result-object v1

    iput-object v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Lj$/util/Spliterator;

    .line 1015
    .end local v0    # "leaf":Lj$/util/stream/Node;, "TN;"
    goto :goto_0

    .line 1012
    .restart local v0    # "leaf":Lj$/util/stream/Node;, "TN;"
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    .line 1013
    return v1

    .line 1017
    .end local v0    # "leaf":Lj$/util/stream/Node;, "TN;"
    :cond_2
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Lj$/util/Spliterator;

    iput-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Lj$/util/Spliterator;

    .line 1019
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1025
    .local p0, "this":Lj$/util/stream/Nodes$InternalNodeSpliterator;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>;"
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Lj$/util/Spliterator;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1027
    :cond_0
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Lj$/util/Spliterator;

    if-eqz v0, :cond_1

    .line 1028
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1029
    :cond_1
    iget v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    iget-object v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    invoke-interface {v1}, Lj$/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 1030
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    iget v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Lj$/util/stream/Node;->getChild(I)Lj$/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Node;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1032
    :cond_2
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    iget v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Lj$/util/stream/Node;->getChild(I)Lj$/util/stream/Node;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    .line 1033
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    invoke-interface {v0}, Lj$/util/stream/Node;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 1034
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    invoke-interface {v0}, Lj$/util/stream/Node;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Lj$/util/Spliterator;

    .line 1035
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1038
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    .line 1039
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    iget v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Lj$/util/stream/Node;->getChild(I)Lj$/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Node;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1026
    :cond_4
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
