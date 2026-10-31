.class public Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$StringArraySerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "DefaultArraySerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringArraySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 256
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$StringArraySerializer;->setAcceptsNull(Z)V

    .line 259
    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 256
    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$StringArraySerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcom/esotericsoftware/kryo/Kryo;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "original"    # [Ljava/lang/String;

    .line 293
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 294
    .local v0, "copy":[Ljava/lang/String;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    .line 256
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$StringArraySerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[Ljava/lang/String;
    .registers 9
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "type"    # Ljava/lang/Class;

    .line 278
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    .line 279
    .local v0, "length":I
    if-nez v0, :cond_9

    const/4 v1, 0x0

    return-object v1

    .line 280
    :cond_9
    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 281
    .local v1, "array":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getReferences()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getReferenceResolver()Lcom/esotericsoftware/kryo/ReferenceResolver;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/esotericsoftware/kryo/ReferenceResolver;->useReferences(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 282
    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v2

    .line 283
    .local v2, "serializer":Lcom/esotericsoftware/kryo/Serializer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_26
    if-ge v3, v0, :cond_35

    .line 284
    const-class v4, Ljava/lang/String;

    invoke-virtual {p1, p2, v4, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v3

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 285
    .end local v2    # "serializer":Lcom/esotericsoftware/kryo/Serializer;
    .end local v3    # "i":I
    :cond_35
    goto :goto_42

    .line 286
    :cond_36
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_37
    if-ge v2, v0, :cond_42

    .line 287
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 289
    .end local v2    # "i":I
    :cond_42
    :goto_42
    return-object v1
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .registers 4

    .line 256
    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$StringArraySerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[Ljava/lang/String;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[Ljava/lang/String;)V
    .registers 8
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "object"    # [Ljava/lang/String;

    .line 262
    if-nez p3, :cond_7

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    .line 264
    return-void

    .line 266
    :cond_7
    array-length v0, p3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 267
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getReferences()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getReferenceResolver()Lcom/esotericsoftware/kryo/ReferenceResolver;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/esotericsoftware/kryo/ReferenceResolver;->useReferences(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 268
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    .line 269
    .local v0, "serializer":Lcom/esotericsoftware/kryo/Serializer;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p3

    .local v2, "n":I
    :goto_27
    if-ge v1, v2, :cond_31

    .line 270
    aget-object v3, p3, v1

    invoke-virtual {p1, p2, v3, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 271
    .end local v0    # "serializer":Lcom/esotericsoftware/kryo/Serializer;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_31
    goto :goto_3e

    .line 272
    :cond_32
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p3

    .local v1, "n":I
    :goto_34
    if-ge v0, v1, :cond_3e

    .line 273
    aget-object v2, p3, v0

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/String;)V

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 275
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_3e
    :goto_3e
    return-void
.end method
