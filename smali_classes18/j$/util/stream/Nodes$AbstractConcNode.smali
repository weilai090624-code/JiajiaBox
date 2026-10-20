.class abstract Lj$/util/stream/Nodes$AbstractConcNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Lj$/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractConcNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_NODE::",
        "Lj$/util/stream/Node<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lj$/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final left:Lj$/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field protected final right:Lj$/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field private final size:J


# direct methods
.method constructor <init>(Lj$/util/stream/Node;Lj$/util/stream/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;TT_NODE;)V"
        }
    .end annotation

    .line 758
    .local p0, "this":Lj$/util/stream/Nodes$AbstractConcNode;, "Ljava/util/stream/Nodes$AbstractConcNode<TT;TT_NODE;>;"
    .local p1, "left":Lj$/util/stream/Node;, "TT_NODE;"
    .local p2, "right":Lj$/util/stream/Node;, "TT_NODE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-object p1, p0, Lj$/util/stream/Nodes$AbstractConcNode;->left:Lj$/util/stream/Node;

    .line 760
    iput-object p2, p0, Lj$/util/stream/Nodes$AbstractConcNode;->right:Lj$/util/stream/Node;

    .line 765
    invoke-interface {p1}, Lj$/util/stream/Node;->count()J

    move-result-wide v0

    invoke-interface {p2}, Lj$/util/stream/Node;->count()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/Nodes$AbstractConcNode;->size:J

    .line 766
    return-void
.end method


# virtual methods
.method public count()J
    .locals 2

    .line 782
    .local p0, "this":Lj$/util/stream/Nodes$AbstractConcNode;, "Ljava/util/stream/Nodes$AbstractConcNode<TT;TT_NODE;>;"
    iget-wide v0, p0, Lj$/util/stream/Nodes$AbstractConcNode;->size:J

    return-wide v0
.end method

.method public getChild(I)Lj$/util/stream/Node;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_NODE;"
        }
    .end annotation

    .line 775
    .local p0, "this":Lj$/util/stream/Nodes$AbstractConcNode;, "Ljava/util/stream/Nodes$AbstractConcNode<TT;TT_NODE;>;"
    if-nez p1, :cond_0

    iget-object v0, p0, Lj$/util/stream/Nodes$AbstractConcNode;->left:Lj$/util/stream/Node;

    return-object v0

    .line 776
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/Nodes$AbstractConcNode;->right:Lj$/util/stream/Node;

    return-object v0

    .line 777
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getChildCount()I
    .locals 1

    .line 770
    .local p0, "this":Lj$/util/stream/Nodes$AbstractConcNode;, "Ljava/util/stream/Nodes$AbstractConcNode<TT;TT_NODE;>;"
    const/4 v0, 0x2

    return v0
.end method

.method public synthetic getShape()Lj$/util/stream/StreamShape;
    .locals 1

    invoke-static {p0}, Lj$/util/stream/Node$-CC;->$default$getShape(Lj$/util/stream/Node;)Lj$/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public synthetic truncate(JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0

    invoke-static/range {p0 .. p5}, Lj$/util/stream/Node$-CC;->$default$truncate(Lj$/util/stream/Node;JJLjava/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method
