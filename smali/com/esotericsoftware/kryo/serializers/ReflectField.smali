.class Lcom/esotericsoftware/kryo/serializers/ReflectField;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
.source "ReflectField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/ReflectField$DoubleReflectField;,
        Lcom/esotericsoftware/kryo/serializers/ReflectField$LongReflectField;,
        Lcom/esotericsoftware/kryo/serializers/ReflectField$CharReflectField;,
        Lcom/esotericsoftware/kryo/serializers/ReflectField$BooleanReflectField;,
        Lcom/esotericsoftware/kryo/serializers/ReflectField$ByteReflectField;,
        Lcom/esotericsoftware/kryo/serializers/ReflectField$ShortReflectField;,
        Lcom/esotericsoftware/kryo/serializers/ReflectField$FloatReflectField;,
        Lcom/esotericsoftware/kryo/serializers/ReflectField$IntReflectField;
    }
.end annotation


# instance fields
.field final fieldSerializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

.field final genericType:Lcom/esotericsoftware/kryo/util/Generics$GenericType;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "fieldSerializer"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
    .param p3, "genericType"    # Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 41
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;-><init>(Ljava/lang/reflect/Field;)V

    .line 42
    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->fieldSerializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    .line 43
    iput-object p3, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->genericType:Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 44
    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "original"    # Ljava/lang/Object;
    .param p2, "copy"    # Ljava/lang/Object;

    .line 161
    const-string v0, ")"

    const-string v1, " ("

    :try_start_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->fieldSerializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/kryo/Kryo;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/esotericsoftware/kryo/serializers/ReflectField;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    nop

    .line 172
    return-void

    .line 167
    :catchall_0
    move-exception v2

    .line 168
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v3, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 169
    .local v3, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->fieldSerializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v4, v4, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 170
    throw v3

    .line 164
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    :catch_0
    move-exception v2

    .line 165
    .local v2, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->fieldSerializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v3, v3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 166
    throw v2

    .line 162
    .end local v2    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    :catch_1
    move-exception v2

    .line 163
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error accessing field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->fieldSerializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v4, v4, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V
    .locals 8
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p2, "object"    # Ljava/lang/Object;

    .line 108
    const-string v0, ")"

    const-string v1, " ("

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->fieldSerializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    .line 112
    .local v2, "kryo":Lcom/esotericsoftware/kryo/Kryo;
    :try_start_0
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 113
    .local v3, "serializer":Lcom/esotericsoftware/kryo/Serializer;
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/ReflectField;->resolveFieldClass()Ljava/lang/Class;

    move-result-object v4

    .line 114
    .local v4, "concreteType":Ljava/lang/Class;
    if-nez v4, :cond_2

    .line 116
    invoke-virtual {v2, p1}, Lcom/esotericsoftware/kryo/Kryo;->readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v5

    .line 117
    .local v5, "registration":Lcom/esotericsoftware/kryo/Registration;
    if-nez v5, :cond_0

    .line 118
    const/4 v6, 0x0

    invoke-virtual {p0, p2, v6}, Lcom/esotericsoftware/kryo/serializers/ReflectField;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    return-void

    .line 121
    :cond_0
    if-nez v3, :cond_1

    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v6

    move-object v3, v6

    .line 122
    :cond_1
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v6

    iget-object v7, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->genericType:Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    invoke-interface {v6, v7}, Lcom/esotericsoftware/kryo/util/Generics;->pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    .line 123
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, p1, v6, v3}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 124
    .local v5, "value":Ljava/lang/Object;
    goto :goto_0

    .line 125
    .end local v5    # "value":Ljava/lang/Object;
    :cond_2
    if-nez v3, :cond_3

    .line 126
    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v5

    move-object v3, v5

    .line 128
    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->valueClass:Ljava/lang/Class;

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->reuseSerializer:Z

    if-eqz v5, :cond_3

    iput-object v3, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 130
    :cond_3
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v5

    iget-object v6, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->genericType:Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    invoke-interface {v5, v6}, Lcom/esotericsoftware/kryo/util/Generics;->pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    .line 131
    iget-boolean v5, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->canBeNull:Z

    if-eqz v5, :cond_4

    .line 132
    invoke-virtual {v2, p1, v4, v3}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 134
    .end local v5    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v2, p1, v4, v3}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v5

    .line 136
    .restart local v5    # "value":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v6

    invoke-interface {v6}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 138
    invoke-virtual {p0, p2, v5}, Lcom/esotericsoftware/kryo/serializers/ReflectField;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v3    # "serializer":Lcom/esotericsoftware/kryo/Serializer;
    .end local v4    # "concreteType":Ljava/lang/Class;
    .end local v5    # "value":Ljava/lang/Object;
    nop

    .line 149
    return-void

    .line 144
    :catchall_0
    move-exception v3

    .line 145
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v4, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 146
    .local v4, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->fieldSerializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v5, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 147
    throw v4

    .line 141
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    :catch_0
    move-exception v3

    .line 142
    .local v3, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->fieldSerializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v4, v4, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 143
    throw v3

    .line 139
    .end local v3    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    :catch_1
    move-exception v3

    .line 140
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    new-instance v4, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error accessing field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->fieldSerializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v5, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method resolveFieldClass()Ljava/lang/Class;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->valueClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->genericType:Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->fieldSerializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->resolve(Lcom/esotericsoftware/kryo/util/Generics;)Ljava/lang/Class;

    move-result-object v0

    .line 154
    .local v0, "fieldClass":Ljava/lang/Class;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->fieldSerializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 156
    .end local v0    # "fieldClass":Ljava/lang/Class;
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->valueClass:Ljava/lang/Class;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 9
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;

    .line 55
    const-string v0, ")"

    const-string v1, " ("

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->fieldSerializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    .line 57
    .local v2, "kryo":Lcom/esotericsoftware/kryo/Kryo;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/serializers/ReflectField;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 59
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 60
    .local v4, "serializer":Lcom/esotericsoftware/kryo/Serializer;
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/ReflectField;->resolveFieldClass()Ljava/lang/Class;

    move-result-object v5

    .line 61
    .local v5, "concreteType":Ljava/lang/Class;
    if-nez v5, :cond_2

    .line 63
    if-nez v3, :cond_0

    .line 64
    const/4 v6, 0x0

    invoke-virtual {v2, p1, v6}, Lcom/esotericsoftware/kryo/Kryo;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    .line 65
    return-void

    .line 67
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, p1, v6}, Lcom/esotericsoftware/kryo/Kryo;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v6

    .line 68
    .local v6, "registration":Lcom/esotericsoftware/kryo/Registration;
    if-nez v4, :cond_1

    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v7

    move-object v4, v7

    .line 69
    :cond_1
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v7

    iget-object v8, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->genericType:Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    invoke-interface {v7, v8}, Lcom/esotericsoftware/kryo/util/Generics;->pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    .line 70
    invoke-virtual {v2, p1, v3, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    .line 71
    .end local v6    # "registration":Lcom/esotericsoftware/kryo/Registration;
    goto :goto_0

    .line 72
    :cond_2
    if-nez v4, :cond_3

    .line 73
    invoke-virtual {v2, v5}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v6

    move-object v4, v6

    .line 75
    iget-object v6, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->valueClass:Ljava/lang/Class;

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->reuseSerializer:Z

    if-eqz v6, :cond_3

    iput-object v4, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 77
    :cond_3
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v6

    iget-object v7, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->genericType:Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    invoke-interface {v6, v7}, Lcom/esotericsoftware/kryo/util/Generics;->pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    .line 78
    iget-boolean v6, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->canBeNull:Z

    if-eqz v6, :cond_4

    .line 79
    invoke-virtual {v2, p1, v3, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    goto :goto_0

    .line 81
    :cond_4
    if-eqz v3, :cond_5

    .line 85
    invoke-virtual {v2, p1, v3, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    .line 88
    :goto_0
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v6

    invoke-interface {v6}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 104
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "serializer":Lcom/esotericsoftware/kryo/Serializer;
    .end local v5    # "concreteType":Ljava/lang/Class;
    nop

    .line 105
    return-void

    .line 82
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v4    # "serializer":Lcom/esotericsoftware/kryo/Serializer;
    .restart local v5    # "concreteType":Ljava/lang/Class;
    :cond_5
    new-instance v6, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Field value cannot be null when canBeNull is false: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    .end local v2    # "kryo":Lcom/esotericsoftware/kryo/Kryo;
    .end local p1    # "output":Lcom/esotericsoftware/kryo/io/Output;
    .end local p2    # "object":Ljava/lang/Object;
    throw v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "serializer":Lcom/esotericsoftware/kryo/Serializer;
    .end local v5    # "concreteType":Ljava/lang/Class;
    .restart local v2    # "kryo":Lcom/esotericsoftware/kryo/Kryo;
    .restart local p1    # "output":Lcom/esotericsoftware/kryo/io/Output;
    .restart local p2    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    .line 101
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v4, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 102
    .local v4, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 103
    throw v4

    .line 94
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/StackOverflowError;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A StackOverflow occurred. The most likely cause is that your data has a circular reference resulting in infinite recursion. Try enabling references with Kryo.setReferences(true). If your data structure is really more than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 98
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Kryo;->getDepth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " levels deep then try increasing your Java stack size."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 91
    .end local v0    # "ex":Ljava/lang/StackOverflowError;
    :catch_1
    move-exception v3

    .line 92
    .local v3, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 93
    throw v3

    .line 89
    .end local v3    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    :catch_2
    move-exception v3

    .line 90
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    new-instance v4, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error accessing field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
