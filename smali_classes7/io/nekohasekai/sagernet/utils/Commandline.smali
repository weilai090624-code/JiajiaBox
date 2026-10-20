.class public final Lio/nekohasekai/sagernet/utils/Commandline;
.super Ljava/lang/Object;
.source "Commandline.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommandline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Commandline.kt\nio/nekohasekai/sagernet/utils/Commandline\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,141:1\n1557#2:142\n1628#2,3:143\n1863#2,2:146\n1#3:148\n37#4,2:149\n*S KotlinDebug\n*F\n+ 1 Commandline.kt\nio/nekohasekai/sagernet/utils/Commandline\n*L\n43#1:142\n43#1:143,3\n43#1:146,2\n138#1:149,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u001c\n\u0002\u0010\u0011\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007J\u0019\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008\u00a2\u0006\u0002\u0010\tJ\u001b\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/utils/Commandline;",
        "",
        "<init>",
        "()V",
        "toString",
        "",
        "args",
        "",
        "",
        "([Ljava/lang/String;)Ljava/lang/String;",
        "translateCommandline",
        "toProcess",
        "(Ljava/lang/String;)[Ljava/lang/String;",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/nekohasekai/sagernet/utils/Commandline;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/nekohasekai/sagernet/utils/Commandline;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/utils/Commandline;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/utils/Commandline;->INSTANCE:Lio/nekohasekai/sagernet/utils/Commandline;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 12
    .param p1, "args"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 38
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 42
    .local v2, "arg":Ljava/lang/String;
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    :cond_2
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->getIndices(Ljava/lang/CharSequence;)Lkotlin/ranges/IntRange;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 142
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 143
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v8

    check-cast v9, Lkotlin/collections/IntIterator;

    invoke-virtual {v9}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v9

    .line 144
    .local v9, "item$iv$iv":I
    move v10, v9

    .local v10, "it":I
    const/4 v11, 0x0

    .line 43
    .local v11, "$i$a$-map-Commandline$toString$1":I
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .end local v10    # "it":I
    .end local v11    # "$i$a$-map-Commandline$toString$1":I
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    .line 144
    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 145
    .end local v9    # "item$iv$iv":I
    :cond_3
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    check-cast v5, Ljava/util/List;

    .line 142
    nop

    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    check-cast v5, Ljava/lang/Iterable;

    .line 43
    move-object v3, v5

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 146
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Character;

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    .local v7, "it":C
    const/4 v8, 0x0

    .line 44
    .local v8, "$i$a$-forEach-Commandline$toString$2":I
    sparse-switch v7, :sswitch_data_0

    .line 49
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 46
    :sswitch_0
    const/16 v9, 0x5c

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    :goto_4
    nop

    .line 146
    .end local v7    # "it":C
    .end local v8    # "$i$a$-forEach-Commandline$toString$2":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 147
    :cond_4
    nop

    .end local v2    # "arg":Ljava/lang/String;
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    goto/16 :goto_0

    .line 53
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public final toString([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->asIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/utils/Commandline;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final translateCommandline(Ljava/lang/String;)[Ljava/lang/String;
    .locals 16
    .param p1, "toProcess"    # Ljava/lang/String;

    .line 73
    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto/16 :goto_8

    .line 79
    :cond_1
    const/4 v2, 0x0

    .line 80
    .local v2, "normal":I
    const/4 v4, 0x1

    .line 81
    .local v4, "inQuote":I
    const/4 v5, 0x2

    .line 82
    .local v5, "inDoubleQuote":I
    move v6, v2

    .line 83
    .local v6, "state":I
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, "\\\"\' "

    invoke-direct {v7, v0, v8, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    .local v7, "tok":Ljava/util/StringTokenizer;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v8, "result":Ljava/util/ArrayList;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v9, "current":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 87
    .local v10, "lastTokenHasBeenQuoted":Z
    const/4 v11, 0x0

    .line 89
    .local v11, "lastTokenIsSlash":Z
    :goto_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 90
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 91
    .local v12, "nextTok":Ljava/lang/String;
    nop

    .line 92
    const-string v13, "\'"

    if-ne v6, v4, :cond_3

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 93
    const/4 v10, 0x1

    .line 94
    move v6, v2

    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 96
    :cond_3
    const-string v14, "\""

    const-string v15, "\\"

    if-ne v6, v5, :cond_9

    .line 97
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    if-eqz v11, :cond_4

    .line 98
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const/4 v11, 0x0

    goto :goto_1

    .line 101
    :cond_4
    const/4 v10, 0x1

    .line 102
    move v6, v2

    goto :goto_1

    .line 104
    :cond_5
    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    if-eqz v11, :cond_6

    .line 105
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const/4 v13, 0x0

    goto :goto_2

    .line 107
    :cond_6
    const/4 v13, 0x1

    .line 104
    :goto_2
    move v11, v13

    goto :goto_1

    .line 109
    :cond_7
    if-eqz v11, :cond_8

    .line 110
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const/4 v11, 0x0

    .line 113
    :cond_8
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 117
    :cond_9
    nop

    .line 118
    if-eqz v11, :cond_a

    .line 119
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const/4 v11, 0x0

    goto :goto_4

    .line 122
    :cond_a
    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v11, 0x1

    goto :goto_4

    .line 123
    :cond_b
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    move v6, v4

    goto :goto_4

    .line 124
    :cond_c
    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    move v6, v5

    goto :goto_4

    .line 125
    :cond_d
    const-string v13, " "

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    if-nez v10, :cond_f

    move-object v13, v9

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_e

    const/4 v13, 0x1

    goto :goto_3

    :cond_e
    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_11

    .line 126
    :cond_f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_4

    .line 129
    :cond_10
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_11
    :goto_4
    const/4 v10, 0x0

    .end local v12    # "nextTok":Ljava/lang/String;
    goto/16 :goto_1

    .line 135
    :cond_12
    if-nez v10, :cond_14

    move-object v12, v9

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_13

    const/4 v12, 0x1

    goto :goto_5

    :cond_13
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_15

    :cond_14
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_15
    if-eq v6, v4, :cond_16

    if-eq v6, v5, :cond_16

    const/4 v12, 0x1

    goto :goto_6

    :cond_16
    const/4 v12, 0x0

    :goto_6
    if-eqz v12, :cond_19

    .line 137
    if-nez v11, :cond_17

    goto :goto_7

    :cond_17
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_18

    .line 138
    move-object v3, v8

    check-cast v3, Ljava/util/Collection;

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v12, 0x0

    .line 149
    .local v12, "$i$f$toTypedArray":I
    move-object v13, v3

    .line 150
    .local v13, "thisCollection$iv":Ljava/util/Collection;
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v13, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v12    # "$i$f$toTypedArray":I
    .end local v13    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v1, [Ljava/lang/String;

    .line 138
    return-object v1

    .line 148
    :cond_18
    const/4 v1, 0x0

    .line 137
    .local v1, "$i$a$-require-Commandline$translateCommandline$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "escape character following nothing in "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-Commandline$translateCommandline$2":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    :cond_19
    const/4 v1, 0x0

    .line 136
    .local v1, "$i$a$-require-Commandline$translateCommandline$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unbalanced quotes in "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-Commandline$translateCommandline$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    .end local v2    # "normal":I
    .end local v4    # "inQuote":I
    .end local v5    # "inDoubleQuote":I
    .end local v6    # "state":I
    .end local v7    # "tok":Ljava/util/StringTokenizer;
    .end local v8    # "result":Ljava/util/ArrayList;
    .end local v9    # "current":Ljava/lang/StringBuilder;
    .end local v10    # "lastTokenHasBeenQuoted":Z
    .end local v11    # "lastTokenIsSlash":Z
    :cond_1a
    :goto_8
    new-array v1, v1, [Ljava/lang/String;

    .line 75
    return-object v1
.end method
