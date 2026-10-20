.class public abstract Lcom/esotericsoftware/reflectasm/FieldAccess;
.super Ljava/lang/Object;
.source "FieldAccess.java"


# instance fields
.field private fieldNames:[Ljava/lang/String;

.field private fieldTypes:[Ljava/lang/Class;

.field private fields:[Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/FieldAccess;
    .locals 17
    .param p0, "type"    # Ljava/lang/Class;

    .line 113
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 117
    .local v1, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, p0

    move-object v2, v0

    .line 118
    .local v2, "nextClass":Ljava/lang/Class;
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq v2, v0, :cond_3

    .line 119
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 120
    .local v0, "declaredFields":[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v0

    .local v4, "n":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 121
    aget-object v5, v0, v3

    .line 122
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 123
    .local v6, "modifiers":I
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .line 124
    :cond_0
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    .line 125
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "modifiers":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 128
    .end local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 131
    .local v3, "fieldNames":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/Class;

    .line 132
    .local v4, "fieldTypes":[Ljava/lang/Class;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v5, v3

    .local v5, "n":I
    :goto_3
    if-ge v0, v5, :cond_4

    .line 133
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v0

    .line 134
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 137
    .end local v0    # "i":I
    .end local v5    # "n":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "className":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "FieldAccess"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "accessClassName":Ljava/lang/String;
    const-string v6, "java."

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reflectasm."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object v6, v0

    .line 142
    .end local v0    # "accessClassName":Ljava/lang/String;
    .local v6, "accessClassName":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    move-result-object v7

    .line 143
    .local v7, "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    monitor-enter v7

    .line 144
    :try_start_0
    invoke-virtual {v7, v6}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->loadAccessClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 145
    .local v0, "accessClass":Ljava/lang/Class;
    if-nez v0, :cond_6

    .line 146
    const/16 v8, 0x2f

    const/16 v9, 0x2e

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    .line 147
    .local v13, "accessClassNameInternal":Ljava/lang/String;
    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, "classNameInternal":Ljava/lang/String;
    new-instance v9, Lcom/esotericsoftware/asm/ClassWriter;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/esotericsoftware/asm/ClassWriter;-><init>(I)V

    .line 150
    .local v9, "cw":Lcom/esotericsoftware/asm/ClassWriter;
    const-string v15, "com/esotericsoftware/reflectasm/FieldAccess"

    const/16 v16, 0x0

    const v11, 0x3002d

    const/16 v12, 0x21

    const/4 v14, 0x0

    move-object v10, v9

    invoke-virtual/range {v10 .. v16}, Lcom/esotericsoftware/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 152
    invoke-static {v9}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertConstructor(Lcom/esotericsoftware/asm/ClassWriter;)V

    .line 153
    invoke-static {v9, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetObject(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 154
    invoke-static {v9, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetObject(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 155
    sget-object v10, Lcom/esotericsoftware/asm/Type;->BOOLEAN_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v9, v8, v1, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 156
    sget-object v10, Lcom/esotericsoftware/asm/Type;->BOOLEAN_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v9, v8, v1, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 157
    sget-object v10, Lcom/esotericsoftware/asm/Type;->BYTE_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v9, v8, v1, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 158
    sget-object v10, Lcom/esotericsoftware/asm/Type;->BYTE_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v9, v8, v1, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 159
    sget-object v10, Lcom/esotericsoftware/asm/Type;->SHORT_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v9, v8, v1, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 160
    sget-object v10, Lcom/esotericsoftware/asm/Type;->SHORT_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v9, v8, v1, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 161
    sget-object v10, Lcom/esotericsoftware/asm/Type;->INT_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v9, v8, v1, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 162
    sget-object v10, Lcom/esotericsoftware/asm/Type;->INT_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v9, v8, v1, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 163
    sget-object v10, Lcom/esotericsoftware/asm/Type;->LONG_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v9, v8, v1, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 164
    sget-object v10, Lcom/esotericsoftware/asm/Type;->LONG_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v9, v8, v1, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 165
    sget-object v10, Lcom/esotericsoftware/asm/Type;->DOUBLE_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v9, v8, v1, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 166
    sget-object v10, Lcom/esotericsoftware/asm/Type;->DOUBLE_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v9, v8, v1, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 167
    sget-object v10, Lcom/esotericsoftware/asm/Type;->FLOAT_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v9, v8, v1, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 168
    sget-object v10, Lcom/esotericsoftware/asm/Type;->FLOAT_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v9, v8, v1, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 169
    sget-object v10, Lcom/esotericsoftware/asm/Type;->CHAR_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v9, v8, v1, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 170
    sget-object v10, Lcom/esotericsoftware/asm/Type;->CHAR_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v9, v8, v1, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 171
    invoke-static {v9, v8, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetString(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 172
    invoke-virtual {v9}, Lcom/esotericsoftware/asm/ClassWriter;->visitEnd()V

    .line 173
    invoke-virtual {v9}, Lcom/esotericsoftware/asm/ClassWriter;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v7, v6, v10}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->defineAccessClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v10

    move-object v0, v10

    move-object v8, v0

    goto :goto_4

    .line 145
    .end local v8    # "classNameInternal":Ljava/lang/String;
    .end local v9    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .end local v13    # "accessClassNameInternal":Ljava/lang/String;
    :cond_6
    move-object v8, v0

    .line 175
    .end local v0    # "accessClass":Ljava/lang/Class;
    .local v8, "accessClass":Ljava/lang/Class;
    :goto_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/reflectasm/FieldAccess;

    .line 178
    .local v0, "access":Lcom/esotericsoftware/reflectasm/FieldAccess;
    iput-object v3, v0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldNames:[Ljava/lang/String;

    .line 179
    iput-object v4, v0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldTypes:[Ljava/lang/Class;

    .line 180
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/reflect/Field;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/reflect/Field;

    iput-object v9, v0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fields:[Ljava/lang/reflect/Field;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    return-object v0

    .line 182
    .end local v0    # "access":Lcom/esotericsoftware/reflectasm/FieldAccess;
    :catchall_0
    move-exception v0

    .line 183
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error constructing field access class: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 175
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v8    # "accessClass":Ljava/lang/Class;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 114
    .end local v1    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .end local v2    # "nextClass":Ljava/lang/Class;
    .end local v3    # "fieldNames":[Ljava/lang/String;
    .end local v4    # "fieldTypes":[Ljava/lang/Class;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "accessClassName":Ljava/lang/String;
    .end local v7    # "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type must not be the Object class, an interface, a primitive type, or void."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static insertConstructor(Lcom/esotericsoftware/asm/ClassWriter;)V
    .locals 6
    .param p0, "cw"    # Lcom/esotericsoftware/asm/ClassWriter;

    .line 188
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-string v2, "<init>"

    const-string v3, "()V"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v0

    .line 189
    .local v0, "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    .line 190
    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 191
    const-string v1, "<init>"

    const-string v2, "()V"

    const/16 v3, 0xb7

    const-string v4, "com/esotericsoftware/reflectasm/FieldAccess"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 193
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 194
    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    .line 195
    return-void
.end method

.method private static insertGetObject(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 16
    .param p0, "cw"    # Lcom/esotericsoftware/asm/ClassWriter;
    .param p1, "classNameInternal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 276
    .local p2, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    const/4 v0, 0x6

    .line 277
    .local v0, "maxStack":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const-string v3, "get"

    const-string v4, "(Ljava/lang/Object;I)Ljava/lang/Object;"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v1

    .line 278
    .local v1, "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    invoke-virtual {v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    .line 279
    const/16 v2, 0x15

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 282
    add-int/lit8 v0, v0, -0x1

    .line 283
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/esotericsoftware/asm/Label;

    .line 284
    .local v2, "labels":[Lcom/esotericsoftware/asm/Label;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v2

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 285
    new-instance v5, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v5}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v5, v2, v3

    .line 284
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_0
    new-instance v3, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v3}, Lcom/esotericsoftware/asm/Label;-><init>()V

    .line 287
    .local v3, "defaultLabel":Lcom/esotericsoftware/asm/Label;
    array-length v4, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4, v3, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    .line 289
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v6, v2

    .local v6, "n":I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 290
    move-object/from16 v13, p2

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Ljava/lang/reflect/Field;

    .line 292
    .local v14, "field":Ljava/lang/reflect/Field;
    aget-object v7, v2, v4

    invoke-virtual {v1, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    .line 293
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 294
    const/16 v7, 0x19

    invoke-virtual {v1, v7, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 295
    const/16 v7, 0xc0

    move-object/from16 v15, p1

    invoke-virtual {v1, v7, v15}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 296
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 297
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/esotericsoftware/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    .line 296
    const/16 v10, 0xb4

    invoke-virtual {v1, v10, v7, v8, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v7

    .line 300
    .local v7, "fieldType":Lcom/esotericsoftware/asm/Type;
    invoke-virtual {v7}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v8

    const-string/jumbo v9, "valueOf"

    const/16 v10, 0xb8

    packed-switch v8, :pswitch_data_0

    goto :goto_2

    .line 323
    :pswitch_0
    const-string v8, "java/lang/Double"

    const-string v11, "(D)Ljava/lang/Double;"

    invoke-virtual {v1, v10, v8, v9, v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 320
    :pswitch_1
    const-string v8, "java/lang/Long"

    const-string v11, "(J)Ljava/lang/Long;"

    invoke-virtual {v1, v10, v8, v9, v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    goto :goto_2

    .line 317
    :pswitch_2
    const-string v8, "java/lang/Float"

    const-string v11, "(F)Ljava/lang/Float;"

    invoke-virtual {v1, v10, v8, v9, v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    goto :goto_2

    .line 314
    :pswitch_3
    const-string v8, "java/lang/Integer"

    const-string v11, "(I)Ljava/lang/Integer;"

    invoke-virtual {v1, v10, v8, v9, v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    goto :goto_2

    .line 311
    :pswitch_4
    const-string v8, "java/lang/Short"

    const-string v11, "(S)Ljava/lang/Short;"

    invoke-virtual {v1, v10, v8, v9, v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    goto :goto_2

    .line 305
    :pswitch_5
    const-string v8, "java/lang/Byte"

    const-string v11, "(B)Ljava/lang/Byte;"

    invoke-virtual {v1, v10, v8, v9, v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    goto :goto_2

    .line 308
    :pswitch_6
    const-string v8, "java/lang/Character"

    const-string v11, "(C)Ljava/lang/Character;"

    invoke-virtual {v1, v10, v8, v9, v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    goto :goto_2

    .line 302
    :pswitch_7
    const-string v8, "java/lang/Boolean"

    const-string v11, "(Z)Ljava/lang/Boolean;"

    invoke-virtual {v1, v10, v8, v9, v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    nop

    .line 327
    :goto_2
    const/16 v8, 0xb0

    invoke-virtual {v1, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 289
    .end local v7    # "fieldType":Lcom/esotericsoftware/asm/Type;
    .end local v14    # "field":Ljava/lang/reflect/Field;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_1
    move-object/from16 v15, p1

    move-object/from16 v13, p2

    .line 330
    .end local v4    # "i":I
    .end local v6    # "n":I
    invoke-virtual {v1, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    .line 331
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_3

    .line 281
    .end local v2    # "labels":[Lcom/esotericsoftware/asm/Label;
    .end local v3    # "defaultLabel":Lcom/esotericsoftware/asm/Label;
    :cond_2
    move-object/from16 v15, p1

    move-object/from16 v13, p2

    .line 333
    :goto_3
    invoke-static {v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;

    .line 334
    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 335
    invoke-virtual {v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    .line 336
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V
    .locals 22
    .param p0, "cw"    # Lcom/esotericsoftware/asm/ClassWriter;
    .param p1, "classNameInternal"    # Ljava/lang/String;
    .param p3, "primitiveType"    # Lcom/esotericsoftware/asm/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Lcom/esotericsoftware/asm/Type;",
            ")V"
        }
    .end annotation

    .line 485
    .local p2, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, p2

    const/4 v1, 0x6

    .line 487
    .local v1, "maxStack":I
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, "typeNameInternal":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 523
    const-string v3, "get"

    .line 524
    .local v3, "getterMethodName":Ljava/lang/String;
    const/16 v4, 0xb0

    .local v4, "returnValueInstruction":I
    goto :goto_0

    .line 519
    .end local v3    # "getterMethodName":Ljava/lang/String;
    .end local v4    # "returnValueInstruction":I
    :pswitch_0
    const-string v3, "getDouble"

    .line 520
    .restart local v3    # "getterMethodName":Ljava/lang/String;
    const/16 v4, 0xaf

    .line 521
    .restart local v4    # "returnValueInstruction":I
    goto :goto_0

    .line 515
    .end local v3    # "getterMethodName":Ljava/lang/String;
    .end local v4    # "returnValueInstruction":I
    :pswitch_1
    const-string v3, "getLong"

    .line 516
    .restart local v3    # "getterMethodName":Ljava/lang/String;
    const/16 v4, 0xad

    .line 517
    .restart local v4    # "returnValueInstruction":I
    goto :goto_0

    .line 511
    .end local v3    # "getterMethodName":Ljava/lang/String;
    .end local v4    # "returnValueInstruction":I
    :pswitch_2
    const-string v3, "getFloat"

    .line 512
    .restart local v3    # "getterMethodName":Ljava/lang/String;
    const/16 v4, 0xae

    .line 513
    .restart local v4    # "returnValueInstruction":I
    goto :goto_0

    .line 507
    .end local v3    # "getterMethodName":Ljava/lang/String;
    .end local v4    # "returnValueInstruction":I
    :pswitch_3
    const-string v3, "getInt"

    .line 508
    .restart local v3    # "getterMethodName":Ljava/lang/String;
    const/16 v4, 0xac

    .line 509
    .restart local v4    # "returnValueInstruction":I
    goto :goto_0

    .line 503
    .end local v3    # "getterMethodName":Ljava/lang/String;
    .end local v4    # "returnValueInstruction":I
    :pswitch_4
    const-string v3, "getShort"

    .line 504
    .restart local v3    # "getterMethodName":Ljava/lang/String;
    const/16 v4, 0xac

    .line 505
    .restart local v4    # "returnValueInstruction":I
    goto :goto_0

    .line 495
    .end local v3    # "getterMethodName":Ljava/lang/String;
    .end local v4    # "returnValueInstruction":I
    :pswitch_5
    const-string v3, "getByte"

    .line 496
    .restart local v3    # "getterMethodName":Ljava/lang/String;
    const/16 v4, 0xac

    .line 497
    .restart local v4    # "returnValueInstruction":I
    goto :goto_0

    .line 499
    .end local v3    # "getterMethodName":Ljava/lang/String;
    .end local v4    # "returnValueInstruction":I
    :pswitch_6
    const-string v3, "getChar"

    .line 500
    .restart local v3    # "getterMethodName":Ljava/lang/String;
    const/16 v4, 0xac

    .line 501
    .restart local v4    # "returnValueInstruction":I
    goto :goto_0

    .line 491
    .end local v3    # "getterMethodName":Ljava/lang/String;
    .end local v4    # "returnValueInstruction":I
    :pswitch_7
    const-string v3, "getBoolean"

    .line 492
    .restart local v3    # "getterMethodName":Ljava/lang/String;
    const/16 v4, 0xac

    .line 493
    .restart local v4    # "returnValueInstruction":I
    nop

    .line 527
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(Ljava/lang/Object;I)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    move-object/from16 v5, p0

    move-object v7, v3

    invoke-virtual/range {v5 .. v10}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v5

    .line 528
    .local v5, "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    invoke-virtual {v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    .line 529
    const/16 v6, 0x15

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 532
    add-int/lit8 v1, v1, -0x1

    .line 533
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/esotericsoftware/asm/Label;

    .line 534
    .local v6, "labels":[Lcom/esotericsoftware/asm/Label;
    new-instance v7, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v7}, Lcom/esotericsoftware/asm/Label;-><init>()V

    .line 535
    .local v7, "labelForInvalidTypes":Lcom/esotericsoftware/asm/Label;
    const/4 v8, 0x0

    .line 536
    .local v8, "hasAnyBadTypeLabel":Z
    const/4 v9, 0x0

    .local v9, "i":I
    array-length v10, v6

    .local v10, "n":I
    :goto_1
    if-ge v9, v10, :cond_1

    .line 537
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Field;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v11

    move-object/from16 v15, p3

    invoke-virtual {v11, v15}, Lcom/esotericsoftware/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 538
    new-instance v11, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v11}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v11, v6, v9

    goto :goto_2

    .line 540
    :cond_0
    aput-object v7, v6, v9

    .line 541
    const/4 v8, 0x1

    .line 536
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v15, p3

    .line 544
    .end local v9    # "i":I
    .end local v10    # "n":I
    new-instance v9, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v9}, Lcom/esotericsoftware/asm/Label;-><init>()V

    .line 545
    .local v9, "defaultLabel":Lcom/esotericsoftware/asm/Label;
    array-length v10, v6

    const/4 v14, 0x1

    sub-int/2addr v10, v14

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v10, v9, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    .line 547
    const/4 v10, 0x0

    .local v10, "i":I
    array-length v13, v6

    .local v13, "n":I
    :goto_3
    if-ge v10, v13, :cond_3

    .line 548
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v17, v11

    check-cast v17, Ljava/lang/reflect/Field;

    .line 549
    .local v17, "field":Ljava/lang/reflect/Field;
    aget-object v11, v6, v10

    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 550
    aget-object v11, v6, v10

    invoke-virtual {v5, v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    .line 551
    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v12, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v11, v5

    move/from16 v21, v13

    .end local v13    # "n":I
    .local v21, "n":I
    move/from16 v13, v19

    move-object/from16 v14, v20

    move/from16 v15, v16

    move-object/from16 v16, v18

    invoke-virtual/range {v11 .. v16}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 552
    const/16 v11, 0x19

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 553
    const/16 v11, 0xc0

    move-object/from16 v15, p1

    invoke-virtual {v5, v11, v15}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 554
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const/16 v13, 0x2e

    const/16 v14, 0x2f

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xb4

    invoke-virtual {v5, v14, v11, v13, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v5, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_4

    .line 549
    .end local v21    # "n":I
    .restart local v13    # "n":I
    :cond_2
    move-object/from16 v15, p1

    move/from16 v21, v13

    const/4 v12, 0x1

    .line 547
    .end local v13    # "n":I
    .end local v17    # "field":Ljava/lang/reflect/Field;
    .restart local v21    # "n":I
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v15, p3

    move/from16 v13, v21

    const/4 v14, 0x1

    goto :goto_3

    .end local v21    # "n":I
    .restart local v13    # "n":I
    :cond_3
    move-object/from16 v15, p1

    move/from16 v21, v13

    .line 560
    .end local v10    # "i":I
    .end local v13    # "n":I
    if-eqz v8, :cond_4

    .line 561
    invoke-virtual {v5, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    .line 562
    const/4 v10, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v5

    move v15, v10

    invoke-virtual/range {v11 .. v16}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 563
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldType(Lcom/esotericsoftware/asm/MethodVisitor;Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    .line 566
    :cond_4
    invoke-virtual {v5, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    .line 567
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v5

    invoke-virtual/range {v11 .. v16}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 569
    .end local v6    # "labels":[Lcom/esotericsoftware/asm/Label;
    .end local v7    # "labelForInvalidTypes":Lcom/esotericsoftware/asm/Label;
    .end local v8    # "hasAnyBadTypeLabel":Z
    .end local v9    # "defaultLabel":Lcom/esotericsoftware/asm/Label;
    :cond_5
    invoke-static {v5}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v5

    .line 570
    const/4 v6, 0x3

    invoke-virtual {v5, v1, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 571
    invoke-virtual {v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    .line 572
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static insertGetString(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 17
    .param p0, "cw"    # Lcom/esotericsoftware/asm/ClassWriter;
    .param p1, "classNameInternal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 339
    .local p2, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, p2

    const/4 v1, 0x6

    .line 340
    .local v1, "maxStack":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const-string v4, "getString"

    const-string v5, "(Ljava/lang/Object;I)Ljava/lang/String;"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v2

    .line 341
    .local v2, "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    invoke-virtual {v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    .line 342
    const/16 v3, 0x15

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 345
    add-int/lit8 v1, v1, -0x1

    .line 346
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/esotericsoftware/asm/Label;

    .line 347
    .local v3, "labels":[Lcom/esotericsoftware/asm/Label;
    new-instance v4, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v4}, Lcom/esotericsoftware/asm/Label;-><init>()V

    .line 348
    .local v4, "labelForInvalidTypes":Lcom/esotericsoftware/asm/Label;
    const/4 v5, 0x0

    .line 349
    .local v5, "hasAnyBadTypeLabel":Z
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v3

    .local v7, "n":I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 350
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 351
    new-instance v8, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v8}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v8, v3, v6

    goto :goto_1

    .line 353
    :cond_0
    aput-object v4, v3, v6

    .line 354
    const/4 v5, 0x1

    .line 349
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 357
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_1
    new-instance v6, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v6}, Lcom/esotericsoftware/asm/Label;-><init>()V

    .line 358
    .local v6, "defaultLabel":Lcom/esotericsoftware/asm/Label;
    array-length v7, v3

    const/4 v14, 0x1

    sub-int/2addr v7, v14

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v7, v6, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    .line 360
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v15, v3

    .local v15, "n":I
    :goto_2
    if-ge v7, v15, :cond_3

    .line 361
    aget-object v8, v3, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 362
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/reflect/Field;

    .line 363
    .local v16, "field":Ljava/lang/reflect/Field;
    aget-object v8, v3, v7

    invoke-virtual {v2, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    .line 364
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 365
    const/16 v8, 0x19

    invoke-virtual {v2, v8, v14}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 366
    const/16 v8, 0xc0

    move-object/from16 v13, p1

    invoke-virtual {v2, v8, v13}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 367
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2e

    const/16 v10, 0x2f

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Ljava/lang/String;"

    const/16 v11, 0xb4

    invoke-virtual {v2, v11, v8, v9, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/16 v8, 0xb0

    invoke-virtual {v2, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_3

    .line 361
    .end local v16    # "field":Ljava/lang/reflect/Field;
    :cond_2
    move-object/from16 v13, p1

    .line 360
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v13, p1

    .line 373
    .end local v7    # "i":I
    .end local v15    # "n":I
    if-eqz v5, :cond_4

    .line 374
    invoke-virtual {v2, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    .line 375
    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v2

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 376
    const-string v7, "String"

    invoke-static {v2, v7}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldType(Lcom/esotericsoftware/asm/MethodVisitor;Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    .line 379
    :cond_4
    invoke-virtual {v2, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    .line 380
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 382
    .end local v3    # "labels":[Lcom/esotericsoftware/asm/Label;
    .end local v4    # "labelForInvalidTypes":Lcom/esotericsoftware/asm/Label;
    .end local v5    # "hasAnyBadTypeLabel":Z
    .end local v6    # "defaultLabel":Lcom/esotericsoftware/asm/Label;
    :cond_5
    invoke-static {v2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;

    .line 383
    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 384
    invoke-virtual {v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    .line 385
    return-void
.end method

.method private static insertSetObject(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 16
    .param p0, "cw"    # Lcom/esotericsoftware/asm/ClassWriter;
    .param p1, "classNameInternal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 198
    .local p2, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    const/4 v0, 0x6

    .line 199
    .local v0, "maxStack":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const-string v3, "set"

    const-string v4, "(Ljava/lang/Object;ILjava/lang/Object;)V"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v1

    .line 200
    .local v1, "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    invoke-virtual {v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    .line 201
    const/16 v2, 0x15

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 204
    add-int/lit8 v0, v0, -0x1

    .line 205
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/esotericsoftware/asm/Label;

    .line 206
    .local v2, "labels":[Lcom/esotericsoftware/asm/Label;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v2

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 207
    new-instance v5, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v5}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v5, v2, v3

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_0
    new-instance v3, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v3}, Lcom/esotericsoftware/asm/Label;-><init>()V

    .line 209
    .local v3, "defaultLabel":Lcom/esotericsoftware/asm/Label;
    array-length v4, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4, v3, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    .line 211
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v6, v2

    .local v6, "n":I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 212
    move-object/from16 v13, p2

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Ljava/lang/reflect/Field;

    .line 213
    .local v14, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v15

    .line 215
    .local v15, "fieldType":Lcom/esotericsoftware/asm/Type;
    aget-object v7, v2, v4

    invoke-virtual {v1, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    .line 216
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 217
    const/16 v7, 0x19

    invoke-virtual {v1, v7, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 218
    const/16 v8, 0xc0

    move-object/from16 v12, p1

    invoke-virtual {v1, v8, v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 219
    const/4 v9, 0x3

    invoke-virtual {v1, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 221
    invoke-virtual {v15}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v7

    const/16 v9, 0xb6

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2

    .line 258
    :pswitch_0
    invoke-virtual {v15}, Lcom/esotericsoftware/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 255
    :pswitch_1
    invoke-virtual {v15}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 256
    goto :goto_2

    .line 251
    :pswitch_2
    const-string v7, "java/lang/Double"

    invoke-virtual {v1, v8, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 252
    const-string v8, "doubleValue"

    const-string v10, "()D"

    invoke-virtual {v1, v9, v7, v8, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    goto :goto_2

    .line 247
    :pswitch_3
    const-string v7, "java/lang/Long"

    invoke-virtual {v1, v8, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 248
    const-string v8, "longValue"

    const-string v10, "()J"

    invoke-virtual {v1, v9, v7, v8, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    goto :goto_2

    .line 243
    :pswitch_4
    const-string v7, "java/lang/Float"

    invoke-virtual {v1, v8, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 244
    const-string v8, "floatValue"

    const-string v10, "()F"

    invoke-virtual {v1, v9, v7, v8, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    goto :goto_2

    .line 239
    :pswitch_5
    const-string v7, "java/lang/Integer"

    invoke-virtual {v1, v8, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 240
    const-string v8, "intValue"

    const-string v10, "()I"

    invoke-virtual {v1, v9, v7, v8, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    goto :goto_2

    .line 235
    :pswitch_6
    const-string v7, "java/lang/Short"

    invoke-virtual {v1, v8, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 236
    const-string/jumbo v8, "shortValue"

    const-string v10, "()S"

    invoke-virtual {v1, v9, v7, v8, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    goto :goto_2

    .line 227
    :pswitch_7
    const-string v7, "java/lang/Byte"

    invoke-virtual {v1, v8, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 228
    const-string v8, "byteValue"

    const-string v10, "()B"

    invoke-virtual {v1, v9, v7, v8, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    goto :goto_2

    .line 231
    :pswitch_8
    const-string v7, "java/lang/Character"

    invoke-virtual {v1, v8, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 232
    const-string v8, "charValue"

    const-string v10, "()C"

    invoke-virtual {v1, v9, v7, v8, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    goto :goto_2

    .line 223
    :pswitch_9
    const-string v7, "java/lang/Boolean"

    invoke-virtual {v1, v8, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 224
    const-string v8, "booleanValue"

    const-string v10, "()Z"

    invoke-virtual {v1, v9, v7, v8, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    nop

    .line 262
    :goto_2
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 263
    invoke-virtual {v15}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    .line 262
    const/16 v10, 0xb5

    invoke-virtual {v1, v10, v7, v8, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/16 v7, 0xb1

    invoke-virtual {v1, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 211
    .end local v14    # "field":Ljava/lang/reflect/Field;
    .end local v15    # "fieldType":Lcom/esotericsoftware/asm/Type;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_1
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 267
    .end local v4    # "i":I
    .end local v6    # "n":I
    invoke-virtual {v1, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    .line 268
    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v1

    move-object v12, v4

    invoke-virtual/range {v7 .. v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_3

    .line 203
    .end local v2    # "labels":[Lcom/esotericsoftware/asm/Label;
    .end local v3    # "defaultLabel":Lcom/esotericsoftware/asm/Label;
    :cond_2
    move-object/from16 v13, p2

    .line 270
    :goto_3
    invoke-static {v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v1

    .line 271
    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 272
    invoke-virtual {v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    .line 273
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V
    .locals 23
    .param p0, "cw"    # Lcom/esotericsoftware/asm/ClassWriter;
    .param p1, "classNameInternal"    # Ljava/lang/String;
    .param p3, "primitiveType"    # Lcom/esotericsoftware/asm/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Lcom/esotericsoftware/asm/Type;",
            ")V"
        }
    .end annotation

    .line 389
    .local p2, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, p2

    const/4 v1, 0x6

    .line 390
    .local v1, "maxStack":I
    const/4 v2, 0x4

    .line 392
    .local v2, "maxLocals":I
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "typeNameInternal":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 430
    const-string v4, "set"

    .line 431
    .local v4, "setterMethodName":Ljava/lang/String;
    const/16 v5, 0x19

    move-object v10, v4

    move v11, v5

    .local v5, "loadValueInstruction":I
    goto :goto_0

    .line 425
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v5    # "loadValueInstruction":I
    :pswitch_0
    const-string/jumbo v4, "setDouble"

    .line 426
    .restart local v4    # "setterMethodName":Ljava/lang/String;
    const/16 v5, 0x18

    .line 427
    .restart local v5    # "loadValueInstruction":I
    add-int/lit8 v2, v2, 0x1

    .line 428
    move-object v10, v4

    move v11, v5

    goto :goto_0

    .line 420
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v5    # "loadValueInstruction":I
    :pswitch_1
    const-string/jumbo v4, "setLong"

    .line 421
    .restart local v4    # "setterMethodName":Ljava/lang/String;
    const/16 v5, 0x16

    .line 422
    .restart local v5    # "loadValueInstruction":I
    add-int/lit8 v2, v2, 0x1

    .line 423
    move-object v10, v4

    move v11, v5

    goto :goto_0

    .line 416
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v5    # "loadValueInstruction":I
    :pswitch_2
    const-string/jumbo v4, "setFloat"

    .line 417
    .restart local v4    # "setterMethodName":Ljava/lang/String;
    const/16 v5, 0x17

    .line 418
    .restart local v5    # "loadValueInstruction":I
    move-object v10, v4

    move v11, v5

    goto :goto_0

    .line 412
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v5    # "loadValueInstruction":I
    :pswitch_3
    const-string/jumbo v4, "setInt"

    .line 413
    .restart local v4    # "setterMethodName":Ljava/lang/String;
    const/16 v5, 0x15

    .line 414
    .restart local v5    # "loadValueInstruction":I
    move-object v10, v4

    move v11, v5

    goto :goto_0

    .line 408
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v5    # "loadValueInstruction":I
    :pswitch_4
    const-string/jumbo v4, "setShort"

    .line 409
    .restart local v4    # "setterMethodName":Ljava/lang/String;
    const/16 v5, 0x15

    .line 410
    .restart local v5    # "loadValueInstruction":I
    move-object v10, v4

    move v11, v5

    goto :goto_0

    .line 400
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v5    # "loadValueInstruction":I
    :pswitch_5
    const-string/jumbo v4, "setByte"

    .line 401
    .restart local v4    # "setterMethodName":Ljava/lang/String;
    const/16 v5, 0x15

    .line 402
    .restart local v5    # "loadValueInstruction":I
    move-object v10, v4

    move v11, v5

    goto :goto_0

    .line 404
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v5    # "loadValueInstruction":I
    :pswitch_6
    const-string/jumbo v4, "setChar"

    .line 405
    .restart local v4    # "setterMethodName":Ljava/lang/String;
    const/16 v5, 0x15

    .line 406
    .restart local v5    # "loadValueInstruction":I
    move-object v10, v4

    move v11, v5

    goto :goto_0

    .line 396
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v5    # "loadValueInstruction":I
    :pswitch_7
    const-string/jumbo v4, "setBoolean"

    .line 397
    .restart local v4    # "setterMethodName":Ljava/lang/String;
    const/16 v5, 0x15

    .line 398
    .restart local v5    # "loadValueInstruction":I
    move-object v10, v4

    move v11, v5

    .line 434
    .end local v4    # "setterMethodName":Ljava/lang/String;
    .end local v5    # "loadValueInstruction":I
    .local v10, "setterMethodName":Ljava/lang/String;
    .local v11, "loadValueInstruction":I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(Ljava/lang/Object;I"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    move-object/from16 v4, p0

    move-object v6, v10

    invoke-virtual/range {v4 .. v9}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v4

    .line 436
    .local v4, "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    invoke-virtual {v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    .line 437
    const/16 v5, 0x15

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 440
    add-int/lit8 v1, v1, -0x1

    .line 441
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/esotericsoftware/asm/Label;

    .line 442
    .local v5, "labels":[Lcom/esotericsoftware/asm/Label;
    new-instance v6, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v6}, Lcom/esotericsoftware/asm/Label;-><init>()V

    .line 443
    .local v6, "labelForInvalidTypes":Lcom/esotericsoftware/asm/Label;
    const/4 v7, 0x0

    .line 444
    .local v7, "hasAnyBadTypeLabel":Z
    const/4 v8, 0x0

    .local v8, "i":I
    array-length v9, v5

    .local v9, "n":I
    :goto_1
    if-ge v8, v9, :cond_1

    .line 445
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/reflect/Field;

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v12

    move-object/from16 v15, p3

    invoke-virtual {v12, v15}, Lcom/esotericsoftware/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 446
    new-instance v12, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v12}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v12, v5, v8

    goto :goto_2

    .line 448
    :cond_0
    aput-object v6, v5, v8

    .line 449
    const/4 v7, 0x1

    .line 444
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v15, p3

    .line 452
    .end local v8    # "i":I
    .end local v9    # "n":I
    new-instance v8, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v8}, Lcom/esotericsoftware/asm/Label;-><init>()V

    .line 453
    .local v8, "defaultLabel":Lcom/esotericsoftware/asm/Label;
    array-length v9, v5

    const/4 v14, 0x1

    sub-int/2addr v9, v14

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v9, v8, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    .line 455
    const/4 v9, 0x0

    .local v9, "i":I
    array-length v13, v5

    .local v13, "n":I
    :goto_3
    if-ge v9, v13, :cond_3

    .line 456
    aget-object v12, v5, v9

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 457
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v18, v12

    check-cast v18, Ljava/lang/reflect/Field;

    .line 458
    .local v18, "field":Ljava/lang/reflect/Field;
    aget-object v12, v5, v9

    invoke-virtual {v4, v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    .line 459
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v12, v4

    move/from16 v22, v13

    .end local v13    # "n":I
    .local v22, "n":I
    move/from16 v13, v19

    move/from16 v14, v20

    move-object/from16 v15, v21

    invoke-virtual/range {v12 .. v17}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 460
    const/16 v12, 0x19

    const/4 v13, 0x1

    invoke-virtual {v4, v12, v13}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 461
    const/16 v12, 0xc0

    move-object/from16 v15, p1

    invoke-virtual {v4, v12, v15}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 462
    const/4 v12, 0x3

    invoke-virtual {v4, v11, v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 463
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0x2e

    const/16 v13, 0x2f

    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xb5

    invoke-virtual {v4, v14, v12, v13, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/16 v12, 0xb1

    invoke-virtual {v4, v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_4

    .line 456
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v22    # "n":I
    .restart local v13    # "n":I
    :cond_2
    move-object/from16 v15, p1

    move/from16 v22, v13

    .line 455
    .end local v13    # "n":I
    .restart local v22    # "n":I
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v15, p3

    move/from16 v13, v22

    const/4 v14, 0x1

    goto :goto_3

    .end local v22    # "n":I
    .restart local v13    # "n":I
    :cond_3
    move-object/from16 v15, p1

    move/from16 v22, v13

    .line 469
    .end local v9    # "i":I
    .end local v13    # "n":I
    if-eqz v7, :cond_4

    .line 470
    invoke-virtual {v4, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    .line 471
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v9, 0x0

    move-object v12, v4

    move-object v15, v9

    invoke-virtual/range {v12 .. v17}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 472
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldType(Lcom/esotericsoftware/asm/MethodVisitor;Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    .line 475
    :cond_4
    invoke-virtual {v4, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    .line 476
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v12, v4

    invoke-virtual/range {v12 .. v17}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 478
    .end local v5    # "labels":[Lcom/esotericsoftware/asm/Label;
    .end local v6    # "labelForInvalidTypes":Lcom/esotericsoftware/asm/Label;
    .end local v7    # "hasAnyBadTypeLabel":Z
    .end local v8    # "defaultLabel":Lcom/esotericsoftware/asm/Label;
    :cond_5
    invoke-static {v4}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v4

    .line 479
    invoke-virtual {v4, v1, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 480
    invoke-virtual {v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    .line 481
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;
    .locals 8
    .param p0, "mv"    # Lcom/esotericsoftware/asm/MethodVisitor;

    .line 575
    const/16 v0, 0xbb

    const-string v1, "java/lang/IllegalArgumentException"

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 576
    const/16 v2, 0x59

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 577
    const-string v3, "java/lang/StringBuilder"

    invoke-virtual {p0, v0, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 578
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 579
    const-string v0, "Field not found: "

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 580
    const/16 v0, 0xb7

    const-string v2, "<init>"

    const-string v4, "(Ljava/lang/String;)V"

    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const/16 v5, 0x15

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 582
    const-string v5, "append"

    const-string v6, "(I)Ljava/lang/StringBuilder;"

    const/16 v7, 0xb6

    invoke-virtual {p0, v7, v3, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string/jumbo v5, "toString"

    const-string v6, "()Ljava/lang/String;"

    invoke-virtual {p0, v7, v3, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/16 v0, 0xbf

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 586
    return-object p0
.end method

.method private static insertThrowExceptionForFieldType(Lcom/esotericsoftware/asm/MethodVisitor;Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;
    .locals 8
    .param p0, "mv"    # Lcom/esotericsoftware/asm/MethodVisitor;
    .param p1, "fieldType"    # Ljava/lang/String;

    .line 590
    const/16 v0, 0xbb

    const-string v1, "java/lang/IllegalArgumentException"

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 591
    const/16 v2, 0x59

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 592
    const-string v3, "java/lang/StringBuilder"

    invoke-virtual {p0, v0, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 593
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field not declared as "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 595
    const/16 v0, 0xb7

    const-string v2, "<init>"

    const-string v4, "(Ljava/lang/String;)V"

    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const/16 v5, 0x15

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 597
    const-string v5, "append"

    const-string v6, "(I)Ljava/lang/StringBuilder;"

    const/16 v7, 0xb6

    invoke-virtual {p0, v7, v3, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string/jumbo v5, "toString"

    const-string v6, "()Ljava/lang/String;"

    invoke-virtual {p0, v7, v3, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const/16 v0, 0xbf

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 601
    return-object p0
.end method


# virtual methods
.method public abstract get(Ljava/lang/Object;I)Ljava/lang/Object;
.end method

.method public get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 50
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getBoolean(Ljava/lang/Object;I)Z
.end method

.method public abstract getByte(Ljava/lang/Object;I)B
.end method

.method public abstract getChar(Ljava/lang/Object;I)C
.end method

.method public abstract getDouble(Ljava/lang/Object;I)D
.end method

.method public getFieldCount()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldTypes:[Ljava/lang/Class;

    array-length v0, v0

    return v0
.end method

.method public getFieldNames()[Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getFieldTypes()[Ljava/lang/Class;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fields:[Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public abstract getFloat(Ljava/lang/Object;I)F
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldNames:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 35
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find non-private field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndex(Ljava/lang/reflect/Field;)I
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fields:[Ljava/lang/reflect/Field;

    array-length v1, v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 41
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fields:[Ljava/lang/reflect/Field;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find non-private field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getInt(Ljava/lang/Object;I)I
.end method

.method public abstract getLong(Ljava/lang/Object;I)J
.end method

.method public abstract getShort(Ljava/lang/Object;I)S
.end method

.method public abstract getString(Ljava/lang/Object;I)Ljava/lang/String;
.end method

.method public abstract set(Ljava/lang/Object;ILjava/lang/Object;)V
.end method

.method public set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 46
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 47
    return-void
.end method

.method public abstract setBoolean(Ljava/lang/Object;IZ)V
.end method

.method public abstract setByte(Ljava/lang/Object;IB)V
.end method

.method public abstract setChar(Ljava/lang/Object;IC)V
.end method

.method public abstract setDouble(Ljava/lang/Object;ID)V
.end method

.method public setFields([Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "fields"    # [Ljava/lang/reflect/Field;

    .line 70
    iput-object p1, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fields:[Ljava/lang/reflect/Field;

    .line 71
    return-void
.end method

.method public abstract setFloat(Ljava/lang/Object;IF)V
.end method

.method public abstract setInt(Ljava/lang/Object;II)V
.end method

.method public abstract setLong(Ljava/lang/Object;IJ)V
.end method

.method public abstract setShort(Ljava/lang/Object;IS)V
.end method
