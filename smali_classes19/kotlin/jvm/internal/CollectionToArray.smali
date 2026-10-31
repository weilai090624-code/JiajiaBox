.class public final Lkotlin/jvm/internal/CollectionToArray;
.super Ljava/lang/Object;
.source "CollectionToArray.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectionToArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n*L\n1#1,88:1\n63#1,22:89\n63#1,22:111\n*S KotlinDebug\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n*L\n22#1:89,22\n37#1:111,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a#\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0008H\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u001a5\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0010\u0010\u000b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001H\u0007\u00a2\u0006\u0004\u0008\t\u0010\u000c\u001a~\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0014\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u000f2\u001a\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u00112(\u0010\u0012\u001a$\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u0013H\u0082\u0008\u00a2\u0006\u0002\u0010\u0014\"\u0018\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "EMPTY",
        "",
        "",
        "[Ljava/lang/Object;",
        "MAX_SIZE",
        "",
        "collectionToArray",
        "collection",
        "",
        "toArray",
        "(Ljava/util/Collection;)[Ljava/lang/Object;",
        "a",
        "(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;",
        "toArrayImpl",
        "empty",
        "Lkotlin/Function0;",
        "alloc",
        "Lkotlin/Function1;",
        "trim",
        "Lkotlin/Function2;",
        "(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)[Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/Object;

