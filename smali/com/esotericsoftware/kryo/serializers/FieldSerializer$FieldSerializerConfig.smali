.class public Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
.super Ljava/lang/Object;
.source "FieldSerializer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldSerializerConfig"
.end annotation


# instance fields
.field copyTransient:Z

.field extendedFieldNames:Z

.field fieldsCanBeNull:Z

.field fixedFieldTypes:Z

.field ignoreSyntheticFields:Z

.field serializeTransient:Z

.field setFieldsAsAccessible:Z

.field varEncoding:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->fieldsCanBeNull:Z

    .line 400
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->setFieldsAsAccessible:Z

    .line 401
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->ignoreSyntheticFields:Z

    .line 403
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->copyTransient:Z

    .line 405
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->varEncoding:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
    .registers 3

    .line 410
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 411
    :catch_7
    move-exception v0

    .line 412
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->clone()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;

    move-result-object v0

    return-object v0
.end method

.method public getCopyTransient()Z
    .registers 2

    .line 472
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->copyTransient:Z

    return v0
.end method

.method public getExtendedFieldNames()Z
    .registers 2

    .line 506
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->extendedFieldNames:Z

    return v0
.end method

.method public getFieldsCanBeNull()Z
    .registers 2

    .line 425
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->fieldsCanBeNull:Z

    return v0
.end method

.method public getFixedFieldTypes()Z
    .registers 2

    .line 461
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->fixedFieldTypes:Z

    return v0
.end method

.method public getIgnoreSyntheticFields()Z
    .registers 2

    .line 449
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->ignoreSyntheticFields:Z

    return v0
.end method

.method public getSerializeTransient()Z
    .registers 2

    .line 482
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->serializeTransient:Z

    return v0
.end method

.method public getSetFieldsAsAccessible()Z
    .registers 2

    .line 438
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->setFieldsAsAccessible:Z

    return v0
.end method

.method public getVariableLengthEncoding()Z
    .registers 2

    .line 495
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->varEncoding:Z

    return v0
.end method

.method public setCopyTransient(Z)V
    .registers 4
    .param p1, "copyTransient"    # Z

    .line 467
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->copyTransient:Z

    .line 468
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldSerializerConfig copyTransient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryo"

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_1e
    return-void
.end method

.method public setExtendedFieldNames(Z)V
    .registers 4
    .param p1, "extendedFieldNames"    # Z

    .line 501
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->extendedFieldNames:Z

    .line 502
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldSerializerConfig extendedFieldNames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryo"

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_1e
    return-void
.end method

.method public setFieldsAsAccessible(Z)V
    .registers 4
    .param p1, "setFieldsAsAccessible"    # Z

    .line 433
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->setFieldsAsAccessible:Z

    .line 434
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldSerializerConfig setFieldsAsAccessible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryo"

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_1e
    return-void
.end method

.method public setFieldsCanBeNull(Z)V
    .registers 4
    .param p1, "fieldsCanBeNull"    # Z

    .line 420
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->fieldsCanBeNull:Z

    .line 421
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldSerializerConfig fieldsCanBeNull: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryo"

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_1e
    return-void
.end method

.method public setFixedFieldTypes(Z)V
    .registers 4
    .param p1, "fixedFieldTypes"    # Z

    .line 456
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->fixedFieldTypes:Z

    .line 457
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldSerializerConfig fixedFieldTypes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryo"

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_1e
    return-void
.end method

.method public setIgnoreSyntheticFields(Z)V
    .registers 4
    .param p1, "ignoreSyntheticFields"    # Z

    .line 444
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->ignoreSyntheticFields:Z

    .line 445
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldSerializerConfig ignoreSyntheticFields: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryo"

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_1e
    return-void
.end method

.method public setSerializeTransient(Z)V
    .registers 4
    .param p1, "serializeTransient"    # Z

    .line 477
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->serializeTransient:Z

    .line 478
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldSerializerConfig serializeTransient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryo"

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_1e
    return-void
.end method

.method public setVariableLengthEncoding(Z)V
    .registers 4
    .param p1, "varEncoding"    # Z

    .line 490
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->varEncoding:Z

    .line 491
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldSerializerConfig variable length encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryo"

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_1e
    return-void
.end method
