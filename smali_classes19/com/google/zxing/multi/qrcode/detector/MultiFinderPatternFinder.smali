.class final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.source "MultiFinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
    }
.end annotation


# static fields
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f

.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f

.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f

.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .line 93
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 94
    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 0
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 98
    return-void
.end method

.method private selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getPossibleCenters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 108
    .local v2, "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    move-object v2, v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    .line 110
    .local v3, "size":I
    move v3, v0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_f

    .line 118
    const/4 v0, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    .line 119
    new-array v1, v6, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    new-array v4, v4, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 121
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v7, v4, v5

    .line 122
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v7, v4, v6

    .line 123
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v6, v4, v0

    aput-object v4, v1, v5

    .line 119
    return-object v1

    .line 129
    :cond_0
    new-instance v7, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    const/4 v8, 0x0

    .local v8, "i1":I
    const/4 v9, 0x0

    move-object v9, v1

    move-object v10, v9

    move-object v11, v10

    move v12, v8

    const/4 v13, 0x0

    move-object v8, v11

    .end local v8    # "i1":I
    .local v12, "i1":I
    :goto_0
    add-int/lit8 v14, v3, -0x2

    if-ge v12, v14, :cond_d

    .line 149
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 150
    .local v1, "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v1, v14

    if-eqz v14, :cond_c

    .line 154
    add-int/lit8 v14, v12, 0x1

    .local v14, "i2":I
    :goto_1
    add-int/lit8 v15, v3, -0x1

    if-ge v14, v15, :cond_b

    .line 155
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 156
    .local v8, "p2":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v8, v15

    if-eqz v15, :cond_a

    .line 161
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v15

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v16

    sub-float v15, v15, v16

    .line 162
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v0

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v15, v0

    .line 163
    .local v15, "vModSize12":F
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v0

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v6

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 164
    const v6, 0x3d4ccccd    # 0.05f

    const/high16 v18, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v18

    if-lez v0, :cond_2

    cmpl-float v0, v15, v6

    if-gez v0, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v23, v1

    move-object/from16 v21, v2

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v20, 0x0

    goto/16 :goto_7

    .line 170
    :cond_2
    :goto_2
    add-int/lit8 v0, v14, 0x1

    .local v0, "i3":I
    :goto_3
    if-ge v0, v3, :cond_9

    .line 171
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 172
    .local v9, "p3":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object/from16 v9, v19

    if-eqz v19, :cond_7

    .line 177
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v19

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v20

    sub-float v19, v19, v20

    .line 178
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float v19, v19, v4

    .line 179
    .local v19, "vModSize23":F
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v4

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 180
    cmpl-float v4, v4, v18

    if-lez v4, :cond_4

    cmpl-float v4, v19, v6

    if-gez v4, :cond_3

    goto :goto_4

    :cond_3
    move-object/from16 v23, v1

    move-object/from16 v21, v2

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v20, 0x0

    goto/16 :goto_6

    .line 186
    :cond_4
    :goto_4
    const/4 v4, 0x3

    new-array v5, v4, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/16 v20, 0x0

    aput-object v1, v5, v20

    const/16 v17, 0x1

    aput-object v8, v5, v17

    const/16 v16, 0x2

    aput-object v9, v5, v16

    .line 187
    .local v10, "test":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v10, v5

    invoke-static {v5}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 190
    new-instance v5, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v5, v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    .line 191
    .local v11, "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    move-object v11, v5

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v5

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    .line 192
    .local v4, "dA":F
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v5

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v5

    .line 193
    .local v5, "dC":F
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v6

    move-object/from16 v21, v2

    .end local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .local v21, "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    .line 196
    .local v2, "dB":F
    add-float v6, v4, v2

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v22

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v22, v22, v23

    div-float v6, v6, v22

    .line 197
    .local v13, "estimatedModuleCount":F
    move v13, v6

    const/high16 v22, 0x43340000    # 180.0f

    cmpl-float v6, v6, v22

    if-gtz v6, :cond_6

    const/high16 v6, 0x41100000    # 9.0f

    cmpg-float v6, v13, v6

    if-ltz v6, :cond_6

    .line 203
    sub-float v6, v4, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v22

    div-float v6, v6, v22

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 204
    const v22, 0x3dcccccd    # 0.1f

    cmpl-float v6, v6, v22

    if-gez v6, :cond_5

    .line 209
    mul-float v6, v4, v4

    mul-float v23, v2, v2

    add-float v6, v6, v23

    move-object/from16 v23, v1

    move/from16 v24, v2

    .end local v1    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v2    # "dB":F
    .local v23, "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .local v24, "dB":F
    float-to-double v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 211
    .local v1, "dCpy":F
    sub-float v2, v5, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 213
    cmpl-float v2, v2, v22

    if-gez v2, :cond_8

    .line 218
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 204
    .end local v23    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v24    # "dB":F
    .local v1, "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v2    # "dB":F
    :cond_5
    move-object/from16 v23, v1

    move/from16 v24, v2

    .end local v1    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v2    # "dB":F
    .restart local v23    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v24    # "dB":F
    goto :goto_5

    .line 197
    .end local v23    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v24    # "dB":F
    .restart local v1    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v2    # "dB":F
    :cond_6
    move-object/from16 v23, v1

    move/from16 v24, v2

    .end local v1    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v2    # "dB":F
    .restart local v23    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v24    # "dB":F
    goto :goto_5

    .line 172
    .end local v4    # "dA":F
    .end local v5    # "dC":F
    .end local v9    # "p3":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v10    # "test":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v11    # "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .end local v13    # "estimatedModuleCount":F
    .end local v19    # "vModSize23":F
    .end local v21    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v23    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v24    # "dB":F
    .restart local v1    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .local v2, "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :cond_7
    move-object/from16 v23, v1

    move-object/from16 v21, v2

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v20, 0x0

    .line 170
    .end local v1    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v21    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v23    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_8
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v21

    move-object/from16 v1, v23

    const/4 v4, 0x3

    const/4 v5, 0x0

    const v6, 0x3d4ccccd    # 0.05f

    goto/16 :goto_3

    .end local v21    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v23    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v1    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :cond_9
    move-object/from16 v23, v1

    move-object/from16 v21, v2

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v20, 0x0

    .end local v1    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v21    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v23    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    goto :goto_6

    .line 156
    .end local v0    # "i3":I
    .end local v15    # "vModSize12":F
    .end local v21    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v23    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v1    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :cond_a
    move-object/from16 v23, v1

    move-object/from16 v21, v2

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v20, 0x0

    .line 154
    .end local v1    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v8    # "p2":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v21    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v23    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v21

    move-object/from16 v1, v23

    const/4 v0, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1

    .end local v21    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v23    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v1    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :cond_b
    move-object/from16 v23, v1

    move-object/from16 v21, v2

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v20, 0x0

    .end local v1    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v21    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v23    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    goto :goto_7

    .line 150
    .end local v14    # "i2":I
    .end local v21    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v23    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v1    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :cond_c
    move-object/from16 v23, v1

    move-object/from16 v21, v2

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v20, 0x0

    .line 148
    .end local v1    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v21    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v21

    move-object/from16 v1, v23

    const/4 v0, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    .end local v21    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :cond_d
    move-object/from16 v21, v2

    .line 223
    .end local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v12    # "i1":I
    .restart local v21    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 224
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    return-object v0

    .line 228
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 112
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v21    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 232
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    sget-object v2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 233
    .local v2, "tryHarder":Z
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 234
    .local v5, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v5, v3

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    .line 235
    .local v3, "maxI":I
    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    .line 243
    .local v6, "maxJ":I
    mul-int/lit8 v7, v3, 0x3

    div-int/lit16 v7, v7, 0x184

    const/4 v8, 0x0

    .line 244
    .local v8, "iSkip":I
    move v8, v7

    const/4 v9, 0x3

    if-lt v7, v9, :cond_1

    if-eqz v2, :cond_2

    .line 245
    :cond_1
    const/4 v8, 0x3

    .line 248
    :cond_2
    const/4 v7, 0x5

    new-array v7, v7, [I

    .line 249
    .local v7, "stateCount":[I
    add-int/lit8 v9, v8, -0x1

    .local v9, "i":I
    :goto_1
    if-ge v9, v3, :cond_a

    .line 251
    invoke-virtual {p0, v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->clearCounts([I)V

    .line 252
    const/4 v10, 0x0

    .line 253
    .local v10, "currentState":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    if-ge v11, v6, :cond_8

    .line 254
    invoke-virtual {v5, v11, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 256
    and-int/lit8 v12, v10, 0x1

    if-ne v12, v1, :cond_3

    .line 257
    add-int/lit8 v10, v10, 0x1

    .line 259
    :cond_3
    aget v12, v7, v10

    add-int/2addr v12, v1

    aput v12, v7, v10

    goto :goto_3

    .line 261
    :cond_4
    and-int/lit8 v12, v10, 0x1

    if-nez v12, :cond_7

    .line 262
    const/4 v12, 0x4

    if-ne v10, v12, :cond_6

    .line 263
    invoke-static {v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {p0, v7, v9, v11}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 265
    const/4 v10, 0x0

    .line 266
    invoke-virtual {p0, v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->clearCounts([I)V

    goto :goto_3

    .line 268
    :cond_5
    invoke-virtual {p0, v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->shiftCounts2([I)V

    .line 269
    const/4 v10, 0x3

    goto :goto_3

    .line 272
    :cond_6
    add-int/lit8 v10, v10, 0x1

    aget v12, v7, v10

    add-int/2addr v12, v1

    aput v12, v7, v10

    goto :goto_3

    .line 275
    :cond_7
    aget v12, v7, v10

    add-int/2addr v12, v1

    aput v12, v7, v10

    .line 253
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 280
    .end local v11    # "j":I
    :cond_8
    invoke-static {v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 281
    invoke-virtual {p0, v7, v9, v6}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    .line 249
    .end local v10    # "currentState":I
    :cond_9
    add-int/2addr v9, v8

    goto :goto_1

    .line 284
    .end local v9    # "i":I
    :cond_a
    invoke-direct {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v1

    .line 285
    .local v1, "patternInfo":[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPatternInfo;>;"
    array-length v10, v1

    :goto_4
    if-ge v0, v10, :cond_b

    aget-object v11, v1, v0

    .line 287
    .local v4, "pattern":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v4, v11

    invoke-static {v11}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 288
    new-instance v11, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v11, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v4    # "pattern":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 291
    :cond_b
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 292
    sget-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-object v0

    .line 294
    :cond_c
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-object v0
.end method
