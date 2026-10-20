.class Lcom/esotericsoftware/kryo/serializers/CachedFields;
.super Ljava/lang/Object;
.source "CachedFields.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;",
        ">;"
    }
.end annotation


# static fields
.field static final emptyCachedFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;


# instance fields
.field private access:Ljava/lang/Object;

.field copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

.field fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

.field private final removedFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    sput-object v0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->emptyCachedFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V
    .locals 2
    .param p1, "serializer"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    iput-object v1, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 78
    new-array v0, v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->removedFields:Ljava/util/ArrayList;

    .line 83
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    .line 84
    return-void
.end method

.method private addField(Ljava/lang/reflect/Field;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "asm"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p3, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;>;"
    .local p4, "copyFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    .line 116
    .local v5, "modifiers":I
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v6, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;

    .line 118
    .local v6, "config":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v6, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->ignoreSyntheticFields:Z

    if-eqz v0, :cond_1

    return-void

    .line 120
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    const/4 v7, 0x1

    const-string v8, "kryo"

    if-nez v0, :cond_4

    .line 121
    iget-boolean v0, v6, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->setFieldsAsAccessible:Z

    if-nez v0, :cond_2

    return-void

    .line 123
    :cond_2
    :try_start_0
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 125
    .local v0, "ex":Ljava/security/AccessControlException;
    sget-boolean v7, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to set field as accessible: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_3
    return-void

    .line 130
    .end local v0    # "ex":Ljava/security/AccessControlException;
    :cond_4
    :goto_0
    const-class v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Optional;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Optional;

    .line 131
    .local v9, "optional":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Optional;
    if-eqz v9, :cond_5

    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Kryo;->getContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object v0

    invoke-interface {v9}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Optional;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/kryo/util/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 133
    :cond_5
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->removedFields:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 135
    :cond_6
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v10

    .line 136
    .local v10, "isTransient":Z
    if-eqz v10, :cond_7

    iget-boolean v0, v6, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->serializeTransient:Z

    if-nez v0, :cond_7

    iget-boolean v0, v6, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->copyTransient:Z

    if-nez v0, :cond_7

    return-void

    .line 138
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    .line 139
    .local v11, "declaringClass":Ljava/lang/Class;
    new-instance v0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    iget-object v12, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v12, v12, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-direct {v0, v11, v12, v13}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    move-object v12, v0

    .line 140
    .local v12, "genericType":Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    invoke-virtual {v12}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_8

    invoke-virtual {v12}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_1

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    move-object v13, v0

    .line 141
    .local v13, "fieldClass":Ljava/lang/Class;
    const/4 v14, -0x1

    .line 142
    .local v14, "accessIndex":I
    if-eqz p2, :cond_a

    .line 143
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 144
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 145
    invoke-virtual {v13}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 147
    :try_start_1
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->access:Ljava/lang/Object;

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-static {v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/FieldAccess;

    move-result-object v0

    iput-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->access:Ljava/lang/Object;

    .line 148
    :cond_9
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->access:Ljava/lang/Object;

    check-cast v0, Lcom/esotericsoftware/reflectasm/FieldAccess;

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getIndex(Ljava/lang/reflect/Field;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v14, v0

    .line 151
    goto :goto_2

    .line 149
    :catch_1
    move-exception v0

    .line 150
    .local v0, "ex":Ljava/lang/RuntimeException;
    sget-boolean v15, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v15, :cond_a

    const-string v15, "Unable to use ReflectASM."

    invoke-static {v8, v15, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_a
    :goto_2
    sget-boolean v0, Lcom/esotericsoftware/kryo/util/Util;->unsafe:Z

    if-eqz v0, :cond_b

    .line 156
    invoke-direct {v1, v2, v13, v12}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->newUnsafeField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v0

    .local v0, "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_3

    .line 157
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_b
    const/4 v0, -0x1

    if-eq v14, v0, :cond_c

    .line 158
    invoke-direct {v1, v2, v13, v12}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->newAsmField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v0

    .line 159
    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    iget-object v15, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->access:Ljava/lang/Object;

    check-cast v15, Lcom/esotericsoftware/reflectasm/FieldAccess;

    iput-object v15, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    .line 160
    iput v14, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->accessIndex:I

    goto :goto_3

    .line 162
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_c
    invoke-direct {v1, v2, v13, v12}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->newReflectField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v0

    .line 164
    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :goto_3
    iget-boolean v15, v6, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->varEncoding:Z

    iput-boolean v15, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->varEncoding:Z

    .line 165
    iget-boolean v15, v6, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->extendedFieldNames:Z

    if-eqz v15, :cond_d

    .line 166
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, "."

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    goto :goto_4

    .line 168
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    .line 170
    :goto_4
    instance-of v7, v0, Lcom/esotericsoftware/kryo/serializers/ReflectField;

    const-string v15, ")"

    move/from16 v16, v5

    .end local v5    # "modifiers":I
    .local v16, "modifiers":I
    const-string v5, " ("

    move-object/from16 v17, v9

    .end local v9    # "optional":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Optional;
    .local v17, "optional":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Optional;
    const-string v9, " field: "

    move-object/from16 v18, v12

    .end local v12    # "genericType":Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    .local v18, "genericType":Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    const-string v12, "Cached "

    const/16 v19, 0x0

    if-eqz v7, :cond_11

    .line 171
    iget-boolean v7, v6, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->fieldsCanBeNull:Z

    if-eqz v7, :cond_e

    const-class v7, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$NotNull;

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_e

    const/4 v7, 0x1

    goto :goto_5

    :cond_e
    const/4 v7, 0x0

    :goto_5
    iput-boolean v7, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->canBeNull:Z

    .line 172
    iget-object v7, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v7, v7, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v7, v13}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_f

    iget-boolean v7, v6, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->fixedFieldTypes:Z

    if-eqz v7, :cond_10

    :cond_f
    iput-object v13, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->valueClass:Ljava/lang/Class;

    .line 174
    :cond_10
    sget-boolean v7, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v7, :cond_13

    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 176
    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v11}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-static {v8, v5}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 179
    :cond_11
    const-class v7, Ljava/lang/String;

    if-ne v13, v7, :cond_12

    iget-boolean v7, v6, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->fieldsCanBeNull:Z

    if-eqz v7, :cond_12

    const/4 v7, 0x1

    goto :goto_6

    :cond_12
    const/4 v7, 0x0

    :goto_6
    iput-boolean v7, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->canBeNull:Z

    .line 180
    iput-object v13, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->valueClass:Ljava/lang/Class;

    .line 182
    sget-boolean v7, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v7, :cond_13

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 183
    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v11}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-static {v8, v5}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_13
    :goto_7
    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->applyAnnotations(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V

    .line 188
    if-eqz v10, :cond_15

    .line 189
    iget-boolean v5, v6, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->serializeTransient:Z

    if-eqz v5, :cond_14

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_14
    iget-boolean v5, v6, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->copyTransient:Z

    if-eqz v5, :cond_16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 192
    :cond_15
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_16
    :goto_8
    return-void
.end method

.method private applyAnnotations(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V
    .locals 8
    .param p1, "cachedField"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 317
    iget-object v0, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    .line 320
    .local v0, "field":Ljava/lang/reflect/Field;
    const-class v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "."

    if-eqz v1, :cond_4

    .line 321
    iget-object v1, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    if-nez v1, :cond_3

    .line 325
    const-class v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;

    .line 327
    .local v1, "annotation":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;->valueClass()Ljava/lang/Class;

    move-result-object v3

    .line 328
    .local v3, "valueClass":Ljava/lang/Class;
    const-class v4, Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    .line 329
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p1, v3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setValueClass(Ljava/lang/Class;)V

    .line 331
    :cond_1
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;->serializer()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;->serializerFactory()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->newSerializer(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v4

    .line 332
    .local v4, "serializer":Lcom/esotericsoftware/kryo/Serializer;
    if-eqz v4, :cond_2

    invoke-virtual {p1, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    .line 334
    :cond_2
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;->canBeNull()Z

    move-result v5

    invoke-virtual {p1, v5}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setCanBeNull(Z)V

    .line 335
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;->variableLengthEncoding()Z

    move-result v5

    invoke-virtual {p1, v5}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setVariableLengthEncoding(Z)V

    .line 336
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;->optimizePositive()Z

    move-result v5

    invoke-virtual {p1, v5}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setOptimizePositive(Z)V

    goto :goto_0

    .line 322
    .end local v1    # "annotation":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;
    .end local v3    # "valueClass":Ljava/lang/Class;
    .end local v4    # "serializer":Lcom/esotericsoftware/kryo/Serializer;
    :cond_3
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@Bind applied to a field that already has a serializer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    .line 323
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_4
    :goto_0
    const-class v1, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 341
    iget-object v1, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    if-nez v1, :cond_9

    .line 345
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 347
    const-class v1, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;

    .line 349
    .local v1, "annotation":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;->elementClass()Ljava/lang/Class;

    move-result-object v3

    .line 350
    .local v3, "elementClass":Ljava/lang/Class;
    const-class v4, Ljava/lang/Object;

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    .line 351
    :cond_5
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;->elementSerializer()Ljava/lang/Class;

    move-result-object v4

    .line 352
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;->elementSerializerFactory()Ljava/lang/Class;

    move-result-object v5

    .line 351
    invoke-direct {p0, v3, v4, v5}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->newSerializer(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v4

    .line 354
    .local v4, "elementSerializer":Lcom/esotericsoftware/kryo/Serializer;
    new-instance v5, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;

    invoke-direct {v5}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;-><init>()V

    .line 355
    .local v5, "serializer":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;->elementsCanBeNull()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->setElementsCanBeNull(Z)V

    .line 356
    if-eqz v3, :cond_6

    invoke-virtual {v5, v3}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->setElementClass(Ljava/lang/Class;)V

    .line 357
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v5, v4}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->setElementSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    .line 358
    :cond_7
    invoke-virtual {p1, v5}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    goto :goto_1

    .line 345
    .end local v1    # "annotation":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;
    .end local v3    # "elementClass":Ljava/lang/Class;
    .end local v4    # "elementSerializer":Lcom/esotericsoftware/kryo/Serializer;
    .end local v5    # "serializer":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;
    :cond_8
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@BindCollection can only be used with a field implementing Collection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 346
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_9
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@BindCollection applied to a field that already has a serializer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    .line 343
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_a
    :goto_1
    const-class v1, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 363
    iget-object v1, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    if-nez v1, :cond_12

    .line 367
    const-class v1, Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 369
    const-class v1, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;

    .line 371
    .local v1, "annotation":Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->valueClass()Ljava/lang/Class;

    move-result-object v2

    .line 372
    .local v2, "valueClass":Ljava/lang/Class;
    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_b

    const/4 v2, 0x0

    .line 373
    :cond_b
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->valueSerializer()Ljava/lang/Class;

    move-result-object v3

    .line 374
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->valueSerializerFactory()Ljava/lang/Class;

    move-result-object v4

    .line 373
    invoke-direct {p0, v2, v3, v4}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->newSerializer(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v3

    .line 376
    .local v3, "valueSerializer":Lcom/esotericsoftware/kryo/Serializer;
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->keyClass()Ljava/lang/Class;

    move-result-object v4

    .line 377
    .local v4, "keyClass":Ljava/lang/Class;
    const-class v5, Ljava/lang/Object;

    if-ne v4, v5, :cond_c

    const/4 v4, 0x0

    .line 378
    :cond_c
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->keySerializer()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->keySerializerFactory()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->newSerializer(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v5

    .line 380
    .local v5, "keySerializer":Lcom/esotericsoftware/kryo/Serializer;
    new-instance v6, Lcom/esotericsoftware/kryo/serializers/MapSerializer;

    invoke-direct {v6}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;-><init>()V

    .line 381
    .local v6, "serializer":Lcom/esotericsoftware/kryo/serializers/MapSerializer;
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->keysCanBeNull()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setKeysCanBeNull(Z)V

    .line 382
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->valuesCanBeNull()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setValuesCanBeNull(Z)V

    .line 383
    if-eqz v4, :cond_d

    invoke-virtual {v6, v4}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setKeyClass(Ljava/lang/Class;)V

    .line 384
    :cond_d
    if-eqz v5, :cond_e

    invoke-virtual {v6, v5}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setKeySerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    .line 385
    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v6, v2}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setValueClass(Ljava/lang/Class;)V

    .line 386
    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {v6, v3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setValueSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    .line 387
    :cond_10
    invoke-virtual {p1, v6}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    goto :goto_2

    .line 368
    .end local v1    # "annotation":Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;
    .end local v2    # "valueClass":Ljava/lang/Class;
    .end local v3    # "valueSerializer":Lcom/esotericsoftware/kryo/Serializer;
    .end local v4    # "keyClass":Ljava/lang/Class;
    .end local v5    # "keySerializer":Lcom/esotericsoftware/kryo/Serializer;
    .end local v6    # "serializer":Lcom/esotericsoftware/kryo/serializers/MapSerializer;
    :cond_11
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@BindMap can only be used with a field implementing Map: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :cond_12
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@BindMap applied to a field that already has a serializer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    .line 365
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_13
    :goto_2
    return-void
.end method

.method private newAsmField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "fieldClass"    # Ljava/lang/Class;
    .param p3, "genericType"    # Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 215
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 216
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/AsmField$IntAsmField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$IntAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 217
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/AsmField$FloatAsmField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$FloatAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 218
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_2

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/AsmField$BooleanAsmField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$BooleanAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 219
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 220
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_4

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/AsmField$DoubleAsmField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$DoubleAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 221
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_5

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/AsmField$ShortAsmField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$ShortAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 222
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_6

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/AsmField$CharAsmField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$CharAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 223
    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_7

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/AsmField$ByteAsmField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$ByteAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 225
    :cond_7
    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    .line 226
    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Kryo;->getReferences()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Kryo;->getReferenceResolver()Lcom/esotericsoftware/kryo/ReferenceResolver;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/esotericsoftware/kryo/ReferenceResolver;->useReferences(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 227
    :cond_8
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/AsmField$StringAsmField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$StringAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 228
    :cond_9
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/AsmField;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {v0, p1, v1, p3}, Lcom/esotericsoftware/kryo/serializers/AsmField;-><init>(Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    return-object v0
.end method

.method private newReflectField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "fieldClass"    # Ljava/lang/Class;
    .param p3, "genericType"    # Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 232
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 233
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ReflectField$IntReflectField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField$IntReflectField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 234
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ReflectField$FloatReflectField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField$FloatReflectField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 235
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_2

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ReflectField$BooleanReflectField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField$BooleanReflectField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 236
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ReflectField$LongReflectField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField$LongReflectField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 237
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_4

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ReflectField$DoubleReflectField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField$DoubleReflectField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 238
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_5

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ReflectField$ShortReflectField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField$ShortReflectField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 239
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_6

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ReflectField$CharReflectField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField$CharReflectField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 240
    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_7

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ReflectField$ByteReflectField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField$ByteReflectField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 242
    :cond_7
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ReflectField;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {v0, p1, v1, p3}, Lcom/esotericsoftware/kryo/serializers/ReflectField;-><init>(Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    return-object v0
.end method

.method private newSerializer(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .locals 2
    .param p1, "valueClass"    # Ljava/lang/Class;
    .param p2, "serializerClass"    # Ljava/lang/Class;
    .param p3, "factoryClass"    # Ljava/lang/Class;

    .line 392
    const-class v0, Lcom/esotericsoftware/kryo/Serializer;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 393
    :cond_0
    const-class v0, Lcom/esotericsoftware/kryo/SerializerFactory;

    if-ne p3, v0, :cond_1

    const/4 p3, 0x0

    .line 394
    :cond_1
    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    const-class p3, Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory;

    .line 395
    :cond_2
    if-nez p3, :cond_3

    const/4 v0, 0x0

    return-object v0

    .line 396
    :cond_3
    invoke-static {p3, p2}, Lcom/esotericsoftware/kryo/util/Util;->newFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/SerializerFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-interface {v0, v1, p1}, Lcom/esotericsoftware/kryo/SerializerFactory;->newSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    return-object v0
.end method

.method private newUnsafeField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "fieldClass"    # Ljava/lang/Class;
    .param p3, "genericType"    # Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 198
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 199
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$IntUnsafeField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$IntUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 200
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$FloatUnsafeField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$FloatUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 201
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_2

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$BooleanUnsafeField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$BooleanUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 202
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$LongUnsafeField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$LongUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 203
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_4

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$DoubleUnsafeField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$DoubleUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 204
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_5

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$ShortUnsafeField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$ShortUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 205
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_6

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$CharUnsafeField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$CharUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 206
    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_7

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$ByteUnsafeField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$ByteUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 208
    :cond_7
    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    .line 209
    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Kryo;->getReferences()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Kryo;->getReferenceResolver()Lcom/esotericsoftware/kryo/ReferenceResolver;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/esotericsoftware/kryo/ReferenceResolver;->useReferences(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 210
    :cond_8
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$StringUnsafeField;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$StringUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0

    .line 211
    :cond_9
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeField;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {v0, p1, v1, p3}, Lcom/esotericsoftware/kryo/serializers/UnsafeField;-><init>(Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)I
    .locals 2
    .param p1, "o1"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .param p2, "o2"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 247
    iget-object v0, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 73
    check-cast p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    check-cast p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->compare(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)I

    move-result p1

    return p1
.end method

.method public rebuild()V
    .locals 9

    .line 87
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->emptyCachedFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 89
    sget-object v0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->emptyCachedFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 90
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->initializeCachedFields()V

    .line 91
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "newFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v1, "newCopyFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;>;"
    sget-boolean v2, Lcom/esotericsoftware/kryo/util/Util;->unsafe:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/esotericsoftware/kryo/util/Util;->isAndroid:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 96
    .local v2, "asm":Z
    :goto_0
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v4, v4, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    .line 97
    .local v4, "nextClass":Ljava/lang/Class;
    :goto_1
    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_3

    .line 98
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 99
    .local v8, "field":Ljava/lang/reflect/Field;
    invoke-direct {p0, v8, v2, v0, v1}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->addField(Ljava/lang/reflect/Field;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 98
    .end local v8    # "field":Ljava/lang/reflect/Field;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 100
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_1

    .line 103
    :cond_3
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v3, v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v3, v5, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    iput-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 104
    :cond_4
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 105
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-static {v3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 107
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v3, v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v3, v5, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    iput-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 108
    :cond_5
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 109
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-static {v3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 111
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->initializeCachedFields()V

    .line 112
    return-void
.end method

.method public removeField(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V
    .locals 8
    .param p1, "removeField"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    aget-object v2, v2, v1

    .line 286
    .local v2, "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    if-ne v2, p1, :cond_0

    .line 287
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 288
    .local v4, "newFields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-static {v5, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    add-int/lit8 v6, v1, 0x1

    array-length v7, v4

    sub-int/2addr v7, v1

    invoke-static {v5, v6, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iput-object v4, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 291
    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->removedFields:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    const/4 v0, 0x1

    .line 293
    goto :goto_1

    .line 284
    .end local v2    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .end local v4    # "newFields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "i":I
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 297
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    aget-object v2, v2, v1

    .line 298
    .restart local v2    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    if-ne v2, p1, :cond_2

    .line 299
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 300
    .restart local v4    # "newFields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-static {v5, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    add-int/lit8 v5, v1, 0x1

    array-length v6, v4

    sub-int/2addr v6, v1

    invoke-static {v3, v5, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    iput-object v4, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 303
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->removedFields:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    const/4 v0, 0x1

    .line 305
    goto :goto_3

    .line 296
    .end local v2    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .end local v4    # "newFields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 308
    .end local v1    # "i":I
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 310
    return-void

    .line 309
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found on class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v3, v3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeField(Ljava/lang/String;)V
    .locals 8
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    aget-object v2, v2, v1

    .line 255
    .local v2, "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    iget-object v4, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 257
    .local v4, "newFields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-static {v5, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    add-int/lit8 v6, v1, 0x1

    array-length v7, v4

    sub-int/2addr v7, v1

    invoke-static {v5, v6, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iput-object v4, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 260
    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->removedFields:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    const/4 v0, 0x1

    .line 262
    goto :goto_1

    .line 253
    .end local v2    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .end local v4    # "newFields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "i":I
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 266
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    aget-object v2, v2, v1

    .line 267
    .restart local v2    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    iget-object v4, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 269
    .restart local v4    # "newFields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-static {v5, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    add-int/lit8 v5, v1, 0x1

    array-length v6, v4

    sub-int/2addr v6, v1

    invoke-static {v3, v5, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iput-object v4, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 272
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->removedFields:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const/4 v0, 0x1

    .line 274
    goto :goto_3

    .line 265
    .end local v2    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .end local v4    # "newFields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 277
    .end local v1    # "i":I
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 279
    return-void

    .line 278
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found on class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v3, v3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
