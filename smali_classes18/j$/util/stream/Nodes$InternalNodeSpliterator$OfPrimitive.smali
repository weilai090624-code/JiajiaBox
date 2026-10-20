.class abstract Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;
.super Lj$/util/stream/Nodes$InternalNodeSpliterator;
.source "Nodes.java"

# interfaces
.implements Lj$/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes$InternalNodeSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Lj$/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;N::",
        "Lj$/util/stream/Node$OfPrimitive<",
        "TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TN;>;>",
        "Lj$/util/stream/Nodes$InternalNodeSpliterator<",
        "TT;TT_SP",
        "LITR;",
        "TN;>;",
        "Lj$/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/stream/Node$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 1124
    .local p0, "this":Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TN;>;"
    .local p1, "cur":Lj$/util/stream/Node$OfPrimitive;, "TN;"
    invoke-direct {p0, p1}, Lj$/util/stream/Nodes$InternalNodeSpliterator;-><init>(Lj$/util/stream/Node;)V

    .line 1125
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 1151
    .local p0, "this":Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TN;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->curNode:Lj$/util/stream/Node;

    if-nez v0, :cond_0

    .line 1152
    return-void

    .line 1154
    :cond_0
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceSpliterator:Lj$/util/Spliterator;

    if-nez v0, :cond_3

    .line 1155
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->lastNodeSpliterator:Lj$/util/Spliterator;

    if-nez v0, :cond_2

    .line 1156
    invoke-virtual {p0}, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->initStack()Ljava/util/Deque;

    move-result-object v0

    .line 1158
    .local v0, "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    :goto_0
    invoke-virtual {p0, v0}, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->findNextLeafNode(Ljava/util/Deque;)Lj$/util/stream/Node;

    move-result-object v1

    check-cast v1, Lj$/util/stream/Node$OfPrimitive;

    move-object v2, v1

    .local v2, "leaf":Lj$/util/stream/Node$OfPrimitive;, "TN;"
    if-eqz v1, :cond_1

    .line 1159
    invoke-interface {v2, p1}, Lj$/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    .line 1161
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->curNode:Lj$/util/stream/Node;

    .line 1162
    .end local v0    # "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    .end local v2    # "leaf":Lj$/util/stream/Node$OfPrimitive;, "TN;"
    goto :goto_2

    .line 1164
    :cond_2
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->lastNodeSpliterator:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    goto :goto_2

    .line 1167
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1168
    :cond_4
    :goto_2
    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 1129
    .local p0, "this":Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TN;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-virtual {p0}, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->initTryAdvance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    const/4 v0, 0x0

    return v0

    .line 1132
    :cond_0
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceSpliterator:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    .line 1133
    .local v0, "hasNext":Z
    if-nez v0, :cond_2

    .line 1134
    iget-object v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->lastNodeSpliterator:Lj$/util/Spliterator;

    if-nez v1, :cond_1

    .line 1136
    iget-object v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v1}, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->findNextLeafNode(Ljava/util/Deque;)Lj$/util/stream/Node;

    move-result-object v1

    check-cast v1, Lj$/util/stream/Node$OfPrimitive;

    .line 1137
    .local v1, "leaf":Lj$/util/stream/Node$OfPrimitive;, "TN;"
    if-eqz v1, :cond_1

    .line 1138
    invoke-interface {v1}, Lj$/util/stream/Node$OfPrimitive;->spliterator()Lj$/util/Spliterator$OfPrimitive;

    move-result-object v2

    iput-object v2, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceSpliterator:Lj$/util/Spliterator;

    .line 1140
    iget-object v2, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceSpliterator:Lj$/util/Spliterator;

    check-cast v2, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v2, p1}, Lj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 1144
    .end local v1    # "leaf":Lj$/util/stream/Node$OfPrimitive;, "TN;"
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->curNode:Lj$/util/stream/Node;

    .line 1146
    :cond_2
    return v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1117
    .local p0, "this":Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;, "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TN;>;"
    invoke-super {p0}, Lj$/util/stream/Nodes$InternalNodeSpliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
