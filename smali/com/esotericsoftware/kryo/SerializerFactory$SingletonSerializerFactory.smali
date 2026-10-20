.class public Lcom/esotericsoftware/kryo/SerializerFactory$SingletonSerializerFactory;
.super Lcom/esotericsoftware/kryo/SerializerFactory$BaseSerializerFactory;
.source "SerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/SerializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonSerializerFactory"
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
.field private final serializer:Lcom/esotericsoftware/kryo/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 97
    .local p0, "this":Lcom/esotericsoftware/kryo/SerializerFactory$SingletonSerializerFactory;, "Lcom/esotericsoftware/kryo/SerializerFactory$SingletonSerializerFactory<TT;>;"
    .local p1, "serializer":Lcom/esotericsoftware/kryo/Serializer;, "TT;"
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/SerializerFactory$BaseSerializerFactory;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/esotericsoftware/kryo/SerializerFactory$SingletonSerializerFactory;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 99
    return-void
.end method


# virtual methods
.method public newSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .locals 1
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

    .line 102
    .local p0, "this":Lcom/esotericsoftware/kryo/SerializerFactory$SingletonSerializerFactory;, "Lcom/esotericsoftware/kryo/SerializerFactory$SingletonSerializerFactory<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/SerializerFactory$SingletonSerializerFactory;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    return-object v0
.end method
