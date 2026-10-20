.class final Lj$/util/concurrent/ConcurrentHashMap$EntryIterator;
.super Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/concurrent/ConcurrentHashMap$BaseIterator<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


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

    .line 3490
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntryIterator<TK;TV;>;"
    .local p1, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p5, "map":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IIILj$/util/concurrent/ConcurrentHashMap;)V

    .line 3491
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 3486
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntryIterator<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final next()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3495
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntryIterator<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$EntryIterator;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 3497
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 3498
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 3499
    .local v2, "v":Ljava/lang/Object;, "TV;"
    iput-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$EntryIterator;->lastReturned:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 3500
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$EntryIterator;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 3501
    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;

    iget-object v4, p0, Lj$/util/concurrent/ConcurrentHashMap$EntryIterator;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3, v0, v2, v4}, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap;)V

    return-object v3

    .line 3496
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
