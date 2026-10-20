.class public Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.source "CompatibleFieldSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;
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


# static fields
.field private static final binarySearchThreshold:I = 0x20


# instance fields
.field private final config:Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "type"    # Ljava/lang/Class;

    .line 53
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer<TT;>;"
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;)V
    .locals 0
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "config"    # Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    .line 57
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;)V

    .line 58
    iput-object p3, p0, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    .line 59
    return-void
.end method

.method private readFields(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .locals 17
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;

    .line 194
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer<TT;>;"
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    const-string v2, "kryo"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read fields for class: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    const/4 v1, 0x1

    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v4

    .line 197
    .local v4, "length":I
    new-array v5, v4, [Ljava/lang/String;

    .line 198
    .local v5, "names":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_2

    .line 199
    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 200
    sget-boolean v7, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read field name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 203
    .end local v6    # "i":I
    :cond_2
    new-array v6, v4, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 204
    .local v6, "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    iget-object v7, v0, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v7, v7, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 205
    .local v7, "allFields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    const/16 v8, 0x20

    const-string v9, "Unknown field will be skipped: "

    if-ge v4, v8, :cond_7

    .line 207
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_6

    .line 208
    aget-object v8, v5, v1

    .line 209
    .local v8, "schemaName":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "ii":I
    array-length v11, v7

    .local v11, "nn":I
    :goto_2
    if-ge v10, v11, :cond_4

    .line 210
    aget-object v12, v7, v10

    iget-object v12, v12, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 211
    aget-object v12, v7, v10

    aput-object v12, v6, v1

    .line 212
    goto :goto_3

    .line 209
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 215
    .end local v10    # "ii":I
    .end local v11    # "nn":I
    :cond_4
    sget-boolean v10, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v8    # "schemaName":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_6
    goto :goto_7

    .line 219
    :cond_7
    array-length v8, v7

    sub-int/2addr v8, v1

    .line 221
    .local v8, "lastFieldIndex":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    if-ge v10, v4, :cond_c

    .line 222
    aget-object v11, v5, v10

    .line 223
    .local v11, "schemaName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 224
    .local v12, "low":I
    move v13, v8

    .line 225
    .local v13, "high":I
    :goto_5
    if-gt v12, v13, :cond_a

    .line 226
    add-int v14, v12, v13

    ushr-int/2addr v14, v1

    .line 227
    .local v14, "mid":I
    aget-object v15, v7, v14

    iget-object v15, v15, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    .line 228
    .local v15, "compare":I
    if-gez v15, :cond_8

    .line 229
    add-int/lit8 v13, v14, -0x1

    goto :goto_5

    .line 230
    :cond_8
    if-lez v15, :cond_9

    .line 231
    add-int/lit8 v12, v14, 0x1

    goto :goto_5

    .line 233
    :cond_9
    aget-object v16, v7, v14

    aput-object v16, v6, v10

    .line 234
    goto :goto_6

    .line 237
    .end local v14    # "mid":I
    .end local v15    # "compare":I
    :cond_a
    sget-boolean v14, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v14, :cond_b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v11    # "schemaName":Ljava/lang/String;
    :cond_b
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 241
    .end local v8    # "lastFieldIndex":I
    .end local v10    # "i":I
    .end local v12    # "low":I
    .end local v13    # "high":I
    :cond_c
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/Kryo;->getGraphContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-object v6
.end method


# virtual methods
.method public getCompatibleFieldSerializerConfig()Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;
    .locals 1

    .line 246
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 20
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

    .line 115
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "#"

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->pushTypeVariables()I

    move-result v4

    .line 117
    .local v4, "pop":I
    invoke-virtual/range {p0 .. p3}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 118
    .local v5, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2, v5}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/Kryo;->getGraphContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 121
    .local v0, "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p2}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->readFields(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v0

    :cond_0
    move-object v6, v0

    .line 123
    .end local v0    # "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .local v6, "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    iget-boolean v7, v0, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;->chunked:Z

    .local v7, "chunked":Z
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    iget-boolean v8, v0, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;->readUnknownFieldData:Z

    .line 125
    .local v8, "readUnknownTagData":Z
    const/4 v0, 0x0

    .line 126
    .local v0, "inputChunked":Lcom/esotericsoftware/kryo/io/InputChunked;
    if-eqz v7, :cond_1

    .line 127
    new-instance v9, Lcom/esotericsoftware/kryo/io/InputChunked;

    iget-object v10, v1, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    iget v10, v10, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;->chunkSize:I

    move-object/from16 v11, p2

    invoke-direct {v9, v11, v10}, Lcom/esotericsoftware/kryo/io/InputChunked;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v9

    move-object v10, v9

    .local v9, "fieldInput":Lcom/esotericsoftware/kryo/io/Input;
    goto :goto_0

    .line 129
    .end local v9    # "fieldInput":Lcom/esotericsoftware/kryo/io/Input;
    :cond_1
    move-object/from16 v11, p2

    move-object/from16 v9, p2

    move-object v10, v9

    move-object v9, v0

    .line 130
    .end local v0    # "inputChunked":Lcom/esotericsoftware/kryo/io/InputChunked;
    .local v9, "inputChunked":Lcom/esotericsoftware/kryo/io/InputChunked;
    .local v10, "fieldInput":Lcom/esotericsoftware/kryo/io/Input;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v12, v6

    move v13, v0

    .end local v0    # "i":I
    .local v12, "n":I
    .local v13, "i":I
    :goto_1
    if-ge v13, v12, :cond_13

    .line 131
    aget-object v14, v6, v13

    .line 133
    .local v14, "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    const-string v15, ")"

    move-object/from16 v16, v6

    .end local v6    # "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .local v16, "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    const-string v6, "kryo"

    if-eqz v8, :cond_d

    .line 136
    :try_start_0
    invoke-virtual {v2, v10}, Lcom/esotericsoftware/kryo/Kryo;->readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0
    :try_end_0
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v17, v0

    .line 143
    .local v17, "registration":Lcom/esotericsoftware/kryo/Registration;
    nop

    .line 144
    if-nez v17, :cond_3

    .line 145
    if-eqz v7, :cond_2

    invoke-virtual {v9}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    :cond_2
    move/from16 v18, v8

    move/from16 v19, v12

    goto/16 :goto_5

    .line 148
    :cond_3
    move/from16 v18, v8

    .end local v8    # "readUnknownTagData":Z
    .local v18, "readUnknownTagData":Z
    invoke-virtual/range {v17 .. v17}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 149
    .local v8, "valueClass":Ljava/lang/Class;
    const-string v11, " ("

    if-nez v14, :cond_7

    .line 151
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v12

    .end local v12    # "n":I
    .local v19, "n":I
    const-string v12, "Read unknown data, type: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v12

    invoke-static {v12}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v19    # "n":I
    .restart local v12    # "n":I
    :cond_4
    move/from16 v19, v12

    .line 153
    .end local v12    # "n":I
    .restart local v19    # "n":I
    :goto_2
    :try_start_1
    invoke-virtual {v2, v10, v8}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    goto :goto_3

    .line 154
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 155
    .local v0, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read unknown data, type: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "message":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 158
    sget-boolean v11, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v11, :cond_5

    invoke-static {v6, v2, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    .end local v0    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    .end local v2    # "message":Ljava/lang/String;
    :cond_5
    :goto_3
    if-eqz v7, :cond_12

    invoke-virtual {v9}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    goto/16 :goto_5

    .line 157
    .restart local v0    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    .restart local v2    # "message":Ljava/lang/String;
    :cond_6
    new-instance v3, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v3, v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 165
    .end local v0    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    .end local v2    # "message":Ljava/lang/String;
    .end local v19    # "n":I
    .restart local v12    # "n":I
    :cond_7
    move/from16 v19, v12

    .end local v12    # "n":I
    .restart local v19    # "n":I
    iget-object v0, v14, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->valueClass:Ljava/lang/Class;

    if-eqz v0, :cond_a

    iget-object v0, v14, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/esotericsoftware/kryo/util/Util;->isAssignableTo(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read type is incompatible with the field type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v14, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->valueClass:Ljava/lang/Class;

    .line 167
    invoke-static {v2}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "message":Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 169
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_8

    invoke-static {v6, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_8
    invoke-virtual {v9}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    .line 171
    goto/16 :goto_5

    .line 168
    :cond_9
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    .end local v0    # "message":Ljava/lang/String;
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setCanBeNull(Z)V

    .line 175
    invoke-virtual {v14, v8}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setValueClass(Ljava/lang/Class;)V

    .line 176
    invoke-virtual {v14, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setReuseSerializer(Z)V

    .end local v8    # "valueClass":Ljava/lang/Class;
    .end local v17    # "registration":Lcom/esotericsoftware/kryo/Registration;
    goto/16 :goto_4

    .line 137
    .end local v18    # "readUnknownTagData":Z
    .end local v19    # "n":I
    .local v8, "readUnknownTagData":Z
    .restart local v12    # "n":I
    :catch_1
    move-exception v0

    move/from16 v18, v8

    move/from16 v19, v12

    move-object v2, v0

    .end local v8    # "readUnknownTagData":Z
    .end local v12    # "n":I
    .restart local v18    # "readUnknownTagData":Z
    .restart local v19    # "n":I
    move-object v0, v2

    .line 138
    .local v0, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read unknown data (unknown type). ("

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .restart local v2    # "message":Ljava/lang/String;
    if-eqz v7, :cond_c

    .line 140
    sget-boolean v8, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v8, :cond_b

    invoke-static {v6, v2, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    :cond_b
    invoke-virtual {v9}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    .line 142
    goto :goto_5

    .line 139
    :cond_c
    new-instance v3, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v3, v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 177
    .end local v0    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    .end local v2    # "message":Ljava/lang/String;
    .end local v18    # "readUnknownTagData":Z
    .end local v19    # "n":I
    .restart local v8    # "readUnknownTagData":Z
    .restart local v12    # "n":I
    :cond_d
    move/from16 v18, v8

    move/from16 v19, v12

    .end local v8    # "readUnknownTagData":Z
    .end local v12    # "n":I
    .restart local v18    # "readUnknownTagData":Z
    .restart local v19    # "n":I
    if-nez v14, :cond_10

    .line 178
    if-eqz v7, :cond_f

    .line 179
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_e

    const-string v0, "Skip unknown field."

    invoke-static {v6, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_e
    invoke-virtual {v9}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    .line 181
    goto :goto_5

    .line 178
    :cond_f
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown field. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_10
    :goto_4
    nop

    .line 184
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_11

    const-string v0, "Read"

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v2

    invoke-virtual {v1, v0, v14, v2}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;I)V

    .line 185
    :cond_11
    invoke-virtual {v14, v10, v5}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V

    .line 186
    if-eqz v7, :cond_12

    invoke-virtual {v9}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunk()V

    .line 130
    .end local v14    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_12
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    move-object/from16 v6, v16

    move/from16 v8, v18

    move/from16 v12, v19

    goto/16 :goto_1

    .line 189
    .end local v13    # "i":I
    .end local v16    # "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .end local v18    # "readUnknownTagData":Z
    .end local v19    # "n":I
    .restart local v6    # "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .restart local v8    # "readUnknownTagData":Z
    :cond_13
    invoke-virtual {v1, v4}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->popTypeVariables(I)V

    .line 190
    return-object v5
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 16
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

    .line 62
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer<TT;>;"
    .local p3, "object":Ljava/lang/Object;, "TT;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->pushTypeVariables()I

    move-result v4

    .line 64
    .local v4, "pop":I
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v5, v0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 65
    .local v5, "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/Kryo;->getGraphContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object v6

    .line 66
    .local v6, "context":Lcom/esotericsoftware/kryo/util/ObjectMap;
    invoke-virtual {v6, v1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    const-string v7, "kryo"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Write fields for class: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v1, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v6, v1, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    array-length v0, v5

    const/4 v8, 0x1

    invoke-virtual {v2, v0, v8}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v8, v5

    .local v8, "n":I
    :goto_0
    if-ge v0, v8, :cond_2

    .line 71
    sget-boolean v9, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Write field name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v0

    iget-object v10, v10, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v10

    invoke-static {v10}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    aget-object v9, v5, v0

    iget-object v9, v9, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/String;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "i":I
    .end local v8    # "n":I
    :cond_2
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    iget-boolean v7, v0, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;->chunked:Z

    .local v7, "chunked":Z
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    iget-boolean v8, v0, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;->readUnknownFieldData:Z

    .line 78
    .local v8, "readUnknownTagData":Z
    const/4 v0, 0x0

    .line 79
    .local v0, "outputChunked":Lcom/esotericsoftware/kryo/io/OutputChunked;
    if-eqz v7, :cond_3

    .line 80
    new-instance v9, Lcom/esotericsoftware/kryo/io/OutputChunked;

    iget-object v10, v1, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;

    iget v10, v10, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer$CompatibleFieldSerializerConfig;->chunkSize:I

    invoke-direct {v9, v2, v10}, Lcom/esotericsoftware/kryo/io/OutputChunked;-><init>(Ljava/io/OutputStream;I)V

    move-object v0, v9

    move-object v10, v9

    .local v9, "fieldOutput":Lcom/esotericsoftware/kryo/io/Output;
    goto :goto_1

    .line 82
    .end local v9    # "fieldOutput":Lcom/esotericsoftware/kryo/io/Output;
    :cond_3
    move-object/from16 v9, p2

    move-object v10, v9

    move-object v9, v0

    .line 83
    .end local v0    # "outputChunked":Lcom/esotericsoftware/kryo/io/OutputChunked;
    .local v9, "outputChunked":Lcom/esotericsoftware/kryo/io/OutputChunked;
    .local v10, "fieldOutput":Lcom/esotericsoftware/kryo/io/Output;
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v11, v5

    move v12, v0

    .end local v0    # "i":I
    .local v11, "n":I
    .local v12, "i":I
    :goto_2
    if-ge v12, v11, :cond_9

    .line 84
    aget-object v13, v5, v12

    .line 85
    .local v13, "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_4

    const-string v0, "Write"

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v14

    invoke-virtual {v1, v0, v13, v14}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;I)V

    .line 88
    :cond_4
    if-eqz v8, :cond_7

    .line 89
    const/4 v14, 0x0

    .line 91
    .local v14, "valueClass":Ljava/lang/Class;
    if-eqz v3, :cond_5

    .line 92
    :try_start_0
    iget-object v0, v13, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v15

    goto :goto_3

    .line 95
    .end local v0    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 96
    :cond_5
    :goto_3
    nop

    .line 97
    :goto_4
    move-object/from16 v15, p1

    invoke-virtual {v15, v10, v14}, Lcom/esotericsoftware/kryo/Kryo;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    .line 98
    if-nez v14, :cond_6

    .line 99
    if-eqz v7, :cond_8

    invoke-virtual {v9}, Lcom/esotericsoftware/kryo/io/OutputChunked;->endChunk()V

    goto :goto_6

    .line 102
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setCanBeNull(Z)V

    .line 103
    invoke-virtual {v13, v14}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setValueClass(Ljava/lang/Class;)V

    .line 104
    invoke-virtual {v13, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setReuseSerializer(Z)V

    goto :goto_5

    .line 88
    .end local v14    # "valueClass":Ljava/lang/Class;
    :cond_7
    move-object/from16 v15, p1

    .line 107
    :goto_5
    invoke-virtual {v13, v10, v3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 108
    if-eqz v7, :cond_8

    invoke-virtual {v9}, Lcom/esotericsoftware/kryo/io/OutputChunked;->endChunk()V

    .line 83
    .end local v13    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_8
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_9
    move-object/from16 v15, p1

    .line 111
    .end local v11    # "n":I
    .end local v12    # "i":I
    invoke-virtual {v1, v4}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->popTypeVariables(I)V

    .line 112
    return-void
.end method
