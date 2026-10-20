.class public Lcom/esotericsoftware/kryo/serializers/MapSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "MapSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Map;",
        ">",
        "Lcom/esotericsoftware/kryo/Serializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private keyClass:Ljava/lang/Class;

.field private keySerializer:Lcom/esotericsoftware/kryo/Serializer;

.field private keysCanBeNull:Z

.field private valueClass:Ljava/lang/Class;

.field private valueSerializer:Lcom/esotericsoftware/kryo/Serializer;

.field private valuesCanBeNull:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keysCanBeNull:Z

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valuesCanBeNull:Z

    .line 48
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setAcceptsNull(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "TT;)TT;"
        }
    .end annotation

    .line 247
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    .local p2, "original":Ljava/util/Map;, "TT;"
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 248
    .local v0, "copy":Ljava/util/Map;, "TT;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 250
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/esotericsoftware/kryo/Kryo;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/esotericsoftware/kryo/Kryo;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 252
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method protected create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/Map;
    .locals 2
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+TT;>;I)TT;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const-class v0, Ljava/util/HashMap;

    if-ne p3, v0, :cond_2

    .line 177
    const/4 v0, 0x3

    if-ge p4, v0, :cond_0

    .line 178
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 179
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p4, v0, :cond_1

    .line 180
    int-to-float v0, p4

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int p4, v0

    .line 181
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p4}, Ljava/util/HashMap;-><init>(I)V

    return-object v0

    .line 183
    :cond_2
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method protected createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "TT;)TT;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    .local p2, "original":Ljava/util/Map;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getKeyClass()Ljava/lang/Class;
    .locals 1

    .line 64
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keyClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getKeySerializer()Lcom/esotericsoftware/kryo/Serializer;
    .locals 1

    .line 80
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keySerializer:Lcom/esotericsoftware/kryo/Serializer;

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1

    .line 90
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getValueSerializer()Lcom/esotericsoftware/kryo/Serializer;
    .locals 1

    .line 106
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueSerializer:Lcom/esotericsoftware/kryo/Serializer;

    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 42
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Map;
    .locals 11
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    .line 188
    .local v1, "length":I
    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 191
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/Map;

    move-result-object v2

    .line 192
    .local v2, "map":Ljava/util/Map;, "TT;"
    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 193
    if-nez v1, :cond_1

    return-object v2

    .line 195
    :cond_1
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keyClass:Ljava/lang/Class;

    .line 196
    .local v3, "keyClass":Ljava/lang/Class;
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueClass:Ljava/lang/Class;

    .line 197
    .local v4, "valueClass":Ljava/lang/Class;
    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keySerializer:Lcom/esotericsoftware/kryo/Serializer;

    .local v5, "keySerializer":Lcom/esotericsoftware/kryo/Serializer;
    iget-object v6, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueSerializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 199
    .local v6, "valueSerializer":Lcom/esotericsoftware/kryo/Serializer;
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v7

    invoke-interface {v7}, Lcom/esotericsoftware/kryo/util/Generics;->nextGenericTypes()[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    move-result-object v7

    .line 200
    .local v7, "genericTypes":[Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    const/4 v8, 0x0

    if-eqz v7, :cond_3

    .line 201
    if-nez v5, :cond_2

    .line 202
    aget-object v9, v7, v8

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->resolve(Lcom/esotericsoftware/kryo/util/Generics;)Ljava/lang/Class;

    move-result-object v9

    .line 203
    .local v9, "genericClass":Ljava/lang/Class;
    if-eqz v9, :cond_2

    invoke-virtual {p1, v9}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 204
    invoke-virtual {p1, v9}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v5

    .line 205
    move-object v3, v9

    .line 208
    .end local v9    # "genericClass":Ljava/lang/Class;
    :cond_2
    if-nez v6, :cond_3

    .line 209
    aget-object v0, v7, v0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->resolve(Lcom/esotericsoftware/kryo/util/Generics;)Ljava/lang/Class;

    move-result-object v0

    .line 210
    .local v0, "genericClass":Ljava/lang/Class;
    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 211
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v6

    .line 212
    move-object v4, v0

    .line 217
    .end local v0    # "genericClass":Ljava/lang/Class;
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_a

    .line 219
    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v9

    aget-object v10, v7, v8

    invoke-interface {v9, v10}, Lcom/esotericsoftware/kryo/util/Generics;->pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    .line 220
    :cond_4
    if-eqz v5, :cond_6

    .line 221
    iget-boolean v9, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keysCanBeNull:Z

    if-eqz v9, :cond_5

    .line 222
    invoke-virtual {p1, p2, v3, v5}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v9

    .local v9, "key":Ljava/lang/Object;
    goto :goto_1

    .line 224
    .end local v9    # "key":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p1, p2, v3, v5}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9    # "key":Ljava/lang/Object;
    goto :goto_1

    .line 226
    .end local v9    # "key":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v9

    .line 227
    .restart local v9    # "key":Ljava/lang/Object;
    :goto_1
    if-eqz v7, :cond_7

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v10

    invoke-interface {v10}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 229
    :cond_7
    if-eqz v6, :cond_9

    .line 230
    iget-boolean v10, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valuesCanBeNull:Z

    if-eqz v10, :cond_8

    .line 231
    invoke-virtual {p1, p2, v4, v6}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v10

    .local v10, "value":Ljava/lang/Object;
    goto :goto_2

    .line 233
    .end local v10    # "value":Ljava/lang/Object;
    :cond_8
    invoke-virtual {p1, p2, v4, v6}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 235
    .end local v10    # "value":Ljava/lang/Object;
    :cond_9
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v10

    .line 236
    .restart local v10    # "value":Ljava/lang/Object;
    :goto_2
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .end local v9    # "key":Ljava/lang/Object;
    .end local v10    # "value":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "i":I
    :cond_a
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v0

    invoke-interface {v0}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 239
    return-object v2
.end method

.method public setKeyClass(Ljava/lang/Class;)V
    .locals 0
    .param p1, "keyClass"    # Ljava/lang/Class;

    .line 60
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keyClass:Ljava/lang/Class;

    .line 61
    return-void
.end method

.method public setKeyClass(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0
    .param p1, "keyClass"    # Ljava/lang/Class;
    .param p2, "keySerializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .line 69
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keyClass:Ljava/lang/Class;

    .line 70
    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keySerializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 71
    return-void
.end method

.method public setKeySerializer(Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0
    .param p1, "keySerializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .line 76
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keySerializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 77
    return-void
.end method

.method public setKeysCanBeNull(Z)V
    .locals 0
    .param p1, "keysCanBeNull"    # Z

    .line 54
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keysCanBeNull:Z

    .line 55
    return-void
.end method

.method public setValueClass(Ljava/lang/Class;)V
    .locals 0
    .param p1, "valueClass"    # Ljava/lang/Class;

    .line 86
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueClass:Ljava/lang/Class;

    .line 87
    return-void
.end method

.method public setValueClass(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0
    .param p1, "valueClass"    # Ljava/lang/Class;
    .param p2, "valueSerializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .line 95
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueClass:Ljava/lang/Class;

    .line 96
    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueSerializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 97
    return-void
.end method

.method public setValueSerializer(Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0
    .param p1, "valueSerializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .line 102
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueSerializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 103
    return-void
.end method

.method public setValuesCanBeNull(Z)V
    .locals 0
    .param p1, "valuesCanBeNull"    # Z

    .line 112
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valuesCanBeNull:Z

    .line 113
    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 42
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V
    .locals 9
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Output;",
            "TT;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    .local p3, "map":Ljava/util/Map;, "TT;"
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 117
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 118
    return-void

    .line 121
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    .line 122
    .local v1, "size":I
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 123
    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V

    .line 125
    return-void

    .line 128
    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V

    .line 131
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keySerializer:Lcom/esotericsoftware/kryo/Serializer;

    .local v3, "keySerializer":Lcom/esotericsoftware/kryo/Serializer;
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valueSerializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 133
    .local v4, "valueSerializer":Lcom/esotericsoftware/kryo/Serializer;
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v5

    invoke-interface {v5}, Lcom/esotericsoftware/kryo/util/Generics;->nextGenericTypes()[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    move-result-object v5

    .line 134
    .local v5, "genericTypes":[Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    if-eqz v5, :cond_3

    .line 135
    if-nez v3, :cond_2

    .line 136
    aget-object v6, v5, v0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->resolve(Lcom/esotericsoftware/kryo/util/Generics;)Ljava/lang/Class;

    move-result-object v6

    .line 137
    .local v6, "keyType":Ljava/lang/Class;
    if-eqz v6, :cond_2

    invoke-virtual {p1, v6}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1, v6}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v3

    .line 139
    .end local v6    # "keyType":Ljava/lang/Class;
    :cond_2
    if-nez v4, :cond_3

    .line 140
    aget-object v2, v5, v2

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->resolve(Lcom/esotericsoftware/kryo/util/Generics;)Ljava/lang/Class;

    move-result-object v2

    .line 141
    .local v2, "valueType":Ljava/lang/Class;
    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v4

    .line 145
    .end local v2    # "valueType":Ljava/lang/Class;
    :cond_3
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 146
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 147
    .local v6, "entry":Ljava/util/Map$Entry;
    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v7

    aget-object v8, v5, v0

    invoke-interface {v7, v8}, Lcom/esotericsoftware/kryo/util/Generics;->pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    .line 148
    :cond_4
    if-eqz v3, :cond_6

    .line 149
    iget-boolean v7, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->keysCanBeNull:Z

    if-eqz v7, :cond_5

    .line 150
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, p2, v7, v3}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    goto :goto_1

    .line 152
    :cond_5
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, p2, v7, v3}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    goto :goto_1

    .line 154
    :cond_6
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, p2, v7}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 155
    :goto_1
    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v7

    invoke-interface {v7}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 156
    :cond_7
    if-eqz v4, :cond_9

    .line 157
    iget-boolean v7, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->valuesCanBeNull:Z

    if-eqz v7, :cond_8

    .line 158
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, p2, v7, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    goto :goto_2

    .line 160
    :cond_8
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, p2, v7, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    goto :goto_2

    .line 162
    :cond_9
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, p2, v7}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 163
    .end local v6    # "entry":Ljava/util/Map$Entry;
    :goto_2
    goto :goto_0

    .line 164
    .end local v2    # "iter":Ljava/util/Iterator;
    :cond_a
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v0

    invoke-interface {v0}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 165
    return-void
.end method

.method protected writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V
    .locals 0
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Output;",
            "TT;)V"
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/MapSerializer;, "Lcom/esotericsoftware/kryo/serializers/MapSerializer<TT;>;"
    .local p3, "map":Ljava/util/Map;, "TT;"
    return-void
.end method
