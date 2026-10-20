.class Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;
.super Lj$/util/stream/Nodes$ToArrayTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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
        ">;T_NODE::",
        "Lj$/util/stream/Node$OfPrimitive<",
        "TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;>",
        "Lj$/util/stream/Nodes$ToArrayTask<",
        "TT;TT_NODE;",
        "Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive<",
        "TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;>;"
    }
.end annotation


# instance fields
.field private final array:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lj$/util/stream/Node$OfPrimitive;Ljava/lang/Object;I)V
    .locals 0
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;TT_ARR;I)V"
        }
    .end annotation

    .line 2112
    .local p0, "this":Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "node":Lj$/util/stream/Node$OfPrimitive;, "TT_NODE;"
    .local p2, "array":Ljava/lang/Object;, "TT_ARR;"
    invoke-direct {p0, p1, p3}, Lj$/util/stream/Nodes$ToArrayTask;-><init>(Lj$/util/stream/Node;I)V

    .line 2113
    iput-object p2, p0, Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;->array:Ljava/lang/Object;

    .line 2114
    return-void
.end method

.method synthetic constructor <init>(Lj$/util/stream/Node$OfPrimitive;Ljava/lang/Object;ILj$/util/stream/Nodes-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Lj$/util/stream/Node$OfPrimitive;Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor <init>(Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;Lj$/util/stream/Node$OfPrimitive;I)V
    .locals 1
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive<",
            "TT;TT_CONS;TT_ARR;TT_SP",
            "LITR;",
            "TT_NODE;>;TT_NODE;I)V"
        }
    .end annotation

    .line 2117
    .local p0, "this":Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "parent":Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p2, "node":Lj$/util/stream/Node$OfPrimitive;, "TT_NODE;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/Nodes$ToArrayTask;-><init>(Lj$/util/stream/Nodes$ToArrayTask;Lj$/util/stream/Node;I)V

    .line 2118
    iget-object v0, p1, Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;->array:Ljava/lang/Object;

    iput-object v0, p0, Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;->array:Ljava/lang/Object;

    .line 2119
    return-void
.end method


# virtual methods
.method copyNodeToArray()V
    .locals 3

    .line 2128
    .local p0, "this":Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    iget-object v0, p0, Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;->node:Lj$/util/stream/Node;

    check-cast v0, Lj$/util/stream/Node$OfPrimitive;

    iget-object v1, p0, Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;->array:Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;->offset:I

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Node$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    .line 2129
    return-void
.end method

.method makeChild(II)Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;
    .locals 2
    .param p1, "childIndex"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive<",
            "TT;TT_CONS;TT_ARR;TT_SP",
            "LITR;",
            "TT_NODE;>;"
        }
    .end annotation

    .line 2123
    .local p0, "this":Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    new-instance v0, Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;

    iget-object v1, p0, Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;->node:Lj$/util/stream/Node;

    check-cast v1, Lj$/util/stream/Node$OfPrimitive;

    invoke-interface {v1, p1}, Lj$/util/stream/Node$OfPrimitive;->getChild(I)Lj$/util/stream/Node$OfPrimitive;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;Lj$/util/stream/Node$OfPrimitive;I)V

    return-object v0
.end method

.method bridge synthetic makeChild(II)Lj$/util/stream/Nodes$ToArrayTask;
    .locals 0

    .line 2104
    .local p0, "this":Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;->makeChild(II)Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;

    move-result-object p1

    return-object p1
.end method
