.class final Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;
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
    name = "ValueSpliterator"
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
        "TV;>;"
    }
.end annotation


# instance fields
.field est:J


# direct methods
.method constructor <init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IIIJ)V
    .locals 0
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .param p5, "est"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;IIIJ)V"
        }
    .end annotation

    .line 3594
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 3595
    iput-wide p5, p0, Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;->est:J

    .line 3596
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 3623
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    const/16 v0, 0x1100

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 3620
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    iget-wide v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;->est:J

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 3606
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_1

    .line 3607
    :goto_0
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 3608
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 3609
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    return-void

    .line 3606
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 3612
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_1

    .line 3614
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    .line 3615
    const/4 v0, 0x0

    return v0

    .line 3616
    :cond_0
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3617
    const/4 v0, 0x1

    return v0

    .line 3612
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 3589
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;->trySplit()Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3600
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;->baseIndex:I

    move v1, v0

    .local v1, "i":I
    iget v2, p0, Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;->baseLimit:I

    move v6, v2

    .local v6, "f":I
    add-int/2addr v0, v2

    const/4 v2, 0x1

    ushr-int/2addr v0, v2

    move v9, v0

    .local v9, "h":I
    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3601
    :cond_0
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;

    iget-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget v4, p0, Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;->baseSize:I

    iput v9, p0, Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;->baseLimit:I

    iget-wide v7, p0, Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;->est:J

    ushr-long/2addr v7, v2

    iput-wide v7, p0, Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;->est:J

    move-object v2, v0

    move v5, v9

    invoke-direct/range {v2 .. v8}, Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IIIJ)V

    .line 3600
    :goto_0
    return-object v0
.end method
