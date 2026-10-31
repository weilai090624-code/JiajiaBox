.class final Lcom/esotericsoftware/kryo/serializers/ReflectField$ShortReflectField;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
.source "ReflectField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/ReflectField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShortReflectField"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 254
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;-><init>(Ljava/lang/reflect/Field;)V

    .line 255
    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p1, "original"    # Ljava/lang/Object;
    .param p2, "copy"    # Ljava/lang/Object;

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField$ShortReflectField;->field:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField$ShortReflectField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v1

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_d

    .line 284
    nop

    .line 285
    return-void

    .line 280
    :catchall_d
    move-exception v0

    .line 281
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 282
    .local v1, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField$ShortReflectField;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (short)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 283
    throw v1
.end method

.method public read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V
    .registers 7
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p2, "object"    # Ljava/lang/Object;

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField$ShortReflectField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readShort()S

    move-result v1

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_b

    .line 274
    nop

    .line 275
    return-void

    .line 270
    :catchall_b
    move-exception v0

    .line 271
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 272
    .local v1, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField$ShortReflectField;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (short)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 273
    throw v1
.end method

.method public write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .registers 7
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField$ShortReflectField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeShort(I)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_b

    .line 264
    nop

    .line 265
    return-void

    .line 260
    :catchall_b
    move-exception v0

    .line 261
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 262
    .local v1, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/ReflectField$ShortReflectField;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (short)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 263
    throw v1
.end method
