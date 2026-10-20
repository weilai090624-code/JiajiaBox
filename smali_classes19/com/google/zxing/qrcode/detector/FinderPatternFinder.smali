.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;,
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    }
.end annotation


# static fields
.field private static final CENTER_QUORUM:I = 0x2

.field protected static final MAX_MODULES:I = 0x61

.field protected static final MIN_SKIP:I = 0x3


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    .line 65
    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 66
    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 3
    .param p0, "stateCount"    # [I
    .param p1, "end"    # I

    .line 174
    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckDiagonal(II)Z
    .locals 10
    .param p1, "centerI"    # I
    .param p2, "centerJ"    # I

    .line 262
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v0

    .line 265
    .local v0, "stateCount":[I
    const/4 v1, 0x0

    .line 266
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt p1, v1, :cond_0

    if-lt p2, v1, :cond_0

    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v5, p2, v1

    sub-int v6, p1, v1

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    aget v4, v0, v2

    add-int/2addr v4, v3

    aput v4, v0, v2

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_0
    aget v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 271
    return v5

    .line 275
    :cond_1
    :goto_1
    if-lt p1, v1, :cond_2

    if-lt p2, v1, :cond_2

    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v1

    sub-int v7, p1, v1

    invoke-virtual {v4, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 276
    aget v4, v0, v3

    add-int/2addr v4, v3

    aput v4, v0, v3

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 279
    :cond_2
    aget v4, v0, v3

    if-nez v4, :cond_3

    .line 280
    return v5

    .line 284
    :cond_3
    :goto_2
    if-lt p1, v1, :cond_4

    if-lt p2, v1, :cond_4

    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v1

    sub-int v7, p1, v1

    invoke-virtual {v4, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 285
    aget v4, v0, v5

    add-int/2addr v4, v3

    aput v4, v0, v5

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 288
    :cond_4
    aget v4, v0, v5

    if-nez v4, :cond_5

    .line 289
    return v5

    .line 292
    :cond_5
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    .line 293
    .local v4, "maxI":I
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    .line 296
    .local v6, "maxJ":I
    const/4 v1, 0x1

    .line 297
    :goto_3
    add-int v7, p1, v1

    if-ge v7, v4, :cond_6

    add-int v7, p2, v1

    if-ge v7, v6, :cond_6

    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v8, p2, v1

    add-int v9, p1, v1

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 298
    aget v7, v0, v2

    add-int/2addr v7, v3

    aput v7, v0, v2

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 302
    :cond_6
    :goto_4
    add-int v2, p1, v1

    const/4 v7, 0x3

    if-ge v2, v4, :cond_7

    add-int v2, p2, v1

    if-ge v2, v6, :cond_7

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v8, p2, v1

    add-int v9, p1, v1

    invoke-virtual {v2, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-nez v2, :cond_7

    .line 303
    aget v2, v0, v7

    add-int/2addr v2, v3

    aput v2, v0, v7

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 306
    :cond_7
    aget v2, v0, v7

    if-nez v2, :cond_8

    .line 307
    return v5

    .line 310
    :cond_8
    :goto_5
    add-int v2, p1, v1

    const/4 v7, 0x4

    if-ge v2, v4, :cond_9

    add-int v2, p2, v1

    if-ge v2, v6, :cond_9

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v8, p2, v1

    add-int v9, p1, v1

    invoke-virtual {v2, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 311
    aget v2, v0, v7

    add-int/2addr v2, v3

    aput v2, v0, v7

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 314
    :cond_9
    aget v2, v0, v7

    if-nez v2, :cond_a

    .line 315
    return v5

    .line 318
    :cond_a
    invoke-static {v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternDiagonal([I)Z

    move-result v2

    return v2
.end method

.method private crossCheckHorizontal(IIII)F
    .locals 11
    .param p1, "startJ"    # I
    .param p2, "centerI"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .line 406
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    .line 408
    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 409
    .local v0, "maxJ":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v2

    .line 411
    .local v2, "stateCount":[I
    move v3, p1

    .line 412
    .local v3, "j":I
    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ltz v3, :cond_0

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 413
    aget v6, v2, v4

    add-int/2addr v6, v5

    aput v6, v2, v4

    .line 414
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 416
    :cond_0
    const/high16 v6, 0x7fc00000    # Float.NaN

    if-gez v3, :cond_1

    .line 417
    return v6

    .line 419
    :cond_1
    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_2

    aget v7, v2, v5

    if-gt v7, p3, :cond_2

    .line 420
    aget v7, v2, v5

    add-int/2addr v7, v5

    aput v7, v2, v5

    .line 421
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 423
    :cond_2
    if-ltz v3, :cond_f

    aget v7, v2, v5

    if-le v7, p3, :cond_3

    goto/16 :goto_7

    .line 426
    :cond_3
    :goto_2
    const/4 v7, 0x0

    if-ltz v3, :cond_4

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_4

    aget v8, v2, v7

    if-gt v8, p3, :cond_4

    .line 427
    aget v8, v2, v7

    add-int/2addr v8, v5

    aput v8, v2, v7

    .line 428
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 430
    :cond_4
    aget v8, v2, v7

    if-le v8, p3, :cond_5

    .line 431
    return v6

    .line 434
    :cond_5
    add-int/lit8 v3, p1, 0x1

    .line 435
    :goto_3
    if-ge v3, v0, :cond_6

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 436
    aget v8, v2, v4

    add-int/2addr v8, v5

    aput v8, v2, v4

    .line 437
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 439
    :cond_6
    if-ne v3, v0, :cond_7

    .line 440
    return v6

    .line 442
    :cond_7
    :goto_4
    const/4 v8, 0x3

    if-ge v3, v0, :cond_8

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-nez v9, :cond_8

    aget v9, v2, v8

    if-ge v9, p3, :cond_8

    .line 443
    aget v9, v2, v8

    add-int/2addr v9, v5

    aput v9, v2, v8

    .line 444
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 446
    :cond_8
    if-eq v3, v0, :cond_e

    aget v9, v2, v8

    if-lt v9, p3, :cond_9

    goto :goto_6

    .line 449
    :cond_9
    :goto_5
    const/4 v9, 0x4

    if-ge v3, v0, :cond_a

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_a

    aget v10, v2, v9

    if-ge v10, p3, :cond_a

    .line 450
    aget v10, v2, v9

    add-int/2addr v10, v5

    aput v10, v2, v9

    .line 451
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 453
    :cond_a
    aget v10, v2, v9

    if-lt v10, p3, :cond_b

    .line 454
    return v6

    .line 459
    :cond_b
    aget v7, v2, v7

    aget v5, v2, v5

    add-int/2addr v7, v5

    aget v4, v2, v4

    add-int/2addr v7, v4

    aget v4, v2, v8

    add-int/2addr v7, v4

    aget v4, v2, v9

    add-int/2addr v7, v4

    .line 461
    .local v7, "stateCountTotal":I
    sub-int v4, v7, p4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    if-lt v4, p4, :cond_c

    .line 462
    return v6

    .line 465
    :cond_c
    invoke-static {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v4

    return v4

    :cond_d
    return v6

    .line 447
    .end local v7    # "stateCountTotal":I
    :cond_e
    :goto_6
    return v6

    .line 424
    :cond_f
    :goto_7
    return v6
.end method

.method private crossCheckVertical(IIII)F
    .locals 11
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .line 334
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    .line 336
    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 337
    .local v0, "maxI":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v2

    .line 340
    .local v2, "stateCount":[I
    move v3, p1

    .line 341
    .local v3, "i":I
    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ltz v3, :cond_0

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 342
    aget v6, v2, v4

    add-int/2addr v6, v5

    aput v6, v2, v4

    .line 343
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 345
    :cond_0
    const/high16 v6, 0x7fc00000    # Float.NaN

    if-gez v3, :cond_1

    .line 346
    return v6

    .line 348
    :cond_1
    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_2

    aget v7, v2, v5

    if-gt v7, p3, :cond_2

    .line 349
    aget v7, v2, v5

    add-int/2addr v7, v5

    aput v7, v2, v5

    .line 350
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 353
    :cond_2
    if-ltz v3, :cond_f

    aget v7, v2, v5

    if-le v7, p3, :cond_3

    goto/16 :goto_7

    .line 356
    :cond_3
    :goto_2
    const/4 v7, 0x0

    if-ltz v3, :cond_4

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_4

    aget v8, v2, v7

    if-gt v8, p3, :cond_4

    .line 357
    aget v8, v2, v7

    add-int/2addr v8, v5

    aput v8, v2, v7

    .line 358
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 360
    :cond_4
    aget v8, v2, v7

    if-le v8, p3, :cond_5

    .line 361
    return v6

    .line 365
    :cond_5
    add-int/lit8 v3, p1, 0x1

    .line 366
    :goto_3
    if-ge v3, v0, :cond_6

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 367
    aget v8, v2, v4

    add-int/2addr v8, v5

    aput v8, v2, v4

    .line 368
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 370
    :cond_6
    if-ne v3, v0, :cond_7

    .line 371
    return v6

    .line 373
    :cond_7
    :goto_4
    const/4 v8, 0x3

    if-ge v3, v0, :cond_8

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-nez v9, :cond_8

    aget v9, v2, v8

    if-ge v9, p3, :cond_8

    .line 374
    aget v9, v2, v8

    add-int/2addr v9, v5

    aput v9, v2, v8

    .line 375
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 377
    :cond_8
    if-eq v3, v0, :cond_e

    aget v9, v2, v8

    if-lt v9, p3, :cond_9

    goto :goto_6

    .line 380
    :cond_9
    :goto_5
    const/4 v9, 0x4

    if-ge v3, v0, :cond_a

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_a

    aget v10, v2, v9

    if-ge v10, p3, :cond_a

    .line 381
    aget v10, v2, v9

    add-int/2addr v10, v5

    aput v10, v2, v9

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 384
    :cond_a
    aget v10, v2, v9

    if-lt v10, p3, :cond_b

    .line 385
    return v6

    .line 390
    :cond_b
    aget v7, v2, v7

    aget v5, v2, v5

    add-int/2addr v7, v5

    aget v4, v2, v4

    add-int/2addr v7, v4

    aget v4, v2, v8

    add-int/2addr v7, v4

    aget v4, v2, v9

    add-int/2addr v7, v4

    .line 392
    .local v7, "stateCountTotal":I
    sub-int v4, v7, p4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    mul-int/lit8 v5, p4, 0x2

    if-lt v4, v5, :cond_c

    .line 393
    return v6

    .line 396
    :cond_c
    invoke-static {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v4

    return v4

    :cond_d
    return v6

    .line 378
    .end local v7    # "stateCountTotal":I
    :cond_e
    :goto_6
    return v6

    .line 354
    :cond_f
    :goto_7
    return v6
.end method

.method private findRowSkip()I
    .locals 7

    .line 539
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 540
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    .line 541
    return v1

    .line 543
    :cond_0
    const/4 v0, 0x0

    .line 544
    .local v0, "firstConfirmedCenter":Lcom/google/zxing/ResultPoint;
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 545
    .local v4, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v4, v5

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 546
    if-nez v0, :cond_1

    .line 547
    move-object v0, v4

    goto :goto_0

    .line 554
    :cond_1
    iput-boolean v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    .line 555
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 556
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int/2addr v1, v6

    .line 555
    return v1

    .line 559
    .end local v4    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_2
    goto :goto_0

    .line 560
    :cond_3
    return v1
.end method

.method protected static foundPatternCross([I)Z
    .locals 7

    .line 183
    nop

    .line 184
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 185
    aget v3, p0, v1

    .line 186
    if-nez v3, :cond_0

    .line 187
    return v0

    .line 189
    :cond_0
    add-int/2addr v2, v3

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_1
    const/4 v1, 0x7

    if-ge v2, v1, :cond_2

    .line 192
    return v0

    .line 194
    :cond_2
    int-to-float v1, v2

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    .line 195
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    .line 197
    aget v3, p0, v0

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 198
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 199
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v5, v1, v4

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 200
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v4, v4, v2

    cmpg-float v4, v5, v4

    if-gez v4, :cond_3

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 201
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    const/4 v4, 0x4

    aget p0, p0, v4

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 202
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_3

    return v3

    :cond_3
    nop

    .line 197
    return v0
.end method

.method protected static foundPatternDiagonal([I)Z
    .locals 7

    .line 211
    nop

    .line 212
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 213
    aget v3, p0, v1

    .line 214
    if-nez v3, :cond_0

    .line 215
    return v0

    .line 217
    :cond_0
    add-int/2addr v2, v3

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_1
    const/4 v1, 0x7

    if-ge v2, v1, :cond_2

    .line 220
    return v0

    .line 222
    :cond_2
    int-to-float v1, v2

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    .line 223
    const v2, 0x3faa9fbe    # 1.333f

    div-float v2, v1, v2

    .line 225
    aget v3, p0, v0

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 226
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 227
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v5, v1, v4

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 228
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v4, v4, v2

    cmpg-float v4, v5, v4

    if-gez v4, :cond_3

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 229
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    const/4 v4, 0x4

    aget p0, p0, v4

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 230
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_3

    return v3

    :cond_3
    nop

    .line 225
    return v0
.end method

.method private getCrossCheckStateCount()[I
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->clearCounts([I)V

    .line 235
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    return-object v0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .locals 9

    .line 569
    nop

    .line 570
    nop

    .line 571
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 572
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 573
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 574
    add-int/lit8 v4, v4, 0x1

    .line 575
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v6

    add-float/2addr v5, v6

    .line 577
    :cond_0
    goto :goto_0

    .line 578
    :cond_1
    const/4 v1, 0x3

    if-ge v4, v1, :cond_2

    .line 579
    return v2

    .line 585
    :cond_2
    int-to-float v0, v0

    div-float v0, v5, v0

    .line 586
    nop

    .line 587
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 588
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    .line 589
    goto :goto_1

    .line 590
    :cond_3
    const v0, 0x3d4ccccd    # 0.05f

    mul-float v5, v5, v0

    cmpg-float v0, v3, v5

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    return v2
.end method

.method private selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 602
    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    .line 608
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-le v0, v1, :cond_2

    .line 610
    nop

    .line 611
    nop

    .line 612
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 613
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    .line 614
    add-float/2addr v7, v9

    .line 615
    mul-float v9, v9, v9

    add-float/2addr v8, v9

    .line 616
    goto :goto_0

    .line 617
    :cond_0
    int-to-float v0, v0

    div-float/2addr v7, v0

    .line 618
    div-float/2addr v8, v0

    mul-float v0, v7, v7

    sub-float/2addr v8, v0

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v0, v8

    .line 620
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v8, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    invoke-direct {v8, v7, v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 622
    const v6, 0x3e4ccccd    # 0.2f

    mul-float v6, v6, v7

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 624
    const/4 v6, 0x0

    :goto_1
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v1, :cond_2

    .line 625
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 626
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    sub-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v0

    if-lez v8, :cond_1

    .line 627
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 628
    add-int/lit8 v6, v6, -0x1

    .line 624
    :cond_1
    add-int/2addr v6, v3

    goto :goto_1

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 636
    nop

    .line 637
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 638
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v6

    add-float/2addr v5, v6

    .line 639
    goto :goto_2

    .line 641
    :cond_3
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v5, v0

    .line 643
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v6, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    invoke-direct {v6, v5, v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 645
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 648
    :cond_4
    new-array v0, v1, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 649
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 650
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 651
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v1, v0, v2

    .line 648
    return-object v0

    .line 604
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected final clearCounts([I)V
    .locals 2
    .param p1, "counts"    # [I

    .line 239
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 240
    const/4 v1, 0x0

    aput v1, p1, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    .end local v0    # "x":I
    :cond_0
    return-void
.end method

.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    sget-object v2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 78
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 79
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 87
    mul-int/lit8 v4, v2, 0x3

    div-int/lit16 v4, v4, 0x184

    .line 88
    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    if-eqz p1, :cond_2

    .line 89
    :cond_1
    const/4 v4, 0x3

    .line 92
    :cond_2
    nop

    .line 93
    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 94
    add-int/lit8 v6, v4, -0x1

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v2, :cond_d

    if-nez v7, :cond_d

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->clearCounts([I)V

    .line 97
    nop

    .line 98
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v3, :cond_b

    .line 99
    iget-object v10, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10, v8, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 101
    and-int/lit8 v10, v9, 0x1

    if-ne v10, v1, :cond_3

    .line 102
    add-int/lit8 v9, v9, 0x1

    .line 104
    :cond_3
    aget v10, p1, v9

    add-int/2addr v10, v1

    aput v10, p1, v9

    goto :goto_4

    .line 106
    :cond_4
    and-int/lit8 v10, v9, 0x1

    if-nez v10, :cond_a

    .line 107
    const/4 v10, 0x4

    if-ne v9, v10, :cond_9

    .line 108
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 109
    invoke-virtual {p0, p1, v6, v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v9

    .line 110
    if-eqz v9, :cond_7

    .line 113
    nop

    .line 114
    iget-boolean v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    const/4 v9, 0x2

    if-eqz v4, :cond_5

    .line 115
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v7

    goto :goto_3

    .line 117
    :cond_5
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->findRowSkip()I

    move-result v4

    .line 118
    aget v10, p1, v9

    if-le v4, v10, :cond_6

    .line 127
    aget v8, p1, v9

    sub-int/2addr v4, v8

    sub-int/2addr v4, v9

    add-int/2addr v6, v4

    .line 128
    add-int/lit8 v8, v3, -0x1

    .line 130
    :cond_6
    nop

    .line 137
    :goto_3
    nop

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->clearCounts([I)V

    .line 139
    const/4 v4, 0x2

    const/4 v9, 0x0

    goto :goto_4

    .line 132
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->shiftCounts2([I)V

    .line 133
    nop

    .line 134
    const/4 v9, 0x3

    goto :goto_4

    .line 140
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->shiftCounts2([I)V

    .line 141
    const/4 v9, 0x3

    goto :goto_4

    .line 144
    :cond_9
    add-int/lit8 v9, v9, 0x1

    aget v10, p1, v9

    add-int/2addr v10, v1

    aput v10, p1, v9

    goto :goto_4

    .line 147
    :cond_a
    aget v10, p1, v9

    add-int/2addr v10, v1

    aput v10, p1, v9

    .line 98
    :goto_4
    add-int/2addr v8, v1

    goto :goto_2

    .line 151
    :cond_b
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 152
    invoke-virtual {p0, p1, v6, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v8

    .line 153
    if-eqz v8, :cond_c

    .line 154
    aget v4, p1, v0

    .line 155
    iget-boolean v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v8, :cond_c

    .line 157
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v7

    .line 94
    :cond_c
    add-int/2addr v6, v4

    goto/16 :goto_1

    .line 163
    :cond_d
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object p1

    .line 164
    invoke-static {p1}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 166
    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v0
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected final getPossibleCenters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    return-object v0
.end method

.method protected final handlePossibleCenter([III)Z
    .locals 10
    .param p1, "stateCount"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I

    .line 500
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    add-int/2addr v1, v4

    const/4 v4, 0x3

    aget v4, p1, v4

    add-int/2addr v1, v4

    const/4 v4, 0x4

    aget v4, p1, v4

    add-int/2addr v1, v4

    .line 502
    .local v1, "stateCountTotal":I
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v4

    .line 503
    .local v4, "centerJ":F
    float-to-int v5, v4

    aget v6, p1, v3

    invoke-direct {p0, p2, v5, v6, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F

    move-result v5

    const/4 v6, 0x0

    .line 504
    .local v6, "centerI":F
    move v6, v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_3

    .line 506
    float-to-int v5, v4

    float-to-int v7, v6

    aget v3, p1, v3

    invoke-direct {p0, v5, v7, v3, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F

    move-result v3

    .line 507
    move v4, v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    float-to-int v3, v6

    float-to-int v5, v4

    invoke-direct {p0, v3, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckDiagonal(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 508
    int-to-float v0, v1

    const/high16 v3, 0x40e00000    # 7.0f

    div-float/2addr v0, v3

    .line 509
    .local v0, "estimatedModuleSize":F
    const/4 v3, 0x0

    .line 510
    .local v3, "found":Z
    const/4 v5, 0x0

    .local v5, "index":I
    const/4 v7, 0x0

    :goto_0
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 511
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 513
    .local v7, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v7, v8

    invoke-virtual {v8, v0, v6, v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 514
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-virtual {v7, v6, v4, v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 515
    const/4 v3, 0x1

    .line 516
    goto :goto_1

    .line 510
    .end local v7    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 519
    .end local v5    # "index":I
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 520
    new-instance v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v5, v4, v6, v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    .line 521
    .local v5, "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v7, :cond_2

    .line 523
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v7, v5}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 526
    .end local v5    # "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_2
    return v2

    .line 529
    .end local v0    # "estimatedModuleSize":F
    .end local v3    # "found":Z
    :cond_3
    return v0
.end method

.method protected final handlePossibleCenter([IIIZ)Z
    .locals 1
    .param p1, "stateCount"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "pureBarcode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 479
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v0

    return v0
.end method

.method protected final shiftCounts2([I)V
    .locals 6
    .param p1, "stateCount"    # [I

    .line 245
    const/4 v0, 0x2

    aget v1, p1, v0

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 246
    const/4 v1, 0x3

    aget v3, p1, v1

    const/4 v4, 0x1

    aput v3, p1, v4

    .line 247
    const/4 v3, 0x4

    aget v5, p1, v3

    aput v5, p1, v0

    .line 248
    aput v4, p1, v1

    .line 249
    aput v2, p1, v3

    .line 250
    return-void
.end method
