.class public final Lokhttp3/CacheControl$Companion;
.super Ljava/lang/Object;
.source "CacheControl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u001e\u0010\t\u001a\u00020\n*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\nH\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lokhttp3/CacheControl$Companion;",
        "",
        "()V",
        "FORCE_CACHE",
        "Lokhttp3/CacheControl;",
        "FORCE_NETWORK",
        "parse",
        "headers",
        "Lokhttp3/Headers;",
        "indexOfElement",
        "",
        "",
        "characters",
        "startIndex",
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
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/CacheControl$Companion;-><init>()V

    return-void
.end method

.method private final indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "$this$indexOfElement"    # Ljava/lang/String;
    .param p2, "characters"    # Ljava/lang/String;
    .param p3, "startIndex"    # I

    .line 407
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p3, v0, :cond_2

    move v1, p3

    :cond_0
    move v2, v1

    .local v2, "i":I
    add-int/lit8 v1, v1, 0x1

    .line 408
    move-object v3, p2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v7, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 409
    return v2

    .line 407
    :cond_1
    if-lt v1, v0, :cond_0

    .line 412
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method static synthetic indexOfElement$default(Lokhttp3/CacheControl$Companion;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    .line 406
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 38
    .param p1, "headers"    # Lokhttp3/Headers;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "headers"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    const/4 v2, 0x0

    .line 286
    .local v2, "noCache":Z
    const/4 v3, 0x0

    .line 287
    .local v3, "noStore":Z
    const/4 v4, -0x1

    .line 288
    .local v4, "maxAgeSeconds":I
    const/4 v5, -0x1

    .line 289
    .local v5, "sMaxAgeSeconds":I
    const/4 v6, 0x0

    .line 290
    .local v6, "isPrivate":Z
    const/4 v7, 0x0

    .line 291
    .local v7, "isPublic":Z
    const/4 v8, 0x0

    .line 292
    .local v8, "mustRevalidate":Z
    const/4 v9, -0x1

    .line 293
    .local v9, "maxStaleSeconds":I
    const/4 v10, -0x1

    .line 294
    .local v10, "minFreshSeconds":I
    const/4 v11, 0x0

    .line 295
    .local v11, "onlyIfCached":Z
    const/4 v12, 0x0

    .line 296
    .local v12, "noTransform":Z
    const/4 v13, 0x0

    .line 298
    .local v13, "immutable":Z
    const/4 v14, 0x1

    .line 299
    .local v14, "canUseHeaderValue":Z
    const/4 v15, 0x0

    .line 301
    .local v15, "headerValue":Ljava/lang/String;
    move/from16 v16, v2

    .end local v2    # "noCache":Z
    .local v16, "noCache":Z
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    move-result v2

    if-lez v2, :cond_1a

    const/16 v17, 0x0

    :goto_0
    move/from16 v18, v17

    move/from16 v19, v3

    .end local v3    # "noStore":Z
    .local v18, "i":I
    .local v19, "noStore":Z
    const/4 v3, 0x1

    move/from16 v20, v4

    .end local v4    # "maxAgeSeconds":I
    .local v20, "maxAgeSeconds":I
    add-int/lit8 v4, v17, 0x1

    .line 302
    move/from16 v3, v18

    move/from16 v18, v5

    .end local v5    # "sMaxAgeSeconds":I
    .local v3, "i":I
    .local v18, "sMaxAgeSeconds":I
    invoke-virtual {v1, v3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, "name":Ljava/lang/String;
    move/from16 v21, v6

    .end local v6    # "isPrivate":Z
    .local v21, "isPrivate":Z
    invoke-virtual {v1, v3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    .line 305
    .local v6, "value":Ljava/lang/String;
    nop

    .line 306
    const-string v1, "Cache-Control"

    move/from16 v22, v3

    const/4 v3, 0x1

    .end local v3    # "i":I
    .local v22, "i":I
    invoke-static {v5, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    if-eqz v15, :cond_0

    .line 309
    const/4 v14, 0x0

    goto :goto_1

    .line 311
    :cond_0
    move-object v15, v6

    goto :goto_1

    .line 314
    :cond_1
    const-string v1, "Pragma"

    const/4 v3, 0x1

    invoke-static {v5, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 316
    const/4 v14, 0x0

    .line 323
    :goto_1
    const/4 v1, 0x0

    move/from16 v3, v19

    .line 324
    .end local v19    # "noStore":Z
    .local v1, "pos":I
    .local v3, "noStore":Z
    :goto_2
    move/from16 v19, v3

    .end local v3    # "noStore":Z
    .restart local v19    # "noStore":Z
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_17

    .line 325
    move v3, v1

    .line 326
    .local v3, "tokenStart":I
    move-object/from16 v23, v5

    .end local v5    # "name":Ljava/lang/String;
    .local v23, "name":Ljava/lang/String;
    const-string v5, "=,;"

    invoke-direct {v0, v6, v5, v1}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 327
    const-string v5, "null cannot be cast to non-null type java.lang.String"

    if-eqz v6, :cond_16

    move/from16 v24, v7

    .end local v7    # "isPublic":Z
    .local v24, "isPublic":Z
    invoke-virtual {v6, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move/from16 v25, v3

    .end local v3    # "tokenStart":I
    .local v25, "tokenStart":I
    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v26, v8

    .end local v8    # "mustRevalidate":Z
    .local v26, "mustRevalidate":Z
    const-string v8, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz v7, :cond_15

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "directive":Ljava/lang/String;
    const/16 v27, 0x0

    .line 330
    .local v27, "parameter":Ljava/lang/String;
    move/from16 v28, v9

    .end local v9    # "maxStaleSeconds":I
    .local v28, "maxStaleSeconds":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v1, v9, :cond_7

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move/from16 v29, v10

    .end local v10    # "minFreshSeconds":I
    .local v29, "minFreshSeconds":I
    const/16 v10, 0x2c

    if-eq v9, v10, :cond_8

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3b

    if-ne v9, v10, :cond_2

    goto :goto_3

    .line 334
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 335
    invoke-static {v6, v1}, Lokhttp3/internal/Util;->indexOfNonWhitespace(Ljava/lang/String;I)I

    move-result v1

    .line 337
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_4

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x22

    if-ne v9, v10, :cond_4

    .line 339
    add-int/lit8 v1, v1, 0x1

    .line 340
    move v8, v1

    .line 341
    .local v8, "parameterStart":I
    move-object/from16 v30, v6

    check-cast v30, Ljava/lang/CharSequence;

    const/16 v34, 0x4

    const/16 v35, 0x0

    const/16 v31, 0x22

    const/16 v33, 0x0

    move/from16 v32, v1

    invoke-static/range {v30 .. v35}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    .line 342
    if-eqz v6, :cond_3

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v5

    .line 343
    .end local v27    # "parameter":Ljava/lang/String;
    .local v3, "parameter":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .end local v8    # "parameterStart":I
    goto :goto_4

    .line 342
    .end local v3    # "parameter":Ljava/lang/String;
    .restart local v8    # "parameterStart":I
    .restart local v27    # "parameter":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 346
    .end local v8    # "parameterStart":I
    :cond_4
    move v9, v1

    .line 347
    .local v9, "parameterStart":I
    const-string v10, ",;"

    invoke-direct {v0, v6, v10, v1}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 348
    if-eqz v6, :cond_6

    invoke-virtual {v6, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v27    # "parameter":Ljava/lang/String;
    .restart local v3    # "parameter":Ljava/lang/String;
    goto :goto_4

    .end local v3    # "parameter":Ljava/lang/String;
    .restart local v27    # "parameter":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 330
    .end local v9    # "parameterStart":I
    .end local v29    # "minFreshSeconds":I
    .restart local v10    # "minFreshSeconds":I
    :cond_7
    move/from16 v29, v10

    .line 331
    .end local v10    # "minFreshSeconds":I
    .restart local v29    # "minFreshSeconds":I
    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 332
    const/4 v3, 0x0

    .line 352
    .end local v27    # "parameter":Ljava/lang/String;
    .restart local v3    # "parameter":Ljava/lang/String;
    :goto_4
    nop

    .line 353
    const-string v5, "no-cache"

    const/4 v9, 0x1

    invoke-static {v5, v7, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 354
    const/16 v16, 0x1

    move/from16 v3, v19

    move-object/from16 v5, v23

    move/from16 v7, v24

    move/from16 v8, v26

    move/from16 v9, v28

    move/from16 v10, v29

    goto/16 :goto_2

    .line 356
    :cond_9
    const-string v5, "no-store"

    invoke-static {v5, v7, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 357
    const/4 v5, 0x1

    move v3, v5

    move-object/from16 v5, v23

    move/from16 v7, v24

    move/from16 v8, v26

    move/from16 v9, v28

    move/from16 v10, v29

    .end local v19    # "noStore":Z
    .local v5, "noStore":Z
    goto/16 :goto_2

    .line 359
    .end local v5    # "noStore":Z
    .restart local v19    # "noStore":Z
    :cond_a
    const-string v5, "max-age"

    invoke-static {v5, v7, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    const/4 v8, -0x1

    if-eqz v5, :cond_b

    .line 360
    invoke-static {v3, v8}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v3, v19

    move-object/from16 v5, v23

    move/from16 v7, v24

    move/from16 v8, v26

    move/from16 v9, v28

    move/from16 v10, v29

    goto/16 :goto_2

    .line 362
    :cond_b
    const-string v5, "s-maxage"

    invoke-static {v5, v7, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 363
    invoke-static {v3, v8}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v3, v19

    move-object/from16 v5, v23

    move/from16 v7, v24

    move/from16 v8, v26

    move/from16 v9, v28

    move/from16 v10, v29

    goto/16 :goto_2

    .line 365
    :cond_c
    const-string v5, "private"

    invoke-static {v5, v7, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 366
    const/16 v21, 0x1

    move/from16 v3, v19

    move-object/from16 v5, v23

    move/from16 v7, v24

    move/from16 v8, v26

    move/from16 v9, v28

    move/from16 v10, v29

    goto/16 :goto_2

    .line 368
    :cond_d
    const-string v5, "public"

    invoke-static {v5, v7, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 369
    const/4 v5, 0x1

    move v7, v5

    move/from16 v3, v19

    move-object/from16 v5, v23

    move/from16 v8, v26

    move/from16 v9, v28

    move/from16 v10, v29

    .end local v24    # "isPublic":Z
    .local v5, "isPublic":Z
    goto/16 :goto_2

    .line 371
    .end local v5    # "isPublic":Z
    .restart local v24    # "isPublic":Z
    :cond_e
    const-string v5, "must-revalidate"

    invoke-static {v5, v7, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 372
    const/4 v8, 0x1

    move/from16 v3, v19

    move-object/from16 v5, v23

    move/from16 v7, v24

    move/from16 v9, v28

    move/from16 v10, v29

    .end local v26    # "mustRevalidate":Z
    .local v8, "mustRevalidate":Z
    goto/16 :goto_2

    .line 374
    .end local v8    # "mustRevalidate":Z
    .restart local v26    # "mustRevalidate":Z
    :cond_f
    const-string v5, "max-stale"

    invoke-static {v5, v7, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 375
    const v5, 0x7fffffff

    invoke-static {v3, v5}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v5

    move v9, v5

    move/from16 v3, v19

    move-object/from16 v5, v23

    move/from16 v7, v24

    move/from16 v8, v26

    move/from16 v10, v29

    .end local v28    # "maxStaleSeconds":I
    .local v5, "maxStaleSeconds":I
    goto/16 :goto_2

    .line 377
    .end local v5    # "maxStaleSeconds":I
    .restart local v28    # "maxStaleSeconds":I
    :cond_10
    const-string v5, "min-fresh"

    invoke-static {v5, v7, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 378
    invoke-static {v3, v8}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v10

    move/from16 v3, v19

    move-object/from16 v5, v23

    move/from16 v7, v24

    move/from16 v8, v26

    move/from16 v9, v28

    .end local v29    # "minFreshSeconds":I
    .restart local v10    # "minFreshSeconds":I
    goto/16 :goto_2

    .line 380
    .end local v10    # "minFreshSeconds":I
    .restart local v29    # "minFreshSeconds":I
    :cond_11
    const-string v5, "only-if-cached"

    invoke-static {v5, v7, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 381
    const/4 v11, 0x1

    move/from16 v3, v19

    move-object/from16 v5, v23

    move/from16 v7, v24

    move/from16 v8, v26

    move/from16 v9, v28

    move/from16 v10, v29

    goto/16 :goto_2

    .line 383
    :cond_12
    const-string v5, "no-transform"

    invoke-static {v5, v7, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 384
    const/4 v12, 0x1

    move/from16 v3, v19

    move-object/from16 v5, v23

    move/from16 v7, v24

    move/from16 v8, v26

    move/from16 v9, v28

    move/from16 v10, v29

    goto/16 :goto_2

    .line 386
    :cond_13
    const-string v5, "immutable"

    invoke-static {v5, v7, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 387
    const/4 v13, 0x1

    move/from16 v3, v19

    move-object/from16 v5, v23

    move/from16 v7, v24

    move/from16 v8, v26

    move/from16 v9, v28

    move/from16 v10, v29

    .end local v3    # "parameter":Ljava/lang/String;
    .end local v7    # "directive":Ljava/lang/String;
    .end local v25    # "tokenStart":I
    goto/16 :goto_2

    .line 386
    .restart local v3    # "parameter":Ljava/lang/String;
    .restart local v7    # "directive":Ljava/lang/String;
    .restart local v25    # "tokenStart":I
    :cond_14
    move/from16 v3, v19

    move-object/from16 v5, v23

    move/from16 v7, v24

    move/from16 v8, v26

    move/from16 v9, v28

    move/from16 v10, v29

    goto/16 :goto_2

    .line 327
    .end local v3    # "parameter":Ljava/lang/String;
    .end local v7    # "directive":Ljava/lang/String;
    .end local v28    # "maxStaleSeconds":I
    .end local v29    # "minFreshSeconds":I
    .local v9, "maxStaleSeconds":I
    .restart local v10    # "minFreshSeconds":I
    :cond_15
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v24    # "isPublic":Z
    .end local v25    # "tokenStart":I
    .end local v26    # "mustRevalidate":Z
    .local v3, "tokenStart":I
    .local v7, "isPublic":Z
    .restart local v8    # "mustRevalidate":Z
    :cond_16
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    .end local v3    # "tokenStart":I
    .end local v23    # "name":Ljava/lang/String;
    .local v5, "name":Ljava/lang/String;
    :cond_17
    move-object/from16 v23, v5

    move/from16 v24, v7

    move/from16 v26, v8

    move/from16 v28, v9

    move/from16 v29, v10

    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "isPublic":Z
    .end local v8    # "mustRevalidate":Z
    .end local v9    # "maxStaleSeconds":I
    .end local v10    # "minFreshSeconds":I
    .restart local v23    # "name":Ljava/lang/String;
    .restart local v24    # "isPublic":Z
    .restart local v26    # "mustRevalidate":Z
    .restart local v28    # "maxStaleSeconds":I
    .restart local v29    # "minFreshSeconds":I
    move/from16 v5, v18

    move/from16 v3, v19

    move/from16 v6, v21

    goto :goto_5

    .line 319
    .end local v1    # "pos":I
    .end local v23    # "name":Ljava/lang/String;
    .end local v24    # "isPublic":Z
    .end local v26    # "mustRevalidate":Z
    .end local v28    # "maxStaleSeconds":I
    .end local v29    # "minFreshSeconds":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "isPublic":Z
    .restart local v8    # "mustRevalidate":Z
    .restart local v9    # "maxStaleSeconds":I
    .restart local v10    # "minFreshSeconds":I
    :cond_18
    move-object/from16 v23, v5

    .end local v5    # "name":Ljava/lang/String;
    .restart local v23    # "name":Ljava/lang/String;
    move/from16 v5, v18

    move/from16 v3, v19

    move/from16 v6, v21

    .line 301
    .end local v18    # "sMaxAgeSeconds":I
    .end local v19    # "noStore":Z
    .end local v21    # "isPrivate":Z
    .end local v23    # "name":Ljava/lang/String;
    .local v3, "noStore":Z
    .local v5, "sMaxAgeSeconds":I
    .local v6, "isPrivate":Z
    :goto_5
    if-lt v4, v2, :cond_19

    move/from16 v2, v16

    move/from16 v4, v20

    goto :goto_6

    :cond_19
    move-object/from16 v1, p1

    move/from16 v17, v4

    move/from16 v4, v20

    goto/16 :goto_0

    .end local v20    # "maxAgeSeconds":I
    .end local v22    # "i":I
    .restart local v4    # "maxAgeSeconds":I
    :cond_1a
    move/from16 v2, v16

    .line 393
    .end local v16    # "noCache":Z
    .restart local v2    # "noCache":Z
    :goto_6
    if-nez v14, :cond_1b

    .line 394
    const/4 v15, 0x0

    .line 397
    :cond_1b
    new-instance v1, Lokhttp3/CacheControl;

    .line 398
    nop

    .line 399
    nop

    .line 397
    const/16 v37, 0x0

    move-object/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v8

    move/from16 v31, v9

    move/from16 v32, v10

    move/from16 v33, v11

    move/from16 v34, v12

    move/from16 v35, v13

    move-object/from16 v36, v15

    invoke-direct/range {v23 .. v37}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
