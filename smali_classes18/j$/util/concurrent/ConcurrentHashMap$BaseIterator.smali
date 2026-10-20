.class Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;
.super Lj$/util/concurrent/ConcurrentHashMap$Traverser;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/concurrent/ConcurrentHashMap$Traverser<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field lastReturned:Lj$/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final map:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IIILj$/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;III",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3429
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;, "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator<TK;TV;>;"
    .local p1, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p5, "map":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 3430
    iput-object p5, p0, Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;->map:Lj$/util/concurrent/ConcurrentHashMap;

    .line 3431
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 3432
    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 1

    .line 3435
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;, "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasNext()Z
    .locals 1

    .line 3434
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;, "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 4

    .line 3439
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;, "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;->lastReturned:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 3441
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;->lastReturned:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 3442
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;->map:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v0}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3443
    return-void

    .line 3440
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
