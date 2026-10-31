.class public abstract Lcom/esotericsoftware/reflectasm/MethodAccess;
.super Ljava/lang/Object;
.source "MethodAccess.java"


# instance fields
.field private methodNames:[Ljava/lang/String;

.field private parameterTypes:[[Ljava/lang/Class;

.field private returnTypes:[Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDeclaredMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .registers 8
    .param p0, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 291
    .local p1, "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 292
    .local v0, "declaredMethods":[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_6
    if-ge v1, v2, :cond_1b

    .line 293
    aget-object v3, v0, v1

    .line 294
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    .line 296
    .local v4, "modifiers":I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_18

    .line 297
    :cond_15
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "modifiers":I
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 299
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1b
    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/MethodAccess;
    .registers 34
    .param p0, "type"    # Ljava/lang/Class;

    .line 84
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    .line 85
    .local v2, "isInterface":Z
    if-nez v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1b

    const-class v0, Ljava/lang/Object;

    if-ne v1, v0, :cond_13

    goto :goto_1b

    .line 86
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "The type must not be an interface, a primitive type, or void."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1b
    :goto_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 89
    .local v3, "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    if-nez v2, :cond_32

    .line 90
    move-object/from16 v0, p0

    .line 91
    .local v0, "nextClass":Ljava/lang/Class;
    :goto_25
    const-class v4, Ljava/lang/Object;

    if-eq v0, v4, :cond_31

    .line 92
    invoke-static {v0, v3}, Lcom/esotericsoftware/reflectasm/MethodAccess;->addDeclaredMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_25

    .line 95
    .end local v0    # "nextClass":Ljava/lang/Class;
    :cond_31
    goto :goto_35

    .line 96
    :cond_32
    invoke-static {v1, v3}, Lcom/esotericsoftware/reflectasm/MethodAccess;->recursiveAddInterfaceMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 98
    :goto_35
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 99
    .local v4, "n":I
    new-array v5, v4, [Ljava/lang/String;

    .line 100
    .local v5, "methodNames":[Ljava/lang/String;
    new-array v6, v4, [[Ljava/lang/Class;

    .line 101
    .local v6, "parameterTypes":[[Ljava/lang/Class;
    new-array v7, v4, [Ljava/lang/Class;

    .line 102
    .local v7, "returnTypes":[Ljava/lang/Class;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_40
    if-ge v0, v4, :cond_5d

    .line 103
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    .line 104
    .local v8, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v0

    .line 105
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v6, v0

    .line 106
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v0

    .line 102
    .end local v8    # "method":Ljava/lang/reflect/Method;
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 109
    .end local v0    # "i":I
    :cond_5d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "className":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "MethodAccess"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "accessClassName":Ljava/lang/String;
    const-string v9, "java."

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reflectasm."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8f
    move-object v9, v0

    .line 114
    .end local v0    # "accessClassName":Ljava/lang/String;
    .local v9, "accessClassName":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    move-result-object v10

    .line 115
    .local v10, "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    monitor-enter v10

    .line 116
    :try_start_95
    invoke-virtual {v10, v9}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->loadAccessClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_4e8

    .line 117
    .local v0, "accessClass":Ljava/lang/Class;
    if-nez v0, :cond_4a1

    .line 118
    const/16 v11, 0x2f

    const/16 v12, 0x2e

    :try_start_9f
    invoke-virtual {v9, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v16

    .line 119
    .local v16, "accessClassNameInternal":Ljava/lang/String;
    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 121
    .local v11, "classNameInternal":Ljava/lang/String;
    new-instance v13, Lcom/esotericsoftware/asm/ClassWriter;

    const/4 v12, 0x1

    invoke-direct {v13, v12}, Lcom/esotericsoftware/asm/ClassWriter;-><init>(I)V

    .line 123
    .local v13, "cw":Lcom/esotericsoftware/asm/ClassWriter;
    const-string v18, "com/esotericsoftware/reflectasm/MethodAccess"

    const/16 v19, 0x0

    const v14, 0x3002d

    const/16 v15, 0x21

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/esotericsoftware/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 126
    const-string v22, "<init>"

    const-string v23, "()V"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v21, 0x1

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v25}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v14

    .line 127
    .local v14, "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    invoke-virtual {v14}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    .line 128
    const/16 v15, 0x19

    const/4 v12, 0x0

    invoke-virtual {v14, v15, v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 129
    const-string v15, "com/esotericsoftware/reflectasm/MethodAccess"

    const-string v12, "<init>"

    move-object/from16 v20, v0

    .end local v0    # "accessClass":Ljava/lang/Class;
    .local v20, "accessClass":Ljava/lang/Class;
    const-string v0, "()V"

    const/16 v1, 0xb7

    invoke-virtual {v14, v1, v15, v12, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/16 v0, 0xb1

    invoke-virtual {v14, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 131
    const/4 v0, 0x0

    invoke-virtual {v14, v0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 132
    invoke-virtual {v14}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    .line 135
    const-string v23, "invoke"

    const-string v24, "(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v22, 0x81

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v26}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v0

    .line 137
    .end local v14    # "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    .local v0, "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    .line 139
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12
    :try_end_104
    .catchall {:try_start_9f .. :try_end_104} :catchall_492

    const/4 v14, 0x2

    const/16 v15, 0x15

    if-nez v12, :cond_410

    .line 140
    const/4 v1, 0x1

    const/16 v12, 0x19

    :try_start_10c
    invoke-virtual {v0, v12, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 141
    const/16 v1, 0xc0

    invoke-virtual {v0, v1, v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 142
    const/16 v12, 0x3a

    const/4 v1, 0x4

    invoke-virtual {v0, v12, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 144
    invoke-virtual {v0, v15, v14}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 145
    new-array v12, v4, [Lcom/esotericsoftware/asm/Label;
    :try_end_11f
    .catchall {:try_start_10c .. :try_end_11f} :catchall_3fd

    .line 146
    .local v12, "labels":[Lcom/esotericsoftware/asm/Label;
    const/16 v21, 0x0

    move/from16 v14, v21

    .local v14, "i":I
    :goto_123
    if-ge v14, v4, :cond_139

    .line 147
    :try_start_125
    new-instance v21, Lcom/esotericsoftware/asm/Label;

    invoke-direct/range {v21 .. v21}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v21, v12, v14
    :try_end_12c
    .catchall {:try_start_125 .. :try_end_12c} :catchall_12f

    .line 146
    add-int/lit8 v14, v14, 0x1

    goto :goto_123

    .line 278
    .end local v0    # "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    .end local v11    # "classNameInternal":Ljava/lang/String;
    .end local v12    # "labels":[Lcom/esotericsoftware/asm/Label;
    .end local v13    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .end local v14    # "i":I
    .end local v16    # "accessClassNameInternal":Ljava/lang/String;
    .end local v20    # "accessClass":Ljava/lang/Class;
    :catchall_12f
    move-exception v0

    move/from16 v27, v4

    move-object v1, v6

    move-object v6, v7

    move-object/from16 v28, v8

    move-object v4, v9

    goto/16 :goto_4f0

    .line 148
    .restart local v0    # "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    .restart local v11    # "classNameInternal":Ljava/lang/String;
    .restart local v12    # "labels":[Lcom/esotericsoftware/asm/Label;
    .restart local v13    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .restart local v16    # "accessClassNameInternal":Ljava/lang/String;
    .restart local v20    # "accessClass":Ljava/lang/Class;
    :cond_139
    :try_start_139
    new-instance v14, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v14}, Lcom/esotericsoftware/asm/Label;-><init>()V

    .line 149
    .local v14, "defaultLabel":Lcom/esotericsoftware/asm/Label;
    array-length v15, v12

    const/16 v17, 0x1

    add-int/lit8 v15, v15, -0x1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v15, v14, v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v15, 0x80

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_14e
    .catchall {:try_start_139 .. :try_end_14e} :catchall_3fd

    .line 152
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_14f
    if-ge v15, v4, :cond_3d5

    .line 153
    move/from16 v27, v4

    .end local v4    # "n":I
    .local v27, "n":I
    :try_start_153
    aget-object v4, v12, v15

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V
    :try_end_158
    .catchall {:try_start_153 .. :try_end_158} :catchall_3c4

    .line 154
    if-nez v15, :cond_17e

    .line 155
    move-object/from16 v28, v8

    const/4 v4, 0x1

    .end local v8    # "className":Ljava/lang/String;
    .local v28, "className":Ljava/lang/String;
    :try_start_15d
    new-array v8, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v8, v4
    :try_end_162
    .catchall {:try_start_15d .. :try_end_162} :catchall_178

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v21, v0

    move-object/from16 v24, v8

    :try_start_16e
    invoke-virtual/range {v21 .. v26}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    :try_end_171
    .catchall {:try_start_16e .. :try_end_171} :catchall_172

    goto :goto_18f

    .line 278
    .end local v0    # "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v11    # "classNameInternal":Ljava/lang/String;
    .end local v12    # "labels":[Lcom/esotericsoftware/asm/Label;
    .end local v13    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .end local v14    # "defaultLabel":Lcom/esotericsoftware/asm/Label;
    .end local v15    # "i":I
    .end local v16    # "accessClassNameInternal":Ljava/lang/String;
    .end local v20    # "accessClass":Ljava/lang/Class;
    :catchall_172
    move-exception v0

    move-object v1, v6

    move-object v6, v7

    move-object v4, v9

    goto/16 :goto_4f0

    :catchall_178
    move-exception v0

    move-object v1, v6

    move-object v6, v7

    move-object v4, v9

    goto/16 :goto_4f0

    .line 157
    .end local v28    # "className":Ljava/lang/String;
    .restart local v0    # "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v11    # "classNameInternal":Ljava/lang/String;
    .restart local v12    # "labels":[Lcom/esotericsoftware/asm/Label;
    .restart local v13    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .restart local v14    # "defaultLabel":Lcom/esotericsoftware/asm/Label;
    .restart local v15    # "i":I
    .restart local v16    # "accessClassNameInternal":Ljava/lang/String;
    .restart local v20    # "accessClass":Ljava/lang/Class;
    :cond_17e
    move-object/from16 v28, v8

    .end local v8    # "className":Ljava/lang/String;
    .restart local v28    # "className":Ljava/lang/String;
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v0

    :try_start_18c
    invoke-virtual/range {v21 .. v26}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 158
    :goto_18f
    const/4 v4, 0x4

    const/16 v8, 0x19

    invoke-virtual {v0, v8, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 160
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 161
    const/16 v8, 0x28

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    aget-object v8, v6, v15

    .line 164
    .local v8, "paramTypes":[Ljava/lang/Class;
    aget-object v21, v7, v15

    .line 165
    .local v21, "returnType":Ljava/lang/Class;
    const/16 v22, 0x0

    move/from16 v4, v22

    .local v4, "paramIndex":I
    :goto_1a6
    move-object/from16 v29, v12

    .end local v12    # "labels":[Lcom/esotericsoftware/asm/Label;
    .local v29, "labels":[Lcom/esotericsoftware/asm/Label;
    array-length v12, v8
    :try_end_1a9
    .catchall {:try_start_18c .. :try_end_1a9} :catchall_3b5

    if-ge v4, v12, :cond_2f5

    .line 166
    const/4 v12, 0x3

    move-object/from16 v30, v7

    const/16 v7, 0x19

    .end local v7    # "returnTypes":[Ljava/lang/Class;
    .local v30, "returnTypes":[Ljava/lang/Class;
    :try_start_1b0
    invoke-virtual {v0, v7, v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 167
    const/16 v12, 0x10

    invoke-virtual {v0, v12, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitIntInsn(II)V

    .line 168
    const/16 v12, 0x32

    invoke-virtual {v0, v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 169
    aget-object v12, v8, v4

    invoke-static {v12}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v12

    .line 170
    .local v12, "paramType":Lcom/esotericsoftware/asm/Type;
    invoke-virtual {v12}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v18
    :try_end_1c7
    .catchall {:try_start_1b0 .. :try_end_1c7} :catchall_2e8

    packed-switch v18, :pswitch_data_4f4

    move-object/from16 v31, v6

    move-object/from16 v22, v8

    move-object/from16 v32, v9

    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v8    # "paramTypes":[Ljava/lang/Class;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .local v22, "paramTypes":[Ljava/lang/Class;
    .local v31, "parameterTypes":[[Ljava/lang/Class;
    .local v32, "accessClassName":Ljava/lang/String;
    goto/16 :goto_2d2

    .line 207
    .end local v22    # "paramTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v8    # "paramTypes":[Ljava/lang/Class;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    :pswitch_1d2
    :try_start_1d2
    invoke-virtual {v12}, Lcom/esotericsoftware/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v22, v8

    const/16 v8, 0xc0

    .end local v8    # "paramTypes":[Ljava/lang/Class;
    .restart local v22    # "paramTypes":[Ljava/lang/Class;
    invoke-virtual {v0, v8, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    move-object/from16 v31, v6

    move-object/from16 v32, v9

    goto/16 :goto_2d2

    .line 204
    .end local v22    # "paramTypes":[Ljava/lang/Class;
    .restart local v8    # "paramTypes":[Ljava/lang/Class;
    :pswitch_1e3
    move-object/from16 v22, v8

    .end local v8    # "paramTypes":[Ljava/lang/Class;
    .restart local v22    # "paramTypes":[Ljava/lang/Class;
    invoke-virtual {v12}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc0

    invoke-virtual {v0, v8, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V
    :try_end_1ee
    .catchall {:try_start_1d2 .. :try_end_1ee} :catchall_1f4

    .line 205
    move-object/from16 v31, v6

    move-object/from16 v32, v9

    goto/16 :goto_2d2

    .line 278
    .end local v0    # "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v4    # "paramIndex":I
    .end local v11    # "classNameInternal":Ljava/lang/String;
    .end local v12    # "paramType":Lcom/esotericsoftware/asm/Type;
    .end local v13    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .end local v14    # "defaultLabel":Lcom/esotericsoftware/asm/Label;
    .end local v15    # "i":I
    .end local v16    # "accessClassNameInternal":Ljava/lang/String;
    .end local v20    # "accessClass":Ljava/lang/Class;
    .end local v21    # "returnType":Ljava/lang/Class;
    .end local v22    # "paramTypes":[Ljava/lang/Class;
    .end local v29    # "labels":[Lcom/esotericsoftware/asm/Label;
    :catchall_1f4
    move-exception v0

    move-object v1, v6

    move-object v4, v9

    move-object/from16 v6, v30

    goto/16 :goto_4f0

    .line 200
    .restart local v0    # "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v4    # "paramIndex":I
    .restart local v8    # "paramTypes":[Ljava/lang/Class;
    .restart local v11    # "classNameInternal":Ljava/lang/String;
    .restart local v12    # "paramType":Lcom/esotericsoftware/asm/Type;
    .restart local v13    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .restart local v14    # "defaultLabel":Lcom/esotericsoftware/asm/Label;
    .restart local v15    # "i":I
    .restart local v16    # "accessClassNameInternal":Ljava/lang/String;
    .restart local v20    # "accessClass":Ljava/lang/Class;
    .restart local v21    # "returnType":Ljava/lang/Class;
    .restart local v29    # "labels":[Lcom/esotericsoftware/asm/Label;
    :pswitch_1fb
    move-object/from16 v22, v8

    .end local v8    # "paramTypes":[Ljava/lang/Class;
    .restart local v22    # "paramTypes":[Ljava/lang/Class;
    :try_start_1fd
    const-string v7, "java/lang/Double"

    const/16 v8, 0xc0

    invoke-virtual {v0, v8, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 201
    const-string v7, "java/lang/Double"

    const-string v8, "doubleValue"
    :try_end_208
    .catchall {:try_start_1fd .. :try_end_208} :catchall_2e8

    move-object/from16 v31, v6

    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    :try_start_20a
    const-string v6, "()D"
    :try_end_20c
    .catchall {:try_start_20a .. :try_end_20c} :catchall_215

    move-object/from16 v32, v9

    const/16 v9, 0xb6

    .end local v9    # "accessClassName":Ljava/lang/String;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    :try_start_210
    invoke-virtual {v0, v9, v7, v8, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    goto/16 :goto_2d2

    .line 278
    .end local v0    # "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v4    # "paramIndex":I
    .end local v11    # "classNameInternal":Ljava/lang/String;
    .end local v12    # "paramType":Lcom/esotericsoftware/asm/Type;
    .end local v13    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .end local v14    # "defaultLabel":Lcom/esotericsoftware/asm/Label;
    .end local v15    # "i":I
    .end local v16    # "accessClassNameInternal":Ljava/lang/String;
    .end local v20    # "accessClass":Ljava/lang/Class;
    .end local v21    # "returnType":Ljava/lang/Class;
    .end local v22    # "paramTypes":[Ljava/lang/Class;
    .end local v29    # "labels":[Lcom/esotericsoftware/asm/Label;
    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    :catchall_215
    move-exception v0

    move-object/from16 v32, v9

    move-object/from16 v6, v30

    move-object/from16 v1, v31

    move-object/from16 v4, v32

    .end local v9    # "accessClassName":Ljava/lang/String;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    goto/16 :goto_4f0

    .line 196
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v0    # "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v4    # "paramIndex":I
    .restart local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v8    # "paramTypes":[Ljava/lang/Class;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    .restart local v11    # "classNameInternal":Ljava/lang/String;
    .restart local v12    # "paramType":Lcom/esotericsoftware/asm/Type;
    .restart local v13    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .restart local v14    # "defaultLabel":Lcom/esotericsoftware/asm/Label;
    .restart local v15    # "i":I
    .restart local v16    # "accessClassNameInternal":Ljava/lang/String;
    .restart local v20    # "accessClass":Ljava/lang/Class;
    .restart local v21    # "returnType":Ljava/lang/Class;
    .restart local v29    # "labels":[Lcom/esotericsoftware/asm/Label;
    :pswitch_220
    move-object/from16 v31, v6

    move-object/from16 v22, v8

    move-object/from16 v32, v9

    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v8    # "paramTypes":[Ljava/lang/Class;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .restart local v22    # "paramTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    const-string v6, "java/lang/Long"

    const/16 v7, 0xc0

    invoke-virtual {v0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 197
    const-string v6, "java/lang/Long"

    const-string v7, "longValue"

    const-string v8, "()J"

    const/16 v9, 0xb6

    invoke-virtual {v0, v9, v6, v7, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    goto/16 :goto_2d2

    .line 192
    .end local v22    # "paramTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v8    # "paramTypes":[Ljava/lang/Class;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    :pswitch_23a
    move-object/from16 v31, v6

    move-object/from16 v22, v8

    move-object/from16 v32, v9

    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v8    # "paramTypes":[Ljava/lang/Class;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .restart local v22    # "paramTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    const-string v6, "java/lang/Float"

    const/16 v7, 0xc0

    invoke-virtual {v0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 193
    const-string v6, "java/lang/Float"

    const-string v7, "floatValue"

    const-string v8, "()F"

    const/16 v9, 0xb6

    invoke-virtual {v0, v9, v6, v7, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    goto/16 :goto_2d2

    .line 188
    .end local v22    # "paramTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v8    # "paramTypes":[Ljava/lang/Class;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    :pswitch_254
    move-object/from16 v31, v6

    move-object/from16 v22, v8

    move-object/from16 v32, v9

    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v8    # "paramTypes":[Ljava/lang/Class;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .restart local v22    # "paramTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    const-string v6, "java/lang/Integer"

    const/16 v7, 0xc0

    invoke-virtual {v0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 189
    const-string v6, "java/lang/Integer"

    const-string v7, "intValue"

    const-string v8, "()I"

    const/16 v9, 0xb6

    invoke-virtual {v0, v9, v6, v7, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    goto :goto_2d2

    .line 184
    .end local v22    # "paramTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v8    # "paramTypes":[Ljava/lang/Class;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    :pswitch_26d
    move-object/from16 v31, v6

    move-object/from16 v22, v8

    move-object/from16 v32, v9

    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v8    # "paramTypes":[Ljava/lang/Class;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .restart local v22    # "paramTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    const-string v6, "java/lang/Short"

    const/16 v7, 0xc0

    invoke-virtual {v0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 185
    const-string v6, "java/lang/Short"

    const-string/jumbo v7, "shortValue"

    const-string v8, "()S"

    const/16 v9, 0xb6

    invoke-virtual {v0, v9, v6, v7, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    goto :goto_2d2

    .line 176
    .end local v22    # "paramTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v8    # "paramTypes":[Ljava/lang/Class;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    :pswitch_287
    move-object/from16 v31, v6

    move-object/from16 v22, v8

    move-object/from16 v32, v9

    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v8    # "paramTypes":[Ljava/lang/Class;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .restart local v22    # "paramTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    const-string v6, "java/lang/Byte"

    const/16 v7, 0xc0

    invoke-virtual {v0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 177
    const-string v6, "java/lang/Byte"

    const-string v7, "byteValue"

    const-string v8, "()B"

    const/16 v9, 0xb6

    invoke-virtual {v0, v9, v6, v7, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    goto :goto_2d2

    .line 180
    .end local v22    # "paramTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v8    # "paramTypes":[Ljava/lang/Class;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    :pswitch_2a0
    move-object/from16 v31, v6

    move-object/from16 v22, v8

    move-object/from16 v32, v9

    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v8    # "paramTypes":[Ljava/lang/Class;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .restart local v22    # "paramTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    const-string v6, "java/lang/Character"

    const/16 v7, 0xc0

    invoke-virtual {v0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 181
    const-string v6, "java/lang/Character"

    const-string v7, "charValue"

    const-string v8, "()C"

    const/16 v9, 0xb6

    invoke-virtual {v0, v9, v6, v7, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    goto :goto_2d2

    .line 172
    .end local v22    # "paramTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v8    # "paramTypes":[Ljava/lang/Class;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    :pswitch_2b9
    move-object/from16 v31, v6

    move-object/from16 v22, v8

    move-object/from16 v32, v9

    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v8    # "paramTypes":[Ljava/lang/Class;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .restart local v22    # "paramTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    const-string v6, "java/lang/Boolean"

    const/16 v7, 0xc0

    invoke-virtual {v0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 173
    const-string v6, "java/lang/Boolean"

    const-string v8, "booleanValue"

    const-string v9, "()Z"

    const/16 v7, 0xb6

    invoke-virtual {v0, v7, v6, v8, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    nop

    .line 210
    :goto_2d2
    invoke-virtual {v12}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    nop

    .end local v12    # "paramType":Lcom/esotericsoftware/asm/Type;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v8, v22

    move-object/from16 v12, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v9, v32

    goto/16 :goto_1a6

    .line 278
    .end local v0    # "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v4    # "paramIndex":I
    .end local v11    # "classNameInternal":Ljava/lang/String;
    .end local v13    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .end local v14    # "defaultLabel":Lcom/esotericsoftware/asm/Label;
    .end local v15    # "i":I
    .end local v16    # "accessClassNameInternal":Ljava/lang/String;
    .end local v20    # "accessClass":Ljava/lang/Class;
    .end local v21    # "returnType":Ljava/lang/Class;
    .end local v22    # "paramTypes":[Ljava/lang/Class;
    .end local v29    # "labels":[Lcom/esotericsoftware/asm/Label;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    :catchall_2e8
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v9

    move-object/from16 v6, v30

    move-object/from16 v1, v31

    move-object/from16 v4, v32

    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    goto/16 :goto_4f0

    .line 165
    .end local v30    # "returnTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v0    # "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v4    # "paramIndex":I
    .restart local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v7    # "returnTypes":[Ljava/lang/Class;
    .restart local v8    # "paramTypes":[Ljava/lang/Class;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    .restart local v11    # "classNameInternal":Ljava/lang/String;
    .restart local v13    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .restart local v14    # "defaultLabel":Lcom/esotericsoftware/asm/Label;
    .restart local v15    # "i":I
    .restart local v16    # "accessClassNameInternal":Ljava/lang/String;
    .restart local v20    # "accessClass":Ljava/lang/Class;
    .restart local v21    # "returnType":Ljava/lang/Class;
    .restart local v29    # "labels":[Lcom/esotericsoftware/asm/Label;
    :cond_2f5
    move-object/from16 v31, v6

    move-object/from16 v30, v7

    move-object/from16 v22, v8

    move-object/from16 v32, v9

    .line 213
    .end local v4    # "paramIndex":I
    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v7    # "returnTypes":[Ljava/lang/Class;
    .end local v8    # "paramTypes":[Ljava/lang/Class;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .restart local v22    # "paramTypes":[Ljava/lang/Class;
    .restart local v30    # "returnTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    invoke-static/range {v21 .. v21}, Lcom/esotericsoftware/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    if-eqz v2, :cond_30e

    .line 217
    const/16 v4, 0xb9

    .local v4, "invoke":I
    goto :goto_323

    .line 218
    .end local v4    # "invoke":I
    :cond_30e
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_321

    .line 219
    const/16 v4, 0xb8

    .restart local v4    # "invoke":I
    goto :goto_323

    .line 221
    .end local v4    # "invoke":I
    :cond_321
    const/16 v4, 0xb6

    .line 222
    .restart local v4    # "invoke":I
    :goto_323
    aget-object v6, v5, v15

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v11, v6, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static/range {v21 .. v21}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v6

    invoke-virtual {v6}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v6

    const/16 v7, 0xb8

    packed-switch v6, :pswitch_data_50c

    const/4 v6, 0x1

    goto :goto_3a0

    .line 250
    :pswitch_33b
    const-string v6, "java/lang/Double"

    const-string/jumbo v8, "valueOf"

    const-string v9, "(D)Ljava/lang/Double;"

    invoke-virtual {v0, v7, v6, v8, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_3a0

    .line 247
    :pswitch_347
    const-string v6, "java/lang/Long"

    const-string/jumbo v8, "valueOf"

    const-string v9, "(J)Ljava/lang/Long;"

    invoke-virtual {v0, v7, v6, v8, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v6, 0x1

    goto :goto_3a0

    .line 244
    :pswitch_353
    const-string v6, "java/lang/Float"

    const-string/jumbo v8, "valueOf"

    const-string v9, "(F)Ljava/lang/Float;"

    invoke-virtual {v0, v7, v6, v8, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v6, 0x1

    goto :goto_3a0

    .line 241
    :pswitch_35f
    const-string v6, "java/lang/Integer"

    const-string/jumbo v8, "valueOf"

    const-string v9, "(I)Ljava/lang/Integer;"

    invoke-virtual {v0, v7, v6, v8, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v6, 0x1

    goto :goto_3a0

    .line 238
    :pswitch_36b
    const-string v6, "java/lang/Short"

    const-string/jumbo v8, "valueOf"

    const-string v9, "(S)Ljava/lang/Short;"

    invoke-virtual {v0, v7, v6, v8, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v6, 0x1

    goto :goto_3a0

    .line 232
    :pswitch_377
    const-string v6, "java/lang/Byte"

    const-string/jumbo v8, "valueOf"

    const-string v9, "(B)Ljava/lang/Byte;"

    invoke-virtual {v0, v7, v6, v8, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v6, 0x1

    goto :goto_3a0

    .line 235
    :pswitch_383
    const-string v6, "java/lang/Character"

    const-string/jumbo v8, "valueOf"

    const-string v9, "(C)Ljava/lang/Character;"

    invoke-virtual {v0, v7, v6, v8, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v6, 0x1

    goto :goto_3a0

    .line 229
    :pswitch_38f
    const-string v6, "java/lang/Boolean"

    const-string/jumbo v8, "valueOf"

    const-string v9, "(Z)Ljava/lang/Boolean;"

    invoke-virtual {v0, v7, v6, v8, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v6, 0x1

    goto :goto_3a0

    .line 226
    :pswitch_39b
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 227
    nop

    .line 254
    :goto_3a0
    const/16 v7, 0xb0

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 152
    .end local v4    # "invoke":I
    .end local v21    # "returnType":Ljava/lang/Class;
    .end local v22    # "paramTypes":[Ljava/lang/Class;
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v27

    move-object/from16 v8, v28

    move-object/from16 v12, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v9, v32

    goto/16 :goto_14f

    .line 278
    .end local v0    # "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v11    # "classNameInternal":Ljava/lang/String;
    .end local v13    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .end local v14    # "defaultLabel":Lcom/esotericsoftware/asm/Label;
    .end local v15    # "i":I
    .end local v16    # "accessClassNameInternal":Ljava/lang/String;
    .end local v20    # "accessClass":Ljava/lang/Class;
    .end local v29    # "labels":[Lcom/esotericsoftware/asm/Label;
    .end local v30    # "returnTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v7    # "returnTypes":[Ljava/lang/Class;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    :catchall_3b5
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v30, v7

    move-object/from16 v32, v9

    move-object/from16 v6, v30

    move-object/from16 v1, v31

    move-object/from16 v4, v32

    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v7    # "returnTypes":[Ljava/lang/Class;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .restart local v30    # "returnTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    goto/16 :goto_4f0

    .end local v28    # "className":Ljava/lang/String;
    .end local v30    # "returnTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v7    # "returnTypes":[Ljava/lang/Class;
    .local v8, "className":Ljava/lang/String;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    :catchall_3c4
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v30, v7

    move-object/from16 v28, v8

    move-object/from16 v32, v9

    move-object/from16 v6, v30

    move-object/from16 v1, v31

    move-object/from16 v4, v32

    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v7    # "returnTypes":[Ljava/lang/Class;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .restart local v28    # "className":Ljava/lang/String;
    .restart local v30    # "returnTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    goto/16 :goto_4f0

    .line 152
    .end local v27    # "n":I
    .end local v28    # "className":Ljava/lang/String;
    .end local v30    # "returnTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v0    # "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    .local v4, "n":I
    .restart local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v7    # "returnTypes":[Ljava/lang/Class;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    .restart local v11    # "classNameInternal":Ljava/lang/String;
    .local v12, "labels":[Lcom/esotericsoftware/asm/Label;
    .restart local v13    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .restart local v14    # "defaultLabel":Lcom/esotericsoftware/asm/Label;
    .restart local v15    # "i":I
    .restart local v16    # "accessClassNameInternal":Ljava/lang/String;
    .restart local v20    # "accessClass":Ljava/lang/Class;
    :cond_3d5
    move/from16 v27, v4

    move-object/from16 v31, v6

    move-object/from16 v30, v7

    move-object/from16 v28, v8

    move-object/from16 v32, v9

    move-object/from16 v29, v12

    .line 257
    .end local v4    # "n":I
    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v7    # "returnTypes":[Ljava/lang/Class;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .end local v12    # "labels":[Lcom/esotericsoftware/asm/Label;
    .end local v15    # "i":I
    .restart local v27    # "n":I
    .restart local v28    # "className":Ljava/lang/String;
    .restart local v29    # "labels":[Lcom/esotericsoftware/asm/Label;
    .restart local v30    # "returnTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    invoke-virtual {v0, v14}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    .line 258
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v26}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    :try_end_3f3
    .catchall {:try_start_210 .. :try_end_3f3} :catchall_3f4

    goto :goto_41a

    .line 278
    .end local v0    # "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v11    # "classNameInternal":Ljava/lang/String;
    .end local v13    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .end local v14    # "defaultLabel":Lcom/esotericsoftware/asm/Label;
    .end local v16    # "accessClassNameInternal":Ljava/lang/String;
    .end local v20    # "accessClass":Ljava/lang/Class;
    .end local v29    # "labels":[Lcom/esotericsoftware/asm/Label;
    :catchall_3f4
    move-exception v0

    move-object/from16 v6, v30

    move-object/from16 v1, v31

    move-object/from16 v4, v32

    goto/16 :goto_4f0

    .end local v27    # "n":I
    .end local v28    # "className":Ljava/lang/String;
    .end local v30    # "returnTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v4    # "n":I
    .restart local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v7    # "returnTypes":[Ljava/lang/Class;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    :catchall_3fd
    move-exception v0

    move/from16 v27, v4

    move-object/from16 v31, v6

    move-object/from16 v30, v7

    move-object/from16 v28, v8

    move-object/from16 v32, v9

    move-object/from16 v6, v30

    move-object/from16 v1, v31

    move-object/from16 v4, v32

    .end local v4    # "n":I
    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v7    # "returnTypes":[Ljava/lang/Class;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .restart local v27    # "n":I
    .restart local v28    # "className":Ljava/lang/String;
    .restart local v30    # "returnTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    goto/16 :goto_4f0

    .line 139
    .end local v27    # "n":I
    .end local v28    # "className":Ljava/lang/String;
    .end local v30    # "returnTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v0    # "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    .restart local v4    # "n":I
    .restart local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v7    # "returnTypes":[Ljava/lang/Class;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    .restart local v11    # "classNameInternal":Ljava/lang/String;
    .restart local v13    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .restart local v16    # "accessClassNameInternal":Ljava/lang/String;
    .restart local v20    # "accessClass":Ljava/lang/Class;
    :cond_410
    move/from16 v27, v4

    move-object/from16 v31, v6

    move-object/from16 v30, v7

    move-object/from16 v28, v8

    move-object/from16 v32, v9

    .line 260
    .end local v4    # "n":I
    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v7    # "returnTypes":[Ljava/lang/Class;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .restart local v27    # "n":I
    .restart local v28    # "className":Ljava/lang/String;
    .restart local v30    # "returnTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    :goto_41a
    :try_start_41a
    const-string v1, "java/lang/IllegalArgumentException"

    const/16 v4, 0xbb

    invoke-virtual {v0, v4, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 261
    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 262
    const-string v6, "java/lang/StringBuilder"

    invoke-virtual {v0, v4, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 263
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 264
    const-string v1, "Method not found: "

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 265
    const-string v1, "java/lang/StringBuilder"

    const-string v4, "<init>"

    const-string v6, "(Ljava/lang/String;)V"

    const/16 v7, 0xb7

    invoke-virtual {v0, v7, v1, v4, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v1, 0x2

    const/16 v4, 0x15

    invoke-virtual {v0, v4, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 267
    const-string v1, "java/lang/StringBuilder"

    const-string v4, "append"

    const-string v6, "(I)Ljava/lang/StringBuilder;"

    const/16 v7, 0xb6

    invoke-virtual {v0, v7, v1, v4, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v1, "java/lang/StringBuilder"

    const-string/jumbo v4, "toString"

    const-string v6, "()Ljava/lang/String;"

    const/16 v7, 0xb6

    invoke-virtual {v0, v7, v1, v4, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "java/lang/IllegalArgumentException"

    const-string v4, "<init>"

    const-string v6, "(Ljava/lang/String;)V"

    const/16 v7, 0xb7

    invoke-virtual {v0, v7, v1, v4, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 271
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 272
    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    .line 274
    invoke-virtual {v13}, Lcom/esotericsoftware/asm/ClassWriter;->visitEnd()V

    .line 275
    invoke-virtual {v13}, Lcom/esotericsoftware/asm/ClassWriter;->toByteArray()[B

    move-result-object v1
    :try_end_479
    .catchall {:try_start_41a .. :try_end_479} :catchall_489

    .line 276
    .local v1, "data":[B
    move-object/from16 v4, v32

    .end local v32    # "accessClassName":Ljava/lang/String;
    .local v4, "accessClassName":Ljava/lang/String;
    :try_start_47b
    invoke-virtual {v10, v4, v1}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->defineAccessClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v6
    :try_end_47f
    .catchall {:try_start_47b .. :try_end_47f} :catchall_482

    move-object/from16 v20, v6

    .end local v20    # "accessClass":Ljava/lang/Class;
    .local v6, "accessClass":Ljava/lang/Class;
    goto :goto_4ac

    .line 278
    .end local v0    # "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    .end local v1    # "data":[B
    .end local v6    # "accessClass":Ljava/lang/Class;
    .end local v11    # "classNameInternal":Ljava/lang/String;
    .end local v13    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .end local v16    # "accessClassNameInternal":Ljava/lang/String;
    :catchall_482
    move-exception v0

    move-object/from16 v6, v30

    move-object/from16 v1, v31

    goto/16 :goto_4f0

    .end local v4    # "accessClassName":Ljava/lang/String;
    .restart local v32    # "accessClassName":Ljava/lang/String;
    :catchall_489
    move-exception v0

    move-object/from16 v4, v32

    move-object/from16 v6, v30

    move-object/from16 v1, v31

    .end local v32    # "accessClassName":Ljava/lang/String;
    .restart local v4    # "accessClassName":Ljava/lang/String;
    goto/16 :goto_4f0

    .end local v27    # "n":I
    .end local v28    # "className":Ljava/lang/String;
    .end local v30    # "returnTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .local v4, "n":I
    .local v6, "parameterTypes":[[Ljava/lang/Class;
    .restart local v7    # "returnTypes":[Ljava/lang/Class;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    :catchall_492
    move-exception v0

    move/from16 v27, v4

    move-object/from16 v31, v6

    move-object/from16 v30, v7

    move-object/from16 v28, v8

    move-object v4, v9

    move-object/from16 v6, v30

    move-object/from16 v1, v31

    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v7    # "returnTypes":[Ljava/lang/Class;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .local v4, "accessClassName":Ljava/lang/String;
    .restart local v27    # "n":I
    .restart local v28    # "className":Ljava/lang/String;
    .restart local v30    # "returnTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    goto :goto_4f0

    .line 117
    .end local v27    # "n":I
    .end local v28    # "className":Ljava/lang/String;
    .end local v30    # "returnTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .local v0, "accessClass":Ljava/lang/Class;
    .local v4, "n":I
    .restart local v6    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v7    # "returnTypes":[Ljava/lang/Class;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    :cond_4a1
    move-object/from16 v20, v0

    move/from16 v27, v4

    move-object/from16 v31, v6

    move-object/from16 v30, v7

    move-object/from16 v28, v8

    move-object v4, v9

    .line 278
    .end local v0    # "accessClass":Ljava/lang/Class;
    .end local v6    # "parameterTypes":[[Ljava/lang/Class;
    .end local v7    # "returnTypes":[Ljava/lang/Class;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .local v4, "accessClassName":Ljava/lang/String;
    .restart local v20    # "accessClass":Ljava/lang/Class;
    .restart local v27    # "n":I
    .restart local v28    # "className":Ljava/lang/String;
    .restart local v30    # "returnTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    :goto_4ac
    :try_start_4ac
    monitor-exit v10
    :try_end_4ad
    .catchall {:try_start_4ac .. :try_end_4ad} :catchall_4e2

    .line 280
    :try_start_4ad
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/reflectasm/MethodAccess;

    .line 281
    .local v0, "access":Lcom/esotericsoftware/reflectasm/MethodAccess;
    iput-object v5, v0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;
    :try_end_4b5
    .catchall {:try_start_4ad .. :try_end_4b5} :catchall_4c4

    .line 282
    move-object/from16 v1, v31

    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .local v1, "parameterTypes":[[Ljava/lang/Class;
    :try_start_4b7
    iput-object v1, v0, Lcom/esotericsoftware/reflectasm/MethodAccess;->parameterTypes:[[Ljava/lang/Class;
    :try_end_4b9
    .catchall {:try_start_4b7 .. :try_end_4b9} :catchall_4c0

    .line 283
    move-object/from16 v6, v30

    .end local v30    # "returnTypes":[Ljava/lang/Class;
    .local v6, "returnTypes":[Ljava/lang/Class;
    :try_start_4bb
    iput-object v6, v0, Lcom/esotericsoftware/reflectasm/MethodAccess;->returnTypes:[Ljava/lang/Class;
    :try_end_4bd
    .catchall {:try_start_4bb .. :try_end_4bd} :catchall_4be

    .line 284
    return-object v0

    .line 285
    .end local v0    # "access":Lcom/esotericsoftware/reflectasm/MethodAccess;
    :catchall_4be
    move-exception v0

    goto :goto_4c9

    .end local v6    # "returnTypes":[Ljava/lang/Class;
    .restart local v30    # "returnTypes":[Ljava/lang/Class;
    :catchall_4c0
    move-exception v0

    move-object/from16 v6, v30

    .end local v30    # "returnTypes":[Ljava/lang/Class;
    .restart local v6    # "returnTypes":[Ljava/lang/Class;
    goto :goto_4c9

    .end local v1    # "parameterTypes":[[Ljava/lang/Class;
    .end local v6    # "returnTypes":[Ljava/lang/Class;
    .restart local v30    # "returnTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    :catchall_4c4
    move-exception v0

    move-object/from16 v6, v30

    move-object/from16 v1, v31

    .line 286
    .end local v30    # "returnTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v1    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v6    # "returnTypes":[Ljava/lang/Class;
    :goto_4c9
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error constructing method access class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 278
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "parameterTypes":[[Ljava/lang/Class;
    .end local v6    # "returnTypes":[Ljava/lang/Class;
    .end local v20    # "accessClass":Ljava/lang/Class;
    .restart local v30    # "returnTypes":[Ljava/lang/Class;
    .restart local v31    # "parameterTypes":[[Ljava/lang/Class;
    :catchall_4e2
    move-exception v0

    move-object/from16 v6, v30

    move-object/from16 v1, v31

    .end local v30    # "returnTypes":[Ljava/lang/Class;
    .end local v31    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v1    # "parameterTypes":[[Ljava/lang/Class;
    .restart local v6    # "returnTypes":[Ljava/lang/Class;
    goto :goto_4f0

    .end local v1    # "parameterTypes":[[Ljava/lang/Class;
    .end local v27    # "n":I
    .end local v28    # "className":Ljava/lang/String;
    .local v4, "n":I
    .local v6, "parameterTypes":[[Ljava/lang/Class;
    .restart local v7    # "returnTypes":[Ljava/lang/Class;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "accessClassName":Ljava/lang/String;
    :catchall_4e8
    move-exception v0

    move/from16 v27, v4

    move-object v1, v6

    move-object v6, v7

    move-object/from16 v28, v8

    move-object v4, v9

    .end local v7    # "returnTypes":[Ljava/lang/Class;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "accessClassName":Ljava/lang/String;
    .restart local v1    # "parameterTypes":[[Ljava/lang/Class;
    .local v4, "accessClassName":Ljava/lang/String;
    .local v6, "returnTypes":[Ljava/lang/Class;
    .restart local v27    # "n":I
    .restart local v28    # "className":Ljava/lang/String;
    :goto_4f0
    :try_start_4f0
    monitor-exit v10
    :try_end_4f1
    .catchall {:try_start_4f0 .. :try_end_4f1} :catchall_4f2

    throw v0

    :catchall_4f2
    move-exception v0

    goto :goto_4f0

    :pswitch_data_4f4
    .packed-switch 0x1
        :pswitch_2b9
        :pswitch_2a0
        :pswitch_287
        :pswitch_26d
        :pswitch_254
        :pswitch_23a
        :pswitch_220
        :pswitch_1fb
        :pswitch_1e3
        :pswitch_1d2
    .end packed-switch

    :pswitch_data_50c
    .packed-switch 0x0
        :pswitch_39b
        :pswitch_38f
        :pswitch_383
        :pswitch_377
        :pswitch_36b
        :pswitch_35f
        :pswitch_353
        :pswitch_347
        :pswitch_33b
    .end packed-switch
.end method

.method private static recursiveAddInterfaceMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .registers 6
    .param p0, "interfaceType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-static {p0, p1}, Lcom/esotericsoftware/reflectasm/MethodAccess;->addDeclaredMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 303
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 304
    .local v3, "nextInterface":Ljava/lang/Class;
    invoke-static {v3, p1}, Lcom/esotericsoftware/reflectasm/MethodAccess;->recursiveAddInterfaceMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 303
    .end local v3    # "nextInterface":Ljava/lang/Class;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 305
    :cond_13
    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .registers 5
    .param p1, "methodName"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "n":I
    :goto_4
    if-ge v0, v1, :cond_14

    .line 50
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v0

    .line 49
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 51
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find non-private method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndex(Ljava/lang/String;I)I
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "paramsCount"    # I

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "n":I
    :goto_4
    if-ge v0, v1, :cond_1b

    .line 64
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->parameterTypes:[[Ljava/lang/Class;

    aget-object v2, v2, v0

    array-length v2, v2

    if-ne v2, p2, :cond_18

    return v0

    .line 63
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 65
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find non-private method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " params."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getIndex(Ljava/lang/String;[Ljava/lang/Class;)I
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "paramTypes"    # [Ljava/lang/Class;

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "n":I
    :goto_4
    if-ge v0, v1, :cond_1e

    .line 57
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->parameterTypes:[[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return v0

    .line 56
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 58
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find non-private method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMethodNames()[Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[[Ljava/lang/Class;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->parameterTypes:[[Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnTypes()[Ljava/lang/Class;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->returnTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public varargs abstract invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "paramTypes"    # [Ljava/lang/Class;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 39
    invoke-virtual {p0, p2, p3}, Lcom/esotericsoftware/reflectasm/MethodAccess;->getIndex(Ljava/lang/String;[Ljava/lang/Class;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/esotericsoftware/reflectasm/MethodAccess;->invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 44
    if-nez p3, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    array-length v0, p3

    :goto_5
    invoke-virtual {p0, p2, v0}, Lcom/esotericsoftware/reflectasm/MethodAccess;->getIndex(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/esotericsoftware/reflectasm/MethodAccess;->invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
