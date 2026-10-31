.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSSExpandedReader.java"


# static fields
.field private static final EVEN_TOTAL_SUBSET:[I

.field private static final FINDER_PATTERNS:[[I

.field private static final FINDER_PATTERN_SEQUENCES:[[I

.field private static final FINDER_PAT_A:I = 0x0

.field private static final FINDER_PAT_B:I = 0x1

.field private static final FINDER_PAT_C:I = 0x2

.field private static final FINDER_PAT_D:I = 0x3

.field private static final FINDER_PAT_E:I = 0x4

.field private static final FINDER_PAT_F:I = 0x5

.field private static final GSUM:[I

.field private static final MAX_PAIRS:I = 0xb

.field private static final SYMBOL_WIDEST:[I

.field private static final WEIGHTS:[[I


# instance fields
.field private final pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation
.end field

.field private final startEnd:[I

.field private startFromEven:Z


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 55
    const/4 v0, 0x7

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    .line 56
    const/16 v5, 0x68

    const/16 v6, 0xcc

    const/16 v7, 0x14

    const/16 v8, 0x34

    filled-new-array {v2, v7, v8, v5, v6}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    .line 57
    const/16 v5, 0xb84

    const/16 v6, 0xf94

    const/4 v8, 0x0

    const/16 v9, 0x15c

    const/16 v10, 0x56c

    filled-new-array {v8, v9, v10, v5, v6}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    .line 59
    const/4 v5, 0x6

    new-array v6, v5, [[I

    const/16 v9, 0x8

    filled-new-array {v4, v9, v2, v4}, [I

    move-result-object v10

    aput-object v10, v6, v8

    filled-new-array {v3, v5, v2, v4}, [I

    move-result-object v10

    aput-object v10, v6, v4

    filled-new-array {v3, v2, v5, v4}, [I

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v6, v11

    filled-new-array {v3, v11, v9, v4}, [I

    move-result-object v10

    aput-object v10, v6, v3

    filled-new-array {v11, v5, v1, v4}, [I

    move-result-object v10

    aput-object v10, v6, v2

    const/16 v10, 0x9

    filled-new-array {v11, v11, v10, v4}, [I

    move-result-object v12

    aput-object v12, v6, v1

    sput-object v6, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    .line 68
    new-array v6, v9, [I

    fill-array-data v6, :array_190

    new-array v12, v9, [I

    fill-array-data v12, :array_1a4

    new-array v13, v9, [I

    fill-array-data v13, :array_1b8

    new-array v14, v9, [I

    fill-array-data v14, :array_1cc

    new-array v15, v9, [I

    fill-array-data v15, :array_1e0

    new-array v7, v9, [I

    fill-array-data v7, :array_1f4

    new-array v10, v9, [I

    fill-array-data v10, :array_208

    new-array v0, v9, [I

    fill-array-data v0, :array_21c

    new-array v5, v9, [I

    fill-array-data v5, :array_230

    new-array v1, v9, [I

    fill-array-data v1, :array_244

    new-array v2, v9, [I

    fill-array-data v2, :array_258

    new-array v3, v9, [I

    fill-array-data v3, :array_26c

    new-array v11, v9, [I

    fill-array-data v11, :array_280

    new-array v4, v9, [I

    fill-array-data v4, :array_294

    new-array v8, v9, [I

    fill-array-data v8, :array_2a8

    move-object/from16 v17, v8

    new-array v8, v9, [I

    fill-array-data v8, :array_2bc

    move-object/from16 v18, v8

    new-array v8, v9, [I

    fill-array-data v8, :array_2d0

    move-object/from16 v19, v8

    new-array v8, v9, [I

    fill-array-data v8, :array_2e4

    move-object/from16 v20, v8

    new-array v8, v9, [I

    fill-array-data v8, :array_2f8

    move-object/from16 v21, v8

    new-array v8, v9, [I

    fill-array-data v8, :array_30c

    move-object/from16 v22, v8

    new-array v8, v9, [I

    fill-array-data v8, :array_320

    move-object/from16 v23, v8

    new-array v8, v9, [I

    fill-array-data v8, :array_334

    move-object/from16 v24, v8

    new-array v8, v9, [I

    fill-array-data v8, :array_348

    const/16 v9, 0x17

    new-array v9, v9, [[I

    const/16 v16, 0x0

    aput-object v6, v9, v16

    const/4 v6, 0x1

    aput-object v12, v9, v6

    const/4 v6, 0x2

    aput-object v13, v9, v6

    const/4 v6, 0x3

    aput-object v14, v9, v6

    const/4 v6, 0x4

    aput-object v15, v9, v6

    const/4 v6, 0x5

    aput-object v7, v9, v6

    const/4 v6, 0x6

    aput-object v10, v9, v6

    const/4 v6, 0x7

    aput-object v0, v9, v6

    const/16 v0, 0x8

    aput-object v5, v9, v0

    const/16 v0, 0x9

    aput-object v1, v9, v0

    const/16 v0, 0xa

    aput-object v2, v9, v0

    const/16 v1, 0xb

    aput-object v3, v9, v1

    const/16 v1, 0xc

    aput-object v11, v9, v1

    const/16 v1, 0xd

    aput-object v4, v9, v1

    const/16 v1, 0xe

    aput-object v17, v9, v1

    const/16 v1, 0xf

    aput-object v18, v9, v1

    const/16 v1, 0x10

    aput-object v19, v9, v1

    const/16 v1, 0x11

    aput-object v20, v9, v1

    const/16 v1, 0x12

    aput-object v21, v9, v1

    const/16 v1, 0x13

    aput-object v22, v9, v1

    const/16 v1, 0x14

    aput-object v23, v9, v1

    const/16 v1, 0x15

    aput-object v24, v9, v1

    const/16 v1, 0x16

    aput-object v8, v9, v1

    sput-object v9, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    .line 101
    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_35c

    const/4 v1, 0x7

    new-array v3, v1, [I

    fill-array-data v3, :array_36c

    const/16 v1, 0x8

    new-array v4, v1, [I

    fill-array-data v4, :array_37e

    const/16 v1, 0x9

    new-array v5, v1, [I

    fill-array-data v5, :array_392

    new-array v1, v0, [I

    fill-array-data v1, :array_3a8

    const/16 v6, 0xb

    new-array v6, v6, [I

    fill-array-data v6, :array_3c0

    new-array v0, v0, [[I

    const/4 v7, 0x0

    filled-new-array {v7, v7}, [I

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v8, 0x1

    filled-new-array {v7, v8, v8}, [I

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    filled-new-array {v7, v10, v8, v9}, [I

    move-result-object v11

    aput-object v11, v0, v10

    const/4 v11, 0x4

    filled-new-array {v7, v11, v8, v9, v10}, [I

    move-result-object v7

    aput-object v7, v0, v9

    aput-object v2, v0, v11

    const/4 v2, 0x5

    aput-object v3, v0, v2

    const/4 v2, 0x6

    aput-object v4, v0, v2

    const/4 v2, 0x7

    aput-object v5, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x9

    aput-object v6, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    return-void

    nop

    :array_190
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    :array_1a4
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    :array_1b8
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    :array_1cc
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_1e0
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_1f4
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_208
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_21c
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_230
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_244
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_258
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_26c
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_280
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_294
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_2a8
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_2bc
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_2d0
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_2e4
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_2f8
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_30c
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_320
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_334
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_348
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    :array_35c
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_36c
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_37e
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_392
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_3a8
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_3c0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    return-void
.end method

.method private adjustOddEvenCounts(I)V
    .registers 13
    .param p1, "numModules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 686
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    .line 687
    .local v0, "oddSum":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v1

    .line 689
    .local v1, "evenSum":I
    const/4 v2, 0x0

    .line 690
    .local v2, "incrementOdd":Z
    const/4 v3, 0x0

    .line 692
    .local v3, "decrementOdd":Z
    const/4 v4, 0x4

    const/16 v5, 0xd

    if-le v0, v5, :cond_19

    .line 693
    const/4 v3, 0x1

    goto :goto_1c

    .line 694
    :cond_19
    if-ge v0, v4, :cond_1c

    .line 695
    const/4 v2, 0x1

    .line 697
    :cond_1c
    :goto_1c
    const/4 v6, 0x0

    .line 698
    .local v6, "incrementEven":Z
    const/4 v7, 0x0

    .line 699
    .local v7, "decrementEven":Z
    if-le v1, v5, :cond_22

    .line 700
    const/4 v7, 0x1

    goto :goto_25

    .line 701
    :cond_22
    if-ge v1, v4, :cond_25

    .line 702
    const/4 v6, 0x1

    .line 705
    :cond_25
    :goto_25
    add-int v4, v0, v1

    sub-int/2addr v4, p1

    .line 706
    .local v4, "mismatch":I
    and-int/lit8 v5, v0, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v5, v9, :cond_30

    const/4 v5, 0x1

    goto :goto_31

    :cond_30
    const/4 v5, 0x0

    .line 707
    .local v5, "oddParityBad":Z
    :goto_31
    and-int/lit8 v10, v1, 0x1

    if-nez v10, :cond_36

    const/4 v8, 0x1

    .line 708
    .local v8, "evenParityBad":Z
    :cond_36
    if-ne v4, v9, :cond_4c

    .line 709
    if-eqz v5, :cond_43

    .line 710
    if-nez v8, :cond_3e

    .line 713
    const/4 v3, 0x1

    goto :goto_78

    .line 711
    :cond_3e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 715
    :cond_43
    if-eqz v8, :cond_47

    .line 718
    const/4 v7, 0x1

    goto :goto_78

    .line 716
    :cond_47
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 720
    :cond_4c
    const/4 v9, -0x1

    if-ne v4, v9, :cond_63

    .line 721
    if-eqz v5, :cond_5a

    .line 722
    if-nez v8, :cond_55

    .line 725
    const/4 v2, 0x1

    goto :goto_78

    .line 723
    :cond_55
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 727
    :cond_5a
    if-eqz v8, :cond_5e

    .line 730
    const/4 v6, 0x1

    goto :goto_78

    .line 728
    :cond_5e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 732
    :cond_63
    if-nez v4, :cond_c2

    .line 733
    if-eqz v5, :cond_76

    .line 734
    if-eqz v8, :cond_71

    .line 738
    if-ge v0, v1, :cond_6e

    .line 739
    const/4 v2, 0x1

    .line 740
    const/4 v7, 0x1

    goto :goto_78

    .line 742
    :cond_6e
    const/4 v3, 0x1

    .line 743
    const/4 v6, 0x1

    goto :goto_78

    .line 735
    :cond_71
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 746
    :cond_76
    if-nez v8, :cond_bd

    .line 755
    :goto_78
    if-eqz v2, :cond_8d

    .line 756
    if-nez v3, :cond_88

    .line 759
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    goto :goto_8d

    .line 757
    :cond_88
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 761
    :cond_8d
    :goto_8d
    if-eqz v3, :cond_9a

    .line 762
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    .line 764
    :cond_9a
    if-eqz v6, :cond_af

    .line 765
    if-nez v7, :cond_aa

    .line 768
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    goto :goto_af

    .line 766
    :cond_aa
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 770
    :cond_af
    :goto_af
    if-eqz v7, :cond_bc

    .line 771
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    .line 773
    :cond_bc
    return-void

    .line 747
    :cond_bd
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 752
    :cond_c2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9
.end method

.method private checkChecksum()Z
    .registers 11

    .line 377
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    const/4 v2, 0x0

    move-object v3, v2

    .line 378
    .local v3, "firstPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    move-object v3, v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    .line 379
    .local v0, "checkCharacter":Lcom/google/zxing/oned/rss/DataCharacter;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v4

    move-object v5, v2

    .line 381
    .local v5, "firstCharacter":Lcom/google/zxing/oned/rss/DataCharacter;
    move-object v5, v4

    if-nez v4, :cond_19

    .line 382
    return v1

    .line 385
    :cond_19
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v4

    .line 386
    .local v4, "checksum":I
    const/4 v6, 0x2

    .line 388
    .local v6, "s":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1f
    iget-object v8, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4b

    .line 389
    iget-object v8, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 390
    .local v8, "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    add-int/2addr v4, v9

    .line 391
    add-int/lit8 v6, v6, 0x1

    .line 392
    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v9

    .line 393
    .local v2, "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    move-object v2, v9

    if-eqz v9, :cond_48

    .line 394
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    add-int/2addr v4, v9

    .line 395
    add-int/lit8 v6, v6, 0x1

    .line 388
    .end local v2    # "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v8    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 399
    .end local v7    # "i":I
    :cond_4b
    rem-int/lit16 v4, v4, 0xd3

    .line 401
    add-int/lit8 v2, v6, -0x4

    mul-int/lit16 v2, v2, 0xd3

    add-int/2addr v2, v4

    .line 403
    .local v7, "checkCharacterValue":I
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    if-ne v2, v8, :cond_59

    const/4 v1, 0x1

    :cond_59
    return v1
.end method

.method private checkRows(Ljava/util/List;I)Ljava/util/List;
    .registers 9
    .param p2, "currentRow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 215
    .local p1, "collectedRows":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    move v0, p2

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5e

    .line 216
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 217
    .local v1, "row":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 219
    .local v3, "collectedRow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    .end local v3    # "collectedRow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    goto :goto_1a

    .line 221
    :cond_30
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isValidSequence(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 227
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 228
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object v2

    .line 231
    :cond_4a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 232
    .local v2, "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    move-object v2, v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v3, v0, 0x1

    :try_start_55
    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3
    :try_end_59
    .catch Lcom/google/zxing/NotFoundException; {:try_start_55 .. :try_end_59} :catch_5a

    return-object v3

    .line 236
    :catch_5a
    move-exception v3

    .line 215
    .end local v1    # "row":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    .end local v2    # "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    .end local v0    # "i":I
    :cond_5e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private checkRows(Z)Ljava/util/List;
    .registers 5
    .param p1, "reverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_11

    .line 189
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    const/4 v0, 0x0

    return-object v0

    .line 193
    :cond_11
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    if-eqz p1, :cond_1d

    .line 195
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 198
    :cond_1d
    const/4 v0, 0x0

    .line 200
    .local v0, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :try_start_1e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1
    :try_end_28
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1e .. :try_end_28} :catch_2a

    move-object v0, v1

    .line 203
    goto :goto_2b

    .line 201
    :catch_2a
    move-exception v1

    .line 205
    :goto_2b
    if-eqz p1, :cond_32

    .line 206
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 209
    :cond_32
    return-object v0
.end method

.method static constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 360
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-static {p0}, Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;->buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 362
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "resultingString":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 366
    .local v2, "firstPoints":[Lcom/google/zxing/ResultPoint;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 368
    .local v3, "lastPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v5, Lcom/google/zxing/Result;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/google/zxing/ResultPoint;

    aget-object v7, v2, v1

    aput-object v7, v6, v1

    aget-object v7, v2, v4

    aput-object v7, v6, v4

    const/4 v7, 0x2

    aget-object v1, v3, v1

    aput-object v1, v6, v7

    const/4 v1, 0x3

    aget-object v4, v3, v4

    aput-object v4, v6, v1

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    const/4 v4, 0x0

    invoke-direct {v5, v0, v4, v6, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v5
.end method

.method private findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V
    .registers 21
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "forcedOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 460
    .local p2, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 461
    .local v4, "counters":[I
    move-object v4, v2

    const/4 v5, 0x0

    aput v5, v2, v5

    .line 462
    const/4 v2, 0x1

    aput v5, v4, v2

    .line 463
    const/4 v6, 0x2

    aput v5, v4, v6

    .line 464
    const/4 v7, 0x3

    aput v5, v4, v7

    .line 466
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    .line 469
    .local v8, "width":I
    if-ltz p3, :cond_22

    .line 470
    move/from16 v3, p3

    move-object/from16 v10, p2

    .local v3, "rowOffset":I
    goto :goto_44

    .line 471
    .end local v3    # "rowOffset":I
    :cond_22
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 472
    const/4 v3, 0x0

    move-object/from16 v10, p2

    .restart local v3    # "rowOffset":I
    goto :goto_44

    .line 474
    .end local v3    # "rowOffset":I
    :cond_2c
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v2

    move-object/from16 v10, p2

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 475
    .local v3, "lastPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v9

    aget v9, v9, v2

    move v3, v9

    .line 477
    .local v3, "rowOffset":I
    :goto_44
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    rem-int/2addr v9, v6

    if-eqz v9, :cond_4d

    const/4 v9, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v9, 0x0

    .line 478
    .local v9, "searchingEvenPair":Z
    :goto_4e
    iget-boolean v11, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v11, :cond_58

    .line 479
    if-nez v9, :cond_56

    const/4 v11, 0x1

    goto :goto_57

    :cond_56
    const/4 v11, 0x0

    :goto_57
    move v9, v11

    .line 482
    :cond_58
    const/4 v11, 0x0

    .line 483
    .local v11, "isWhite":Z
    :goto_59
    if-ge v3, v8, :cond_67

    .line 484
    invoke-virtual {v1, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v12

    .line 485
    xor-int/lit8 v13, v12, 0x1

    move v11, v13

    if-nez v12, :cond_67

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 491
    :cond_67
    const/4 v12, 0x0

    .line 492
    .local v12, "counterPosition":I
    move v13, v3

    .line 493
    .local v13, "patternStart":I
    move v14, v3

    .local v14, "x":I
    :goto_6a
    if-ge v14, v8, :cond_b6

    .line 494
    invoke-virtual {v1, v14}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v15

    if-eq v15, v11, :cond_78

    .line 495
    aget v15, v4, v12

    add-int/2addr v15, v2

    aput v15, v4, v12

    goto :goto_b3

    .line 497
    :cond_78
    if-ne v12, v7, :cond_a9

    .line 498
    if-eqz v9, :cond_7f

    .line 499
    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 502
    :cond_7f
    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isFinderPattern([I)Z

    move-result v15

    if-eqz v15, :cond_8e

    .line 503
    iget-object v6, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aput v13, v6, v5

    .line 504
    iget-object v5, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aput v14, v5, v2

    .line 505
    return-void

    .line 508
    :cond_8e
    if-eqz v9, :cond_93

    .line 509
    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 512
    :cond_93
    aget v15, v4, v5

    aget v16, v4, v2

    add-int v15, v15, v16

    add-int/2addr v13, v15

    .line 513
    aget v15, v4, v6

    aput v15, v4, v5

    .line 514
    aget v15, v4, v7

    aput v15, v4, v2

    .line 515
    aput v5, v4, v6

    .line 516
    aput v5, v4, v7

    .line 517
    add-int/lit8 v12, v12, -0x1

    goto :goto_ab

    .line 519
    :cond_a9
    add-int/lit8 v12, v12, 0x1

    .line 521
    :goto_ab
    aput v2, v4, v12

    .line 522
    if-nez v11, :cond_b1

    const/4 v15, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v15, 0x0

    :goto_b2
    move v11, v15

    .line 493
    :goto_b3
    add-int/lit8 v14, v14, 0x1

    goto :goto_6a

    .line 525
    .end local v14    # "x":I
    :cond_b6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method

.method private static getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I
    .registers 3
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "initialPos"    # I

    .line 408
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 409
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    .line 410
    .local v0, "currentPos":I
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    goto :goto_17

    .line 412
    .end local v0    # "currentPos":I
    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 413
    .restart local v0    # "currentPos":I
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    .line 415
    :goto_17
    return v0
.end method

.method private static isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z
    .registers 4
    .param p0, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p1, "isOddPattern"    # Z
    .param p2, "leftChar"    # Z

    .line 681
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    if-nez v0, :cond_d

    if-eqz p1, :cond_d

    if-nez p2, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method private static isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)Z"
        }
    .end annotation

    .line 330
    .local p0, "pairs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local p1, "rows":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 331
    .local v1, "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    const/4 v2, 0x1

    .line 332
    .local v2, "allFound":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 333
    .local v4, "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    const/4 v5, 0x0

    .line 334
    .local v5, "found":Z
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 335
    .local v7, "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v4, v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 336
    const/4 v5, 0x1

    .line 337
    goto :goto_3f

    .line 339
    .end local v7    # "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_3e
    goto :goto_2a

    .line 340
    :cond_3f
    :goto_3f
    if-nez v5, :cond_43

    .line 341
    const/4 v2, 0x0

    .line 342
    goto :goto_44

    .line 344
    .end local v4    # "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v5    # "found":Z
    :cond_43
    goto :goto_15

    .line 345
    :cond_44
    :goto_44
    if-eqz v2, :cond_48

    .line 347
    const/4 v0, 0x1

    return v0

    .line 349
    .end local v1    # "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    .end local v2    # "allFound":Z
    :cond_48
    goto :goto_4

    .line 350
    :cond_49
    const/4 v0, 0x0

    return v0
.end method

.method private static isValidSequence(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)Z"
        }
    .end annotation

    .line 247
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_36

    aget-object v4, v0, v3

    .line 248
    .local v4, "sequence":[I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    array-length v6, v4

    if-gt v5, v6, :cond_33

    .line 252
    const/4 v5, 0x1

    .line 253
    .local v5, "stop":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2f

    .line 254
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v7

    aget v8, v4, v6

    if-eq v7, v8, :cond_2c

    .line 255
    const/4 v5, 0x0

    .line 256
    goto :goto_2f

    .line 253
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 260
    .end local v6    # "j":I
    :cond_2f
    :goto_2f
    if-eqz v5, :cond_33

    .line 261
    const/4 v0, 0x1

    return v0

    .line 247
    .end local v4    # "sequence":[I
    .end local v5    # "stop":Z
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 265
    :cond_36
    return v2
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;
    .registers 12

    .line 543
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_22

    .line 546
    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget p3, p3, v0

    sub-int/2addr p3, v1

    .line 548
    :goto_9
    if-ltz p3, :cond_14

    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_14

    .line 549
    add-int/lit8 p3, p3, -0x1

    goto :goto_9

    .line 552
    :cond_14
    add-int/2addr p3, v1

    .line 553
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget p1, p1, v0

    sub-int/2addr p1, p3

    .line 554
    nop

    .line 555
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v2, v2, v1

    .line 557
    move v5, p3

    move v6, v2

    goto :goto_37

    .line 560
    :cond_22
    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget p3, p3, v0

    .line 562
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v2, v2, v1

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v2

    .line 563
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget p1, p1, v1

    sub-int p1, v2, p1

    move v5, p3

    move v6, v2

    .line 567
    :goto_37
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object p3

    .line 568
    array-length v2, p3

    sub-int/2addr v2, v1

    invoke-static {p3, v0, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    aput p1, p3, v0

    .line 573
    :try_start_42
    sget-object p1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    invoke-static {p3, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFinderValue([I[[I)I

    move-result v3
    :try_end_48
    .catch Lcom/google/zxing/NotFoundException; {:try_start_42 .. :try_end_48} :catch_55

    .line 576
    nop

    .line 577
    new-instance p1, Lcom/google/zxing/oned/rss/FinderPattern;

    filled-new-array {v5, v6}, [I

    move-result-object v4

    move-object v2, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object p1

    .line 574
    :catch_55
    move-exception p1

    .line 575
    const/4 p1, 0x0

    return-object p1
.end method

.method private static removePartialRows(Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    const/4 v1, 0x0

    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 303
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 304
    .local v1, "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    move-object v1, v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 307
    const/4 v2, 0x1

    .line 308
    .local v2, "allFound":Z
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 309
    .local v4, "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    const/4 v5, 0x0

    .line 310
    .local v5, "found":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 311
    .local v7, "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v4, v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 312
    const/4 v5, 0x1

    .line 313
    goto :goto_4f

    .line 315
    .end local v7    # "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_4e
    goto :goto_3a

    .line 316
    :cond_4f
    :goto_4f
    if-nez v5, :cond_53

    .line 317
    const/4 v2, 0x0

    .line 318
    goto :goto_54

    .line 320
    .end local v4    # "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v5    # "found":Z
    :cond_53
    goto :goto_29

    .line 321
    :cond_54
    :goto_54
    if-eqz v2, :cond_59

    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 325
    .end local v1    # "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    .end local v2    # "allFound":Z
    :cond_59
    goto :goto_5

    .line 326
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :cond_5a
    return-void
.end method

.method private static reverseCounters([I)V
    .registers 5
    .param p0, "counters"    # [I

    .line 529
    array-length v0, p0

    .line 530
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_19

    .line 531
    aget v2, p0, v1

    .line 532
    .local v2, "tmp":I
    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    aget v3, p0, v3

    aput v3, p0, v1

    .line 533
    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    aput v2, p0, v3

    .line 530
    .end local v2    # "tmp":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 535
    .end local v1    # "i":I
    :cond_19
    return-void
.end method

.method private storeRow(IZ)V
    .registers 9
    .param p1, "rowNumber"    # I
    .param p2, "wasReversed"    # Z

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "insertPos":I
    const/4 v1, 0x0

    .line 272
    .local v1, "prevIsSame":Z
    const/4 v2, 0x0

    .local v2, "nextIsSame":Z
    const/4 v3, 0x0

    .line 273
    :goto_4
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2c

    .line 274
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 275
    .local v3, "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    move-object v3, v4

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getRowNumber()I

    move-result v4

    if-le v4, p1, :cond_22

    .line 276
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v2

    .line 277
    goto :goto_2c

    .line 279
    :cond_22
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v1

    .line 280
    nop

    .end local v3    # "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    add-int/lit8 v0, v0, 0x1

    .line 281
    goto :goto_4

    .line 282
    :cond_2c
    :goto_2c
    if-nez v2, :cond_50

    if-eqz v1, :cond_31

    goto :goto_50

    .line 291
    :cond_31
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 292
    return-void

    .line 295
    :cond_3c
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    new-instance v4, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-direct {v4, v5, p1, p2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;-><init>(Ljava/util/List;IZ)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 297
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->removePartialRows(Ljava/util/List;Ljava/util/List;)V

    .line 298
    return-void

    .line 283
    :cond_50
    :goto_50
    return-void
.end method


# virtual methods
.method decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 584
    move-object v0, p1

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDataCharacterCounters()[I

    move-result-object v1

    .line 585
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    array-length v4, v1

    if-ge v3, v4, :cond_f

    .line 586
    aput v2, v1, v3

    .line 585
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 589
    :cond_f
    const/4 v3, 0x1

    if-eqz p4, :cond_1c

    .line 590
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v4

    aget v4, v4, v2

    invoke-static {p1, v4, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    goto :goto_37

    .line 592
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-static {p1, v4, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 594
    array-length v0, v1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v0, :cond_37

    .line 595
    aget v5, v1, v4

    .line 596
    aget v6, v1, v0

    aput v6, v1, v4

    .line 597
    aput v5, v1, v0

    .line 594
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 602
    :cond_37
    :goto_37
    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x41880000    # 17.0f

    div-float/2addr v0, v4

    .line 605
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v5

    aget v5, v5, v2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x41700000    # 15.0f

    div-float/2addr v4, v5

    .line 606
    sub-float v5, v0, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v5, v4

    const v4, 0x3e99999a    # 0.3f

    cmpl-float v5, v5, v4

    if-gtz v5, :cond_13c

    .line 610
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v5

    .line 611
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v6

    .line 612
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v7

    .line 613
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v8

    .line 615
    const/4 v9, 0x0

    :goto_6f
    array-length v10, v1

    if-ge v9, v10, :cond_b4

    .line 616
    aget v10, v1, v9

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v10, v10, v11

    div-float/2addr v10, v0

    .line 617
    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v11, v10

    float-to-int v11, v11

    .line 618
    if-gtz v11, :cond_8b

    .line 619
    cmpg-float v11, v10, v4

    if-ltz v11, :cond_86

    .line 622
    const/4 v11, 0x1

    goto :goto_9e

    .line 620
    :cond_86
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 623
    :cond_8b
    const/16 v12, 0x8

    if-le v11, v12, :cond_9e

    .line 624
    const v11, 0x410b3333    # 8.7f

    cmpl-float v11, v10, v11

    if-gtz v11, :cond_99

    .line 627
    const/16 v11, 0x8

    goto :goto_9e

    .line 625
    :cond_99
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 629
    :cond_9e
    :goto_9e
    div-int/lit8 v12, v9, 0x2

    .line 630
    and-int/lit8 v13, v9, 0x1

    if-nez v13, :cond_ab

    .line 631
    aput v11, v5, v12

    .line 632
    int-to-float v11, v11

    sub-float/2addr v10, v11

    aput v10, v7, v12

    goto :goto_b1

    .line 634
    :cond_ab
    aput v11, v6, v12

    .line 635
    int-to-float v11, v11

    sub-float/2addr v10, v11

    aput v10, v8, v12

    .line 615
    :goto_b1
    add-int/lit8 v9, v9, 0x1

    goto :goto_6f

    .line 639
    :cond_b4
    const/16 v0, 0x11

    move-object v1, p0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->adjustOddEvenCounts(I)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    const/4 v4, 0x4

    mul-int/lit8 v0, v0, 0x4

    const/4 v7, 0x2

    if-eqz p3, :cond_c6

    const/4 v8, 0x0

    goto :goto_c7

    :cond_c6
    const/4 v8, 0x2

    :goto_c7
    add-int/2addr v0, v8

    xor-int/lit8 v8, p4, 0x1

    add-int/2addr v0, v8

    sub-int/2addr v0, v3

    .line 643
    nop

    .line 644
    nop

    .line 645
    array-length v8, v5

    sub-int/2addr v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_d2
    if-ltz v8, :cond_ed

    .line 646
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v11

    if-eqz v11, :cond_e7

    .line 647
    sget-object v11, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v11, v11, v0

    mul-int/lit8 v12, v8, 0x2

    aget v11, v11, v12

    .line 648
    aget v12, v5, v8

    mul-int v12, v12, v11

    add-int/2addr v9, v12

    .line 650
    :cond_e7
    aget v11, v5, v8

    add-int/2addr v10, v11

    .line 645
    add-int/lit8 v8, v8, -0x1

    goto :goto_d2

    .line 652
    :cond_ed
    nop

    .line 654
    array-length v8, v6

    sub-int/2addr v8, v3

    const/4 v11, 0x0

    :goto_f1
    if-ltz v8, :cond_10a

    .line 655
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v12

    if-eqz v12, :cond_107

    .line 656
    sget-object v12, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v12, v12, v0

    mul-int/lit8 v13, v8, 0x2

    add-int/2addr v13, v3

    aget v12, v12, v13

    .line 657
    aget v13, v6, v8

    mul-int v13, v13, v12

    add-int/2addr v11, v13

    .line 654
    :cond_107
    add-int/lit8 v8, v8, -0x1

    goto :goto_f1

    .line 661
    :cond_10a
    add-int/2addr v9, v11

    .line 663
    and-int/lit8 v0, v10, 0x1

    if-nez v0, :cond_137

    const/16 v0, 0xd

    if-gt v10, v0, :cond_137

    if-lt v10, v4, :cond_137

    .line 667
    sub-int/2addr v0, v10

    div-int/2addr v0, v7

    .line 668
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    aget v4, v4, v0

    .line 669
    rsub-int/lit8 v7, v4, 0x9

    .line 670
    invoke-static {v5, v4, v3}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v3

    .line 671
    invoke-static {v6, v7, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v2

    .line 672
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    aget v4, v4, v0

    .line 673
    sget-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    aget v0, v5, v0

    .line 674
    mul-int v3, v3, v4

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    .line 676
    new-instance v0, Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-direct {v0, v3, v9}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v0

    .line 664
    :cond_137
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 607
    :cond_13c
    move-object v1, p0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 5
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 127
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 130
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_10
    .catch Lcom/google/zxing/NotFoundException; {:try_start_8 .. :try_end_10} :catch_11

    return-object v0

    .line 131
    :catch_11
    move-exception v0

    .line 135
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;
    .registers 8
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "done":Z
    :goto_1
    if-nez v0, :cond_1b

    .line 151
    :try_start_3
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {p0, p2, v2, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Lcom/google/zxing/NotFoundException; {:try_start_3 .. :try_end_e} :catch_f

    goto :goto_19

    .line 152
    :catch_f
    move-exception v1

    .line 153
    .local v1, "nfe":Lcom/google/zxing/NotFoundException;
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 157
    const/4 v0, 0x1

    .line 158
    .end local v1    # "nfe":Lcom/google/zxing/NotFoundException;
    :goto_19
    goto :goto_1

    .line 154
    .restart local v1    # "nfe":Lcom/google/zxing/NotFoundException;
    :cond_1a
    throw v1

    .line 162
    .end local v1    # "nfe":Lcom/google/zxing/NotFoundException;
    :cond_1b
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 163
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object v1

    .line 166
    :cond_24
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 167
    .local v1, "tryStackedDecode":Z
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->storeRow(IZ)V

    .line 168
    if-eqz v1, :cond_43

    .line 171
    invoke-direct {p0, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 172
    .local v4, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    move-object v4, v3

    if-eqz v3, :cond_3b

    .line 173
    return-object v4

    .line 175
    :cond_3b
    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object v2

    .line 176
    move-object v3, v2

    .end local v4    # "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local v3, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    if-eqz v2, :cond_43

    .line 177
    return-object v3

    .line 181
    .end local v3    # "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :cond_43
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method

.method getRows()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    return-void
.end method

.method retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .registers 12
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 421
    .local p2, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 422
    .local v0, "isOddPattern":Z
    :goto_d
    iget-boolean v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v3, :cond_17

    .line 423
    if-nez v0, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    move v0, v3

    .line 428
    :cond_17
    const/4 v3, 0x1

    .line 429
    .local v3, "keepFinding":Z
    const/4 v4, -0x1

    .local v4, "forcedOffset":I
    const/4 v5, 0x0

    .line 431
    :cond_1a
    invoke-direct {p0, p1, p2, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V

    .line 432
    invoke-direct {p0, p1, p3, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    .line 433
    .local v5, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    move-object v5, v6

    if-nez v6, :cond_2d

    .line 434
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v6, v6, v1

    invoke-static {p1, v6}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I

    move-result v4

    goto :goto_2e

    .line 436
    :cond_2d
    const/4 v3, 0x0

    .line 438
    :goto_2e
    if-nez v3, :cond_1a

    .line 443
    invoke-virtual {p0, p1, v5, v0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v6

    .line 445
    .local v6, "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_51

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mustBeLast()Z

    move-result v7

    if-nez v7, :cond_4c

    goto :goto_51

    .line 446
    :cond_4c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 451
    :cond_51
    :goto_51
    :try_start_51
    invoke-virtual {p0, p1, v5, v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v1
    :try_end_55
    .catch Lcom/google/zxing/NotFoundException; {:try_start_51 .. :try_end_55} :catch_56

    .line 454
    .local v1, "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    goto :goto_58

    .line 452
    .end local v1    # "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :catch_56
    move-exception v1

    .line 453
    const/4 v1, 0x0

    .line 455
    .restart local v1    # "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :goto_58
    new-instance v7, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-direct {v7, v6, v1, v5, v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V

    return-object v7
.end method
