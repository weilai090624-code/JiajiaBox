.class public Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;
.super Ljava/lang/Object;
.source "Generics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/Generics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericsHierarchy"
.end annotation


# instance fields
.field final counts:[I

.field final parameters:[Ljava/lang/reflect/TypeVariable;

.field final rootTotal:I

.field final total:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 18
    .param p1, "type"    # Ljava/lang/Class;

    .line 87
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v1, Lcom/esotericsoftware/kryo/util/IntArray;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/util/IntArray;-><init>()V

    .line 89
    .local v1, "counts":Lcom/esotericsoftware/kryo/util/IntArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v2, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/TypeVariable;>;"
    const/4 v3, 0x0

    .line 92
    .local v3, "total":I
    move-object/from16 v4, p1

    .line 94
    .local v4, "current":Ljava/lang/Class;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    .line 95
    .local v5, "params":[Ljava/lang/reflect/TypeVariable;
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v5

    .local v7, "n":I
    :goto_0
    if-ge v6, v7, :cond_4

    .line 96
    aget-object v8, v5, v6

    .line 97
    .local v8, "param":Ljava/lang/reflect/TypeVariable;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/esotericsoftware/kryo/util/IntArray;->add(I)V

    .line 101
    move-object v10, v4

    .line 103
    .local v10, "currentSuper":Ljava/lang/Class;
    :goto_1
    invoke-virtual {v10}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 104
    .local v11, "genericSuper":Ljava/lang/reflect/Type;
    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    .line 105
    instance-of v12, v11, Ljava/lang/reflect/ParameterizedType;

    if-nez v12, :cond_1

    .line 119
    .end local v11    # "genericSuper":Ljava/lang/reflect/Type;
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/util/IntArray;->peek()I

    move-result v9

    add-int/2addr v3, v9

    .line 95
    .end local v8    # "param":Ljava/lang/reflect/TypeVariable;
    .end local v10    # "currentSuper":Ljava/lang/Class;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 106
    .restart local v8    # "param":Ljava/lang/reflect/TypeVariable;
    .restart local v10    # "currentSuper":Ljava/lang/Class;
    .restart local v11    # "genericSuper":Ljava/lang/reflect/Type;
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v12

    .line 107
    .local v12, "superParams":[Ljava/lang/reflect/TypeVariable;
    move-object v13, v11

    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v13

    .line 108
    .local v13, "superArgs":[Ljava/lang/reflect/Type;
    const/4 v14, 0x0

    .local v14, "ii":I
    array-length v15, v13

    .local v15, "nn":I
    :goto_2
    if-ge v14, v15, :cond_3

    .line 109
    aget-object v9, v13, v14

    .line 110
    .local v9, "superArg":Ljava/lang/reflect/Type;
    if-ne v9, v8, :cond_2

    .line 112
    aget-object v8, v12, v14

    .line 113
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    move-object/from16 v16, v5

    .end local v5    # "params":[Ljava/lang/reflect/TypeVariable;
    .local v16, "params":[Ljava/lang/reflect/TypeVariable;
    iget v5, v1, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    move/from16 v17, v6

    const/4 v6, 0x1

    .end local v6    # "i":I
    .local v17, "i":I
    sub-int/2addr v5, v6

    invoke-virtual {v1, v5, v6}, Lcom/esotericsoftware/kryo/util/IntArray;->incr(II)V

    goto :goto_3

    .line 110
    .end local v16    # "params":[Ljava/lang/reflect/TypeVariable;
    .end local v17    # "i":I
    .restart local v5    # "params":[Ljava/lang/reflect/TypeVariable;
    .restart local v6    # "i":I
    :cond_2
    move-object/from16 v16, v5

    move/from16 v17, v6

    const/4 v6, 0x1

    .line 108
    .end local v5    # "params":[Ljava/lang/reflect/TypeVariable;
    .end local v6    # "i":I
    .end local v9    # "superArg":Ljava/lang/reflect/Type;
    .restart local v16    # "params":[Ljava/lang/reflect/TypeVariable;
    .restart local v17    # "i":I
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v16

    move/from16 v6, v17

    const/4 v9, 0x1

    goto :goto_2

    .end local v16    # "params":[Ljava/lang/reflect/TypeVariable;
    .end local v17    # "i":I
    .restart local v5    # "params":[Ljava/lang/reflect/TypeVariable;
    .restart local v6    # "i":I
    :cond_3
    move-object/from16 v16, v5

    move/from16 v17, v6

    const/4 v6, 0x1

    .line 117
    .end local v5    # "params":[Ljava/lang/reflect/TypeVariable;
    .end local v6    # "i":I
    .end local v11    # "genericSuper":Ljava/lang/reflect/Type;
    .end local v12    # "superParams":[Ljava/lang/reflect/TypeVariable;
    .end local v13    # "superArgs":[Ljava/lang/reflect/Type;
    .end local v14    # "ii":I
    .end local v15    # "nn":I
    .restart local v16    # "params":[Ljava/lang/reflect/TypeVariable;
    .restart local v17    # "i":I
    move/from16 v6, v17

    const/4 v9, 0x1

    goto :goto_1

    .line 95
    .end local v8    # "param":Ljava/lang/reflect/TypeVariable;
    .end local v10    # "currentSuper":Ljava/lang/Class;
    .end local v16    # "params":[Ljava/lang/reflect/TypeVariable;
    .end local v17    # "i":I
    .restart local v5    # "params":[Ljava/lang/reflect/TypeVariable;
    .restart local v6    # "i":I
    :cond_4
    move-object/from16 v16, v5

    move/from16 v17, v6

    .line 121
    .end local v5    # "params":[Ljava/lang/reflect/TypeVariable;
    .end local v6    # "i":I
    .end local v7    # "n":I
    .restart local v16    # "params":[Ljava/lang/reflect/TypeVariable;
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 122
    .end local v16    # "params":[Ljava/lang/reflect/TypeVariable;
    if-nez v4, :cond_0

    .line 124
    iput v3, v0, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->total:I

    .line 125
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    array-length v5, v5

    iput v5, v0, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->rootTotal:I

    .line 126
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/util/IntArray;->toArray()[I

    move-result-object v5

    iput-object v5, v0, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->counts:[I

    .line 127
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/TypeVariable;

    iput-object v5, v0, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->parameters:[Ljava/lang/reflect/TypeVariable;

    .line 128
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 10

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->counts:[I

    .line 134
    .local v1, "counts":[I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->parameters:[Ljava/lang/reflect/TypeVariable;

    .line 135
    .local v2, "parameters":[Ljava/lang/reflect/TypeVariable;
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "p":I
    array-length v5, v1

    .local v5, "n":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 136
    aget v6, v1, v3

    .line 137
    .local v6, "count":I
    add-int v7, v4, v6

    .local v7, "nn":I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    aget-object v8, v2, v4

    invoke-interface {v8}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v8

    .line 140
    .local v8, "declaration":Ljava/lang/reflect/GenericDeclaration;
    instance-of v9, v8, Ljava/lang/Class;

    if-eqz v9, :cond_1

    .line 141
    move-object v9, v8

    check-cast v9, Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 143
    :cond_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    :goto_2
    const/16 v9, 0x3c

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    aget-object v9, v2, v4

    invoke-interface {v9}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const/16 v9, 0x3e

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    .end local v8    # "declaration":Ljava/lang/reflect/GenericDeclaration;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 135
    .end local v6    # "count":I
    .end local v7    # "nn":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    .end local v3    # "i":I
    .end local v4    # "p":I
    .end local v5    # "n":I
    :cond_3
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
