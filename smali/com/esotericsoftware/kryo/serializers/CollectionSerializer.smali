.class public Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "CollectionSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Collection;",
        ">",
        "Lcom/esotericsoftware/kryo/Serializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private elementClass:Ljava/lang/Class;

.field private elementSerializer:Lcom/esotericsoftware/kryo/Serializer;

.field private elementsCanBeNull:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;, "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<TT;>;"
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->elementsCanBeNull:Z

    .line 50
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->setAcceptsNull(Z)V

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;, "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<TT;>;"
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "TT;)TT;"
        }
    .end annotation

    .line 260
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;, "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<TT;>;"
    .local p2, "original":Ljava/util/Collection;, "TT;"
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 261
    .local v0, "copy":Ljava/util/Collection;, "TT;"
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 262
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 263
    .local v2, "element":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/Kryo;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v2    # "element":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method protected create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/Collection;
    .locals 3
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

    .line 175
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;, "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const-class v0, Ljava/util/ArrayList;

    if-ne p3, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 176
    :cond_0
    const-class v0, Ljava/util/HashSet;

    if-ne p3, v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    int-to-float v1, p4

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0

    .line 177
    :cond_1
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 178
    .local v0, "collection":Ljava/util/Collection;, "TT;"
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 179
    :cond_2
    return-object v0
.end method

.method protected createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "TT;)TT;"
        }
    .end annotation

    .line 256
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;, "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<TT;>;"
    .local p2, "original":Ljava/util/Collection;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public getElementClass()Ljava/lang/Class;
    .locals 1

    .line 66
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;, "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->elementClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getElementSerializer()Lcom/esotericsoftware/kryo/Serializer;
    .locals 1

    .line 82
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;, "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->elementSerializer:Lcom/esotericsoftware/kryo/Serializer;

    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 44
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;, "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 9
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

    .line 183
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;, "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->elementClass:Ljava/lang/Class;

    .line 184
    .local v0, "elementClass":Ljava/lang/Class;
    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->elementSerializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 185
    .local v1, "elementSerializer":Lcom/esotericsoftware/kryo/Serializer;
    if-nez v1, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v2

    invoke-interface {v2}, Lcom/esotericsoftware/kryo/util/Generics;->nextGenericClass()Ljava/lang/Class;

    move-result-object v2

    .line 187
    .local v2, "genericClass":Ljava/lang/Class;
    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    .line 189
    move-object v0, v2

    .line 196
    .end local v2    # "genericClass":Ljava/lang/Class;
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->elementsCanBeNull:Z

    .line 197
    .local v2, "elementsCanBeNull":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 198
    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag()Z

    move-result v5

    move v2, v5

    .line 200
    invoke-virtual {p2, v4}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag(Z)I

    move-result v4

    .local v4, "length":I
    goto :goto_0

    .line 202
    .end local v4    # "length":I
    :cond_1
    invoke-virtual {p2, v4}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .restart local v4    # "length":I
    :goto_0
    if-nez v4, :cond_2

    .line 249
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v5

    invoke-interface {v5}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 203
    return-object v3

    .line 205
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 206
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/Collection;

    move-result-object v3

    .line 207
    .local v3, "collection":Ljava/util/Collection;, "TT;"
    invoke-virtual {p1, v3}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    if-nez v4, :cond_a

    .line 249
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v5

    invoke-interface {v5}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 209
    return-object v3

    .line 211
    .end local v3    # "collection":Ljava/util/Collection;, "TT;"
    .end local v4    # "length":I
    :cond_3
    :try_start_2
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag()Z

    move-result v5

    .line 212
    .local v5, "sameType":Z
    invoke-virtual {p2, v4}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag(Z)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    .restart local v4    # "length":I
    if-nez v4, :cond_4

    .line 249
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v6

    invoke-interface {v6}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 213
    return-object v3

    .line 215
    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 216
    :try_start_3
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/Collection;

    move-result-object v6

    .line 217
    .local v6, "collection":Ljava/util/Collection;, "TT;"
    invoke-virtual {p1, v6}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    if-nez v4, :cond_5

    .line 249
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v3

    invoke-interface {v3}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 219
    return-object v6

    .line 221
    :cond_5
    if-eqz v5, :cond_9

    .line 222
    :try_start_4
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v7

    .line 223
    .local v7, "registration":Lcom/esotericsoftware/kryo/Registration;
    if-nez v7, :cond_7

    .line 224
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_6

    .line 225
    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 226
    .end local v8    # "i":I
    :cond_6
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v3

    invoke-interface {v3}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 227
    nop

    .line 249
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v3

    invoke-interface {v3}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 227
    return-object v6

    .line 229
    :cond_7
    :try_start_5
    invoke-virtual {v7}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    .line 230
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v3

    move-object v1, v3

    .line 231
    if-eqz v2, :cond_8

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v3

    move v2, v3

    :cond_8
    move-object v3, v6

    goto :goto_2

    .line 221
    .end local v7    # "registration":Lcom/esotericsoftware/kryo/Registration;
    :cond_9
    move-object v3, v6

    .line 235
    .end local v5    # "sameType":Z
    .end local v6    # "collection":Ljava/util/Collection;, "TT;"
    .restart local v3    # "collection":Ljava/util/Collection;, "TT;"
    :cond_a
    :goto_2
    if-eqz v1, :cond_e

    .line 236
    if-eqz v2, :cond_c

    .line 237
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v4, :cond_b

    .line 238
    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v5    # "i":I
    :cond_b
    goto :goto_6

    .line 240
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v4, :cond_d

    .line 241
    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .end local v5    # "i":I
    :cond_d
    goto :goto_6

    .line 244
    :cond_e
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    if-ge v5, v4, :cond_f

    .line 245
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 244
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 247
    .end local v5    # "i":I
    :cond_f
    :goto_6
    nop

    .line 249
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v5

    invoke-interface {v5}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 247
    return-object v3

    .line 249
    .end local v2    # "elementsCanBeNull":Z
    .end local v3    # "collection":Ljava/util/Collection;, "TT;"
    .end local v4    # "length":I
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v3

    invoke-interface {v3}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 250
    throw v2
