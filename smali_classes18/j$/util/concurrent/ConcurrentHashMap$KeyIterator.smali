.class final Lj$/util/concurrent/ConcurrentHashMap$KeyIterator;
.super Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeyIterator"
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
        "TK;>;",
        "Ljava/util/Enumeration<",
        "TK;>;"
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

    .line 3450
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$KeyIterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeyIterator<TK;TV;>;"
    .local p1, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p5, "map":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IIILj$/util/concurrent/ConcurrentHashMap;)V

    .line 3451
    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 3455
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$KeyIterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeyIterator<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$KeyIterator;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 3457
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 3458
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iput-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$KeyIterator;->lastReturned:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 3459
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$KeyIterator;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 3460
    return-object v0

    .line 3456
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 3463
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$KeyIterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeyIterator<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$KeyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
