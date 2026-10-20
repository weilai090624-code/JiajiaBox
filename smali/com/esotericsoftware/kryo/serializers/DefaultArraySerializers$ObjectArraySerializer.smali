.class public Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "DefaultArraySerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectArraySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private elementsAreSameType:Z

.field private elementsCanBeNull:Z

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V
    .locals 3
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "type"    # Ljava/lang/Class;

    .line 308
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->elementsCanBeNull:Z

    .line 305
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->setAcceptsNull(Z)V

    .line 309
    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->type:Ljava/lang/Class;

    .line 310
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 311
    .local v1, "componentType":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 312
    .local v2, "isFinal":Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->setElementsAreSameType(Z)V

    .line 313
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 299
    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcom/esotericsoftware/kryo/Kryo;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "original"    # [Ljava/lang/Object;

    .line 362
    array-length v0, p2

    .line 363
    .local v0, "n":I
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 364
    .local v1, "copy":[Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 365
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 366
    aget-object v3, p2, v2

    invoke-virtual {p1, v3}, Lcom/esotericsoftware/kryo/Kryo;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 299
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 6
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "type"    # Ljava/lang/Class;

    .line 339
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    .line 340
    .local v0, "n":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 341
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 342
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 343
    .local v1, "object":[Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 344
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 345
    .local v2, "elementClass":Ljava/lang/Class;
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->elementsAreSameType:Z

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 355
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 356
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 355
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    .end local v3    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v3

    .line 347
    .local v3, "elementSerializer":Lcom/esotericsoftware/kryo/Serializer;
    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->elementsCanBeNull:Z

    if-eqz v4, :cond_4

    .line 348
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_3

    .line 349
    invoke-virtual {p1, p2, v2, v3}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    .line 348
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v4    # "i":I
    :cond_3
    goto :goto_4

    .line 351
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v0, :cond_5

    .line 352
    invoke-virtual {p1, p2, v2, v3}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    .line 351
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 354
    .end local v3    # "elementSerializer":Lcom/esotericsoftware/kryo/Serializer;
    .end local v4    # "i":I
    :cond_5
    :goto_4
    nop

    .line 358
    :cond_6
    return-object v1
.end method

.method public setElementsAreSameType(Z)V
    .locals 0
    .param p1, "elementsAreSameType"    # Z

    .line 380
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->elementsAreSameType:Z

    .line 381
    return-void
.end method

.method public setElementsCanBeNull(Z)V
    .locals 0
    .param p1, "elementsCanBeNull"    # Z

    .line 373
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->elementsCanBeNull:Z

    .line 374
    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 299
    check-cast p3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "object"    # [Ljava/lang/Object;

    .line 316
    if-nez p3, :cond_0

    .line 317
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    .line 318
    return-void

    .line 320
    :cond_0
    array-length v0, p3

    .line 321
    .local v0, "n":I
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 322
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 323
    .local v1, "elementClass":Ljava/lang/Class;
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->elementsAreSameType:Z

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 333
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_6

    .line 334
    aget-object v3, p3, v2

    invoke-virtual {p1, p2, v3}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    .end local v2    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v2

    .line 325
    .local v2, "elementSerializer":Lcom/esotericsoftware/kryo/Serializer;
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->elementsCanBeNull:Z

    if-eqz v3, :cond_4

    .line 326
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 327
    aget-object v4, p3, v3

    invoke-virtual {p1, p2, v4, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    .line 326
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3    # "i":I
    :cond_3
    goto :goto_4

    .line 329
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_5

    .line 330
    aget-object v4, p3, v3

    invoke-virtual {p1, p2, v4, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    .line 329
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 332
    .end local v2    # "elementSerializer":Lcom/esotericsoftware/kryo/Serializer;
    .end local v3    # "i":I
    :cond_5
    :goto_4
    nop

    .line 336
    :cond_6
    return-void
.end method
