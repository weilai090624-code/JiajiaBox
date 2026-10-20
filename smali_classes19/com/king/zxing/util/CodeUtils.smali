.class public final Lcom/king/zxing/util/CodeUtils;
.super Ljava/lang/Object;
.source "CodeUtils.java"


# static fields
.field public static final DEFAULT_REQ_HEIGHT:I = 0x280

.field public static final DEFAULT_REQ_WIDTH:I = 0x1e0


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static addCode(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "textSize"    # I
    .param p3, "textColor"    # I
    .param p4, "offset"    # I

    .line 628
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 629
    return-object v0

    .line 632
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    return-object p0

    .line 637
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 638
    .local v1, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 640
    .local v2, "srcHeight":I
    if-lez v1, :cond_3

    if-gtz v2, :cond_2

    goto :goto_1

    .line 646
    :cond_2
    add-int v3, v2, p2

    mul-int/lit8 v4, p4, 0x2

    add-int/2addr v3, v4

    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 647
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 648
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 649
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 650
    .local v0, "paint":Landroid/text/TextPaint;
    int-to-float v5, p2

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 651
    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 652
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 653
    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, p2, 0x2

    add-int/2addr v6, v2

    add-int/2addr v6, p4

    int-to-float v6, v6

    invoke-virtual {v4, p1, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 654
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 655
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .end local v0    # "paint":Landroid/text/TextPaint;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    goto :goto_0

    .line 656
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 658
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    .line 661
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v3

    .line 641
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "logo"    # Landroid/graphics/Bitmap;
    .param p2, "ratio"    # F

    .line 203
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 204
    return-object v0

    .line 207
    :cond_0
    if-nez p1, :cond_1

    .line 208
    return-object p0

    .line 212
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 213
    .local v1, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 214
    .local v2, "srcHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 215
    .local v3, "logoWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 217
    .local v4, "logoHeight":I
    if-eqz v1, :cond_5

    if-nez v2, :cond_2

    goto :goto_2

    .line 221
    :cond_2
    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    goto :goto_1

    .line 226
    :cond_3
    int-to-float v5, v1

    mul-float v5, v5, p2

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 229
    .local v5, "scaleFactor":F
    :try_start_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 230
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 231
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    invoke-virtual {v7, p0, v8, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 232
    div-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    invoke-virtual {v7, v5, v5, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 233
    sub-int v8, v1, v3

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-int v9, v2, v4

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v7, p1, v8, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 234
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 235
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    goto :goto_0

    .line 236
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 238
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v6

    .line 222
    .end local v5    # "scaleFactor":F
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 218
    :cond_5
    :goto_2
    return-object v0
.end method

.method private static compressBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 430
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    .line 432
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 434
    .local v0, "newOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 435
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 436
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    .line 437
    .local v1, "width":F
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    .line 439
    .local v2, "height":F
    const/4 v3, 0x1

    .line 440
    .local v3, "wSize":I
    int-to-float v4, p1

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 441
    int-to-float v4, p1

    div-float v4, v1, v4

    float-to-int v3, v4

    .line 443
    :cond_0
    const/4 v4, 0x1

    .line 444
    .local v4, "hSize":I
    int-to-float v5, p2

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    .line 445
    int-to-float v5, p2

    div-float v5, v2, v5

    float-to-int v4, v5

    .line 447
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 448
    .local v5, "size":I
    if-gtz v5, :cond_2

    .line 449
    const/4 v5, 0x1

    .line 450
    :cond_2
    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 452
    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 454
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 458
    .end local v0    # "newOpts":Landroid/graphics/BitmapFactory$Options;
    .end local v1    # "width":F
    .end local v2    # "height":F
    .end local v3    # "wSize":I
    .end local v4    # "hSize":I
    .end local v5    # "size":I
    :cond_3
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBarCode(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .line 485
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/king/zxing/util/CodeUtils;->createBarCode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBarCode(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I
    .param p3, "isShowText"    # Z

    .line 501
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    const/16 v6, 0x28

    const/high16 v7, -0x1000000

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p3

    invoke-static/range {v0 .. v7}, Lcom/king/zxing/util/CodeUtils;->createBarCode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;ZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBarCode(Ljava/lang/String;IIZI)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I
    .param p3, "isShowText"    # Z
    .param p4, "codeColor"    # I

    .line 514
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    const/4 v4, 0x0

    const/16 v6, 0x28

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/king/zxing/util/CodeUtils;->createBarCode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;ZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBarCode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I

    .line 497
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/king/zxing/util/CodeUtils;->createBarCode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBarCode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 527
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    const/16 v6, 0x28

    const/high16 v7, -0x1000000

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/king/zxing/util/CodeUtils;->createBarCode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;ZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBarCode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I
    .param p5, "isShowText"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;Z)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 541
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    const/16 v6, 0x28

    const/high16 v7, -0x1000000

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/king/zxing/util/CodeUtils;->createBarCode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;ZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBarCode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;ZI)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I
    .param p5, "isShowText"    # Z
    .param p6, "codeColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;ZI)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 569
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    const/16 v6, 0x28

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/king/zxing/util/CodeUtils;->createBarCode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;ZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBarCode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;ZII)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I
    .param p5, "isShowText"    # Z
    .param p6, "textSize"    # I
    .param p7, "codeColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;ZII)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 585
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    move/from16 v1, p6

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 586
    return-object v2

    .line 588
    :cond_0
    const/4 v3, -0x1

    .line 589
    .local v3, "WHITE":I
    move/from16 v4, p7

    .line 591
    .local v4, "BLACK":I
    new-instance v5, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v5}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 593
    .local v5, "writer":Lcom/google/zxing/MultiFormatWriter;
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    :try_start_0
    invoke-virtual/range {v5 .. v10}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 595
    .local v0, "result":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    .line 596
    .local v6, "width":I
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    move v15, v7

    .line 597
    .local v15, "height":I
    mul-int v7, v6, v15

    new-array v7, v7, [I

    move-object/from16 v16, v7

    .line 599
    .local v16, "pixels":[I
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_0
    if-ge v7, v15, :cond_3

    .line 600
    mul-int v8, v7, v6

    .line 601
    .local v8, "offset":I
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_1
    if-ge v9, v6, :cond_2

    .line 602
    add-int v10, v8, v9

    invoke-virtual {v0, v9, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v4

    goto :goto_2

    :cond_1
    const/4 v11, -0x1

    :goto_2
    aput v11, v16, v10

    .line 601
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 599
    .end local v8    # "offset":I
    .end local v9    # "x":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 606
    .end local v7    # "y":I
    :cond_3
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v15, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v14, v7

    .line 608
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object/from16 v8, v16

    move v10, v6

    move v13, v6

    move-object v2, v14

    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move v14, v15

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 609
    if-eqz p5, :cond_4

    .line 610
    div-int/lit8 v7, v1, 0x2
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v8, p0

    move/from16 v9, p7

    :try_start_1
    invoke-static {v2, v8, v1, v9, v7}, Lcom/king/zxing/util/CodeUtils;->addCode(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v7

    .line 613
    .end local v0    # "result":Lcom/google/zxing/common/BitMatrix;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "width":I
    .end local v15    # "height":I
    .end local v16    # "pixels":[I
    :catch_0
    move-exception v0

    goto :goto_3

    .line 612
    .restart local v0    # "result":Lcom/google/zxing/common/BitMatrix;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "width":I
    .restart local v15    # "height":I
    .restart local v16    # "pixels":[I
    :cond_4
    move-object/from16 v8, p0

    move/from16 v9, p7

    return-object v2

    .line 613
    .end local v0    # "result":Lcom/google/zxing/common/BitMatrix;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "width":I
    .end local v15    # "height":I
    .end local v16    # "pixels":[I
    :catch_1
    move-exception v0

    move-object/from16 v8, p0

    move/from16 v9, p7

    .line 614
    .local v0, "e":Lcom/google/zxing/WriterException;
    :goto_3
    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    .line 616
    .end local v0    # "e":Lcom/google/zxing/WriterException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public static createBarCode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IIZI)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I
    .param p4, "isShowText"    # Z
    .param p5, "codeColor"    # I

    .line 555
    const/4 v4, 0x0

    const/16 v6, 0x28

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/king/zxing/util/CodeUtils;->createBarCode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;ZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "heightPix"    # I

    .line 71
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/king/zxing/util/CodeUtils;->createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createQRCode(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "heightPix"    # I
    .param p2, "codeColor"    # I

    .line 82
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/king/zxing/util/CodeUtils;->createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "heightPix"    # I
    .param p2, "logo"    # Landroid/graphics/Bitmap;

    .line 93
    const/high16 v0, -0x1000000

    invoke-static {p0, p1, p2, v0}, Lcom/king/zxing/util/CodeUtils;->createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "heightPix"    # I
    .param p2, "logo"    # Landroid/graphics/Bitmap;
    .param p3, "ratio"    # F

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v0, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {p0, p1, p2, p3, v0}, Lcom/king/zxing/util/CodeUtils;->createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;FLjava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "heightPix"    # I
    .param p2, "logo"    # Landroid/graphics/Bitmap;
    .param p3, "ratio"    # F
    .param p4, "codeColor"    # I

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v0, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v0

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/king/zxing/util/CodeUtils;->createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;FLjava/util/Map;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;FLjava/util/Map;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "heightPix"    # I
    .param p2, "logo"    # Landroid/graphics/Bitmap;
    .param p3, "ratio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/graphics/Bitmap;",
            "F",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 148
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    const/high16 v5, -0x1000000

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/king/zxing/util/CodeUtils;->createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;FLjava/util/Map;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;FLjava/util/Map;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "heightPix"    # I
    .param p2, "logo"    # Landroid/graphics/Bitmap;
    .param p3, "ratio"    # F
    .param p5, "codeColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/graphics/Bitmap;",
            "F",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;I)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 165
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    move v9, p1

    move-object v10, p2

    :try_start_0
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v2, p0

    move v4, p1

    move v5, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 166
    .local v0, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    mul-int v1, v9, v9

    new-array v1, v1, [I

    move-object v11, v1

    .line 169
    .local v11, "pixels":[I
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    if-ge v1, v9, :cond_2

    .line 170
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    if-ge v2, v9, :cond_1

    .line 171
    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    mul-int v3, v1, v9

    add-int/2addr v3, v2

    aput p5, v11, v3

    goto :goto_2

    .line 174
    :cond_0
    mul-int v3, v1, v9

    add-int/2addr v3, v2

    const/4 v4, -0x1

    aput v4, v11, v3

    .line 170
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 169
    .end local v2    # "x":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "y":I
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v12, v1

    .line 181
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, v11

    move v4, p1

    move v7, p1

    move v8, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    if-eqz v10, :cond_3

    .line 184
    move/from16 v1, p3

    :try_start_1
    invoke-static {v12, p2, v1}, Lcom/king/zxing/util/CodeUtils;->addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v12, v2

    goto :goto_3

    .line 188
    .end local v0    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v11    # "pixels":[I
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 183
    .restart local v0    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .restart local v11    # "pixels":[I
    .restart local v12    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    move/from16 v1, p3

    .line 187
    :goto_3
    return-object v12

    .line 188
    .end local v0    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v11    # "pixels":[I
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v0

    move/from16 v1, p3

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "heightPix"    # I
    .param p2, "logo"    # Landroid/graphics/Bitmap;
    .param p3, "codeColor"    # I

    .line 105
    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {p0, p1, p2, v0, p3}, Lcom/king/zxing/util/CodeUtils;->createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeInternal(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;
    .locals 3
    .param p0, "reader"    # Lcom/google/zxing/MultiFormatReader;
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;

    .line 404
    const/4 v0, 0x0

    .line 408
    .local v0, "result":Lcom/google/zxing/Result;
    :try_start_0
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {p0, v1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 411
    goto :goto_0

    .line 409
    :catch_0
    move-exception v1

    .line 412
    :goto_0
    if-nez v0, :cond_0

    .line 414
    :try_start_1
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v2, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {p0, v1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_1

    .line 416
    :catch_1
    move-exception v1

    goto :goto_2

    .line 418
    :cond_0
    :goto_1
    nop

    .line 419
    :goto_2
    return-object v0
.end method

.method private static getRGBLuminanceSource(Landroid/graphics/Bitmap;)Lcom/google/zxing/RGBLuminanceSource;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 468
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 469
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 471
    .local v1, "height":I
    mul-int v2, v0, v1

    new-array v2, v2, [I

    .line 472
    .local v2, "pixels":[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 473
    new-instance v3, Lcom/google/zxing/RGBLuminanceSource;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    return-object v3
.end method

.method public static parseCode(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 315
    sget-object v0, Lcom/king/zxing/DecodeFormatManager;->ALL_HINTS:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/king/zxing/util/CodeUtils;->parseCode(Landroid/graphics/Bitmap;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseCode(Landroid/graphics/Bitmap;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 325
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/king/zxing/util/CodeUtils;->parseCodeResult(Landroid/graphics/Bitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    .line 326
    .local v0, "result":Lcom/google/zxing/Result;
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 329
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static parseCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "bitmapPath"    # Ljava/lang/String;

    .line 283
    sget-object v0, Lcom/king/zxing/DecodeFormatManager;->ALL_HINTS:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/king/zxing/util/CodeUtils;->parseCode(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseCode(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p0, "bitmapPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 293
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/king/zxing/util/CodeUtils;->parseCodeResult(Ljava/lang/String;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    .line 294
    .local v0, "result":Lcom/google/zxing/Result;
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 297
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static parseCodeResult(Landroid/graphics/Bitmap;)Lcom/google/zxing/Result;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 360
    invoke-static {p0}, Lcom/king/zxing/util/CodeUtils;->getRGBLuminanceSource(Landroid/graphics/Bitmap;)Lcom/google/zxing/RGBLuminanceSource;

    move-result-object v0

    sget-object v1, Lcom/king/zxing/DecodeFormatManager;->ALL_HINTS:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/king/zxing/util/CodeUtils;->parseCodeResult(Lcom/google/zxing/LuminanceSource;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public static parseCodeResult(Landroid/graphics/Bitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .line 370
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/king/zxing/util/CodeUtils;->getRGBLuminanceSource(Landroid/graphics/Bitmap;)Lcom/google/zxing/RGBLuminanceSource;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/king/zxing/util/CodeUtils;->parseCodeResult(Lcom/google/zxing/LuminanceSource;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public static parseCodeResult(Lcom/google/zxing/LuminanceSource;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 4
    .param p0, "source"    # Lcom/google/zxing/LuminanceSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/LuminanceSource;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .line 380
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 381
    .local v0, "result":Lcom/google/zxing/Result;
    new-instance v1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 383
    .local v1, "reader":Lcom/google/zxing/MultiFormatReader;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 384
    if-eqz p0, :cond_1

    .line 385
    invoke-static {v1, p0}, Lcom/king/zxing/util/CodeUtils;->decodeInternal(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v0, v2

    .line 386
    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/king/zxing/util/CodeUtils;->decodeInternal(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v0, v2

    .line 389
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->isRotateSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/king/zxing/util/CodeUtils;->decodeInternal(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 397
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 398
    goto :goto_1

    .line 397
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 394
    :catch_0
    move-exception v2

    .line 395
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 400
    :goto_1
    return-object v0

    .line 397
    :goto_2
    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 398
    throw v2
.end method

.method public static parseCodeResult(Ljava/lang/String;IILjava/util/Map;)Lcom/google/zxing/Result;
    .locals 1
    .param p0, "bitmapPath"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .line 351
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-static {p0, p1, p2}, Lcom/king/zxing/util/CodeUtils;->compressBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/king/zxing/util/CodeUtils;->parseCodeResult(Landroid/graphics/Bitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public static parseCodeResult(Ljava/lang/String;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 2
    .param p0, "bitmapPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .line 339
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    const/16 v0, 0x1e0

    const/16 v1, 0x280

    invoke-static {p0, v0, v1, p1}, Lcom/king/zxing/util/CodeUtils;->parseCodeResult(Ljava/lang/String;IILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public static parseQRCode(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 306
    sget-object v0, Lcom/king/zxing/DecodeFormatManager;->QR_CODE_HINTS:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/king/zxing/util/CodeUtils;->parseCode(Landroid/graphics/Bitmap;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseQRCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "bitmapPath"    # Ljava/lang/String;

    .line 250
    invoke-static {p0}, Lcom/king/zxing/util/CodeUtils;->parseQRCodeResult(Ljava/lang/String;)Lcom/google/zxing/Result;

    move-result-object v0

    .line 251
    .local v0, "result":Lcom/google/zxing/Result;
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 254
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static parseQRCodeResult(Ljava/lang/String;)Lcom/google/zxing/Result;
    .locals 2
    .param p0, "bitmapPath"    # Ljava/lang/String;

    .line 263
    const/16 v0, 0x1e0

    const/16 v1, 0x280

    invoke-static {p0, v0, v1}, Lcom/king/zxing/util/CodeUtils;->parseQRCodeResult(Ljava/lang/String;II)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public static parseQRCodeResult(Ljava/lang/String;II)Lcom/google/zxing/Result;
    .locals 1
    .param p0, "bitmapPath"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 274
    sget-object v0, Lcom/king/zxing/DecodeFormatManager;->QR_CODE_HINTS:Ljava/util/Map;

    invoke-static {p0, p1, p2, v0}, Lcom/king/zxing/util/CodeUtils;->parseCodeResult(Ljava/lang/String;IILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method
