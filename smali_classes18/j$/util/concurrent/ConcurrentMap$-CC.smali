.class public final synthetic Lj$/util/concurrent/ConcurrentMap$-CC;
.super Ljava/lang/Object;
.source "ConcurrentMap.java"


# direct methods
.method public static $default$compute(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6
    .param p0, "_this"    # Ljava/util/concurrent/ConcurrentMap;

    .line 418
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    nop

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 421
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    :cond_5
    invoke-interface {p2, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 422
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1c

    .line 423
    if-eqz v0, :cond_14

    .line 424
    invoke-interface {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    return-object v1

    .line 427
    :cond_14
    invoke-interface {p0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    if-nez v2, :cond_5

    .line 428
    return-object v1

    .line 430
    :cond_1c
    if-eqz v0, :cond_24

    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    :cond_24
    const/4 v2, 0x0

    return-object v2
.end method

.method public static $default$computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 6
    .param p0, "_this"    # Ljava/util/concurrent/ConcurrentMap;

    .line 327
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_19

    .line 330
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_19

    .line 331
    invoke-interface {p0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    if-nez v0, :cond_19

    .line 332
    goto :goto_1a

    .line 333
    .end local v2    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_19
    move-object v2, v1

    .line 329
    :goto_1a
    return-object v2
.end method

.method public static $default$computeIfPresent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6
    .param p0, "_this"    # Ljava/util/concurrent/ConcurrentMap;

    .line 369
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :goto_3
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1f

    .line 371
    invoke-interface {p2, p1, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 372
    .local v0, "newValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_17

    .line 373
    invoke-interface {p0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_1d

    .line 374
    :cond_17
    invoke-interface {p0, p1, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 375
    :goto_1d
    return-object v0

    .line 376
    .end local v0    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_1e
    goto :goto_3

    .line 377
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static $default$forEach(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiConsumer;)V
    .registers 6
    .param p0, "_this"    # Ljava/util/concurrent/ConcurrentMap;

    .line 111
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 116
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :try_start_17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 117
    .local v2, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_1f} :catch_24

    .line 121
    .local v3, "v":Ljava/lang/Object;, "TV;"
    nop

    .line 122
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_b

    .line 118
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :catch_24
    move-exception v2

    .line 120
    .local v2, "ise":Ljava/lang/IllegalStateException;
    goto :goto_b

    .line 124
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "ise":Ljava/lang/IllegalStateException;
    :cond_26
    return-void
.end method

.method public static $default$getOrDefault(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "_this"    # Ljava/util/concurrent/ConcurrentMap;
    .param p1, "key"    # Ljava/lang/Object;

    .line 88
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_9

    move-object v0, v1

    goto :goto_a

    :cond_9
    move-object v0, p2

    :goto_a
    return-object v0
.end method

.method public static $default$merge(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 7
    .param p0, "_this"    # Ljava/util/concurrent/ConcurrentMap;

    .line 477
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :cond_6
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 483
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    :cond_a
    if-eqz v0, :cond_21

    .line 484
    invoke-interface {p3, v0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 485
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_19

    .line 486
    invoke-interface {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 487
    return-object v1

    .line 488
    :cond_19
    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 489
    const/4 v2, 0x0

    return-object v2

    .line 493
    .end local v1    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_21
    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_a

    .line 494
    return-object p2
.end method

.method public static $default$replaceAll(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;)V
    .registers 3
    .param p0, "_this"    # Ljava/util/concurrent/ConcurrentMap;

    .line 286
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v0, Lj$/util/concurrent/ConcurrentMap$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lj$/util/concurrent/ConcurrentMap$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;)V

    invoke-static {p0, v0}, Lj$/util/concurrent/ConcurrentMap$-EL;->forEach(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiConsumer;)V

    .line 296
    return-void
.end method

.method public static synthetic $private$lambda$replaceAll$0(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "_this"    # Ljava/util/concurrent/ConcurrentMap;
    .param p1, "function"    # Ljava/util/function/BiFunction;
    .param p2, "k"    # Ljava/lang/Object;
    .param p3, "v"    # Ljava/lang/Object;

    .line 288
    nop

    :cond_1
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2, p3, v0}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 290
    invoke-interface {p0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p3, v0

    if-nez v0, :cond_1

    .line 292
    nop

    .line 295
    :cond_13
    return-void
.end method
