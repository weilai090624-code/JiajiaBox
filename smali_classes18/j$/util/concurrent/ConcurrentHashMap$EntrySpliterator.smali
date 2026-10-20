.class final Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;
.super Lj$/util/concurrent/ConcurrentHashMap$Traverser;
.source "ConcurrentHashMap.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntrySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/concurrent/ConcurrentHashMap$Traverser<",
        "TK;TV;>;",
        "Lj$/util/Spliterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field est:J

.field final map:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IIIJLj$/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .param p5, "est"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;IIIJ",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3633
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p7, "map":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 3634
    iput-object p7, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Lj$/util/concurrent/ConcurrentHashMap;

    .line 3635
    iput-wide p5, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    .line 3636
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 3663
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    const/16 v0, 0x1101

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 3660
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    iget-wide v0, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 3646
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_1

    .line 3647
    :goto_0
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 3648
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;

    iget-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iget-object v4, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 3649
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    return-void

    .line 3646
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
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

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 3652
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_1

    .line 3654
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    .line 3655
    const/4 v0, 0x0

    return v0

    .line 3656
    :cond_0
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;

    iget-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iget-object v4, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3657
    const/4 v0, 0x1

    return v0

    .line 3652
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 3627
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->trySplit()Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3640
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->baseIndex:I

    move v1, v0

    .local v1, "i":I
    iget v2, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->baseLimit:I

    move v6, v2

    .local v6, "f":I
    add-int/2addr v0, v2

    const/4 v2, 0x1

    ushr-int/2addr v0, v2

    move v10, v0

    .local v10, "h":I
    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3641
    :cond_0
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;

    iget-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget v4, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->baseSize:I

    iput v10, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->baseLimit:I

    iget-wide v7, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    ushr-long/2addr v7, v2

    iput-wide v7, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    iget-object v9, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Lj$/util/concurrent/ConcurrentHashMap;

    move-object v2, v0

    move v5, v10

    invoke-direct/range {v2 .. v9}, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IIIJLj$/util/concurrent/ConcurrentHashMap;)V

    .line 3640
    :goto_0
    return-object v0
.end method
