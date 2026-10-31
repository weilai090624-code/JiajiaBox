.class Lkotlin/text/StringsKt__StringNumberConversionsKt;
.super Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.source "StringNumberConversions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\u0003\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0006\u001a\u001b\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\t\u001a\u0013\u0010\n\u001a\u0004\u0018\u00010\u0008*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u000b\u001a\u001b\u0010\n\u001a\u0004\u0018\u00010\u0008*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\u000c\u001a\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u000f\u001a\u001b\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\u0010\u001a\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0013\u001a\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "numberFormatError",
        "",
        "input",
        "",
        "toByteOrNull",
        "",
        "(Ljava/lang/String;)Ljava/lang/Byte;",
        "radix",
        "",
        "(Ljava/lang/String;I)Ljava/lang/Byte;",
        "toIntOrNull",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "(Ljava/lang/String;I)Ljava/lang/Integer;",
        "toLongOrNull",
        "",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "(Ljava/lang/String;I)Ljava/lang/Long;",
        "toShortOrNull",
        "",
        "(Ljava/lang/String;)Ljava/lang/Short;",
        "(Ljava/lang/String;I)Ljava/lang/Short;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x31
    xs = "kotlin/text/StringsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;-><init>()V

    return-void
.end method

.method public static final numberFormatError(Ljava/lang/String;)Ljava/lang/Void;
    .registers 4
    .param p0, "input"    # Ljava/lang/String;

    const-string v0, "input"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number format: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final toByteOrNull(Ljava/lang/String;)Ljava/lang/Byte;
    .registers 2
    .param p0, "$this$toByteOrNull"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toByteOrNull(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public static final toByteOrNull(Ljava/lang/String;I)Ljava/lang/Byte;
    .registers 5
    .param p0, "$this$toByteOrNull"    # Ljava/lang/String;
    .param p1, "radix"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 28
    .local v0, "int":I
    const/16 v2, -0x80

    if-lt v0, v2, :cond_1f

    const/16 v2, 0x7f

    if-le v0, v2, :cond_19

    goto :goto_1f

    .line 29
    :cond_19
    int-to-byte v1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    .line 28
    :cond_1f
    :goto_1f
    return-object v1

    .line 27
    .end local v0    # "int":I
    :cond_20
    return-object v1
.end method

.method public static final toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "$this$toIntOrNull"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static final toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 14
    .param p0, "$this$toIntOrNull"    # Ljava/lang/String;
    .param p1, "radix"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 70
    .local v0, "length":I
    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    .line 72
    :cond_10
    const/4 v2, 0x0

    .line 73
    .local v2, "start":I
    const/4 v3, 0x0

    .line 74
    .local v3, "isNegative":Z
    const/4 v4, 0x0

    .line 76
    .local v4, "limit":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 77
    .local v5, "firstChar":C
    const/16 v6, 0x30

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gez v6, :cond_32

    .line 78
    const/4 v6, 0x1

    if-ne v0, v6, :cond_24

    return-object v1

    .line 80
    :cond_24
    const/4 v2, 0x1

    .line 82
    packed-switch v5, :pswitch_data_6c

    .line 89
    :pswitch_28
    return-object v1

    .line 83
    :pswitch_29
    const/4 v3, 0x1

    .line 84
    const/high16 v4, -0x80000000

    goto :goto_37

    .line 86
    :pswitch_2d
    const/4 v3, 0x0

    .line 87
    const v4, -0x7fffffff

    goto :goto_37

    .line 91
    :cond_32
    const/4 v2, 0x0

    .line 92
    const/4 v3, 0x0

    .line 93
    const v4, -0x7fffffff

    .line 97
    :goto_37
    const v6, -0x38e38e3

    .line 99
    .local v6, "limitForMaxRadix":I
    move v7, v6

    .line 100
    .local v7, "limitBeforeMul":I
    const/4 v8, 0x0

    .line 101
    .local v8, "result":I
    move v9, v2

    .local v9, "i":I
    :goto_3d
    if-ge v9, v0, :cond_5f

    .line 102
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, p1}, Lkotlin/text/CharsKt;->digitOf(CI)I

    move-result v10

    .line 104
    .local v10, "digit":I
    if-gez v10, :cond_4a

    return-object v1

    .line 105
    :cond_4a
    if-ge v8, v7, :cond_54

    .line 106
    if-ne v7, v6, :cond_53

    .line 107
    div-int v7, v4, p1

    .line 109
    if-ge v8, v7, :cond_54

    .line 110
    return-object v1

    .line 113
    :cond_53
    return-object v1

    .line 117
    :cond_54
    mul-int v8, v8, p1

    .line 119
    add-int v11, v4, v10

    if-ge v8, v11, :cond_5b

    return-object v1

    .line 121
    :cond_5b
    sub-int/2addr v8, v10

    .line 101
    .end local v10    # "digit":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    .line 124
    .end local v9    # "i":I
    :cond_5f
    if-eqz v3, :cond_66

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6b

    :cond_66
    neg-int v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_6b
    return-object v1

    :pswitch_data_6c
    .packed-switch 0x2b
        :pswitch_2d
        :pswitch_28
        :pswitch_29
    .end packed-switch
.end method

