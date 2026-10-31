.class public Lcom/esotericsoftware/kryo/util/Generics$GenericType;
.super Ljava/lang/Object;
.source "Generics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/Generics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericType"
.end annotation


# instance fields
.field arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

.field type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .registers 4
    .param p1, "fromClass"    # Ljava/lang/Class;
    .param p2, "toClass"    # Ljava/lang/Class;
    .param p3, "context"    # Ljava/lang/reflect/Type;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->initialize(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 161
    return-void
.end method

.method private initialize(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .registers 12
    .param p1, "fromClass"    # Ljava/lang/Class;
    .param p2, "toClass"    # Ljava/lang/Class;
    .param p3, "context"    # Ljava/lang/reflect/Type;

    .line 164
    instance-of v0, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2a

    .line 166
    move-object v0, p3

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 167
    .local v0, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 168
    .local v1, "rawType":Ljava/lang/Class;
    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->type:Ljava/lang/reflect/Type;

    .line 169
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 170
    .local v2, "actualArgs":[Ljava/lang/reflect/Type;
    array-length v3, v2

    .line 171
    .local v3, "n":I
    new-array v4, v3, [Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    iput-object v4, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 172
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_29

    .line 173
    iget-object v5, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    new-instance v6, Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    aget-object v7, v2, v4

    invoke-direct {v6, p1, p2, v7}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    aput-object v6, v5, v4

    .line 172
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 175
    .end local v0    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v1    # "rawType":Ljava/lang/Class;
    .end local v2    # "actualArgs":[Ljava/lang/reflect/Type;
    .end local v3    # "n":I
    .end local v4    # "i":I
    :cond_29
    goto :goto_70

    :cond_2a
    instance-of v0, p3, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_6a

    .line 177
    const/4 v0, 0x1

    .line 179
    .local v0, "dimensions":I
    :goto_2f
    move-object v1, p3

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p3

    .line 180
    instance-of v1, p3, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_67

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->initialize(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 184
    invoke-static {p1, p2, p3}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 185
    .local v1, "componentType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_66

    .line 186
    const/4 v2, 0x1

    if-ne v0, v2, :cond_57

    .line 187
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->type:Ljava/lang/reflect/Type;

    goto :goto_66

    .line 189
    :cond_57
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    new-array v3, v0, [I

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->type:Ljava/lang/reflect/Type;

    .line 192
    .end local v0    # "dimensions":I
    .end local v1    # "componentType":Ljava/lang/reflect/Type;
    :cond_66
    :goto_66
    goto :goto_70

    .line 181
    .restart local v0    # "dimensions":I
    :cond_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 194
    .end local v0    # "dimensions":I
    :cond_6a
    invoke-static {p1, p2, p3}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->type:Ljava/lang/reflect/Type;

    .line 196
    :goto_70
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getTypeParameters()[Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    return-object v0
.end method

.method public resolve(Lcom/esotericsoftware/kryo/util/Generics;)Ljava/lang/Class;
    .registers 3
    .param p1, "generics"    # Lcom/esotericsoftware/kryo/util/Generics;

    .line 201
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 202
    :cond_b
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p1, v0}, Lcom/esotericsoftware/kryo/util/Generics;->resolveTypeVariable(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 216
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 217
    .local v1, "array":Z
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->type:Ljava/lang/reflect/Type;

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_4f

    .line 218
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->type:Ljava/lang/reflect/Type;

    check-cast v2, Ljava/lang/Class;

    .line 219
    .local v2, "c":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    .line 220
    if-eqz v1, :cond_1d

    invoke-static {v2}, Lcom/esotericsoftware/kryo/util/Util;->getElementClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_1e

    :cond_1d
    move-object v3, v2

    :goto_1e
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    if-eqz v3, :cond_4e

    .line 222
    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    array-length v4, v4

    .local v4, "n":I
    :goto_32
    if-ge v3, v4, :cond_49

    .line 224
    if-lez v3, :cond_3b

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_3b
    iget-object v5, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 227
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_49
    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    .end local v2    # "c":Ljava/lang/Class;
    :cond_4e
    goto :goto_58

    .line 230
    :cond_4f
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :goto_58
    if-eqz v1, :cond_6d

    .line 232
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->type:Ljava/lang/reflect/Type;

    check-cast v3, Ljava/lang/Class;

    invoke-static {v3}, Lcom/esotericsoftware/kryo/util/Util;->getDimensionCount(Ljava/lang/Class;)I

    move-result v3

    .local v3, "n":I
    :goto_63
    if-ge v2, v3, :cond_6d

    .line 233
    const-string v4, "[]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 235
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
