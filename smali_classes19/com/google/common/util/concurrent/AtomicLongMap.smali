.class public final Lcom/google/common/util/concurrent/AtomicLongMap;
.super Ljava/lang/Object;
.source "AtomicLongMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final map:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "TK;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lj$/util/concurrent/ConcurrentHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "TK;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "map":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;Ljava/util/concurrent/atomic/AtomicLong;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    .line 63
    return-void
.end method

.method public static create()Lcom/google/common/util/concurrent/AtomicLongMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/util/concurrent/AtomicLongMap<",
            "TK;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/google/common/util/concurrent/AtomicLongMap;

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;-><init>(Lj$/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/util/concurrent/AtomicLongMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/util/concurrent/AtomicLongMap<",
            "TK;>;"
        }
    .end annotation

    .line 72
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/AtomicLongMap;->create()Lcom/google/common/util/concurrent/AtomicLongMap;

    move-result-object v0

    .line 73
    .local v0, "result":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/AtomicLongMap;->putAll(Ljava/util/Map;)V

    .line 74
    return-object v0
.end method

.method private createAsMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 338
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/google/common/util/concurrent/AtomicLongMap$1;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AtomicLongMap$1;-><init>(Lcom/google/common/util/concurrent/AtomicLongMap;)V

    .line 339
    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    .line 338
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAndGet(Ljava/lang/Object;J)J
    .registers 10
    .param p2, "delta"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    nop

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 111
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_1c

    .line 112
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v1, p1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 113
    if-nez v0, :cond_1c

    .line 114
    return-wide p2

    .line 120
    :cond_1c
    :goto_1c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 121
    .local v1, "oldValue":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_34

    .line 123
    iget-object v3, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v3, p1, v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    return-wide p2

    .line 130
    :cond_34
    add-long v3, v1, p2

    .line 131
    .local v3, "newValue":J
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 132
    return-wide v3

    .line 135
    .end local v1    # "oldValue":J
    .end local v3    # "newValue":J
    :cond_3d
    goto :goto_1c
.end method

.method public asMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->asMap:Ljava/util/Map;

    .line 334
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/lang/Long;>;"
    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AtomicLongMap;->createAsMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->asMap:Ljava/util/Map;

    goto :goto_c

    :cond_b
    move-object v1, v0

    :goto_c
    return-object v1
.end method

.method public clear()V
    .registers 2

    .line 374
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 375
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 351
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public decrementAndGet(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(Ljava/lang/Object;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 83
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_d

    const-wide/16 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    :goto_11
    return-wide v1
.end method

.method public getAndAdd(Ljava/lang/Object;J)J
    .registers 12
    .param p2, "delta"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 163
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    nop

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 164
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_1e

    .line 165
    iget-object v3, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v3, p1, v4}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 166
    if-nez v0, :cond_1e

    .line 167
    return-wide v1

    .line 173
    :cond_1e
    :goto_1e
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 174
    .local v3, "oldValue":J
    cmp-long v5, v3, v1

    if-nez v5, :cond_34

    .line 176
    iget-object v5, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v6, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v5, p1, v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 177
    return-wide v1

    .line 183
    :cond_34
    add-long v5, v3, p2

    .line 184
    .local v5, "newValue":J
    invoke-virtual {v0, v3, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 185
    return-wide v3

    .line 188
    .end local v3    # "oldValue":J
    .end local v5    # "newValue":J
    :cond_3d
    goto :goto_1e
.end method

.method public getAndDecrement(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAndIncrement(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementAndGet(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 364
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;J)J
    .registers 11
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    nop

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 201
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_1e

    .line 202
    iget-object v3, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v3, p1, v4}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 203
    if-nez v0, :cond_1e

    .line 204
    return-wide v1

    .line 210
    :cond_1e
    :goto_1e
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 211
    .local v3, "oldValue":J
    cmp-long v5, v3, v1

    if-nez v5, :cond_34

    .line 213
    iget-object v5, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v6, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v5, p1, v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 214
    return-wide v1

    .line 220
    :cond_34
    invoke-virtual {v0, v3, v4, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 221
    return-wide v3

    .line 224
    .end local v3    # "oldValue":J
    :cond_3b
    goto :goto_1e
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 235
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 236
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/common/util/concurrent/AtomicLongMap;->put(Ljava/lang/Object;J)J

    .line 237
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/lang/Long;>;"
    goto :goto_8

    .line 238
    :cond_26
    return-void
.end method

.method putIfAbsent(Ljava/lang/Object;J)J
    .registers 11
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 412
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    nop

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 413
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_1e

    .line 414
    iget-object v3, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v3, p1, v4}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 415
    if-nez v0, :cond_1e

    .line 416
    return-wide v1

    .line 421
    :cond_1e
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 422
    .local v3, "oldValue":J
    cmp-long v5, v3, v1

    if-nez v5, :cond_34

    .line 424
    iget-object v5, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v6, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v5, p1, v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 425
    return-wide v1

    .line 431
    :cond_34
    return-wide v3
.end method

.method public remove(Ljava/lang/Object;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .line 246
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 247
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_d

    .line 248
    return-wide v1

    .line 252
    :cond_d
    :goto_d
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 253
    .local v3, "oldValue":J
    cmp-long v5, v3, v1

    if-eqz v5, :cond_1d

    invoke-virtual {v0, v3, v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v5

    if-eqz v5, :cond_1c

    goto :goto_1d

    .line 259
    .end local v3    # "oldValue":J
    :cond_1c
    goto :goto_d

    .line 255
    .restart local v3    # "oldValue":J
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 257
    return-wide v3
.end method

.method remove(Ljava/lang/Object;J)Z
    .registers 11
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)Z"
        }
    .end annotation

    .line 267
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 268
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 269
    return v1

    .line 272
    :cond_c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 273
    .local v2, "oldValue":J
    cmp-long v4, v2, p2

    if-eqz v4, :cond_15

    .line 274
    return v1

    .line 277
    :cond_15
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_23

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_23

    .line 285
    :cond_22
    return v1

    .line 279
    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    const/4 v1, 0x1

    return v1
.end method

.method public removeAllZeros()V
    .registers 9

    .line 306
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 307
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/concurrent/atomic/AtomicLong;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 308
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 309
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/concurrent/atomic/AtomicLong;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 310
    .local v2, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_2b

    .line 311
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 313
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/concurrent/atomic/AtomicLong;>;"
    .end local v2    # "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_2b
    goto :goto_a

    .line 314
    :cond_2c
    return-void
.end method

.method public removeIfZero(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 296
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->remove(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method replace(Ljava/lang/Object;JJ)Z
    .registers 12
    .param p2, "expectedOldValue"    # J
    .param p4, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;JJ)Z"
        }
    .end annotation

    .line 443
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-nez v3, :cond_11

    .line 444
    invoke-virtual {p0, p1, p4, p5}, Lcom/google/common/util/concurrent/AtomicLongMap;->putIfAbsent(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 446
    :cond_11
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 447
    .local v1, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v1, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-virtual {v1, p2, p3, p4, p5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    :goto_20
    return v0
.end method

.method public size()I
    .registers 2

    .line 359
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public sum()J
    .registers 7

    .line 322
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    const-wide/16 v0, 0x0

    .line 323
    .local v0, "sum":J
    iget-object v2, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 324
    .local v3, "value":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 325
    .end local v3    # "value":Ljava/util/concurrent/atomic/AtomicLong;
    goto :goto_c

    .line 326
    :cond_1e
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 379
    .local p0, "this":Lcom/google/common/util/concurrent/AtomicLongMap;, "Lcom/google/common/util/concurrent/AtomicLongMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