.end method

.method public setElementClass(Ljava/lang/Class;)V
    .locals 0
    .param p1, "elementClass"    # Ljava/lang/Class;

    .line 62
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;, "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<TT;>;"
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->elementClass:Ljava/lang/Class;

    .line 63
    return-void
.end method

.method public setElementClass(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0
    .param p1, "elementClass"    # Ljava/lang/Class;
    .param p2, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .line 71
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;, "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<TT;>;"
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->elementClass:Ljava/lang/Class;

    .line 72
    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->elementSerializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 73
    return-void
.end method

.method public setElementSerializer(Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0
    .param p1, "elementSerializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .line 78
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;, "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<TT;>;"
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->elementSerializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 79
    return-void
.end method

.method public setElementsCanBeNull(Z)V
    .locals 0
    .param p1, "elementsCanBeNull"    # Z

    .line 56
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;, "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<TT;>;"
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->elementsCanBeNull:Z

    .line 57
    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 44
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;, "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<TT;>;"
    check-cast p3, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Collection;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Collection;)V
    .locals 10
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

    .line 86
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;, "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<TT;>;"
    .local p3, "collection":Ljava/util/Collection;, "TT;"
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 87
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    .line 88
    return-void

    .line 91
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    .line 92
    .local v1, "length":I
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 93
    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Collection;)V

    .line 95
    return-void

    .line 98
    :cond_1
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->elementsCanBeNull:Z

    .line 99
    .local v3, "elementsCanBeNull":Z
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->elementSerializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 100
    .local v4, "elementSerializer":Lcom/esotericsoftware/kryo/Serializer;
    if-nez v4, :cond_2

    .line 101
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v5

    invoke-interface {v5}, Lcom/esotericsoftware/kryo/util/Generics;->nextGenericClass()Ljava/lang/Class;

    move-result-object v5

    .line 102
    .local v5, "genericClass":Ljava/lang/Class;
    if-eqz v5, :cond_2

    invoke-virtual {p1, v5}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v5}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v4

    .line 106
    .end local v5    # "genericClass":Ljava/lang/Class;
    :cond_2
    if-eqz v4, :cond_6

    .line 108
    if-eqz v3, :cond_5

    .line 109
    :try_start_0
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 110
    .local v6, "element":Ljava/lang/Object;
    if-nez v6, :cond_3

    .line 111
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p2, v2, v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarIntFlag(ZIZ)I

    .line 112
    goto :goto_1

    .line 114
    .end local v6    # "element":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 115
    :cond_4
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p2, v0, v5, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarIntFlag(ZIZ)I

    .line 116
    const/4 v3, 0x0

    goto :goto_1

    .line 118
    :cond_5
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p2, v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 119
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Collection;)V

    goto :goto_4

    .line 121
    :cond_6
    const/4 v5, 0x0

    .line 122
    .local v5, "elementType":Ljava/lang/Class;
    const/4 v6, 0x0

    .line 123
    .local v6, "hasNull":Z
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 124
    .local v8, "element":Ljava/lang/Object;
    if-nez v8, :cond_7

    .line 125
    const/4 v6, 0x1

    goto :goto_3

    .line 126
    :cond_7
    if-nez v5, :cond_8

    .line 127
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    move-object v5, v9

    goto :goto_3

    .line 128
    :cond_8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-eq v9, v5, :cond_9

    .line 129
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p2, v0, v7, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarIntFlag(ZIZ)I

    .line 130
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Collection;)V

    .line 131
    goto :goto_4

    .line 133
    .end local v8    # "element":Ljava/lang/Object;
    :cond_9
    :goto_3
    goto :goto_2

    .line 134
    :cond_a
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p2, v2, v7, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarIntFlag(ZIZ)I

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Collection;)V

    .line 136
    if-nez v5, :cond_b

    .line 137
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v0

    invoke-interface {v0}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 138
    return-void

    .line 141
    :cond_b
    :try_start_1
    invoke-virtual {p1, p2, v5}, Lcom/esotericsoftware/kryo/Kryo;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    .line 142
    invoke-virtual {p1, v5}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    move-object v4, v0

    .line 143
    if-eqz v3, :cond_c

    .line 144
    invoke-virtual {p2, v6}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    .line 145
    move v3, v6

    .line 149
    .end local v5    # "elementType":Ljava/lang/Class;
    .end local v6    # "hasNull":Z
    :cond_c
    :goto_4
    if-eqz v4, :cond_10

    .line 150
    if-eqz v3, :cond_e

    .line 151
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 152
    .local v2, "element":Ljava/lang/Object;
    invoke-virtual {p1, p2, v2, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    .end local v2    # "element":Ljava/lang/Object;
    goto :goto_5

    :cond_d
    goto :goto_8

    .line 154
    :cond_e
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 155
    .restart local v2    # "element":Ljava/lang/Object;
    invoke-virtual {p1, p2, v2, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    .end local v2    # "element":Ljava/lang/Object;
    goto :goto_6

    :cond_f
    goto :goto_8

    .line 158
    :cond_10
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 159
    .restart local v2    # "element":Ljava/lang/Object;
    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "element":Ljava/lang/Object;
    goto :goto_7

    .line 162
    :cond_11
    :goto_8
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v0

    invoke-interface {v0}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 163
    nop

    .line 164
    return-void

    .line 162
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v2

    invoke-interface {v2}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 163
    throw v0
.end method

.method protected writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Collection;)V
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

    .line 169
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;, "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<TT;>;"
    .local p3, "collection":Ljava/util/Collection;, "TT;"
    return-void
.end method
