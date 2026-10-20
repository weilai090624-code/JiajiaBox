.class public abstract Lcom/esotericsoftware/reflectasm/ConstructorAccess;
.super Ljava/lang/Object;
.source "ConstructorAccess.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field isNonStaticMemberClass:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    .local p0, "this":Lcom/esotericsoftware/reflectasm/ConstructorAccess;, "Lcom/esotericsoftware/reflectasm/ConstructorAccess<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/ConstructorAccess;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/esotericsoftware/reflectasm/ConstructorAccess<",
            "TT;>;"
        }
    .end annotation

    .line 45
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    .line 46
    .local v2, "enclosingType":Ljava/lang/Class;
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 48
    .local v4, "isNonStaticMemberClass":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "className":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ConstructorAccess"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, "accessClassName":Ljava/lang/String;
    const-string v7, "java."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reflectasm."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 53
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    move-result-object v7

    .line 54
    .local v7, "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    monitor-enter v7

    .line 55
    :try_start_0
    invoke-virtual {v7, v6}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->loadAccessClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 56
    .local v8, "accessClass":Ljava/lang/Class;
    if-nez v8, :cond_6

    .line 57
    const/16 v9, 0x2f

    const/16 v10, 0x2e

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    .line 58
    .local v14, "accessClassNameInternal":Ljava/lang/String;
    invoke-virtual {v5, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v15, v11

    .line 60
    .local v15, "classNameInternal":Ljava/lang/String;
    const/4 v11, 0x0

    .line 61
    .local v11, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v12, 0x0

    .line 62
    .local v12, "modifiers":I
    if-nez v4, :cond_3

    .line 63
    const/4 v9, 0x0

    .line 65
    .local v9, "enclosingClassNameInternal":Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_1
    move-object v10, v0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    move-object v11, v0

    .line 66
    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .end local v12    # "modifiers":I
    .local v0, "modifiers":I
    nop

    .line 70
    :try_start_2
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v10

    if-nez v10, :cond_2

    move-object v10, v11

    goto :goto_1

    .line 71
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Class cannot be created (the no-arg constructor is private): "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "enclosingType":Ljava/lang/Class;
    .end local v4    # "isNonStaticMemberClass":Z
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "accessClassName":Ljava/lang/String;
    .end local v7    # "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    .end local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v3

    .line 67
    .end local v0    # "modifiers":I
    .restart local v2    # "enclosingType":Ljava/lang/Class;
    .restart local v4    # "isNonStaticMemberClass":Z
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v6    # "accessClassName":Ljava/lang/String;
    .restart local v7    # "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    .restart local v12    # "modifiers":I
    .restart local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Class cannot be created (missing no-arg constructor): "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "enclosingType":Ljava/lang/Class;
    .end local v4    # "isNonStaticMemberClass":Z
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "accessClassName":Ljava/lang/String;
    .end local v7    # "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    .end local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v3

    .line 74
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v9    # "enclosingClassNameInternal":Ljava/lang/String;
    .restart local v2    # "enclosingType":Ljava/lang/Class;
    .restart local v4    # "isNonStaticMemberClass":Z
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v6    # "accessClassName":Ljava/lang/String;
    .restart local v7    # "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    .restart local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    .restart local v9    # "enclosingClassNameInternal":Ljava/lang/String;
    :try_start_3
    new-array v0, v0, [Ljava/lang/Class;

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    move-object v11, v0

    .line 77
    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    .end local v12    # "modifiers":I
    .local v0, "modifiers":I
    nop

    .line 82
    :try_start_4
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v10

    if-nez v10, :cond_5

    move-object v10, v11

    .line 87
    .end local v11    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local v10, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :goto_1
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "com/esotericsoftware/reflectasm/PublicConstructorAccess"

    goto :goto_2

    :cond_4
    const-string v11, "com/esotericsoftware/reflectasm/ConstructorAccess"

    :goto_2
    move-object v13, v11

    .line 91
    .local v13, "superclassNameInternal":Ljava/lang/String;
    new-instance v11, Lcom/esotericsoftware/asm/ClassWriter;

    invoke-direct {v11, v3}, Lcom/esotericsoftware/asm/ClassWriter;-><init>(I)V

    move-object v3, v11

    .line 92
    .local v3, "cw":Lcom/esotericsoftware/asm/ClassWriter;
    const/16 v16, 0x0

    const/16 v17, 0x0

    const v12, 0x3002d

    const/16 v18, 0x21

    move-object/from16 v19, v13

    .end local v13    # "superclassNameInternal":Ljava/lang/String;
    .local v19, "superclassNameInternal":Ljava/lang/String;
    move/from16 v13, v18

    move-object/from16 v20, v15

    .end local v15    # "classNameInternal":Ljava/lang/String;
    .local v20, "classNameInternal":Ljava/lang/String;
    move-object/from16 v15, v16

    move-object/from16 v16, v19

    invoke-virtual/range {v11 .. v17}, Lcom/esotericsoftware/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    move-object/from16 v11, v19

    .end local v19    # "superclassNameInternal":Ljava/lang/String;
    .local v11, "superclassNameInternal":Ljava/lang/String;
    invoke-static {v3, v11}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->insertConstructor(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)V

    .line 95
    move-object/from16 v13, v20

    .end local v20    # "classNameInternal":Ljava/lang/String;
    .local v13, "classNameInternal":Ljava/lang/String;
    invoke-static {v3, v13}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->insertNewInstance(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)V

    .line 96
    invoke-static {v3, v13, v9}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->insertNewInstanceInner(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3}, Lcom/esotericsoftware/asm/ClassWriter;->visitEnd()V

    .line 99
    invoke-virtual {v3}, Lcom/esotericsoftware/asm/ClassWriter;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v7, v6, v12}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->defineAccessClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v12

    move-object v8, v12

    goto :goto_3

    .line 83
    .end local v3    # "cw":Lcom/esotericsoftware/asm/ClassWriter;
    .end local v10    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v13    # "classNameInternal":Ljava/lang/String;
    .local v11, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .restart local v15    # "classNameInternal":Ljava/lang/String;
    :cond_5
    move-object v13, v15

    .end local v15    # "classNameInternal":Ljava/lang/String;
    .restart local v13    # "classNameInternal":Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Non-static member class cannot be created (the enclosing class constructor is private): "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 84
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "enclosingType":Ljava/lang/Class;
    .end local v4    # "isNonStaticMemberClass":Z
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "accessClassName":Ljava/lang/String;
    .end local v7    # "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    .end local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v3

    .line 78
    .end local v0    # "modifiers":I
    .end local v13    # "classNameInternal":Ljava/lang/String;
    .restart local v2    # "enclosingType":Ljava/lang/Class;
    .restart local v4    # "isNonStaticMemberClass":Z
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v6    # "accessClassName":Ljava/lang/String;
    .restart local v7    # "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    .restart local v12    # "modifiers":I
    .restart local v15    # "classNameInternal":Ljava/lang/String;
    .restart local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_1
    move-exception v0

    move-object v13, v15

    .line 79
    .end local v15    # "classNameInternal":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v13    # "classNameInternal":Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Non-static member class cannot be created (missing enclosing class constructor): "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 80
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "enclosingType":Ljava/lang/Class;
    .end local v4    # "isNonStaticMemberClass":Z
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "accessClassName":Ljava/lang/String;
    .end local v7    # "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    .end local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v3

    .line 101
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v9    # "enclosingClassNameInternal":Ljava/lang/String;
    .end local v11    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v12    # "modifiers":I
    .end local v13    # "classNameInternal":Ljava/lang/String;
    .end local v14    # "accessClassNameInternal":Ljava/lang/String;
    .restart local v2    # "enclosingType":Ljava/lang/Class;
    .restart local v4    # "isNonStaticMemberClass":Z
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v6    # "accessClassName":Ljava/lang/String;
    .restart local v7    # "loader":Lcom/esotericsoftware/reflectasm/AccessClassLoader;
    .restart local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_6
    :goto_3
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 107
    .local v0, "access":Lcom/esotericsoftware/reflectasm/ConstructorAccess;, "Lcom/esotericsoftware/reflectasm/ConstructorAccess<TT;>;"
    nop

    .line 108
    instance-of v3, v0, Lcom/esotericsoftware/reflectasm/PublicConstructorAccess;

    if-nez v3, :cond_8

    invoke-static {v1, v8}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->areInSameRuntimeClassLoader(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 111
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v4, :cond_7

    const-string v10, "Class cannot be created (the no-arg constructor is protected or package-protected, and its ConstructorAccess could not be defined in the same class loader): "

    goto :goto_4

    :cond_7
    const-string v10, "Non-static member class cannot be created (the enclosing class constructor is protected or package-protected, and its ConstructorAccess could not be defined in the same class loader): "

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 114
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    :cond_8
    iput-boolean v4, v0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->isNonStaticMemberClass:Z

    .line 117
    return-object v0

    .line 105
    .end local v0    # "access":Lcom/esotericsoftware/reflectasm/ConstructorAccess;, "Lcom/esotericsoftware/reflectasm/ConstructorAccess<TT;>;"
    :catchall_0
    move-exception v0

    .line 106
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception constructing constructor access class: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 101
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v8    # "accessClass":Ljava/lang/Class;
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method private static insertConstructor(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)V
    .locals 6
    .param p0, "cw"    # Lcom/esotericsoftware/asm/ClassWriter;
    .param p1, "superclassNameInternal"    # Ljava/lang/String;

    .line 121
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-string v2, "<init>"

    const-string v3, "()V"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v0

    .line 122
    .local v0, "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    .line 123
    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 124
    const-string v1, "<init>"

    const-string v2, "()V"

    const/16 v3, 0xb7

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 127
    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    .line 128
    return-void
.end method

.method static insertNewInstance(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)V
    .locals 6
    .param p0, "cw"    # Lcom/esotericsoftware/asm/ClassWriter;
    .param p1, "classNameInternal"    # Ljava/lang/String;

    .line 131
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-string v2, "newInstance"

    const-string v3, "()Ljava/lang/Object;"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v0

    .line 132
    .local v0, "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    .line 133
    const/16 v1, 0xbb

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 134
    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 135
    const-string v1, "<init>"

    const-string v2, "()V"

    const/16 v3, 0xb7

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 137
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 138
    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    .line 139
    return-void
.end method

.method static insertNewInstanceInner(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "cw"    # Lcom/esotericsoftware/asm/ClassWriter;
    .param p1, "classNameInternal"    # Ljava/lang/String;
    .param p2, "enclosingClassNameInternal"    # Ljava/lang/String;

    .line 142
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-string v2, "newInstance"

    const-string v3, "(Ljava/lang/Object;)Ljava/lang/Object;"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v0

    .line 143
    .local v0, "mv":Lcom/esotericsoftware/asm/MethodVisitor;
    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    .line 144
    const/4 v1, 0x2

    const-string v2, "<init>"

    const/16 v3, 0xb7

    const/16 v4, 0xbb

    const/16 v5, 0x59

    if-eqz p2, :cond_0

    .line 145
    invoke-virtual {v0, v4, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 146
    invoke-virtual {v0, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 147
    const/16 v4, 0x19

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 148
    const/16 v4, 0xc0

    invoke-virtual {v0, v4, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 149
    invoke-virtual {v0, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 150
    const-string v4, "getClass"

    const-string v5, "()Ljava/lang/Class;"

    const/16 v6, 0xb6

    const-string v7, "java/lang/Object"

    invoke-virtual {v0, v6, v7, v4, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/16 v4, 0x57

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";)V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, p1, v2, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/16 v2, 0xb0

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 154
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    goto :goto_0

    .line 156
    :cond_0
    const-string v6, "java/lang/UnsupportedOperationException"

    invoke-virtual {v0, v4, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 157
    invoke-virtual {v0, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 158
    const-string v4, "Not an inner class."

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 159
    const-string v4, "(Ljava/lang/String;)V"

    invoke-virtual {v0, v3, v6, v2, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/16 v2, 0xbf

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 161
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 163
    :goto_0
    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    .line 164
    return-void
.end method


# virtual methods
.method public isNonStaticMemberClass()Z
    .locals 1

    .line 29
    .local p0, "this":Lcom/esotericsoftware/reflectasm/ConstructorAccess;, "Lcom/esotericsoftware/reflectasm/ConstructorAccess<TT;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->isNonStaticMemberClass:Z

    return v0
.end method

.method public abstract newInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method
