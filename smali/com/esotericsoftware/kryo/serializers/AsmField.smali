.class Lcom/esotericsoftware/kryo/serializers/AsmField;
.super Lcom/esotericsoftware/kryo/serializers/ReflectField;
.source "AsmField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/AsmField$StringAsmField;,
        Lcom/esotericsoftware/kryo/serializers/AsmField$DoubleAsmField;,
        Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;,
        Lcom/esotericsoftware/kryo/serializers/AsmField$CharAsmField;,
        Lcom/esotericsoftware/kryo/serializers/AsmField$BooleanAsmField;,
        Lcom/esotericsoftware/kryo/serializers/AsmField$ByteAsmField;,
        Lcom/esotericsoftware/kryo/serializers/AsmField$ShortAsmField;,
        Lcom/esotericsoftware/kryo/serializers/AsmField$FloatAsmField;,
        Lcom/esotericsoftware/kryo/serializers/AsmField$IntAsmField;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "serializer"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
    .param p3, "genericType"    # Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/ReflectField;-><init>(Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    .line 35
    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "original"    # Ljava/lang/Object;
    .param p2, "copy"    # Ljava/lang/Object;

    .line 47
    const-string v0, ")"

    const-string v1, " ("

    :try_start_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/AsmField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v3, p0, Lcom/esotericsoftware/kryo/serializers/AsmField;->accessIndex:I

    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/AsmField;->fieldSerializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v4, v4, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/AsmField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v6, p0, Lcom/esotericsoftware/kryo/serializers/AsmField;->accessIndex:I

    invoke-virtual {v5, p1, v6}, Lcom/esotericsoftware/reflectasm/FieldAccess;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/esotericsoftware/kryo/Kryo;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/esotericsoftware/reflectasm/FieldAccess;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    nop

    .line 56
    return-void

    .line 51
    :catchall_0
    move-exception v2

    .line 52
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v3, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 53
    .local v3, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/AsmField;->fieldSerializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

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

    .line 54
    throw v3

    .line 48
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    :catch_0
    move-exception v2

    .line 49
    .local v2, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/AsmField;->fieldSerializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

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

    .line 50
    throw v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/AsmField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/AsmField;->accessIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/AsmField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/AsmField;->accessIndex:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 43
    return-void
.end method
