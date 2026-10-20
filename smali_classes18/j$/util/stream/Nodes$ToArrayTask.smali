.class abstract Lj$/util/stream/Nodes$ToArrayTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToArrayTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/Nodes$ToArrayTask$OfDouble;,
        Lj$/util/stream/Nodes$ToArrayTask$OfLong;,
        Lj$/util/stream/Nodes$ToArrayTask$OfInt;,
        Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;,
        Lj$/util/stream/Nodes$ToArrayTask$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_NODE::",
        "Lj$/util/stream/Node<",
        "TT;>;K:",
        "Lj$/util/stream/Nodes$ToArrayTask<",
        "TT;TT_NODE;TK;>;>",
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final node:Lj$/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field protected final offset:I


# direct methods
.method constructor <init>(Lj$/util/stream/Node;I)V
    .locals 0
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;I)V"
        }
    .end annotation

    .line 2039
    .local p0, "this":Lj$/util/stream/Nodes$ToArrayTask;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    .local p1, "node":Lj$/util/stream/Node;, "TT_NODE;"
    invoke-direct {p0}, Ljava/util/concurrent/CountedCompleter;-><init>()V

    .line 2040
    iput-object p1, p0, Lj$/util/stream/Nodes$ToArrayTask;->node:Lj$/util/stream/Node;

    .line 2041
    iput p2, p0, Lj$/util/stream/Nodes$ToArrayTask;->offset:I

    .line 2042
    return-void
.end method

.method constructor <init>(Lj$/util/stream/Nodes$ToArrayTask;Lj$/util/stream/Node;I)V
    .locals 0
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT_NODE;I)V"
        }
    .end annotation

    .line 2045
    .local p0, "this":Lj$/util/stream/Nodes$ToArrayTask;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    .local p1, "parent":Lj$/util/stream/Nodes$ToArrayTask;, "TK;"
    .local p2, "node":Lj$/util/stream/Node;, "TT_NODE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 2046
    iput-object p2, p0, Lj$/util/stream/Nodes$ToArrayTask;->node:Lj$/util/stream/Node;

    .line 2047
    iput p3, p0, Lj$/util/stream/Nodes$ToArrayTask;->offset:I

    .line 2048
    return-void
.end method


# virtual methods
.method public compute()V
    .locals 8

    .line 2056
    .local p0, "this":Lj$/util/stream/Nodes$ToArrayTask;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    move-object v0, p0

    .line 2058
    .local v0, "task":Lj$/util/stream/Nodes$ToArrayTask;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    :goto_0
    iget-object v1, v0, Lj$/util/stream/Nodes$ToArrayTask;->node:Lj$/util/stream/Node;

    invoke-interface {v1}, Lj$/util/stream/Node;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2059
    invoke-virtual {v0}, Lj$/util/stream/Nodes$ToArrayTask;->copyNodeToArray()V

    .line 2060
    invoke-virtual {v0}, Lj$/util/stream/Nodes$ToArrayTask;->propagateCompletion()V

    .line 2061
    return-void

    .line 2064
    :cond_0
    iget-object v1, v0, Lj$/util/stream/Nodes$ToArrayTask;->node:Lj$/util/stream/Node;

    invoke-interface {v1}, Lj$/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lj$/util/stream/Nodes$ToArrayTask;->setPendingCount(I)V

    .line 2066
    const/4 v1, 0x0

    .line 2067
    .local v1, "size":I
    const/4 v2, 0x0

    .line 2068
    .local v2, "i":I
    :goto_1
    iget-object v3, v0, Lj$/util/stream/Nodes$ToArrayTask;->node:Lj$/util/stream/Node;

    invoke-interface {v3}, Lj$/util/stream/Node;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2069
    iget v3, v0, Lj$/util/stream/Nodes$ToArrayTask;->offset:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lj$/util/stream/Nodes$ToArrayTask;->makeChild(II)Lj$/util/stream/Nodes$ToArrayTask;

    move-result-object v3

    .line 2070
    .local v3, "leftTask":Lj$/util/stream/Nodes$ToArrayTask;, "TK;"
    int-to-long v4, v1

    iget-object v6, v3, Lj$/util/stream/Nodes$ToArrayTask;->node:Lj$/util/stream/Node;

    invoke-interface {v6}, Lj$/util/stream/Node;->count()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 2071
    invoke-virtual {v3}, Lj$/util/stream/Nodes$ToArrayTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 2068
    .end local v3    # "leftTask":Lj$/util/stream/Nodes$ToArrayTask;, "TK;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2073
    :cond_1
    iget v3, v0, Lj$/util/stream/Nodes$ToArrayTask;->offset:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lj$/util/stream/Nodes$ToArrayTask;->makeChild(II)Lj$/util/stream/Nodes$ToArrayTask;

    move-result-object v0

    .line 2074
    .end local v1    # "size":I
    .end local v2    # "i":I
    goto :goto_0
.end method

.method abstract copyNodeToArray()V
.end method

.method abstract makeChild(II)Lj$/util/stream/Nodes$ToArrayTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TK;"
        }
    .end annotation
.end method
