.class public Lorg/objenesis/ObjenesisBase;
.super Ljava/lang/Object;
.source "ObjenesisBase.java"

# interfaces
.implements Lorg/objenesis/Objenesis;


# instance fields
.field protected cache:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/objenesis/instantiator/ObjectInstantiator<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final strategy:Lorg/objenesis/strategy/InstantiatorStrategy;


# direct methods
.method public constructor <init>(Lorg/objenesis/strategy/InstantiatorStrategy;)V
    .locals 1
    .param p1, "strategy"    # Lorg/objenesis/strategy/InstantiatorStrategy;

    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/objenesis/ObjenesisBase;-><init>(Lorg/objenesis/strategy/InstantiatorStrategy;Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/objenesis/strategy/InstantiatorStrategy;Z)V
    .locals 2
    .param p1, "strategy"    # Lorg/objenesis/strategy/InstantiatorStrategy;
    .param p2, "useCache"    # Z

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-eqz p1, :cond_1

    .line 56
    iput-object p1, p0, Lorg/objenesis/ObjenesisBase;->strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    .line 57
    if-eqz p2, :cond_0

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/objenesis/ObjenesisBase;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    .line 58
    return-void

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A strategy can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/objenesis/instantiator/ObjectInstantiator<",
            "TT;>;"
        }
    .end annotation

    .line 86
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    iget-object v0, p0, Lorg/objenesis/ObjenesisBase;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/objenesis/ObjenesisBase;->strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    invoke-interface {v0, p1}, Lorg/objenesis/strategy/InstantiatorStrategy;->newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/objenesis/ObjenesisBase;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objenesis/instantiator/ObjectInstantiator;

    .line 93
    .local v0, "instantiator":Lorg/objenesis/instantiator/ObjectInstantiator;, "Lorg/objenesis/instantiator/ObjectInstantiator<*>;"
    if-nez v0, :cond_1

    .line 94
    iget-object v1, p0, Lorg/objenesis/ObjenesisBase;->strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    invoke-interface {v1, p1}, Lorg/objenesis/strategy/InstantiatorStrategy;->newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object v1

    .line 95
    .local v1, "newInstantiator":Lorg/objenesis/instantiator/ObjectInstantiator;, "Lorg/objenesis/instantiator/ObjectInstantiator<*>;"
    iget-object v2, p0, Lorg/objenesis/ObjenesisBase;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/objenesis/instantiator/ObjectInstantiator;

    .line 96
    if-nez v0, :cond_1

    .line 97
    move-object v0, v1

    .line 100
    .end local v1    # "newInstantiator":Lorg/objenesis/instantiator/ObjectInstantiator;, "Lorg/objenesis/instantiator/ObjectInstantiator<*>;"
    :cond_1
    return-object v0

    .line 87
    .end local v0    # "instantiator":Lorg/objenesis/instantiator/ObjectInstantiator;, "Lorg/objenesis/instantiator/ObjectInstantiator<*>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primitive types can\'t be instantiated in Java"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 73
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/objenesis/ObjenesisBase;->getInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object v0

    invoke-interface {v0}, Lorg/objenesis/instantiator/ObjectInstantiator;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/objenesis/ObjenesisBase;->strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/objenesis/ObjenesisBase;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    const-string v1, " without"

    goto :goto_0

    :cond_0
    const-string v1, " with"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caching"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
