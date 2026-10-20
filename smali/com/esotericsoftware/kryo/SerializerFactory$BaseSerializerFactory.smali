.class public abstract Lcom/esotericsoftware/kryo/SerializerFactory$BaseSerializerFactory;
.super Ljava/lang/Object;
.source "SerializerFactory.java"

# interfaces
.implements Lcom/esotericsoftware/kryo/SerializerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/SerializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseSerializerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/esotericsoftware/kryo/Serializer;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/esotericsoftware/kryo/SerializerFactory<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    .local p0, "this":Lcom/esotericsoftware/kryo/SerializerFactory$BaseSerializerFactory;, "Lcom/esotericsoftware/kryo/SerializerFactory$BaseSerializerFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupported(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 47
    .local p0, "this":Lcom/esotericsoftware/kryo/SerializerFactory$BaseSerializerFactory;, "Lcom/esotericsoftware/kryo/SerializerFactory$BaseSerializerFactory<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
