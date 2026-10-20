.class public Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.source "TaggedFieldSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;,
        Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final config:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

.field private readTags:Lcom/esotericsoftware/kryo/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/IntMap<",
            "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;",
            ">;"
        }
    .end annotation
.end field

.field private writeTags:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "type"    # Ljava/lang/Class;

    .line 68
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer<TT;>;"
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;)V
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "config"    # Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    .line 72
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;)V

    .line 73
    iput-object p3, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->setAcceptsNull(Z)V

    .line 75
    return-void
.end method


# virtual methods
.method public getTaggedFieldSerializerConfig()Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;
    .locals 1

    .line 243
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    return-object v0
.end method

.method protected initializeCachedFields()V
    .locals 10

    .line 78
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 80
    .local v0, "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 81
    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    .line 82
    .local v3, "field":Ljava/lang/reflect/Field;
    const-class v4, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_1

    .line 83
    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring field without tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "kryo"

    invoke-static {v5, v4}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    aget-object v4, v0, v1

    invoke-super {p0, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->removeField(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V

    .line 80
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v1, "writeTags":Ljava/util/ArrayList;
    new-instance v2, Lcom/esotericsoftware/kryo/util/IntMap;

    array-length v3, v0

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v2, v3}, Lcom/esotericsoftware/kryo/util/IntMap;-><init>(I)V

    iput-object v2, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->readTags:Lcom/esotericsoftware/kryo/util/IntMap;

    .line 92
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    .line 93
    .local v5, "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    iget-object v6, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    .line 94
    .local v6, "field":Ljava/lang/reflect/Field;
    const-class v7, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;

    invoke-interface {v7}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;->value()I

    move-result v7

    .line 95
    .local v7, "tag":I
    iget-object v8, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->readTags:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v8, v7}, Lcom/esotericsoftware/kryo/util/IntMap;->containsKey(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 97
    iget-object v8, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->readTags:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v8, v7, v5}, Lcom/esotericsoftware/kryo/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-class v8, Ljava/lang/Deprecated;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    if-nez v8, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_3
    iput v7, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->tag:I

    .line 92
    .end local v5    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "tag":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 96
    .restart local v5    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    .restart local v7    # "tag":I
    :cond_4
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v3

    const/4 v3, 0x1

    aput-object v6, v9, v3

    const/4 v3, 0x2

    aput-object v8, v9, v3

    const-string v3, "Duplicate tag %d on fields: %s and %s"

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    .end local v5    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "tag":I
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    iput-object v2, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->writeTags:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 102
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 23
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

    .line 171
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "#"

    const-string v5, "Unable to read unknown tag "

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    .line 172
    .local v0, "fieldCount":I
    if-nez v0, :cond_0

    const/4 v4, 0x0

    return-object v4

    .line 173
    :cond_0
    add-int/lit8 v7, v0, -0x1

    .line 175
    .end local v0    # "fieldCount":I
    .local v7, "fieldCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->pushTypeVariables()I

    move-result v8

    .line 177
    .local v8, "pop":I
    invoke-virtual/range {p0 .. p3}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .line 178
    .local v9, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2, v9}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 180
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    iget-boolean v10, v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->chunked:Z

    .local v10, "chunked":Z
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    iget-boolean v11, v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->readUnknownTagData:Z

    .line 182
    .local v11, "readUnknownTagData":Z
    const/4 v0, 0x0

    .line 183
    .local v0, "inputChunked":Lcom/esotericsoftware/kryo/io/InputChunked;
    if-eqz v10, :cond_1

    .line 184
    new-instance v12, Lcom/esotericsoftware/kryo/io/InputChunked;

    iget-object v13, v1, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    iget v13, v13, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->chunkSize:I

    invoke-direct {v12, v3, v13}, Lcom/esotericsoftware/kryo/io/InputChunked;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v12

    move-object v13, v12

    .local v12, "fieldInput":Lcom/esotericsoftware/kryo/io/Input;
    goto :goto_0

    .line 186
    .end local v12    # "fieldInput":Lcom/esotericsoftware/kryo/io/Input;
    :cond_1
    move-object/from16 v12, p2

    move-object v13, v12

    move-object v12, v0

    .line 187
    .end local v0    # "inputChunked":Lcom/esotericsoftware/kryo/io/InputChunked;
    .local v12, "inputChunked":Lcom/esotericsoftware/kryo/io/InputChunked;
    .local v13, "fieldInput":Lcom/esotericsoftware/kryo/io/Input;
    :goto_0
    iget-object v14, v1, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->readTags:Lcom/esotericsoftware/kryo/util/IntMap;

    .line 188
    .local v14, "readTags":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;>;"
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_1
    if-ge v15, v7, :cond_11

    .line 189
    move/from16 v16, v7

    .end local v7    # "fieldCount":I
    .local v16, "fieldCount":I
    invoke-virtual {v3, v6}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v7

    .line 190
    .local v7, "tag":I
    invoke-virtual {v14, v7}, Lcom/esotericsoftware/kryo/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 192
    .local v6, "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    const-string v3, " ("

    move-object/from16 v17, v14

    .end local v14    # "readTags":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;>;"
    .local v17, "readTags":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;>;"
    const-string v14, ")"

    move/from16 v18, v8

    .end local v8    # "pop":I
    .local v18, "pop":I
    const-string v8, "kryo"

    if-eqz v11, :cond_b

    .line 195
    :try_start_0
    invoke-virtual {v2, v13}, Lcom/esotericsoftware/kryo/Kryo;->readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0
    :try_end_0
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v19, v0

    .line 203
    .local v19, "registration":Lcom/esotericsoftware/kryo/Registration;
    nop

    .line 204
    if-nez v19, :cond_3

    .line 205
    if-eqz v10, :cond_2

    invoke-virtual {v12}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    :cond_2
    move-object v3, v9

    move/from16 v20, v11

    move/from16 v21, v15

    goto/16 :goto_5

    .line 208
    :cond_3
    move/from16 v20, v11

    .end local v11    # "readUnknownTagData":Z
    .local v20, "readUnknownTagData":Z
    invoke-virtual/range {v19 .. v19}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v11

    .line 209
    .local v11, "valueClass":Ljava/lang/Class;
    if-nez v6, :cond_8

    .line 211
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    move/from16 v21, v15

    .end local v15    # "i":I
    .local v21, "i":I
    const-string v15, " data, type: "

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v9

    .end local v9    # "object":Ljava/lang/Object;, "TT;"
    .local v22, "object":Ljava/lang/Object;, "TT;"
    const-string v9, "Read unknown tag "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v22    # "object":Ljava/lang/Object;, "TT;"
    .restart local v9    # "object":Ljava/lang/Object;, "TT;"
    :cond_4
    move-object/from16 v22, v9

    .line 213
    .end local v9    # "object":Ljava/lang/Object;, "TT;"
    .restart local v22    # "object":Ljava/lang/Object;, "TT;"
    :goto_2
    :try_start_1
    invoke-virtual {v2, v13, v11}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    goto :goto_3

    .line 214
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 215
    .local v0, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v11}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "message":Ljava/lang/String;
    if-eqz v10, :cond_7

    .line 218
    sget-boolean v9, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v9, :cond_5

    invoke-static {v8, v3, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    .end local v0    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    .end local v3    # "message":Ljava/lang/String;
    :cond_5
    :goto_3
    if-eqz v10, :cond_6

    invoke-virtual {v12}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    :cond_6
    move-object/from16 v3, v22

    goto/16 :goto_5

    .line 217
    .restart local v0    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    .restart local v3    # "message":Ljava/lang/String;
    :cond_7
    new-instance v4, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v4, v3, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 223
    .end local v0    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    .end local v3    # "message":Ljava/lang/String;
    .end local v21    # "i":I
    .end local v22    # "object":Ljava/lang/Object;, "TT;"
    .restart local v9    # "object":Ljava/lang/Object;, "TT;"
    .restart local v15    # "i":I
    :cond_8
    move-object/from16 v22, v9

    move/from16 v21, v15

    .end local v9    # "object":Ljava/lang/Object;, "TT;"
    .end local v15    # "i":I
    .restart local v21    # "i":I
    .restart local v22    # "object":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setCanBeNull(Z)V

    .line 224
    invoke-virtual {v6, v11}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setValueClass(Ljava/lang/Class;)V

    .line 225
    invoke-virtual {v6, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setReuseSerializer(Z)V

    .end local v11    # "valueClass":Ljava/lang/Class;
    .end local v19    # "registration":Lcom/esotericsoftware/kryo/Registration;
    goto/16 :goto_4

    .line 196
    .end local v20    # "readUnknownTagData":Z
    .end local v21    # "i":I
    .end local v22    # "object":Ljava/lang/Object;, "TT;"
    .restart local v9    # "object":Ljava/lang/Object;, "TT;"
    .local v11, "readUnknownTagData":Z
    .restart local v15    # "i":I
    :catch_1
    move-exception v0

    move-object/from16 v22, v9

    move/from16 v20, v11

    move/from16 v21, v15

    move-object v3, v0

    .end local v9    # "object":Ljava/lang/Object;, "TT;"
    .end local v11    # "readUnknownTagData":Z
    .end local v15    # "i":I
    .restart local v20    # "readUnknownTagData":Z
    .restart local v21    # "i":I
    .restart local v22    # "object":Ljava/lang/Object;, "TT;"
    move-object v0, v3

    .line 197
    .restart local v0    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " data (unknown type). ("

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    .restart local v3    # "message":Ljava/lang/String;
    if-eqz v10, :cond_a

    .line 200
    sget-boolean v9, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v9, :cond_9

    invoke-static {v8, v3, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    :cond_9
    invoke-virtual {v12}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    .line 202
    move-object/from16 v3, v22

    goto/16 :goto_5

    .line 199
    :cond_a
    new-instance v4, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v4, v3, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 226
    .end local v0    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    .end local v3    # "message":Ljava/lang/String;
    .end local v20    # "readUnknownTagData":Z
    .end local v21    # "i":I
    .end local v22    # "object":Ljava/lang/Object;, "TT;"
    .restart local v9    # "object":Ljava/lang/Object;, "TT;"
    .restart local v11    # "readUnknownTagData":Z
    .restart local v15    # "i":I
    :cond_b
    move-object/from16 v22, v9

    move/from16 v20, v11

    move/from16 v21, v15

    .end local v9    # "object":Ljava/lang/Object;, "TT;"
    .end local v11    # "readUnknownTagData":Z
    .end local v15    # "i":I
    .restart local v20    # "readUnknownTagData":Z
    .restart local v21    # "i":I
    .restart local v22    # "object":Ljava/lang/Object;, "TT;"
    if-nez v6, :cond_e

    .line 227
    if-eqz v10, :cond_d

    .line 228
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip unknown field tag: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_c
    invoke-virtual {v12}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    .line 230
    move-object/from16 v3, v22

    goto :goto_5

    .line 227
    :cond_d
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown field tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_e
    :goto_4
    nop

    .line 233
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_f

    const-string v0, "Read"

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v3

    invoke-virtual {v1, v0, v6, v3}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;I)V

    .line 234
    :cond_f
    move-object/from16 v3, v22

    .end local v22    # "object":Ljava/lang/Object;, "TT;"
    .local v3, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {v6, v13, v3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V

    .line 235
    if-eqz v10, :cond_10

    invoke-virtual {v12}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    .line 188
    .end local v6    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .end local v7    # "tag":I
    :cond_10
    :goto_5
    add-int/lit8 v15, v21, 0x1

    move-object v9, v3

    move/from16 v7, v16

    move-object/from16 v14, v17

    move/from16 v8, v18

    move/from16 v11, v20

    const/4 v6, 0x1

    move-object/from16 v3, p2

    .end local v21    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_1

    .end local v3    # "object":Ljava/lang/Object;, "TT;"
    .end local v16    # "fieldCount":I
    .end local v17    # "readTags":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;>;"
    .end local v18    # "pop":I
    .end local v20    # "readUnknownTagData":Z
    .local v7, "fieldCount":I
    .restart local v8    # "pop":I
    .restart local v9    # "object":Ljava/lang/Object;, "TT;"
    .restart local v11    # "readUnknownTagData":Z
    .restart local v14    # "readTags":Lcom/esotericsoftware/kryo/util/IntMap;, "Lcom/esotericsoftware/kryo/util/IntMap<Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;>;"
    :cond_11
    move/from16 v18, v8

    move-object v3, v9

    .line 238
    .end local v8    # "pop":I
    .end local v9    # "object":Ljava/lang/Object;, "TT;"
    .end local v15    # "i":I
    .restart local v3    # "object":Ljava/lang/Object;, "TT;"
    .restart local v18    # "pop":I
    move/from16 v4, v18

    .end local v18    # "pop":I
    .local v4, "pop":I
    invoke-virtual {v1, v4}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->popTypeVariables(I)V

    .line 239
    return-object v3
.end method

.method public removeField(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V
    .locals 0
    .param p1, "field"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 110
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer<TT;>;"
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->removeField(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V

    .line 111
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->initializeCachedFields()V

    .line 112
    return-void
.end method

.method public removeField(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 105
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer<TT;>;"
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->removeField(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->initializeCachedFields()V

    .line 107
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 17
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

    .line 115
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer<TT;>;"
    .local p3, "object":Ljava/lang/Object;, "TT;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 116
    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    .line 117
    return-void

    .line 120
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->pushTypeVariables()I

    move-result v5

    .line 122
    .local v5, "pop":I
    iget-object v6, v1, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->writeTags:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 123
    .local v6, "writeTags":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    array-length v0, v6

    const/4 v7, 0x1

    add-int/2addr v0, v7

    invoke-virtual {v2, v0, v7}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 124
    invoke-virtual/range {p0 .. p3}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 126
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    iget-boolean v8, v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->chunked:Z

    .local v8, "chunked":Z
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    iget-boolean v9, v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->readUnknownTagData:Z

    .line 128
    .local v9, "readUnknownTagData":Z
    const/4 v0, 0x0

    .line 129
    .local v0, "outputChunked":Lcom/esotericsoftware/kryo/io/OutputChunked;
    if-eqz v8, :cond_1

    .line 130
    new-instance v10, Lcom/esotericsoftware/kryo/io/OutputChunked;

    iget-object v11, v1, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    iget v11, v11, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->chunkSize:I

    invoke-direct {v10, v2, v11}, Lcom/esotericsoftware/kryo/io/OutputChunked;-><init>(Ljava/io/OutputStream;I)V

    move-object v0, v10

    move-object v11, v10

    .local v10, "fieldOutput":Lcom/esotericsoftware/kryo/io/Output;
    goto :goto_0

    .line 132
    .end local v10    # "fieldOutput":Lcom/esotericsoftware/kryo/io/Output;
    :cond_1
    move-object/from16 v10, p2

    move-object v11, v10

    move-object v10, v0

    .line 134
    .end local v0    # "outputChunked":Lcom/esotericsoftware/kryo/io/OutputChunked;
    .local v10, "outputChunked":Lcom/esotericsoftware/kryo/io/OutputChunked;
    .local v11, "fieldOutput":Lcom/esotericsoftware/kryo/io/Output;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v12, v6

    move v13, v0

    .end local v0    # "i":I
    .local v12, "n":I
    .local v13, "i":I
    :goto_1
    if-ge v13, v12, :cond_7

    .line 135
    aget-object v14, v6, v13

    .line 136
    .local v14, "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_2

    const-string v0, "Write"

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v15

    invoke-virtual {v1, v0, v14, v15}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;I)V

    .line 137
    :cond_2
    iget v0, v14, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->tag:I

    invoke-virtual {v2, v0, v7}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 140
    if-eqz v9, :cond_5

    .line 141
    const/4 v15, 0x0

    .line 143
    .local v15, "valueClass":Ljava/lang/Class;
    if-eqz v3, :cond_3

    .line 144
    :try_start_0
    iget-object v0, v14, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v15, v16

    goto :goto_2

    .line 147
    .end local v0    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 148
    :cond_3
    :goto_2
    nop

    .line 149
    :goto_3
    move-object/from16 v7, p1

    invoke-virtual {v7, v11, v15}, Lcom/esotericsoftware/kryo/Kryo;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    .line 150
    if-nez v15, :cond_4

    .line 151
    if-eqz v8, :cond_6

    invoke-virtual {v10}, Lcom/esotericsoftware/kryo/io/OutputChunked;->endChunk()V

    goto :goto_5

    .line 154
    :cond_4
    invoke-virtual {v14, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setCanBeNull(Z)V

    .line 155
    invoke-virtual {v14, v15}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setValueClass(Ljava/lang/Class;)V

    .line 156
    invoke-virtual {v14, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setReuseSerializer(Z)V

    goto :goto_4

    .line 140
    .end local v15    # "valueClass":Ljava/lang/Class;
    :cond_5
    move-object/from16 v7, p1

    .line 159
    :goto_4
    invoke-virtual {v14, v11, v3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 160
    if-eqz v8, :cond_6

    invoke-virtual {v10}, Lcom/esotericsoftware/kryo/io/OutputChunked;->endChunk()V

    .line 134
    .end local v14    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_6
    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_7
    move-object/from16 v7, p1

    .line 163
    .end local v12    # "n":I
    .end local v13    # "i":I
    invoke-virtual {v1, v5}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->popTypeVariables(I)V

    .line 164
    return-void
.end method

.method protected writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
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

    .line 168
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer<TT;>;"
    .local p3, "object":Ljava/lang/Object;, "TT;"
    return-void
.end method
