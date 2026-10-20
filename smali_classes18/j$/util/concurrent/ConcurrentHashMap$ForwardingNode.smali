.class final Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;
.super Lj$/util/concurrent/ConcurrentHashMap$Node;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForwardingNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/concurrent/ConcurrentHashMap$Node<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Lj$/util/concurrent/ConcurrentHashMap$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2228
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    .local p1, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2229
    iput-object p1, p0, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2230
    return-void
.end method


# virtual methods
.method find(ILjava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 7
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2234
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2236
    .local v0, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    array-length v2, v0

    move v3, v2

    .local v3, "n":I
    if-eqz v2, :cond_6

    add-int/lit8 v2, v3, -0x1

    and-int/2addr v2, p1

    .line 2237
    invoke-static {v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v4, v2

    .local v4, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v2, :cond_0

    goto :goto_2

    .line 2241
    :cond_0
    :goto_1
    iget v2, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v5, v2

    .local v5, "eh":I
    if-ne v2, p1, :cond_2

    iget-object v2, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v6, v2

    .local v6, "ek":Ljava/lang/Object;, "TK;"
    if-eq v2, p2, :cond_1

    if-eqz v6, :cond_2

    .line 2242
    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2243
    :cond_1
    return-object v4

    .line 2244
    .end local v6    # "ek":Ljava/lang/Object;, "TK;"
    :cond_2
    if-gez v5, :cond_4

    .line 2245
    instance-of v1, v4, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v1, :cond_3

    .line 2246
    move-object v1, v4

    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2247
    goto :goto_0

    .line 2250
    :cond_3
    invoke-virtual {v4, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap$Node;->find(ILjava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    return-object v1

    .line 2252
    :cond_4
    iget-object v2, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v4, v2

    if-nez v2, :cond_5

    .line 2253
    return-object v1

    .line 2254
    .end local v5    # "eh":I
    :cond_5
    goto :goto_1

    .line 2238
    .end local v3    # "n":I
    .end local v4    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6
    :goto_2
    return-object v1
.end method
