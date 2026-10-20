.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigIntegerSerializer;
.super Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;
.source "DefaultSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/DefaultSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigIntegerSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;-><init>()V

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigIntegerSerializer;->setAcceptsNull(Z)V

    .line 175
    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 172
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigIntegerSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/math/BigInteger;
    .locals 6
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/math/BigInteger;",
            ">;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .line 195
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/math/BigInteger;>;"
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    .line 196
    .local v1, "length":I
    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_0
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Input;->readBytes(I)[B

    move-result-object v2

    .line 198
    .local v2, "bytes":[B
    const-class v3, Ljava/math/BigInteger;

    const/4 v4, 0x0

    if-eq p3, v3, :cond_2

    if-eqz p3, :cond_2

    .line 201
    :try_start_0
    new-array v3, v0, [Ljava/lang/Class;

    const-class v5, [B

    aput-object v5, v3, v4

    invoke-virtual {p3, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 202
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ljava/math/BigInteger;>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_1

    .line 204
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    goto :goto_0

    .line 205
    :catch_0
    move-exception v5

    .line 208
    :cond_1
    :goto_0
    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 209
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ljava/math/BigInteger;>;"
    :catch_1
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v3, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 213
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 215
    aget-byte v0, v2, v4

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 221
    :sswitch_0
    sget-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    return-object v0

    .line 219
    :sswitch_1
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object v0

    .line 217
    :sswitch_2
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 224
    :cond_3
    :goto_1
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 172
    check-cast p3, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigIntegerSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/math/BigInteger;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "object"    # Ljava/math/BigInteger;

    .line 178
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 179
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    .line 180
    return-void

    .line 183
    :cond_0
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    if-ne p3, v1, :cond_1

    .line 184
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 185
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 186
    return-void

    .line 189
    :cond_1
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 190
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p2, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 191
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBytes([B)V

    .line 192
    return-void
.end method
