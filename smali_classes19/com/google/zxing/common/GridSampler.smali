.class public abstract Lcom/google/zxing/common/GridSampler;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static gridSampler:Lcom/google/zxing/common/GridSampler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lcom/google/zxing/common/DefaultGridSampler;

    invoke-direct {v0}, Lcom/google/zxing/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V
    .registers 12
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "points"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 122
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 124
    .local v1, "height":I
    const/4 v2, 0x1

    .line 125
    .local v2, "nudged":Z
    const/4 v3, 0x0

    .local v3, "offset":I
    :goto_a
    array-length v4, p1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ge v3, v4, :cond_4a

    if-eqz v2, :cond_4a

    .line 126
    aget v4, p1, v3

    float-to-int v4, v4

    .line 127
    .local v4, "x":I
    add-int/lit8 v7, v3, 0x1

    aget v7, p1, v7

    float-to-int v7, v7

    .line 128
    .local v7, "y":I
    if-lt v4, v6, :cond_45

    if-gt v4, v0, :cond_45

    if-lt v7, v6, :cond_45

    if-gt v7, v1, :cond_45

    .line 131
    const/4 v2, 0x0

    .line 132
    if-ne v4, v6, :cond_28

    .line 133
    aput v5, p1, v3

    .line 134
    const/4 v2, 0x1

    goto :goto_30

    .line 135
    :cond_28
    if-ne v4, v0, :cond_30

    .line 136
    add-int/lit8 v8, v0, -0x1

    int-to-float v8, v8

    aput v8, p1, v3

    .line 137
    const/4 v2, 0x1

    .line 139
    :cond_30
    :goto_30
    if-ne v7, v6, :cond_38

    .line 140
    add-int/lit8 v6, v3, 0x1

    aput v5, p1, v6

    .line 141
    const/4 v2, 0x1

    goto :goto_42

    .line 142
    :cond_38
    if-ne v7, v1, :cond_42

    .line 143
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    aput v6, p1, v5

    .line 144
    const/4 v2, 0x1

    .line 125
    .end local v4    # "x":I
    .end local v7    # "y":I
    :cond_42
    :goto_42
    add-int/lit8 v3, v3, 0x2

    goto :goto_a

    .line 129
    .restart local v4    # "x":I
    .restart local v7    # "y":I
    :cond_45
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 148
    .end local v3    # "offset":I
    .end local v4    # "x":I
    .end local v7    # "y":I
    :cond_4a
    const/4 v2, 0x1

    .line 149
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    .restart local v3    # "offset":I
    :goto_4e
    if-ltz v3, :cond_8b

    if-eqz v2, :cond_8b

    .line 150
    aget v4, p1, v3

    float-to-int v4, v4

    .line 151
    .restart local v4    # "x":I
    add-int/lit8 v7, v3, 0x1

    aget v7, p1, v7

    float-to-int v7, v7

    .line 152
    .restart local v7    # "y":I
    if-lt v4, v6, :cond_86

    if-gt v4, v0, :cond_86

    if-lt v7, v6, :cond_86

    if-gt v7, v1, :cond_86

    .line 155
    const/4 v2, 0x0

    .line 156
    if-ne v4, v6, :cond_69

    .line 157
    aput v5, p1, v3

    .line 158
    const/4 v2, 0x1

    goto :goto_71

    .line 159
    :cond_69
    if-ne v4, v0, :cond_71

    .line 160
    add-int/lit8 v8, v0, -0x1

    int-to-float v8, v8

    aput v8, p1, v3

    .line 161
    const/4 v2, 0x1

    .line 163
    :cond_71
    :goto_71
    if-ne v7, v6, :cond_79

    .line 164
    add-int/lit8 v8, v3, 0x1

    aput v5, p1, v8

    .line 165
    const/4 v2, 0x1

    goto :goto_83

    .line 166
    :cond_79
    if-ne v7, v1, :cond_83

    .line 167
    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v9, v1, -0x1

    int-to-float v9, v9

    aput v9, p1, v8

    .line 168
    const/4 v2, 0x1

    .line 149
    .end local v4    # "x":I
    .end local v7    # "y":I
    :cond_83
    :goto_83
    add-int/lit8 v3, v3, -0x2

    goto :goto_4e

    .line 153
    .restart local v4    # "x":I
    .restart local v7    # "y":I
    :cond_86
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 171
    .end local v3    # "offset":I
    .end local v4    # "x":I
    .end local v7    # "y":I
    :cond_8b
    return-void
.end method

.method public static getInstance()Lcom/google/zxing/common/GridSampler;
    .registers 1

    .line 55
    sget-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-object v0
.end method

.method public static setGridSampler(Lcom/google/zxing/common/GridSampler;)V
    .registers 1
    .param p0, "newGridSampler"    # Lcom/google/zxing/common/GridSampler;

    .line 48
    sput-object p0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    .line 49
    return-void
.end method


# virtual methods
.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method
