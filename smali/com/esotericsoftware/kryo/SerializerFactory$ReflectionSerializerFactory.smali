.class public Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory;
.super Lcom/esotericsoftware/kryo/SerializerFactory$BaseSerializerFactory;
.source "SerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/SerializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectionSerializerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/esotericsoftware/kryo/Serializer;",
        ">",
        "Lcom/esotericsoftware/kryo/SerializerFactory$BaseSerializerFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final serializerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory;, "Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory<TT;>;"
    .local p1, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/SerializerFactory$BaseSerializerFactory;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory;->serializerClass:Ljava/lang/Class;

    .line 61
    return-void
.end method

.method public static newSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .registers 9
    .param p0, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ">(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .line 72
    .local p1, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_3
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/esotericsoftware/kryo/Kryo;

    aput-object v4, v3, v1

    const-class v4, Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object p2, v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/esotericsoftware/kryo/Serializer;
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_1d} :catch_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_1e

    return-object v2

    .line 84
    :catch_1e
    move-exception v0

    goto :goto_54

    .line 73
    :catch_20
    move-exception v2

    .line 75
    .local v2, "ex1":Ljava/lang/NoSuchMethodException;
    :try_start_21
    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Lcom/esotericsoftware/kryo/Kryo;

    aput-object v4, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/esotericsoftware/kryo/Serializer;
    :try_end_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_35} :catch_36
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_35} :catch_1e

    return-object v3

    .line 76
    :catch_36
    move-exception v3

    .line 78
    .local v3, "ex2":Ljava/lang/NoSuchMethodException;
    :try_start_37
    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/Serializer;
    :try_end_4b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_37 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4b} :catch_1e

    return-object v0

    .line 79
    :catch_4c
    move-exception v0

    .line 80
    .local v0, "ex3":Ljava/lang/NoSuchMethodException;
    :try_start_4d
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/kryo/Serializer;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_53} :catch_1e

    return-object v1

    .line 85
    .end local v2    # "ex1":Ljava/lang/NoSuchMethodException;
    .end local v3    # "ex2":Ljava/lang/NoSuchMethodException;
    .local v0, "ex":Ljava/lang/Exception;
    :goto_54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create serializer \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public newSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .registers 4
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory;, "Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory;->serializerClass:Ljava/lang/Class;

    invoke-static {p1, v0, p2}, Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory;->newSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    return-object v0
.end method
