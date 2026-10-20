.class final Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
.source "AsmField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/AsmField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongAsmField"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 174
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;-><init>(Ljava/lang/reflect/Field;)V

    .line 175
    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "original"    # Ljava/lang/Object;
    .param p2, "copy"    # Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;->accessIndex:I

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v3, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;->accessIndex:I

    invoke-virtual {v2, p1, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getLong(Ljava/lang/Object;I)J

    move-result-wide v2

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->setLong(Ljava/lang/Object;IJ)V

    .line 193
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V
    .locals 4
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p2, "object"    # Ljava/lang/Object;

    .line 185
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;->varEncoding:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;->accessIndex:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide v2

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->setLong(Ljava/lang/Object;IJ)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;->accessIndex:I

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->setLong(Ljava/lang/Object;IJ)V

    .line 189
    :goto_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 3
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;

    .line 178
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;->varEncoding:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;->accessIndex:I

    invoke-virtual {v0, p2, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getLong(Ljava/lang/Object;I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarLong(JZ)I

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;->accessIndex:I

    invoke-virtual {v0, p2, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getLong(Ljava/lang/Object;I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(J)V

    .line 182
    :goto_0
    return-void
.end method
