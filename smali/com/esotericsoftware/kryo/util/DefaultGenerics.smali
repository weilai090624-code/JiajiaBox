.class public final Lcom/esotericsoftware/kryo/util/DefaultGenerics;
.super Ljava/lang/Object;
.source "DefaultGenerics.java"

# interfaces
.implements Lcom/esotericsoftware/kryo/util/Generics;


# instance fields
.field private arguments:[Ljava/lang/reflect/Type;

.field private argumentsSize:I

.field private depths:[I

.field private genericTypes:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

.field private genericTypesSize:I

.field private final kryo:Lcom/esotericsoftware/kryo/Kryo;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;)V
    .locals 2
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x10

    new-array v1, v0, [Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypes:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 34
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->depths:[I

    .line 37
    new-array v0, v0, [Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    .line 40
    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    .line 41
    return-void
.end method


# virtual methods
.method public getGenericTypesSize()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypesSize:I

    return v0
.end method

.method public nextGenericClass()Ljava/lang/Class;
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->nextGenericTypes()[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    move-result-object v0

    .line 90
    .local v0, "arguments":[Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 91
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p0}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->resolve(Lcom/esotericsoftware/kryo/util/Generics;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public nextGenericTypes()[Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    .locals 5

    .line 73
    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypesSize:I

    .line 74
    .local v0, "index":I
    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 75
    add-int/lit8 v0, v0, -0x1

    .line 76
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypes:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    aget-object v2, v2, v0

    .line 77
    .local v2, "genericType":Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    iget-object v3, v2, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    if-nez v3, :cond_0

    return-object v1

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->depths:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v4}, Lcom/esotericsoftware/kryo/Kryo;->getDepth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    .line 80
    iget-object v1, v2, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    iget-object v3, v2, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    .line 81
    iget-object v1, v2, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    return-object v1

    .line 84
    .end local v2    # "genericType":Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    :cond_1
    return-object v1
.end method

.method public popGenericType()V
    .locals 3

    .line 63
    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypesSize:I

    .line 64
    .local v0, "size":I
    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 66
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->depths:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Kryo;->getDepth()I

    move-result v2

    if-ge v1, v2, :cond_1

    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypes:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 68
    iput v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypesSize:I

    .line 69
    return-void
.end method

.method public popTypeVariables(I)V
    .locals 5
    .param p1, "count"    # I

    .line 133
    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    .local v0, "n":I
    sub-int v1, v0, p1

    .line 134
    .local v1, "i":I
    iput v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    .line 135
    :goto_0
    if-ge v1, v0, :cond_0

    .line 136
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    const/4 v4, 0x0

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_0

    .line 137
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-void
.end method

.method public pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V
    .locals 5
    .param p1, "fieldType"    # Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 46
    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypesSize:I

    .line 47
    .local v0, "size":I
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypes:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 48
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypes:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 49
    .local v1, "genericTypesNew":[Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypes:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypes:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 51
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->depths:[I

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 52
    .local v2, "depthsNew":[I
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->depths:[I

    invoke-static {v4, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iput-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->depths:[I

    .line 56
    .end local v1    # "genericTypesNew":[Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    .end local v2    # "depthsNew":[I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypesSize:I

    .line 57
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypes:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    aput-object p1, v1, v0

    .line 58
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->depths:[I

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Kryo;->getDepth()I

    move-result v2

    aput v2, v1, v0

    .line 59
    return-void
.end method

.method public pushTypeVariables(Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;[Lcom/esotericsoftware/kryo/util/Generics$GenericType;)I
    .locals 17
    .param p1, "hierarchy"    # Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;
    .param p2, "args"    # [Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v1, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->total:I

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget v3, v1, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->rootTotal:I

    array-length v5, v2

    if-le v3, v5, :cond_0

    goto :goto_3

    .line 99
    :cond_0
    iget v3, v0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    .line 102
    .local v3, "startSize":I
    iget v5, v1, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->total:I

    add-int/2addr v5, v3

    .line 103
    .local v5, "sizeNeeded":I
    iget-object v6, v0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    array-length v6, v6

    if-le v5, v6, :cond_1

    .line 104
    iget-object v6, v0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v6, v6, [Ljava/lang/reflect/Type;

    .line 105
    .local v6, "newArray":[Ljava/lang/reflect/Type;
    iget-object v7, v0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    invoke-static {v7, v4, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iput-object v6, v0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    .line 110
    .end local v6    # "newArray":[Ljava/lang/reflect/Type;
    :cond_1
    iget-object v4, v1, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->counts:[I

    .line 111
    .local v4, "counts":[I
    iget-object v6, v1, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->parameters:[Ljava/lang/reflect/TypeVariable;

    .line 112
    .local v6, "params":[Ljava/lang/reflect/TypeVariable;
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v8, 0x0

    .local v8, "p":I
    array-length v9, v2

    .local v9, "n":I
    :goto_0
    if-ge v7, v9, :cond_5

    .line 113
    aget-object v10, v2, v7

    .line 114
    .local v10, "arg":Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    invoke-virtual {v10, v0}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->resolve(Lcom/esotericsoftware/kryo/util/Generics;)Ljava/lang/Class;

    move-result-object v11

    .line 115
    .local v11, "resolved":Ljava/lang/Class;
    if-nez v11, :cond_2

    goto :goto_2

    .line 116
    :cond_2
    aget v12, v4, v7

    .line 117
    .local v12, "count":I
    if-nez v10, :cond_3

    .line 118
    add-int/2addr v8, v12

    goto :goto_2

    .line 120
    :cond_3
    add-int v13, v8, v12

    .local v13, "nn":I
    :goto_1
    if-ge v8, v13, :cond_4

    .line 121
    iget-object v14, v0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    iget v15, v0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    aget-object v16, v6, v8

    aput-object v16, v14, v15

    .line 122
    iget-object v14, v0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    iget v15, v0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    add-int/lit8 v15, v15, 0x1

    aput-object v11, v14, v15

    .line 123
    iget v14, v0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    add-int/lit8 v14, v14, 0x2

    iput v14, v0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    .line 120
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 112
    .end local v10    # "arg":Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    .end local v11    # "resolved":Ljava/lang/Class;
    .end local v12    # "count":I
    .end local v13    # "nn":I
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 128
    .end local v7    # "i":I
    .end local v8    # "p":I
    .end local v9    # "n":I
    :cond_5
    iget v7, v0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    sub-int/2addr v7, v3

    return v7

    .line 97
    .end local v3    # "startSize":I
    .end local v4    # "counts":[I
    .end local v5    # "sizeNeeded":I
    .end local v6    # "params":[Ljava/lang/reflect/TypeVariable;
    :cond_6
    :goto_3
    return v4
.end method

.method public resolveTypeVariable(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 4
    .param p1, "typeVariable"    # Ljava/lang/reflect/TypeVariable;

    .line 141
    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    add-int/lit8 v0, v0, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 142
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    aget-object v1, v1, v0

    .line 143
    .local v1, "arg":Ljava/lang/reflect/Type;
    if-eq v1, p1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 141
    .end local v1    # "arg":Ljava/lang/reflect/Type;
    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 143
    .restart local v1    # "arg":Ljava/lang/reflect/Type;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Class;

    return-object v2

    .line 145
    .end local v0    # "i":I
    .end local v1    # "arg":Ljava/lang/reflect/Type;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    if-ge v1, v2, :cond_1

    .line 156
    if-eqz v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 161
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
