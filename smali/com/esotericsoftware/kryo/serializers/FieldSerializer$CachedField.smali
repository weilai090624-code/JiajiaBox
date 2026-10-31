.class public abstract Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
.super Ljava/lang/Object;
.source "FieldSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CachedField"
.end annotation


# instance fields
.field access:Lcom/esotericsoftware/reflectasm/FieldAccess;

.field accessIndex:I

.field canBeNull:Z

.field final field:Ljava/lang/reflect/Field;

.field name:Ljava/lang/String;

.field offset:J

.field optimizePositive:Z

.field reuseSerializer:Z

.field serializer:Lcom/esotericsoftware/kryo/Serializer;

.field tag:I

.field valueClass:Ljava/lang/Class;

.field varEncoding:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->varEncoding:Z

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->reuseSerializer:Z

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->accessIndex:I

    .line 253
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    .line 254
    return-void
.end method


# virtual methods
.method public abstract copy(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public getCanBeNull()Z
    .registers 2

    .line 296
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->canBeNull:Z

    return v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptimizePositive()Z
    .registers 2

    .line 318
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->optimizePositive:Z

    return v0
.end method

.method getReuseSerializer()Z
    .registers 2

    .line 329
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->reuseSerializer:Z

    return v0
.end method

.method public getSerializer()Lcom/esotericsoftware/kryo/Serializer;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->valueClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getVariableLengthEncoding()Z
    .registers 2

    .line 308
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->varEncoding:Z

    return v0
.end method

.method public abstract read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V
.end method

.method public setCanBeNull(Z)V
    .registers 2
    .param p1, "canBeNull"    # Z

    .line 292
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->canBeNull:Z

    .line 293
    return-void
.end method

.method public setOptimizePositive(Z)V
    .registers 2
    .param p1, "optimizePositive"    # Z

    .line 314
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->optimizePositive:Z

    .line 315
    return-void
.end method

.method setReuseSerializer(Z)V
    .registers 2
    .param p1, "reuseSerializer"    # Z

    .line 325
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->reuseSerializer:Z

    .line 326
    return-void
.end method

.method public setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V
    .registers 2
    .param p1, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .line 278
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 279
    return-void
.end method

.method public setValueClass(Ljava/lang/Class;)V
    .registers 2
    .param p1, "valueClass"    # Ljava/lang/Class;

    .line 261
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->valueClass:Ljava/lang/Class;

    .line 262
    return-void
.end method

.method public setValueClass(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V
    .registers 3
    .param p1, "valueClass"    # Ljava/lang/Class;
    .param p2, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .line 271
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->valueClass:Ljava/lang/Class;

    .line 272
    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 273
    return-void
.end method

.method public setVariableLengthEncoding(Z)V
    .registers 2
    .param p1, "varEncoding"    # Z

    .line 304
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->varEncoding:Z

    .line 305
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
.end method
