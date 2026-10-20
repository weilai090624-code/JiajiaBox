.class final Lj$/util/stream/Nodes$ToArrayTask$OfRef;
.super Lj$/util/stream/Nodes$ToArrayTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/Nodes$ToArrayTask<",
        "TT;",
        "Lj$/util/stream/Node<",
        "TT;>;",
        "Lj$/util/stream/Nodes$ToArrayTask$OfRef<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lj$/util/stream/Node;[Ljava/lang/Object;I)V
    .locals 0
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Node<",
            "TT;>;[TT;I)V"
        }
    .end annotation

    .line 2084
    .local p0, "this":Lj$/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    .local p1, "node":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1, p3}, Lj$/util/stream/Nodes$ToArrayTask;-><init>(Lj$/util/stream/Node;I)V

    .line 2085
    iput-object p2, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    .line 2086
    return-void
.end method

.method synthetic constructor <init>(Lj$/util/stream/Node;[Ljava/lang/Object;ILj$/util/stream/Nodes-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Lj$/util/stream/Node;[Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor <init>(Lj$/util/stream/Nodes$ToArrayTask$OfRef;Lj$/util/stream/Node;I)V
    .locals 1
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Nodes$ToArrayTask$OfRef<",
            "TT;>;",
            "Lj$/util/stream/Node<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2089
    .local p0, "this":Lj$/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    .local p1, "parent":Lj$/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    .local p2, "node":Lj$/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/Nodes$ToArrayTask;-><init>(Lj$/util/stream/Nodes$ToArrayTask;Lj$/util/stream/Node;I)V

    .line 2090
    iget-object v0, p1, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    iput-object v0, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    .line 2091
    return-void
.end method


# virtual methods
.method copyNodeToArray()V
    .locals 3

    .line 2100
    .local p0, "this":Lj$/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    iget-object v0, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->node:Lj$/util/stream/Node;

    iget-object v1, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->offset:I

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    .line 2101
    return-void
.end method

.method makeChild(II)Lj$/util/stream/Nodes$ToArrayTask$OfRef;
    .locals 2
    .param p1, "childIndex"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lj$/util/stream/Nodes$ToArrayTask$OfRef<",
            "TT;>;"
        }
    .end annotation

    .line 2095
    .local p0, "this":Lj$/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    new-instance v0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;

    iget-object v1, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->node:Lj$/util/stream/Node;

    invoke-interface {v1, p1}, Lj$/util/stream/Node;->getChild(I)Lj$/util/stream/Node;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lj$/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Lj$/util/stream/Nodes$ToArrayTask$OfRef;Lj$/util/stream/Node;I)V

    return-object v0
.end method

.method bridge synthetic makeChild(II)Lj$/util/stream/Nodes$ToArrayTask;
    .locals 0

    .line 2078
    .local p0, "this":Lj$/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->makeChild(II)Lj$/util/stream/Nodes$ToArrayTask$OfRef;

    move-result-object p1

    return-object p1
.end method
