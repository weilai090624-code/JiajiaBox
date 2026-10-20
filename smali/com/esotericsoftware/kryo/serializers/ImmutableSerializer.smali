.class public abstract Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "ImmutableSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/Serializer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;, "Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer<TT;>;"
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;->setImmutable(Z)V

    .line 30
    return-void
.end method