.field private static final MAX_SIZE:I = 0x7ffffffd


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method public static final toArray(Ljava/util/Collection;)[Ljava/lang/Object;
    .registers 11
    .param p0, "collection"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "This function will be made internal in a future release"
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        warningSince = "1.9"
    .end annotation

    const-string v0, "collection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    .line 89
    .local v0, "$i$f$toArrayImpl":I
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 90
    .local v1, "size$iv":I
    if-nez v1, :cond_10

    const/4 v2, 0x0

    .line 24
    .local v2, "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$1":I
    sget-object v2, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    .line 90
    .end local v2    # "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$1":I
    goto :goto_6d

    .line 91
    :cond_10
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 92
    .local v2, "iter$iv":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1f

    const/4 v3, 0x0

    .line 24
    .local v3, "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$1":I
    sget-object v3, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    .line 92
    .end local v3    # "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$1":I
    move-object v2, v3

    goto :goto_6d

    .line 93
    :cond_1f
    move v3, v1

    .local v3, "size":I
    const/4 v4, 0x0

    .line 25
    .local v4, "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$2":I
    new-array v3, v3, [Ljava/lang/Object;

    .line 93
    .end local v3    # "size":I
    .end local v4    # "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$2":I
    nop

    .line 94
    .local v3, "result$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 96
    .local v4, "i$iv":I
    :goto_25
    nop

    .line 97
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i$iv":I
    .local v5, "i$iv":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v4

    .line 98
    array-length v4, v3

    const-string v6, "copyOf(...)"

    if-lt v5, v4, :cond_5c

    .line 99
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3b

    move-object v2, v3

    goto :goto_6d

    .line 103
    :cond_3b
    mul-int/lit8 v4, v5, 0x3

    add-int/lit8 v4, v4, 0x1

    ushr-int/lit8 v4, v4, 0x1

    .line 104
    .local v4, "newSize$iv":I
    if-gt v4, v5, :cond_52

    .line 105
    const v7, 0x7ffffffd

    if-ge v5, v7, :cond_4c

    .line 106
    const v4, 0x7ffffffd

    goto :goto_52

    .line 105
    :cond_4c
    new-instance v6, Ljava/lang/OutOfMemoryError;

    invoke-direct {v6}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v6

    .line 108
    :cond_52
    :goto_52
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v7

    move v4, v5

    .end local v4    # "newSize$iv":I
    goto :goto_25

    .line 110
    :cond_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6e

    move-object v4, v3

    .local v4, "result":[Ljava/lang/Object;
    move v7, v5

    .local v7, "size":I
    const/4 v8, 0x0

    .line 26
    .local v8, "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$3":I
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .end local v4    # "result":[Ljava/lang/Object;
    .end local v7    # "size":I
    .end local v8    # "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$3":I
    move-object v2, v9

    .line 27
    .end local v0    # "$i$f$toArrayImpl":I
    .end local v1    # "size$iv":I
    .end local v2    # "iter$iv":Ljava/util/Iterator;
    .end local v3    # "result$iv":[Ljava/lang/Object;
    .end local v5    # "i$iv":I
    :goto_6d
    return-object v2

    .line 110
    .restart local v0    # "$i$f$toArrayImpl":I
    .restart local v1    # "size$iv":I
    .restart local v2    # "iter$iv":Ljava/util/Iterator;
    .restart local v3    # "result$iv":[Ljava/lang/Object;
    .restart local v5    # "i$iv":I
    :cond_6e
    move v4, v5

    goto :goto_25
.end method

.method public static final toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 12
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "a"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "This function will be made internal in a future release"
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        warningSince = "1.9"
    .end annotation

    const-string v0, "collection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    if-eqz p1, :cond_99

    .line 37
    const/4 v0, 0x0

    .line 111
    .local v0, "$i$f$toArrayImpl":I
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 112
    .local v1, "size$iv":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_18

    const/4 v4, 0x0

    .line 40
    .local v4, "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$4":I
    array-length v5, p1

    if-lez v5, :cond_16

    aput-object v3, p1, v2

    .line 41
    :cond_16
    nop

    .line 112
    .end local v4    # "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$4":I
    goto :goto_2a

    .line 113
    :cond_18
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 114
    .local v4, "iter$iv":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2d

    const/4 v5, 0x0

    .line 40
    .local v5, "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$4":I
    array-length v6, p1

    if-lez v6, :cond_28

    aput-object v3, p1, v2

    .line 41
    :cond_28
    nop

    .line 114
    .end local v5    # "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$4":I
    nop

    .line 37
    .end local v0    # "$i$f$toArrayImpl":I
    .end local v1    # "size$iv":I
    .end local v4    # "iter$iv":Ljava/util/Iterator;
    :goto_2a
    move-object v2, p1

    goto/16 :goto_96

    .line 115
    .restart local v0    # "$i$f$toArrayImpl":I
    .restart local v1    # "size$iv":I
    .restart local v4    # "iter$iv":Ljava/util/Iterator;
    :cond_2d
    move v2, v1

    .local v2, "size":I
    const/4 v5, 0x0

    .line 45
    .local v5, "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$5":I
    array-length v6, p1

    if-gt v2, v6, :cond_34

    move-object v6, p1

    goto :goto_47

    :cond_34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, [Ljava/lang/Object;

    .line 115
    .end local v2    # "size":I
    .end local v5    # "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$5":I
    :goto_47
    move-object v2, v6

    .line 116
    .local v2, "result$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 118
    .local v5, "i$iv":I
    :goto_49
    nop

    .line 119
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i$iv":I
    .local v6, "i$iv":I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v2, v5

    .line 120
    array-length v5, v2

    const-string v7, "copyOf(...)"

    if-lt v6, v5, :cond_7f

    .line 121
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5e

    goto :goto_96

    .line 125
    :cond_5e
    mul-int/lit8 v5, v6, 0x3

    add-int/lit8 v5, v5, 0x1

    ushr-int/lit8 v5, v5, 0x1

    .line 126
    .local v5, "newSize$iv":I
    if-gt v5, v6, :cond_75

    .line 127
    const v8, 0x7ffffffd

    if-ge v6, v8, :cond_6f

    .line 128
    const v5, 0x7ffffffd

    goto :goto_75

    .line 127
    :cond_6f
    new-instance v3, Ljava/lang/OutOfMemoryError;

    invoke-direct {v3}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v3

    .line 130
    :cond_75
    :goto_75
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v8

    move v5, v6

    .end local v5    # "newSize$iv":I
    goto :goto_49

    .line 132
    :cond_7f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_97

    move-object v5, v2

    .local v5, "result":[Ljava/lang/Object;
    move v8, v6

    .local v8, "size":I
    const/4 v9, 0x0

    .line 48
    .local v9, "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$6":I
    if-ne v5, p1, :cond_8e

    .line 49
    aput-object v3, p1, v8

    .line 50
    move-object v3, p1

    goto :goto_95

    .line 52
    :cond_8e
    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .end local v5    # "result":[Ljava/lang/Object;
    .end local v8    # "size":I
    .end local v9    # "$i$a$-toArrayImpl-CollectionToArray$collectionToArray$6":I
    :goto_95
    move-object v2, v3

    .line 37
    .end local v0    # "$i$f$toArrayImpl":I
    .end local v1    # "size$iv":I
    .end local v2    # "result$iv":[Ljava/lang/Object;
    .end local v4    # "iter$iv":Ljava/util/Iterator;
    .end local v6    # "i$iv":I
    :goto_96
    return-object v2

    .line 132
    .restart local v0    # "$i$f$toArrayImpl":I
    .restart local v1    # "size$iv":I
    .restart local v2    # "result$iv":[Ljava/lang/Object;
    .restart local v4    # "iter$iv":Ljava/util/Iterator;
    .restart local v6    # "i$iv":I
    :cond_97
    move v5, v6

    goto :goto_49

    .line 36
    .end local v0    # "$i$f$toArrayImpl":I
    .end local v1    # "size$iv":I
    .end local v2    # "result$iv":[Ljava/lang/Object;
    .end local v4    # "iter$iv":Ljava/util/Iterator;
    .end local v6    # "i$iv":I
    :cond_99
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static final toArrayImpl(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)[Ljava/lang/Object;
    .registers 12
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "empty"    # Lkotlin/jvm/functions/Function0;
    .param p2, "alloc"    # Lkotlin/jvm/functions/Function1;
    .param p3, "trim"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Lkotlin/jvm/functions/Function0<",
            "[",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-[",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    .local v0, "$i$f$toArrayImpl":I
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 64
    .local v1, "size":I
    if-nez v1, :cond_e

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    return-object v2

    .line 65
    :cond_e
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 66
    .local v2, "iter":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    return-object v3

    .line 67
    :cond_1f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 68
    .local v3, "result":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 70
    .local v4, "i":I
    :goto_2a
    nop

    .line 71
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v4

    .line 72
    array-length v4, v3

    if-lt v5, v4, :cond_60

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3d

    return-object v3

    .line 77
    :cond_3d
    mul-int/lit8 v4, v5, 0x3

    add-int/lit8 v4, v4, 0x1

    ushr-int/lit8 v4, v4, 0x1

    .line 78
    .local v4, "newSize":I
    if-gt v4, v5, :cond_54

    .line 79
    const v6, 0x7ffffffd

    if-ge v5, v6, :cond_4e

    .line 80
    const v4, 0x7ffffffd

    goto :goto_54

    .line 79
    :cond_4e
    new-instance v6, Ljava/lang/OutOfMemoryError;

    invoke-direct {v6}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v6

    .line 82
    :cond_54
    :goto_54
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "copyOf(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v6

    move v4, v5

    .end local v4    # "newSize":I
    goto :goto_2a

    .line 84
    :cond_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_71

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    return-object v4

    :cond_71
    move v4, v5

    goto :goto_2a
.end method
