.class final Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;
.super Lj$/util/concurrent/ConcurrentHashMap$CollectionView;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;
.implements Lj$/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/concurrent/ConcurrentHashMap$CollectionView<",
        "TK;TV;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4788
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    .local p1, "map":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap$CollectionView;-><init>(Lj$/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 4785
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 4818
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 4822
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v0, 0x0

    .line 4823
    .local v0, "added":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4824
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;->add(Ljava/util/Map$Entry;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4825
    const/4 v0, 0x1

    .line 4826
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    goto :goto_0

    .line 4827
    :cond_1
    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 4792
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 4793
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "k":Ljava/lang/Object;
    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    .line 4794
    invoke-virtual {v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 4795
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    .local v4, "v":Ljava/lang/Object;
    if-eqz v0, :cond_1

    if-eq v4, v3, :cond_0

    .line 4796
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "v":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    .line 4792
    :goto_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 4848
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    move-object v1, v0

    .local v1, "c":Ljava/util/Set;, "Ljava/util/Set<*>;"
    if-eq v0, p0, :cond_0

    .line 4850
    invoke-virtual {p0, v1}, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .end local v1    # "c":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_1
    const/4 v0, 0x0

    .line 4848
    :goto_0
    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 4862
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_1

    .line 4864
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 4865
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 4866
    .local v0, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v3, v2

    .local v3, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_0

    .line 4867
    new-instance v2, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;

    iget-object v4, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v5, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iget-object v6, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2, v4, v5, v6}, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap;)V

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 4869
    .end local v0    # "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v3    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    return-void

    .line 4862
    .end local v1    # "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 6

    .line 4835
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    const/4 v0, 0x0

    .line 4837
    .local v0, "h":I
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v1, v1, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 4838
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v1, v2, v3, v4, v5}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 4839
    .local v1, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_0

    .line 4840
    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap$Node;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 4843
    .end local v1    # "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4811
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    iget-object v6, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    .line 4813
    .local v6, "m":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, v6, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v0

    .local v7, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v7

    move v2, v0

    .line 4814
    .local v2, "f":I
    :goto_0
    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap$EntryIterator;

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, v7

    move v4, v2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/concurrent/ConcurrentHashMap$EntryIterator;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IIILj$/util/concurrent/ConcurrentHashMap;)V

    return-object v8
.end method

.method public synthetic parallelStream()Lj$/util/stream/Stream;
    .locals 1

    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parallelStream()Ljava/util/stream/Stream;
    .locals 1

    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;->parallelStream()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 4801
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 4802
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "k":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 4803
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .local v3, "v":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    .line 4804
    invoke-virtual {v0, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    .line 4801
    :goto_0
    return v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 4831
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->removeEntryIf(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4855
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    iget-object v8, p0, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    .line 4856
    .local v8, "m":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {v8}, Lj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v9

    .line 4857
    .local v9, "n":J
    iget-object v0, v8, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v11, v0

    .local v11, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v11

    move v2, v0

    .line 4858
    .local v2, "f":I
    :goto_0
    new-instance v12, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;

    const-wide/16 v0, 0x0

    cmp-long v3, v9, v0

    if-gez v3, :cond_1

    move-wide v5, v0

    goto :goto_1

    :cond_1
    move-wide v5, v9

    :goto_1
    const/4 v3, 0x0

    move-object v0, v12

    move-object v1, v11

    move v4, v2

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IIIJLj$/util/concurrent/ConcurrentHashMap;)V

    return-object v12
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic stream()Lj$/util/stream/Stream;
    .locals 1

    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .locals 1

    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;->stream()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
