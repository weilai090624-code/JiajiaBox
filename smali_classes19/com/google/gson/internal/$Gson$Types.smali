.class public final Lcom/google/gson/internal/$Gson$Types;
.super Ljava/lang/Object;
.source "$Gson$Types.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;,
        Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;,
        Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;
    }
.end annotation


# static fields
.field static final EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    sput-object v0, Lcom/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .registers 2
    .param p0, "componentType"    # Ljava/lang/reflect/Type;

    .line 69
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 6
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 109
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1f

    .line 110
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 111
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v1, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_1c

    :cond_1b
    move-object v1, v0

    :goto_1c
    check-cast v1, Ljava/lang/reflect/Type;

    return-object v1

    .line 113
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1f
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_38

    .line 114
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 115
    .local v0, "p":Ljava/lang/reflect/ParameterizedType;
    new-instance v1, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 116
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 115
    return-object v1

    .line 118
    .end local v0    # "p":Ljava/lang/reflect/ParameterizedType;
    :cond_38
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_49

    .line 119
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 120
    .local v0, "g":Ljava/lang/reflect/GenericArrayType;
    new-instance v1, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v1

    .line 122
    .end local v0    # "g":Ljava/lang/reflect/GenericArrayType;
    :cond_49
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_5e

    .line 123
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 124
    .local v0, "w":Ljava/lang/reflect/WildcardType;
    new-instance v1, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v1

    .line 128
    .end local v0    # "w":Ljava/lang/reflect/WildcardType;
    :cond_5e
    return-object p0
.end method

.method static checkNotPrimitive(Ljava/lang/reflect/Type;)V
    .registers 2
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 481
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 482
    return-void
.end method

.method private static declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 474
    .local p0, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 475
    .local v0, "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_c

    .line 476
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    goto :goto_d

    .line 477
    :cond_c
    const/4 v1, 0x0

    .line 475
    :goto_d
    return-object v1
.end method

.method static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 167
    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .registers 8
    .param p0, "a"    # Ljava/lang/reflect/Type;
    .param p1, "b"    # Ljava/lang/reflect/Type;

    .line 174
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 176
    return v0

    .line 178
    :cond_4
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_d

    .line 180
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 182
    :cond_d
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    .line 183
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_17

    .line 184
    return v2

    .line 188
    :cond_17
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 189
    .local v1, "pa":Ljava/lang/reflect/ParameterizedType;
    move-object v3, p1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 190
    .local v3, "pb":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 191
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 192
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    .line 190
    :goto_49
    return v0

    .line 194
    .end local v1    # "pa":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "pb":Ljava/lang/reflect/ParameterizedType;
    :cond_4a
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_66

    .line 195
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_53

    .line 196
    return v2

    .line 199
    :cond_53
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 200
    .local v0, "ga":Ljava/lang/reflect/GenericArrayType;
    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    .line 201
    .local v1, "gb":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v2

    return v2

    .line 203
    .end local v0    # "ga":Ljava/lang/reflect/GenericArrayType;
    .end local v1    # "gb":Ljava/lang/reflect/GenericArrayType;
    :cond_66
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_94

    .line 204
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_6f

    .line 205
    return v2

    .line 208
    :cond_6f
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 209
    .local v1, "wa":Ljava/lang/reflect/WildcardType;
    move-object v3, p1

    check-cast v3, Ljava/lang/reflect/WildcardType;

    .line 210
    .local v3, "wb":Ljava/lang/reflect/WildcardType;
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 211
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    goto :goto_93

    :cond_92
    const/4 v0, 0x0

    .line 210
    :goto_93
    return v0

    .line 213
    .end local v1    # "wa":Ljava/lang/reflect/WildcardType;
    .end local v3    # "wb":Ljava/lang/reflect/WildcardType;
    :cond_94
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_be

    .line 214
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_9d

    .line 215
    return v2

    .line 217
    :cond_9d
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    .line 218
    .local v1, "va":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object v3, p1

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 219
    .local v3, "vb":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v5

    if-ne v4, v5, :cond_bc

    .line 220
    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bc

    goto :goto_bd

    :cond_bc
    const/4 v0, 0x0

    .line 219
    :goto_bd
    return v0

    .line 224
    .end local v1    # "va":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v3    # "vb":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_be
    return v2
.end method