.method public static final toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2
    .param p0, "$this$toLongOrNull"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static final toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 22
    .param p0, "$this$toLongOrNull"    # Ljava/lang/String;
    .param p1, "radix"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-static/range {p1 .. p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 144
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 145
    .local v2, "length":I
    const/4 v3, 0x0

    if-nez v2, :cond_14

    return-object v3

    .line 147
    :cond_14
    const/4 v4, 0x0

    .line 148
    .local v4, "start":I
    const/4 v5, 0x0

    .line 149
    .local v5, "isNegative":Z
    const-wide/16 v6, 0x0

    .line 151
    .local v6, "limit":J
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 152
    .local v8, "firstChar":C
    const/16 v9, 0x30

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v9

    if-gez v9, :cond_39

    .line 153
    const/4 v9, 0x1

    if-ne v2, v9, :cond_29

    return-object v3

    .line 155
    :cond_29
    const/4 v4, 0x1

    .line 157
    packed-switch v8, :pswitch_data_9e

    .line 164
    :pswitch_2d
    return-object v3

    .line 158
    :pswitch_2e
    const/4 v5, 0x1

    .line 159
    const-wide/high16 v6, -0x8000000000000000L

    goto :goto_40

    .line 161
    :pswitch_32
    const/4 v5, 0x0

    .line 162
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_40

    .line 166
    :cond_39
    const/4 v4, 0x0

    .line 167
    const/4 v5, 0x0

    .line 168
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 172
    :goto_40
    const-wide v9, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 174
    .local v9, "limitForMaxRadix":J
    move-wide v11, v9

    .line 175
    .local v11, "limitBeforeMul":J
    const-wide/16 v13, 0x0

    .line 176
    .local v13, "result":J
    move v15, v4

    .local v15, "i":I
    :goto_49
    if-ge v15, v2, :cond_8c

    .line 177
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v1}, Lkotlin/text/CharsKt;->digitOf(CI)I

    move-result v3

    .line 179
    .local v3, "digit":I
    if-gez v3, :cond_58

    const/16 v16, 0x0

    return-object v16

    .line 180
    :cond_58
    cmp-long v17, v13, v11

    if-gez v17, :cond_72

    .line 181
    cmp-long v17, v11, v9

    if-nez v17, :cond_70

    .line 182
    move/from16 v17, v8

    move-wide/from16 v18, v9

    .end local v8    # "firstChar":C
    .end local v9    # "limitForMaxRadix":J
    .local v17, "firstChar":C
    .local v18, "limitForMaxRadix":J
    int-to-long v8, v1

    div-long v8, v6, v8

    .line 184
    .end local v11    # "limitBeforeMul":J
    .local v8, "limitBeforeMul":J
    cmp-long v10, v13, v8

    if-gez v10, :cond_6d

    .line 185
    const/4 v10, 0x0

    return-object v10

    .line 184
    :cond_6d
    const/4 v10, 0x0

    move-wide v11, v8

    goto :goto_76

    .line 188
    .end local v17    # "firstChar":C
    .end local v18    # "limitForMaxRadix":J
    .local v8, "firstChar":C
    .restart local v9    # "limitForMaxRadix":J
    .restart local v11    # "limitBeforeMul":J
    :cond_70
    const/4 v10, 0x0

    return-object v10

    .line 180
    :cond_72
    move/from16 v17, v8

    move-wide/from16 v18, v9

    .line 192
    .end local v8    # "firstChar":C
    .end local v9    # "limitForMaxRadix":J
    .restart local v17    # "firstChar":C
    .restart local v18    # "limitForMaxRadix":J
    :goto_76
    int-to-long v8, v1

    mul-long v13, v13, v8

    .line 194
    int-to-long v8, v3

    add-long/2addr v8, v6

    cmp-long v10, v13, v8

    if-gez v10, :cond_81

    const/4 v8, 0x0

    return-object v8

    .line 196
    :cond_81
    const/4 v8, 0x0

    int-to-long v9, v3

    sub-long/2addr v13, v9

    .line 176
    .end local v3    # "digit":I
    add-int/lit8 v15, v15, 0x1

    move-object v3, v8

    move/from16 v8, v17

    move-wide/from16 v9, v18

    goto :goto_49

    .end local v17    # "firstChar":C
    .end local v18    # "limitForMaxRadix":J
    .restart local v8    # "firstChar":C
    .restart local v9    # "limitForMaxRadix":J
    :cond_8c
    move/from16 v17, v8

    move-wide/from16 v18, v9

    .line 199
    .end local v8    # "firstChar":C
    .end local v9    # "limitForMaxRadix":J
    .end local v15    # "i":I
    .restart local v17    # "firstChar":C
    .restart local v18    # "limitForMaxRadix":J
    if-eqz v5, :cond_97

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_9c

    :cond_97
    neg-long v8, v13

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_9c
    return-object v3

    nop

    :pswitch_data_9e
    .packed-switch 0x2b
        :pswitch_32
        :pswitch_2d
        :pswitch_2e
    .end packed-switch
.end method

.method public static final toShortOrNull(Ljava/lang/String;)Ljava/lang/Short;
    .registers 2
    .param p0, "$this$toShortOrNull"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toShortOrNull(Ljava/lang/String;I)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static final toShortOrNull(Ljava/lang/String;I)Ljava/lang/Short;
    .registers 5
    .param p0, "$this$toShortOrNull"    # Ljava/lang/String;
    .param p1, "radix"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    .local v0, "int":I
    const/16 v2, -0x8000

    if-lt v0, v2, :cond_1f

    const/16 v2, 0x7fff

    if-le v0, v2, :cond_19

    goto :goto_1f

    .line 49
    :cond_19
    int-to-short v1, v0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    .line 48
    :cond_1f
    :goto_1f
    return-object v1

    .line 47
    .end local v0    # "int":I
    :cond_20
    return-object v1
.end method
