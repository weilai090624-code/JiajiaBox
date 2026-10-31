.class public final enum Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
.super Ljava/lang/Enum;
.source "I18nConversionCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

.field public static final enum DATE:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

.field public static final enum GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

.field public static final enum NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

.field public static final enum UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

.field static namedCategories:[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;


# instance fields
.field public final strings:[Ljava/lang/String;

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
    .registers 8

    .line 36
    new-instance v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const-string v1, "UNUSED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 39
    new-instance v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const-string v1, "GENERAL"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, v3}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 42
    new-instance v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Ljava/util/Date;

    aput-object v5, v3, v2

    const-class v5, Ljava/lang/Number;

    aput-object v5, v3, v4

    const-string v5, "date"

    const-string v6, "time"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "DATE"

    invoke-direct {v0, v6, v1, v3, v5}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 53
    new-instance v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Number;

    aput-object v5, v3, v2

    const-string v5, "number"

    const-string v6, "choice"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "NUMBER"

    const/4 v7, 0x3

    invoke-direct {v0, v6, v7, v3, v5}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    sget-object v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    aput-object v3, v0, v2

    sget-object v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    aput-object v3, v0, v4

    sget-object v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    aput-object v3, v0, v1

    sget-object v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    aput-object v3, v0, v7

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->$VALUES:[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 67
    new-array v0, v1, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    sget-object v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    aput-object v1, v0, v2

    sget-object v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    aput-object v1, v0, v4

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->namedCategories:[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/String;)V
    .registers 5
    .param p4, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 61
    .local p3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-object p3, p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    .line 63
    iput-object p4, p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->strings:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method private static arrayToSet([Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 93
    .local p0, "a":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static intersect(Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .registers 10
    .param p0, "a"    # Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .param p1, "b"    # Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 118
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    if-ne p0, v0, :cond_5

    .line 119
    return-object p1

    .line 121
    :cond_5
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    if-ne p1, v0, :cond_a

    .line 122
    return-object p0

    .line 124
    :cond_a
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    if-ne p0, v0, :cond_f

    .line 125
    return-object p1

    .line 127
    :cond_f
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    if-ne p1, v0, :cond_14

    .line 128
    return-object p0

    .line 134
    :cond_14
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v0}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 138
    .local v0, "as":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v1, p1, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v1}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 139
    .local v1, "bs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 140
    const/4 v2, 0x2

    new-array v3, v2, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    sget-object v4, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    :goto_30
    if-ge v5, v2, :cond_44

    aget-object v4, v3, v5

    .line 143
    .local v4, "v":Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    iget-object v6, v4, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v6}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    .line 144
    .local v6, "vs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-interface {v6, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 145
    return-object v4

    .line 140
    .end local v4    # "v":Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .end local v6    # "vs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 148
    :cond_44
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
.end method

.method public static isSubsetOf(Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Z
    .registers 3
    .param p0, "a"    # Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .param p1, "b"    # Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 102
    invoke-static {p0, p1}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->intersect(Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static stringToI18nConversionCategory(Ljava/lang/String;)Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .registers 11
    .param p0, "string"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 82
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->namedCategories:[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_22

    aget-object v4, v0, v3

    .line 83
    .local v4, "v":Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    iget-object v5, v4, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->strings:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v6, :cond_1f

    aget-object v8, v5, v7

    .line 84
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 85
    return-object v4

    .line 83
    .end local v8    # "s":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 82
    .end local v4    # "v":Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 89
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static union(Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .registers 3
    .param p0, "a"    # Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .param p1, "b"    # Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 159
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    if-eq p0, v0, :cond_24

    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    if-ne p1, v0, :cond_9

    goto :goto_24

    .line 162
    :cond_9
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    if-eq p0, v0, :cond_21

    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    if-ne p1, v0, :cond_12

    goto :goto_21

    .line 165
    :cond_12
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    if-eq p0, v0, :cond_1e

    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    if-ne p1, v0, :cond_1b

    goto :goto_1e

    .line 168
    :cond_1b
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    return-object v0

    .line 166
    :cond_1e
    :goto_1e
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    return-object v0

    .line 163
    :cond_21
    :goto_21
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    return-object v0

    .line 160
    :cond_24
    :goto_24
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .registers 1

    .line 24
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->$VALUES:[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-virtual {v0}, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    return-object v0
.end method


# virtual methods
.method public isAssignableFrom(Ljava/lang/Class;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 178
    .local p1, "argType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 179
    return v1

    .line 181
    :cond_6
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_b

    .line 182
    return v1

    .line 184
    :cond_b
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v2, :cond_1e

    aget-object v5, v0, v4

    .line 185
    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 186
    return v1

    .line 184
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 189
    :cond_1e
    return v3
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    if-nez v1, :cond_13

    .line 197
    const-string v1, " conversion category (all types)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 199
    :cond_13
    new-instance v1, Lj$/util/StringJoiner;

    const-string v2, " conversion category (one of: "

    const-string v3, ")"

    const-string v4, ", "

    invoke-direct {v1, v4, v2, v3}, Lj$/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 200
    .local v1, "sj":Lj$/util/StringJoiner;
    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v3, :cond_30

    aget-object v5, v2, v4

    .line 201
    .local v5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lj$/util/StringJoiner;->add(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;

    .line 200
    .end local v5    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 203
    :cond_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .end local v1    # "sj":Lj$/util/StringJoiner;
    :goto_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
