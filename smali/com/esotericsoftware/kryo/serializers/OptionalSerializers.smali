.class public final Lcom/esotericsoftware/kryo/serializers/OptionalSerializers;
.super Ljava/lang/Object;
.source "OptionalSerializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/OptionalSerializers$OptionalDoubleSerializer;,
        Lcom/esotericsoftware/kryo/serializers/OptionalSerializers$OptionalLongSerializer;,
        Lcom/esotericsoftware/kryo/serializers/OptionalSerializers$OptionalIntSerializer;,
        Lcom/esotericsoftware/kryo/serializers/OptionalSerializers$OptionalSerializer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDefaultSerializers(Lcom/esotericsoftware/kryo/Kryo;)V
    .locals 2
    .param p0, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;

    .line 38
    const-string v0, "java.util.Optional"

    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lj$/util/Optional;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/OptionalSerializers$OptionalSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 39
    :cond_0
    const-string v0, "java.util.OptionalInt"

    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lj$/util/OptionalInt;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/OptionalSerializers$OptionalIntSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 40
    :cond_1
    const-string v0, "java.util.OptionalLong"

    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lj$/util/OptionalLong;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/OptionalSerializers$OptionalLongSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 41
    :cond_2
    const-string v0, "java.util.OptionalDouble"

    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    const-class v0, Lj$/util/OptionalDouble;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/OptionalSerializers$OptionalDoubleSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 43
    :cond_3
    return-void
.end method
