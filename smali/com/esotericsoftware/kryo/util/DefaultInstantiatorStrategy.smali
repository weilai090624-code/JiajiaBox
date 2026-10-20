.class public Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy;
.super Ljava/lang/Object;
.source "DefaultInstantiatorStrategy.java"

# interfaces
.implements Lorg/objenesis/strategy/InstantiatorStrategy;


# instance fields
.field private fallbackStrategy:Lorg/objenesis/strategy/InstantiatorStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/objenesis/strategy/InstantiatorStrategy;)V
    .locals 0
    .param p1, "fallbackStrategy"    # Lorg/objenesis/strategy/InstantiatorStrategy;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy;->fallbackStrategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    .line 41
    return-void
.end method


# virtual methods
.method public getFallbackInstantiatorStrategy()Lorg/objenesis/strategy/InstantiatorStrategy;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy;->fallbackStrategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    return-object v0
.end method

.method public newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;
    .locals 5
    .param p1, "type"    # Ljava/lang/Class;

    .line 52
    sget-boolean v0, Lcom/esotericsoftware/kryo/util/Util;->isAndroid:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    .line 55
    .local v0, "enclosingType":Ljava/lang/Class;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 57
    .local v2, "isNonStaticMemberClass":Z
    :goto_0
    if-nez v2, :cond_1

    .line 59
    :try_start_0
    invoke-static {p1}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/ConstructorAccess;

    move-result-object v3

    .line 60
    .local v3, "access":Lcom/esotericsoftware/reflectasm/ConstructorAccess;
    new-instance v4, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy$1;

    invoke-direct {v4, p0, v3, p1}, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy$1;-><init>(Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy;Lcom/esotericsoftware/reflectasm/ConstructorAccess;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 69
    .end local v3    # "access":Lcom/esotericsoftware/reflectasm/ConstructorAccess;
    :catch_0
    move-exception v3

    .line 78
    .end local v0    # "enclosingType":Ljava/lang/Class;
    .end local v2    # "isNonStaticMemberClass":Z
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    move-object v2, v0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .local v0, "ctor":Ljava/lang/reflect/Constructor;
    goto :goto_1

    .line 79
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v2

    .line 80
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    move-object v3, v0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 81
    .restart local v0    # "ctor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 83
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    move-object v1, v0

    .line 84
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    new-instance v2, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy$2;-><init>(Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy;Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v2

    .line 93
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_2
    move-exception v0

    .line 96
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy;->fallbackStrategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    if-nez v0, :cond_5

    .line 97
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 98
    :cond_2
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class cannot be created (non-static member class): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class cannot be created (missing no-arg constructor): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "message":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    nop

    .line 103
    const-string v1, "\nNote: This is an anonymous class, which is not serializable by default in Kryo. Possible solutions:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    const-string v2, "1. Remove uses of anonymous classes, including double brace initialization, from the containing\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    const-string v2, "class. This is the safest solution, as anonymous classes don\'t have predictable names for serialization.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    const-string v2, "2. Register a FieldSerializer for the containing class and call FieldSerializer\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    const-string/jumbo v2, "setIgnoreSyntheticFields(false) on it. This is not safe but may be sufficient temporarily."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_4
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    .end local v0    # "message":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy;->fallbackStrategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    invoke-interface {v0, p1}, Lorg/objenesis/strategy/InstantiatorStrategy;->newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object v0

    return-object v0
.end method

.method public setFallbackInstantiatorStrategy(Lorg/objenesis/strategy/InstantiatorStrategy;)V
    .locals 0
    .param p1, "fallbackStrategy"    # Lorg/objenesis/strategy/InstantiatorStrategy;

    .line 44
    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy;->fallbackStrategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    .line 45
    return-void
.end method
