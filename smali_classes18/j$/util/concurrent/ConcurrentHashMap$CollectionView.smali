.class abstract Lj$/util/concurrent/ConcurrentHashMap$CollectionView;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CollectionView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final OOME_MSG:Ljava/lang/String; = "Required array size too large"

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field final map:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


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

    .line 4419
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "map":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/concurrent/ConcurrentHashMap$CollectionView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 4432
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$CollectionView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 4532
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eq p1, p0, :cond_2

    .line 4533
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4534
    .local v1, "e":Ljava/lang/Object;
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lj$/util/concurrent/ConcurrentHashMap$CollectionView;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4536
    .end local v1    # "e":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 4535
    .restart local v1    # "e":Ljava/lang/Object;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 4538
    .end local v1    # "e":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getMap()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4426
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$CollectionView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 4434
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$CollectionView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 4542
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_5

    .line 4543
    const/4 v0, 0x0

    .line 4547
    .local v0, "modified":Z
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$CollectionView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v1, v1, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_0

    .line 4548
    const/4 v1, 0x0

    return v1

    .line 4549
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    array-length v3, v2

    if-le v1, v3, :cond_3

    .line 4550
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4551
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4552
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4553
    const/4 v0, 0x1

    goto :goto_0

    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    goto :goto_2

    .line 4557
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4558
    .local v3, "e":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lj$/util/concurrent/ConcurrentHashMap$CollectionView;->remove(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    .end local v3    # "e":Ljava/lang/Object;
    goto :goto_1

    .line 4560
    :cond_4
    :goto_2
    return v0

    .line 4542
    .end local v0    # "modified":Z
    .end local v2    # "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 4564
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_2

    .line 4565
    const/4 v0, 0x0

    .line 4566
    .local v0, "modified":Z
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4567
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4568
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4569
    const/4 v0, 0x1

    goto :goto_0

    .line 4572
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_1
    return v0

    .line 4564
    .end local v0    # "modified":Z
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 1

    .line 4433
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$CollectionView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 9

    .line 4453
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$CollectionView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->mappingCount()J

    move-result-wide v0

    .line 4454
    .local v0, "sz":J
    const-wide/32 v2, 0x7ffffff7

    const-string v4, "Required array size too large"

    cmp-long v5, v0, v2

    if-gtz v5, :cond_5

    .line 4456
    long-to-int v2, v0

    .line 4457
    .local v2, "n":I
    new-array v3, v2, [Ljava/lang/Object;

    .line 4458
    .local v3, "r":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 4459
    .local v5, "i":I
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 4460
    .local v7, "e":Ljava/lang/Object;, "TE;"
    if-ne v5, v2, :cond_2

    .line 4461
    const v8, 0x7ffffff7

    if-ge v2, v8, :cond_1

    .line 4463
    const v8, 0x3ffffffb    # 1.9999994f

    if-lt v2, v8, :cond_0

    .line 4464
    const v2, 0x7ffffff7

    goto :goto_1

    .line 4466
    :cond_0
    ushr-int/lit8 v8, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v2, v8

    .line 4467
    :goto_1
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 4462
    :cond_1
    new-instance v6, Ljava/lang/OutOfMemoryError;

    invoke-direct {v6, v4}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4469
    :cond_2
    :goto_2
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    aput-object v7, v3, v5

    .line 4470
    .end local v7    # "e":Ljava/lang/Object;, "TE;"
    move v5, v8

    goto :goto_0

    .line 4471
    .end local v8    # "i":I
    .restart local v5    # "i":I
    :cond_3
    if-ne v5, v2, :cond_4

    move-object v4, v3

    goto :goto_3

    :cond_4
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    :goto_3
    return-object v4

    .line 4455
    .end local v2    # "n":I
    .end local v3    # "r":[Ljava/lang/Object;
    .end local v5    # "i":I
    :cond_5
    new-instance v2, Ljava/lang/OutOfMemoryError;

    invoke-direct {v2, v4}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 4476
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$CollectionView;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->mappingCount()J

    move-result-wide v0

    .line 4477
    .local v0, "sz":J
    const-wide/32 v2, 0x7ffffff7

    const-string v4, "Required array size too large"

    cmp-long v5, v0, v2

    if-gtz v5, :cond_7

    .line 4479
    long-to-int v2, v0

    .line 4480
    .local v2, "m":I
    array-length v3, p1

    if-lt v3, v2, :cond_0

    move-object v3, p1

    goto :goto_0

    .line 4481
    :cond_0
    nop

    .line 4482
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    :goto_0
    nop

    .line 4483
    .local v3, "r":[Ljava/lang/Object;, "[TT;"
    array-length v5, v3

    .line 4484
    .local v5, "n":I
    const/4 v6, 0x0

    .line 4485
    .local v6, "i":I
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 4486
    .local v8, "e":Ljava/lang/Object;, "TE;"
    if-ne v6, v5, :cond_3

    .line 4487
    const v9, 0x7ffffff7

    if-ge v5, v9, :cond_2

    .line 4489
    const v9, 0x3ffffffb    # 1.9999994f

    if-lt v5, v9, :cond_1

    .line 4490
    const v5, 0x7ffffff7

    goto :goto_2

    .line 4492
    :cond_1
    ushr-int/lit8 v9, v5, 0x1

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v5, v9

    .line 4493
    :goto_2
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 4488
    :cond_2
    new-instance v7, Ljava/lang/OutOfMemoryError;

    invoke-direct {v7, v4}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4495
    :cond_3
    :goto_3
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "i":I
    .local v9, "i":I
    aput-object v8, v3, v6

    .line 4496
    .end local v8    # "e":Ljava/lang/Object;, "TE;"
    move v6, v9

    goto :goto_1

    .line 4497
    .end local v9    # "i":I
    .restart local v6    # "i":I
    :cond_4
    if-ne p1, v3, :cond_5

    if-ge v6, v5, :cond_5

    .line 4498
    const/4 v4, 0x0

    aput-object v4, v3, v6

    .line 4499
    return-object v3

    .line 4501
    :cond_5
    if-ne v6, v5, :cond_6

    move-object v4, v3

    goto :goto_4

    :cond_6
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    :goto_4
    return-object v4

    .line 4478
    .end local v2    # "m":I
    .end local v3    # "r":[Ljava/lang/Object;, "[TT;"
    .end local v5    # "n":I
    .end local v6    # "i":I
    :cond_7
    new-instance v2, Ljava/lang/OutOfMemoryError;

    invoke-direct {v2, v4}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 4516
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4517
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4518
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4519
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4521
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4522
    .local v2, "e":Ljava/lang/Object;
    if-ne v2, p0, :cond_0

    const-string v3, "(this Collection)"

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4523
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4524
    goto :goto_2

    .line 4525
    :cond_1
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4526
    .end local v2    # "e":Ljava/lang/Object;
    goto :goto_0

    .line 4528
    :cond_2
    :goto_2
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
