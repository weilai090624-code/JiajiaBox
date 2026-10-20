.class public Lcom/esotericsoftware/kryo/util/GenericsUtil;
.super Ljava/lang/Object;
.source "GenericsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 5
    .param p0, "fromClass"    # Ljava/lang/Class;
    .param p1, "toClass"    # Ljava/lang/Class;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .line 38
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object p2

    .line 41
    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveTypeVariable(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Z)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 44
    :cond_1
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 47
    :cond_2
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 48
    const/4 v0, 0x1

    .line 50
    .local v0, "dimensions":I
    :goto_0
    move-object v3, p2

    check-cast v3, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v3}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 51
    instance-of v3, p2, Ljava/lang/reflect/GenericArrayType;

    if-nez v3, :cond_5

    .line 54
    invoke-static {p0, p1, p2}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 55
    .local v3, "componentType":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/Class;

    if-nez v4, :cond_3

    return-object p2

    .line 56
    :cond_3
    if-ne v0, v1, :cond_4

    move-object v1, v3

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 57
    :cond_4
    move-object v1, v3

    check-cast v1, Ljava/lang/Class;

    new-array v2, v0, [I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 52
    .end local v3    # "componentType":Ljava/lang/reflect/Type;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "dimensions":I
    :cond_6
    instance-of v0, p2, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_9

    .line 63
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    .line 64
    .local v0, "upperBound":Ljava/lang/reflect/Type;
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_7

    invoke-static {p0, p1, v0}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1

    .line 65
    :cond_7
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 66
    .local v1, "lowerBounds":[Ljava/lang/reflect/Type;
    array-length v3, v1

    if-eqz v3, :cond_8

    aget-object v2, v1, v2

    invoke-static {p0, p1, v2}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2

    .line 67
    :cond_8
    const-class v2, Ljava/lang/Object;

    return-object v2

    .line 71
    .end local v0    # "upperBound":Ljava/lang/reflect/Type;
    .end local v1    # "lowerBounds":[Ljava/lang/reflect/Type;
    :cond_9
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to resolve type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolveTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 5
    .param p0, "fromClass"    # Ljava/lang/Class;
    .param p1, "toClass"    # Ljava/lang/Class;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .line 124
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 125
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 126
    .local v0, "actualArgs":[Ljava/lang/reflect/Type;
    array-length v1, v0

    .line 127
    .local v1, "n":I
    new-array v2, v1, [Ljava/lang/reflect/Type;

    .line 128
    .local v2, "generics":[Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 129
    aget-object v4, v0, v3

    invoke-static {p0, p1, v4}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    aput-object v4, v2, v3

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 134
    .end local v0    # "actualArgs":[Ljava/lang/reflect/Type;
    .end local v1    # "n":I
    .end local v2    # "generics":[Ljava/lang/reflect/Type;
    :cond_1
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_3

    .line 136
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 137
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_2

    .line 139
    invoke-static {p0, p1, p2}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 142
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static resolveTypeVariable(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Z)Ljava/lang/reflect/Type;
    .locals 9
    .param p0, "fromClass"    # Ljava/lang/Class;
    .param p1, "current"    # Ljava/lang/Class;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "first"    # Z

    .line 80
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 81
    .local v0, "genericSuper":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_0

    return-object p2

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 85
    .local v1, "superClass":Ljava/lang/Class;
    if-eq v1, p0, :cond_2

    .line 86
    const/4 v2, 0x0

    invoke-static {p0, v1, p2, v2}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveTypeVariable(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Z)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 87
    .local v2, "resolved":Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_1

    return-object v2

    .line 88
    :cond_1
    move-object p2, v2

    .line 92
    .end local v2    # "resolved":Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 94
    .local v3, "params":[Ljava/lang/reflect/TypeVariable;
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v3

    .local v5, "n":I
    :goto_0
    if-ge v4, v5, :cond_8

    .line 95
    aget-object v6, v3, v4

    .line 96
    .local v6, "param":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 98
    move-object v7, v0

    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    aget-object v7, v7, v4

    .line 101
    .local v7, "arg":Ljava/lang/reflect/Type;
    instance-of v8, v7, Ljava/lang/Class;

    if-eqz v8, :cond_3

    return-object v7

    .line 102
    :cond_3
    instance-of v8, v7, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_4

    invoke-static {p0, p1, v7}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    return-object v8

    .line 103
    :cond_4
    instance-of v8, v7, Ljava/lang/reflect/GenericArrayType;

    if-eqz v8, :cond_5

    invoke-static {p0, p1, v7}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    return-object v8

    .line 105
    :cond_5
    instance-of v8, v7, Ljava/lang/reflect/TypeVariable;

    if-eqz v8, :cond_7

    .line 106
    if-eqz p3, :cond_6

    return-object p2

    .line 107
    :cond_6
    return-object v7

    .line 94
    .end local v6    # "param":Ljava/lang/reflect/TypeVariable;
    .end local v7    # "arg":Ljava/lang/reflect/Type;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_8
    return-object p2
.end method
