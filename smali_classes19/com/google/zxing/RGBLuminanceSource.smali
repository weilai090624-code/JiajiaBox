.class public final Lcom/google/zxing/RGBLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "RGBLuminanceSource.java"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final luminances:[B

.field private final top:I


# direct methods
.method public constructor <init>(II[I)V
    .registers 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixels"    # [I

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 37
    iput p1, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    .line 38
    iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    .line 40
    iput v0, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    .line 46
    mul-int v0, p1, p2

    .line 47
    .local v0, "size":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 48
    const/4 v1, 0x0

    .local v1, "offset":I
    const/4 v2, 0x0

    :goto_14
    if-ge v1, v0, :cond_30

    .line 49
    aget v3, p3, v1

    .line 50
    .local v2, "pixel":I
    move v2, v3

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 51
    .local v3, "r":I
    shr-int/lit8 v4, v2, 0x7

    and-int/lit16 v4, v4, 0x1fe

    .line 52
    .local v4, "g2":I
    and-int/lit16 v5, v2, 0xff

    .line 54
    .local v5, "b":I
    iget-object v6, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    add-int v7, v3, v4

    add-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x4

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    .line 48
    .end local v2    # "pixel":I
    .end local v3    # "r":I
    .end local v4    # "g2":I
    .end local v5    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 56
    .end local v1    # "offset":I
    :cond_30
    return-void
.end method

.method private constructor <init>([BIIIIII)V
    .registers 10
    .param p1, "pixels"    # [B
    .param p2, "dataWidth"    # I
    .param p3, "dataHeight"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .line 65
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 66
    add-int v0, p4, p6

    if-gt v0, p2, :cond_16

    add-int v0, p5, p7

    if-gt v0, p3, :cond_16

    .line 69
    iput-object p1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 70
    iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    .line 71
    iput p3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    .line 72
    iput p4, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    .line 73
    iput p5, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    .line 74
    return-void

    .line 67
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .registers 14
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 127
    new-instance v8, Lcom/google/zxing/RGBLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    iget v0, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int v4, v0, p1

    iget v0, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    add-int v5, v0, p2

    move-object v0, v8

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/RGBLuminanceSource;-><init>([BIIIIII)V

    return-object v8
.end method

.method public getMatrix()[B
    .registers 9

    .line 92
    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getWidth()I

    move-result v0

    .line 93
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getHeight()I

    move-result v1

    .line 97
    .local v1, "height":I
    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    if-ne v0, v2, :cond_13

    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    if-ne v1, v2, :cond_13

    .line 98
    iget-object v2, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    return-object v2

    .line 101
    :cond_13
    mul-int v2, v0, v1

    const/4 v3, 0x0

    .line 102
    .local v3, "area":I
    move v3, v2

    new-array v2, v2, [B

    .line 103
    .local v2, "matrix":[B
    iget v4, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    iget v5, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    mul-int v4, v4, v5

    iget v5, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int/2addr v4, v5

    .line 106
    .local v4, "inputOffset":I
    iget v5, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    if-ne v0, v5, :cond_2d

    .line 107
    iget-object v5, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    const/4 v6, 0x0

    invoke-static {v5, v4, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    return-object v2

    .line 112
    :cond_2d
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_2e
    if-ge v5, v1, :cond_3d

    .line 113
    mul-int v6, v5, v0

    .line 114
    .local v6, "outputOffset":I
    iget-object v7, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    invoke-static {v7, v4, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget v7, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    add-int/2addr v4, v7

    .line 112
    .end local v6    # "outputOffset":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 117
    .end local v5    # "y":I
    :cond_3d
    return-object v2
.end method

.method public getRow(I[B)[B
    .registers 7
    .param p1, "y"    # I
    .param p2, "row"    # [B

    .line 78
    if-ltz p1, :cond_24

    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_24

    .line 81
    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getWidth()I

    move-result v0

    .line 82
    .local v0, "width":I
    if-eqz p2, :cond_11

    array-length v1, p2

    if-ge v1, v0, :cond_13

    .line 83
    :cond_11
    new-array p2, v0, [B

    .line 85
    :cond_13
    iget v1, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    mul-int v1, v1, v2

    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int/2addr v1, v2

    .line 86
    .local v1, "offset":I
    iget-object v2, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    return-object p2

    .line 79
    .end local v0    # "width":I
    .end local v1    # "offset":I
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested row is outside the image: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCropSupported()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method
