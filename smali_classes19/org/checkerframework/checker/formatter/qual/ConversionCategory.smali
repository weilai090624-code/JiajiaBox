.class public final enum Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
.super Ljava/lang/Enum;
.source "ConversionCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/checker/formatter/qual/ConversionCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;


# instance fields
.field public final chars:Ljava/lang/String;

.field public final types:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 40
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Class;

    const-string v2, "GENERAL"

    const/4 v3, 0x0

    const-string v4, "bBhHsS"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 47
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Character;

    aput-object v5, v4, v3

    const-class v5, Ljava/lang/Byte;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/Short;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/Integer;

    const/4 v8, 0x3

    aput-object v5, v4, v8

    const-string v5, "CHAR"

    const-string v9, "cC"

    invoke-direct {v0, v5, v6, v9, v4}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 53
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Byte;

    aput-object v9, v5, v3

    const-class v9, Ljava/lang/Short;

    aput-object v9, v5, v6

    const-class v9, Ljava/lang/Integer;

    aput-object v9, v5, v7

    const-class v9, Ljava/lang/Long;

    aput-object v9, v5, v8

    const-class v9, Ljava/math/BigInteger;

    aput-object v9, v5, v2

    const-string v9, "INT"

    const-string v10, "doxX"

    invoke-direct {v0, v9, v7, v10, v5}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 59
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    new-array v5, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Float;

    aput-object v9, v5, v3

    const-class v9, Ljava/lang/Double;

    aput-object v9, v5, v6

    const-class v9, Ljava/math/BigDecimal;

    aput-object v9, v5, v7

    const-string v9, "FLOAT"

    const-string v10, "eEfgGaA"

    invoke-direct {v0, v9, v8, v10, v5}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 65
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    new-array v5, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Long;

    aput-object v9, v5, v3

    const-class v9, Ljava/util/Calendar;

    aput-object v9, v5, v6

    const-class v9, Ljava/util/Date;

    aput-object v9, v5, v7

    const-string v9, "TIME"

    const-string v10, "tT"

    invoke-direct {v0, v9, v2, v10, v5}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 88
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    new-array v5, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Byte;

    aput-object v9, v5, v3

    const-class v9, Ljava/lang/Short;

    aput-object v9, v5, v6

    const-class v9, Ljava/lang/Integer;

    aput-object v9, v5, v7

    const-string v9, "CHAR_AND_INT"

    invoke-direct {v0, v9, v4, v1, v5}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 95
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    new-array v5, v6, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Long;

    aput-object v9, v5, v3

    const-string v9, "INT_AND_TIME"

    const/4 v10, 0x6

    invoke-direct {v0, v9, v10, v1, v5}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 107
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    new-array v5, v3, [Ljava/lang/Class;

    const-string v9, "NULL"

    const/4 v11, 0x7

    invoke-direct {v0, v9, v11, v1, v5}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 119
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const-string v5, "UNUSED"

    const/16 v9, 0x8

    invoke-direct {v0, v5, v9, v1, v1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 36
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v3

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v6

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v7

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v8

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v2

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v4

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v10

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v11

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v0, v9

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->$VALUES:[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V
    .locals 3
    .param p3, "chars"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 134
    .local p4, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput-object p3, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->chars:Ljava/lang/String;

    .line 136
    if-nez p4, :cond_0

    .line 137
    iput-object p4, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    goto :goto_1

    .line 139
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p4

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .local p1, "typesWithPrimitives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    array-length p2, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p4, v0

    .line 141
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {v1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->unwrapPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 143
    .local v2, "unwrapped":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1

    .line 144
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "unwrapped":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Class;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Class;

    iput-object p2, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    .line 149
    .end local p1    # "typesWithPrimitives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :goto_1
    return-void
.end method

.method private static arrayToSet([Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 207
    .local p0, "a":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static fromConversionChar(C)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 6
    .param p0, "c"    # C

    .line 198
    const/4 v0, 0x5

    new-array v1, v0, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v2, v1, v3

    .line 199
    .local v2, "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    iget-object v4, v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->chars:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    return-object v2

    .line 198
    .end local v2    # "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad conversion character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intersect(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 8
    .param p0, "a"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .param p1, "b"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 230
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p0, v0, :cond_0

    .line 231
    return-object p1

    .line 233
    :cond_0
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p1, v0, :cond_1

    .line 234
    return-object p0

    .line 236
    :cond_1
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p0, v0, :cond_2

    .line 237
    return-object p1

    .line 239
    :cond_2
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p1, v0, :cond_3

    .line 240
    return-object p0

    .line 246
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v0}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 250
    .local v0, "as":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v1, p1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 251
    .local v1, "bs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 253
    const/4 v2, 0x7

    new-array v3, v2, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v6, 0x3

    aput-object v4, v3, v6

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v6, 0x4

    aput-object v4, v3, v6

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v6, 0x5

    aput-object v4, v3, v6

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v6, 0x6

    aput-object v4, v3, v6

    :goto_0
    if-ge v5, v2, :cond_5

    aget-object v4, v3, v5

    .line 257
    .local v4, "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    iget-object v6, v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v6}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    .line 258
    .local v6, "vs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-interface {v6, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 259
    return-object v4

    .line 253
    .end local v4    # "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .end local v6    # "vs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 262
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
.end method

.method public static isSubsetOf(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Z
    .locals 1
    .param p0, "a"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .param p1, "b"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 211
    invoke-static {p0, p1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->intersect(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static union(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 8
    .param p0, "a"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .param p1, "b"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 281
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-eq p0, v0, :cond_8

    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 284
    :cond_0
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-eq p0, v0, :cond_7

    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 287
    :cond_1
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p0, v0, :cond_2

    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-eq p1, v0, :cond_3

    :cond_2
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p0, v0, :cond_4

    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p1, v0, :cond_4

    .line 291
    :cond_3
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0

    .line 297
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v0}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 301
    .local v0, "as":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v1, p1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 302
    .local v1, "bs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 304
    const/4 v2, 0x7

    new-array v3, v2, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v6, 0x3

    aput-object v4, v3, v6

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v6, 0x4

    aput-object v4, v3, v6

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v6, 0x5

    aput-object v4, v3, v6

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v6, 0x6

    aput-object v4, v3, v6

    :goto_0
    if-ge v5, v2, :cond_6

    aget-object v4, v3, v5

    .line 308
    .local v4, "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    iget-object v6, v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v6}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    .line 309
    .local v6, "vs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-interface {v6, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 310
    return-object v4

    .line 304
    .end local v4    # "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .end local v6    # "vs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 314
    :cond_6
    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v2

    .line 285
    .end local v0    # "as":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v1    # "bs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_7
    :goto_1
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0

    .line 282
    :cond_8
    :goto_2
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method

.method private static unwrapPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 159
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_0

    .line 160
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 162
    :cond_0
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_1

    .line 163
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 165
    :cond_1
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_2

    .line 166
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 168
    :cond_2
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_3

    .line 169
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 171
    :cond_3
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_4

    .line 172
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 174
    :cond_4
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_5

    .line 175
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 177
    :cond_5
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_6

    .line 178
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 180
    :cond_6
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_7

    .line 181
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 183
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 1

    .line 36
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->$VALUES:[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    invoke-virtual {v0}, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method


# virtual methods
.method public isAssignableFrom(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 324
    .local p1, "argType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 325
    return v1

    .line 327
    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 328
    return v1

    .line 330
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 331
    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 332
    return v1

    .line 330
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 335
    :cond_3
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string v1, " conversion category"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-object v1, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 350
    :cond_0
    new-instance v1, Lj$/util/StringJoiner;

    const-string v2, "(one of: "

    const-string v3, ")"

    const-string v4, ", "

    invoke-direct {v1, v4, v2, v3}, Lj$/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 351
    .local v1, "sj":Lj$/util/StringJoiner;
    iget-object v2, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 352
    .local v5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lj$/util/StringJoiner;->add(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;

    .line 351
    .end local v5    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 354
    :cond_1
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 347
    .end local v1    # "sj":Lj$/util/StringJoiner;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