.method public static getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2
    .param p0, "array"    # Ljava/lang/reflect/Type;

    .line 297
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_c

    .line 298
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_13

    .line 299
    :cond_c
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 297
    :goto_13
    return-object v0
.end method

.method public static getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 5
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 307
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/Collection;

    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/$Gson$Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 309
    .local v0, "collectionType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 310
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v2

    .line 312
    :cond_14
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_22

    .line 313
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    return-object v1

    .line 315
    :cond_22
    const-class v1, Ljava/lang/Object;

    return-object v1
.end method

.method static getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 8
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 242
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "toResolve":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne p2, p1, :cond_3

    .line 243
    return-object p0

    .line 247
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 248
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 249
    .local v0, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "length":I
    :goto_f
    if-ge v1, v2, :cond_34

    .line 250
    aget-object v3, v0, v1

    if-ne v3, p2, :cond_1c

    .line 251
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v1

    return-object v3

    .line 252
    :cond_1c
    aget-object v3, v0, v1

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 253
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v1

    aget-object v4, v0, v1

    invoke-static {v3, v4, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    return-object v3

    .line 249
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 259
    .end local v0    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_34
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 260
    :goto_3a
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_5a

    .line 261
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 262
    .local v0, "rawSupertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v0, p2, :cond_49

    .line 263
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1

    .line 264
    :cond_49
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 265
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1

    .line 267
    :cond_58
    move-object p1, v0

    .line 268
    .end local v0    # "rawSupertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_3a

    .line 272
    :cond_5a
    return-object p2
.end method

.method public static getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;
    .registers 7
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 328
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/Properties;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v0, :cond_12

    .line 329
    new-array v0, v3, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0

    .line 332
    :cond_12
    const-class v0, Ljava/util/Map;

    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/$Gson$Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 334
    .local v0, "mapType":Ljava/lang/reflect/Type;
    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_24

    .line 335
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 336
    .local v1, "mapParameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2

    .line 338
    .end local v1    # "mapParameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_24
    new-array v3, v3, [Ljava/lang/reflect/Type;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v2

    const-class v2, Ljava/lang/Object;

    aput-object v2, v3, v1

    return-object v3
.end method

.method public static getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 5
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 133
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_8

    .line 135
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 137
    :cond_8
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1c

    .line 138
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 143
    .local v0, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 144
    .local v1, "rawType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 145
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    return-object v2

    .line 147
    .end local v0    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v1    # "rawType":Ljava/lang/reflect/Type;
    :cond_1c
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 148
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 149
    .local v0, "componentType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 151
    .end local v0    # "componentType":Ljava/lang/reflect/Type;
    :cond_35
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3c

    .line 154
    const-class v0, Ljava/lang/Object;

    return-object v0

    .line 156
    :cond_3c
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4e

    .line 157
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 160
    :cond_4e
    if-nez p0, :cond_53

    const-string v0, "null"

    goto :goto_5b

    :cond_53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "className":Ljava/lang/String;
    :goto_5b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 5
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 283
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_e

    .line 285
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p0, v0, v1

    .line 287
    :cond_e
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 288
    nop

    .line 289
    invoke-static {p0, p1, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 288
    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static hashCodeOrZero(Ljava/lang/Object;)I
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 229
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "toFind"    # Ljava/lang/Object;

    .line 461
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "length":I
    :goto_2
    if-ge v0, v1, :cond_10

    .line 462
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 463
    return v0

    .line 461
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 466
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static varargs newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .registers 4
    .param p0, "ownerType"    # Ljava/lang/reflect/Type;
    .param p1, "rawType"    # Ljava/lang/reflect/Type;
    .param p2, "typeArguments"    # [Ljava/lang/reflect/Type;

    .line 59
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .param p2, "toResolve"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 343
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .registers 14
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .param p2, "toResolve"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 349
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "visitedTypeVariables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    const/4 v0, 0x0

    .line 351
    .local v0, "resolving":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :goto_1
    instance-of v1, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_29

    .line 352
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    .line 353
    .local v1, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 354
    .local v2, "previouslyResolved":Ljava/lang/reflect/Type;
    if-eqz v2, :cond_18

    .line 356
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_16

    move-object v3, p2

    goto :goto_17

    :cond_16
    move-object v3, v2

    :goto_17
    return-object v3

    .line 360
    :cond_18
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p3, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    if-nez v0, :cond_20

    .line 362
    move-object v0, v1

    .line 365
    :cond_20
    invoke-static {p0, p1, v1}, Lcom/google/gson/internal/$Gson$Types;->resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 366
    if-ne p2, v1, :cond_28

    .line 367
    goto/16 :goto_f0

    .line 370
    .end local v1    # "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v2    # "previouslyResolved":Ljava/lang/reflect/Type;
    :cond_28
    goto :goto_1

    :cond_29
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_50

    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 371
    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    .line 372
    .local v1, "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 373
    .local v2, "componentType":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, v2, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 374
    .local v3, "newComponentType":Ljava/lang/reflect/Type;
    invoke-static {v2, v3}, Lcom/google/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 375
    move-object v4, v1

    goto :goto_4d

    .line 376
    :cond_49
    invoke-static {v3}, Lcom/google/gson/internal/$Gson$Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object v4

    :goto_4d
    move-object p2, v4

    .line 377
    goto/16 :goto_f0

    .line 379
    .end local v1    # "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "componentType":Ljava/lang/reflect/Type;
    .end local v3    # "newComponentType":Ljava/lang/reflect/Type;
    :cond_50
    instance-of v1, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_6e

    .line 380
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    .line 381
    .local v1, "original":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 382
    .restart local v2    # "componentType":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, v2, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 383
    .restart local v3    # "newComponentType":Ljava/lang/reflect/Type;
    invoke-static {v2, v3}, Lcom/google/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 384
    move-object v4, v1

    goto :goto_6b

    .line 385
    :cond_67
    invoke-static {v3}, Lcom/google/gson/internal/$Gson$Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object v4

    :goto_6b
    move-object p2, v4

    .line 386
    goto/16 :goto_f0

    .line 388
    .end local v1    # "original":Ljava/lang/reflect/GenericArrayType;
    .end local v2    # "componentType":Ljava/lang/reflect/Type;
    .end local v3    # "newComponentType":Ljava/lang/reflect/Type;
    :cond_6e
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x1

    if-eqz v1, :cond_b8

    .line 389
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 390
    .local v1, "original":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 391
    .local v3, "ownerType":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, v3, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 392
    .local v4, "newOwnerType":Ljava/lang/reflect/Type;
    invoke-static {v4, v3}, Lcom/google/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v2, v5

    .line 394
    .local v2, "changed":Z
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 395
    .local v5, "args":[Ljava/lang/reflect/Type;
    const/4 v6, 0x0

    .local v6, "t":I
    array-length v7, v5

    .local v7, "length":I
    :goto_89
    if-ge v6, v7, :cond_aa

    .line 396
    aget-object v8, v5, v6

    :try_start_8d
    invoke-static {p0, p1, v8, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v8
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_a8

    .line 397
    .local v8, "resolvedTypeArgument":Ljava/lang/reflect/Type;
    aget-object v9, v5, v6

    invoke-static {v8, v9}, Lcom/google/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a5

    .line 398
    if-nez v2, :cond_a3

    .line 399
    invoke-virtual {v5}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    check-cast v5, [Ljava/lang/reflect/Type;

    .line 400
    const/4 v2, 0x1

    .line 402
    :cond_a3
    aput-object v8, v5, v6

    .line 395
    .end local v8    # "resolvedTypeArgument":Ljava/lang/reflect/Type;
    :cond_a5
    add-int/lit8 v6, v6, 0x1

    goto :goto_89

    .line 396
    .end local v0    # "resolving":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v1    # "original":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "changed":Z
    .end local v3    # "ownerType":Ljava/lang/reflect/Type;
    .end local v4    # "newOwnerType":Ljava/lang/reflect/Type;
    .end local v5    # "args":[Ljava/lang/reflect/Type;
    .end local v6    # "t":I
    .end local v7    # "length":I
    .end local p0    # "context":Ljava/lang/reflect/Type;
    .end local p1    # "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "toResolve":Ljava/lang/reflect/Type;
    .end local p3    # "visitedTypeVariables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    :catchall_a8
    move-exception p0

    throw p0

    .line 406
    .restart local v0    # "resolving":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v1    # "original":Ljava/lang/reflect/ParameterizedType;
    .restart local v2    # "changed":Z
    .restart local v3    # "ownerType":Ljava/lang/reflect/Type;
    .restart local v4    # "newOwnerType":Ljava/lang/reflect/Type;
    .restart local v5    # "args":[Ljava/lang/reflect/Type;
    .restart local p0    # "context":Ljava/lang/reflect/Type;
    .restart local p1    # "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "toResolve":Ljava/lang/reflect/Type;
    .restart local p3    # "visitedTypeVariables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    :cond_aa
    if-eqz v2, :cond_b5

    .line 407
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v6

    goto :goto_b6

    .line 408
    :cond_b5
    move-object v6, v1

    :goto_b6
    move-object p2, v6

    .line 409
    goto :goto_f0

    .line 411
    .end local v1    # "original":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "changed":Z
    .end local v3    # "ownerType":Ljava/lang/reflect/Type;
    .end local v4    # "newOwnerType":Ljava/lang/reflect/Type;
    .end local v5    # "args":[Ljava/lang/reflect/Type;
    :cond_b8
    instance-of v1, p2, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_f0

    .line 412
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 413
    .local v1, "original":Ljava/lang/reflect/WildcardType;
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 414
    .local v3, "originalLowerBound":[Ljava/lang/reflect/Type;
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 416
    .local v4, "originalUpperBound":[Ljava/lang/reflect/Type;
    array-length v5, v3

    const/4 v6, 0x0

    if-ne v5, v2, :cond_db

    .line 417
    aget-object v2, v3, v6

    invoke-static {p0, p1, v2, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 418
    .local v2, "lowerBound":Ljava/lang/reflect/Type;
    aget-object v5, v3, v6

    if-eq v2, v5, :cond_da

    .line 419
    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Types;->supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p2

    .line 420
    goto :goto_f0

    .line 418
    .end local v2    # "lowerBound":Ljava/lang/reflect/Type;
    :cond_da
    goto :goto_ed

    .line 422
    :cond_db
    array-length v5, v4

    if-ne v5, v2, :cond_ed

    .line 423
    aget-object v2, v4, v6

    invoke-static {p0, p1, v2, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 424
    .local v2, "upperBound":Ljava/lang/reflect/Type;
    aget-object v5, v4, v6

    if-eq v2, v5, :cond_ee

    .line 425
    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p2

    .line 426
    goto :goto_f0

    .line 422
    .end local v2    # "upperBound":Ljava/lang/reflect/Type;
    :cond_ed
    :goto_ed
    nop

    .line 429
    :cond_ee
    move-object p2, v1

    .line 430
    nop

    .line 437
    .end local v1    # "original":Ljava/lang/reflect/WildcardType;
    .end local v3    # "originalLowerBound":[Ljava/lang/reflect/Type;
    .end local v4    # "originalUpperBound":[Ljava/lang/reflect/Type;
    :cond_f0
    :goto_f0
    if-eqz v0, :cond_f5

    .line 438
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_f5
    return-object p2
.end method

.method static resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .registers 7
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 444
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "unknown":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Types;->declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object v0

    .line 447
    .local v0, "declaredByRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_7

    .line 448
    return-object p2

    .line 451
    :cond_7
    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 452
    .local v1, "declaredBy":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_21

    .line 453
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/gson/internal/$Gson$Types;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 454
    .local v2, "index":I
    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v2

    return-object v3

    .line 457
    .end local v2    # "index":I
    :cond_21
    return-object p2
.end method

.method public static subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .registers 4
    .param p0, "bound"    # Ljava/lang/reflect/Type;

    .line 80
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_c

    .line 81
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "upperBounds":[Ljava/lang/reflect/Type;
    goto :goto_12

    .line 83
    .end local v0    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 85
    .restart local v0    # "upperBounds":[Ljava/lang/reflect/Type;
    :goto_12
    new-instance v1, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    sget-object v2, Lcom/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    invoke-direct {v1, v0, v2}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v1
.end method

.method public static supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .registers 6
    .param p0, "bound"    # Ljava/lang/reflect/Type;

    .line 95
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 96
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "lowerBounds":[Ljava/lang/reflect/Type;
    goto :goto_12

    .line 98
    .end local v0    # "lowerBounds":[Ljava/lang/reflect/Type;
    :cond_e
    new-array v0, v2, [Ljava/lang/reflect/Type;

    aput-object p0, v0, v1

    .line 100
    .restart local v0    # "lowerBounds":[Ljava/lang/reflect/Type;
    :goto_12
    new-instance v3, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-direct {v3, v2, v0}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v3
.end method

.method public static typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 233
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method
