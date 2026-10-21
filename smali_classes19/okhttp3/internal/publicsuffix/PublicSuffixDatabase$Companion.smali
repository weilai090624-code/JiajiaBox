.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000cJ)\u0010\u000e\u001a\u0004\u0018\u00010\u0007*\u00020\n2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u00a2\u0006\u0002\u0010\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;",
        "",
        "()V",
        "EXCEPTION_MARKER",
        "",
        "PREVAILING_RULE",
        "",
        "",
        "PUBLIC_SUFFIX_RESOURCE",
        "WILDCARD_LABEL",
        "",
        "instance",
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;",
        "get",
        "binarySearch",
        "labels",
        "",
        "labelIndex",
        "",
        "([B[[BI)Ljava/lang/String;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;
    .registers 5
    .param p0, "$this"    # Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;
    .param p1, "$receiver"    # [B
    .param p2, "labels"    # [[B
    .param p3, "labelIndex"    # I

    .line 239
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->binarySearch([B[[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final binarySearch([B[[BI)Ljava/lang/String;
    .registers 22
    .param p1, "$this$binarySearch"    # [B
    .param p2, "labels"    # [[B
    .param p3, "labelIndex"    # I

    .line 257
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 258
    .local v1, "low":I
    array-length v2, v0

    .line 259
    .local v2, "high":I
    const/4 v3, 0x0

    .line 260
    .local v3, "match":Ljava/lang/String;
    :goto_5
    if-ge v1, v2, :cond_b9

    .line 261
    add-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    .line 264
    .local v4, "mid":I
    :goto_b
    const/16 v5, 0xa

    const/4 v6, -0x1

    if-le v4, v6, :cond_18

    aget-byte v6, v0, v4

    int-to-byte v7, v5

    if-eq v6, v7, :cond_18

    .line 265
    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    .line 267
    :cond_18
    add-int/lit8 v4, v4, 0x1

    .line 270
    const/4 v6, 0x1

    .line 271
    .local v6, "end":I
    :goto_1b
    add-int v7, v4, v6

    aget-byte v7, v0, v7

    int-to-byte v8, v5

    if-eq v7, v8, :cond_25

    .line 272
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 274
    :cond_25
    add-int v5, v4, v6

    sub-int/2addr v5, v4

    .local v5, "publicSuffixLength":I
    const/4 v7, 0x0

    .line 279
    .local v7, "compareResult":I
    move/from16 v8, p3

    .line 280
    .local v8, "currentLabelIndex":I
    const/4 v9, 0x0

    .line 281
    .local v9, "currentLabelByteIndex":I
    const/4 v10, 0x0

    .line 283
    .local v10, "publicSuffixByteIndex":I
    const/4 v11, 0x0

    .line 284
    .local v11, "expectDot":Z
    :goto_2e
    const/4 v12, 0x0

    .line 286
    .local v12, "byte0":I
    const/16 v13, 0xff

    if-eqz v11, :cond_37

    .line 287
    const/16 v12, 0x2e

    .line 288
    const/4 v11, 0x0

    goto :goto_3f

    .line 290
    :cond_37
    aget-object v14, p2, v8

    aget-byte v14, v14, v9

    invoke-static {v14, v13}, Lokhttp3/internal/Util;->and(BI)I

    move-result v12

    .line 293
    :goto_3f
    add-int v14, v4, v10

    aget-byte v14, v0, v14

    invoke-static {v14, v13}, Lokhttp3/internal/Util;->and(BI)I

    move-result v13

    .line 295
    .local v13, "byte1":I
    sub-int v7, v12, v13

    .line 296
    if-eqz v7, :cond_4c

    goto :goto_62

    .line 298
    :cond_4c
    add-int/lit8 v10, v10, 0x1

    .line 299
    add-int/lit8 v9, v9, 0x1

    .line 300
    if-ne v10, v5, :cond_53

    goto :goto_62

    .line 302
    :cond_53
    aget-object v14, p2, v8

    array-length v14, v14

    if-ne v14, v9, :cond_b5

    .line 305
    move-object/from16 v14, p2

    check-cast v14, [Ljava/lang/Object;

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    if-ne v8, v14, :cond_ad

    .line 306
    nop

    .line 315
    .end local v12    # "byte0":I
    .end local v13    # "byte1":I
    :goto_62
    if-gez v7, :cond_67

    .line 316
    add-int/lit8 v2, v4, -0x1

    goto :goto_5

    .line 317
    :cond_67
    if-lez v7, :cond_6e

    .line 318
    add-int v12, v4, v6

    add-int/lit8 v1, v12, 0x1

    goto :goto_5

    .line 321
    :cond_6e
    sub-int v12, v5, v10

    .line 322
    .local v12, "publicSuffixBytesLeft":I
    aget-object v13, p2, v8

    array-length v13, v13

    sub-int/2addr v13, v9

    .line 323
    .local v13, "labelBytesLeft":I
    add-int/lit8 v14, v8, 0x1

    move-object/from16 v15, p2

    check-cast v15, [Ljava/lang/Object;

    array-length v15, v15

    if-ge v14, v15, :cond_8d

    :goto_7d
    move/from16 v16, v14

    .local v16, "i":I
    add-int/lit8 v14, v14, 0x1

    .line 324
    move/from16 v17, v1

    .end local v1    # "low":I
    .local v17, "low":I
    aget-object v1, p2, v16

    array-length v1, v1

    add-int/2addr v13, v1

    .line 323
    if-lt v14, v15, :cond_8a

    goto :goto_8f

    :cond_8a
    move/from16 v1, v17

    goto :goto_7d

    .end local v16    # "i":I
    .end local v17    # "low":I
    .restart local v1    # "low":I
    :cond_8d
    move/from16 v17, v1

    .line 327
    .end local v1    # "low":I
    .restart local v17    # "low":I
    :goto_8f
    if-ge v13, v12, :cond_97

    .line 328
    add-int/lit8 v2, v4, -0x1

    move/from16 v1, v17

    goto/16 :goto_5

    .line 329
    :cond_97
    if-le v13, v12, :cond_9f

    .line 330
    add-int v1, v4, v6

    add-int/lit8 v1, v1, 0x1

    .end local v17    # "low":I
    .restart local v1    # "low":I
    goto/16 :goto_5

    .line 333
    .end local v1    # "low":I
    .restart local v17    # "low":I
    :cond_9f
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v14, "UTF_8"

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v0, v4, v5, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v3, v14

    .line 334
    goto :goto_bb

    .line 308
    .end local v17    # "low":I
    .restart local v1    # "low":I
    .local v12, "byte0":I
    .local v13, "byte1":I
    :cond_ad
    move/from16 v17, v1

    .end local v1    # "low":I
    .restart local v17    # "low":I
    add-int/lit8 v8, v8, 0x1

    .line 309
    const/4 v9, -0x1

    .line 310
    const/4 v11, 0x1

    .end local v12    # "byte0":I
    .end local v13    # "byte1":I
    goto/16 :goto_2e

    .line 302
    .end local v17    # "low":I
    .restart local v1    # "low":I
    .restart local v12    # "byte0":I
    .restart local v13    # "byte1":I
    :cond_b5
    move/from16 v17, v1

    .end local v1    # "low":I
    .restart local v17    # "low":I
    goto/16 :goto_2e

    .line 260
    .end local v4    # "mid":I
    .end local v5    # "publicSuffixLength":I
    .end local v6    # "end":I
    .end local v7    # "compareResult":I
    .end local v8    # "currentLabelIndex":I
    .end local v9    # "currentLabelByteIndex":I
    .end local v10    # "publicSuffixByteIndex":I
    .end local v11    # "expectDot":Z
    .end local v12    # "byte0":I
    .end local v13    # "byte1":I
    .end local v17    # "low":I
    .restart local v1    # "low":I
    :cond_b9
    move/from16 v17, v1

    .line 338
    .end local v1    # "low":I
    .restart local v17    # "low":I
    :goto_bb
    return-object v3
.end method


# virtual methods
.method public final get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .registers 2

    .line 250
    # getter for: Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->access$getInstance$cp()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v0

    return-object v0
.end method
