.class final Landroidx/camera/core/ImageProxyDownsampler;
.super Ljava/lang/Object;
.source "ImageProxyDownsampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;,
        Landroidx/camera/core/ImageProxyDownsampler$DownsamplingMethod;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static createPlaneProxy(II[B)Landroidx/camera/core/ImageProxy$PlaneProxy;
    .locals 1
    .param p0, "rowStride"    # I
    .param p1, "pixelStride"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "rowStride",
            "pixelStride",
            "data"
        }
    .end annotation

    .line 193
    new-instance v0, Landroidx/camera/core/ImageProxyDownsampler$1;

    invoke-direct {v0, p2, p0, p1}, Landroidx/camera/core/ImageProxyDownsampler$1;-><init>([BII)V

    return-object v0
.end method

.method static downsample(Landroidx/camera/core/ImageProxy;IILandroidx/camera/core/ImageProxyDownsampler$DownsamplingMethod;)Landroidx/camera/core/ForwardingImageProxy;
    .locals 21
    .param p0, "image"    # Landroidx/camera/core/ImageProxy;
    .param p1, "downsampledWidth"    # I
    .param p2, "downsampledHeight"    # I
    .param p3, "downsamplingMethod"    # Landroidx/camera/core/ImageProxyDownsampler$DownsamplingMethod;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "image",
            "downsampledWidth",
            "downsampledHeight",
            "downsamplingMethod"
        }
    .end annotation

    .line 46
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_3

    .line 50
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v3

    if-lt v3, v1, :cond_2

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v3

    if-lt v3, v2, :cond_2

    .line 59
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 60
    new-instance v3, Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;

    .line 61
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v4

    invoke-direct {v3, v0, v4, v1, v2}, Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;-><init>(Landroidx/camera/core/ImageProxy;[Landroidx/camera/core/ImageProxy$PlaneProxy;II)V

    .line 60
    return-object v3

    .line 64
    :cond_0
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v3

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    .line 65
    .local v3, "inputWidths":[I
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v4

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    filled-new-array {v4, v5, v6}, [I

    move-result-object v4

    .line 66
    .local v4, "inputHeights":[I
    div-int/lit8 v5, v1, 0x2

    div-int/lit8 v6, v1, 0x2

    filled-new-array {v1, v5, v6}, [I

    move-result-object v5

    .line 67
    .local v5, "outputWidths":[I
    div-int/lit8 v6, v2, 0x2

    div-int/lit8 v7, v2, 0x2

    filled-new-array {v2, v6, v7}, [I

    move-result-object v6

    .line 69
    .local v6, "outputHeights":[I
    const/4 v7, 0x3

    new-array v8, v7, [Landroidx/camera/core/ImageProxy$PlaneProxy;

    .line 70
    .local v8, "outputPlanes":[Landroidx/camera/core/ImageProxy$PlaneProxy;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 71
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v10

    aget-object v10, v10, v9

    .line 72
    .local v10, "inputPlane":Landroidx/camera/core/ImageProxy$PlaneProxy;
    invoke-interface {v10}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 73
    .local v19, "inputBuffer":Ljava/nio/ByteBuffer;
    aget v11, v5, v9

    aget v12, v6, v9

    mul-int v11, v11, v12

    new-array v15, v11, [B

    .line 74
    .local v15, "output":[B
    sget-object v11, Landroidx/camera/core/ImageProxyDownsampler$2;->$SwitchMap$androidx$camera$core$ImageProxyDownsampler$DownsamplingMethod:[I

    invoke-virtual/range {p3 .. p3}, Landroidx/camera/core/ImageProxyDownsampler$DownsamplingMethod;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    move-object/from16 v20, v15

    .end local v15    # "output":[B
    .local v20, "output":[B
    goto :goto_1

    .line 87
    .end local v20    # "output":[B
    .restart local v15    # "output":[B
    :pswitch_0
    aget v12, v3, v9

    .line 90
    invoke-interface {v10}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getPixelStride()I

    move-result v13

    .line 91
    invoke-interface {v10}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getRowStride()I

    move-result v14

    aget v16, v4, v9

    aget v17, v5, v9

    aget v18, v6, v9

    .line 87
    move-object/from16 v11, v19

    move-object/from16 v20, v15

    .end local v15    # "output":[B
    .restart local v20    # "output":[B
    move/from16 v15, v16

    move-object/from16 v16, v20

    invoke-static/range {v11 .. v18}, Landroidx/camera/core/ImageProxyDownsampler;->resizeAveraging(Ljava/nio/ByteBuffer;IIII[BII)V

    goto :goto_1

    .line 76
    .end local v20    # "output":[B
    .restart local v15    # "output":[B
    :pswitch_1
    move-object/from16 v20, v15

    .end local v15    # "output":[B
    .restart local v20    # "output":[B
    aget v12, v3, v9

    .line 79
    invoke-interface {v10}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getPixelStride()I

    move-result v13

    .line 80
    invoke-interface {v10}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getRowStride()I

    move-result v14

    aget v15, v4, v9

    aget v17, v5, v9

    aget v18, v6, v9

    .line 76
    move-object/from16 v11, v19

    move-object/from16 v16, v20

    invoke-static/range {v11 .. v18}, Landroidx/camera/core/ImageProxyDownsampler;->resizeNearestNeighbor(Ljava/nio/ByteBuffer;IIII[BII)V

    .line 85
    nop

    .line 98
    :goto_1
    aget v11, v5, v9

    const/4 v12, 0x1

    move-object/from16 v13, v20

    .end local v20    # "output":[B
    .local v13, "output":[B
    invoke-static {v11, v12, v13}, Landroidx/camera/core/ImageProxyDownsampler;->createPlaneProxy(II[B)Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v11

    aput-object v11, v8, v9

    .line 70
    .end local v10    # "inputPlane":Landroidx/camera/core/ImageProxy$PlaneProxy;
    .end local v13    # "output":[B
    .end local v19    # "inputBuffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 100
    .end local v9    # "i":I
    :cond_1
    new-instance v7, Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;

    invoke-direct {v7, v0, v8, v1, v2}, Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;-><init>(Landroidx/camera/core/ImageProxy;[Landroidx/camera/core/ImageProxy$PlaneProxy;II)V

    return-object v7

    .line 51
    .end local v3    # "inputWidths":[I
    .end local v4    # "inputHeights":[I
    .end local v5    # "outputWidths":[I
    .end local v6    # "outputHeights":[I
    .end local v8    # "outputPlanes":[Landroidx/camera/core/ImageProxy$PlaneProxy;
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downsampled dimension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not <= original dimension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Landroid/util/Size;

    .line 55
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v6

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Only YUV_420_888 format is currently supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static resizeAveraging(Ljava/nio/ByteBuffer;IIII[BII)V
    .locals 21
    .param p0, "input"    # Ljava/nio/ByteBuffer;
    .param p1, "inputWidth"    # I
    .param p2, "inputPixelStride"    # I
    .param p3, "inputRowStride"    # I
    .param p4, "inputHeight"    # I
    .param p5, "output"    # [B
    .param p6, "outputWidth"    # I
    .param p7, "outputHeight"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inputWidth",
            "inputPixelStride",
            "inputRowStride",
            "inputHeight",
            "output",
            "outputWidth",
            "outputHeight"
        }
    .end annotation

    .line 152
    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p1

    int-to-float v0, v6

    int-to-float v7, v4

    div-float v7, v0, v7

    .line 153
    .local v7, "scaleX":F
    int-to-float v0, v3

    int-to-float v8, v5

    div-float v8, v0, v8

    .line 154
    .local v8, "scaleY":F
    move/from16 v9, p6

    .line 156
    .local v9, "outputRowStride":I
    new-array v10, v2, [B

    .line 157
    .local v10, "row0":[B
    new-array v11, v2, [B

    .line 158
    .local v11, "row1":[B
    new-array v12, v4, [I

    .line 159
    .local v12, "sourceIndices":[I
    const/4 v0, 0x0

    .local v0, "ix":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 160
    int-to-float v13, v0

    mul-float v13, v13, v7

    .line 161
    .local v13, "sourceX":F
    float-to-int v14, v13

    .line 162
    .local v14, "floorSourceX":I
    mul-int v15, v14, p2

    aput v15, v12, v0

    .line 159
    .end local v13    # "sourceX":F
    .end local v14    # "floorSourceX":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "ix":I
    :cond_0
    monitor-enter p0

    .line 166
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 167
    const/4 v0, 0x0

    .local v0, "iy":I
    :goto_1
    if-ge v0, v5, :cond_2

    .line 168
    int-to-float v13, v0

    mul-float v13, v13, v8

    .line 169
    .local v13, "sourceY":F
    float-to-int v14, v13

    .line 170
    .local v14, "floorSourceY":I
    add-int/lit8 v15, v3, -0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    mul-int v15, v15, v2

    .line 171
    .local v15, "rowOffsetSource0":I
    add-int/lit8 v5, v14, 0x1

    add-int/lit8 v6, v3, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int v5, v5, v2

    .line 172
    .local v5, "rowOffsetSource1":I
    mul-int v6, v0, v9

    .line 174
    .local v6, "rowOffsetTarget":I
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 175
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v16, v7

    .end local v7    # "scaleX":F
    .local v16, "scaleX":F
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v1, v10, v7, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 176
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v11, v7, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 179
    const/4 v3, 0x0

    .local v3, "ix":I
    :goto_2
    if-ge v3, v4, :cond_1

    .line 180
    aget v7, v12, v3

    aget-byte v7, v10, v7

    and-int/lit16 v7, v7, 0xff

    .line 181
    .local v7, "sampleA":I
    aget v17, v12, v3

    add-int v17, v17, p2

    aget-byte v2, v10, v17

    and-int/lit16 v2, v2, 0xff

    .line 182
    .local v2, "sampleB":I
    aget v17, v12, v3

    aget-byte v4, v11, v17

    and-int/lit16 v4, v4, 0xff

    .line 183
    .local v4, "sampleC":I
    aget v17, v12, v3

    add-int v17, v17, p2

    move/from16 v18, v5

    .end local v5    # "rowOffsetSource1":I
    .local v18, "rowOffsetSource1":I
    aget-byte v5, v11, v17

    and-int/lit16 v5, v5, 0xff

    .line 184
    .local v5, "sampleD":I
    add-int v17, v7, v2

    add-int v17, v17, v4

    add-int v17, v17, v5

    div-int/lit8 v17, v17, 0x4

    move/from16 v19, v17

    .line 185
    .local v19, "mixed":I
    add-int v17, v6, v3

    move/from16 v20, v2

    move/from16 v2, v19

    move/from16 v19, v4

    .end local v4    # "sampleC":I
    .local v2, "mixed":I
    .local v19, "sampleC":I
    .local v20, "sampleB":I
    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, p5, v17

    .line 179
    .end local v2    # "mixed":I
    .end local v5    # "sampleD":I
    .end local v7    # "sampleA":I
    .end local v19    # "sampleC":I
    .end local v20    # "sampleB":I
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, p3

    move/from16 v4, p6

    move/from16 v5, v18

    goto :goto_2

    .end local v18    # "rowOffsetSource1":I
    .local v5, "rowOffsetSource1":I
    :cond_1
    move/from16 v18, v5

    .line 167
    .end local v3    # "ix":I
    .end local v5    # "rowOffsetSource1":I
    .end local v6    # "rowOffsetTarget":I
    .end local v13    # "sourceY":F
    .end local v14    # "floorSourceY":I
    .end local v15    # "rowOffsetSource0":I
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v7, v16

    goto/16 :goto_1

    .end local v16    # "scaleX":F
    .local v7, "scaleX":F
    :cond_2
    move/from16 v16, v7

    .line 188
    .end local v0    # "iy":I
    .end local v7    # "scaleX":F
    .restart local v16    # "scaleX":F
    monitor-exit p0

    .line 189
    return-void

    .line 188
    .end local v16    # "scaleX":F
    .restart local v7    # "scaleX":F
    :catchall_0
    move-exception v0

    move/from16 v16, v7

    .end local v7    # "scaleX":F
    .restart local v16    # "scaleX":F
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method private static resizeNearestNeighbor(Ljava/nio/ByteBuffer;IIII[BII)V
    .locals 17
    .param p0, "input"    # Ljava/nio/ByteBuffer;
    .param p1, "inputWidth"    # I
    .param p2, "inputPixelStride"    # I
    .param p3, "inputRowStride"    # I
    .param p4, "inputHeight"    # I
    .param p5, "output"    # [B
    .param p6, "outputWidth"    # I
    .param p7, "outputHeight"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inputWidth",
            "inputPixelStride",
            "inputRowStride",
            "inputHeight",
            "output",
            "outputWidth",
            "outputHeight"
        }
    .end annotation

    .line 113
    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p1

    int-to-float v0, v6

    int-to-float v7, v4

    div-float v7, v0, v7

    .line 114
    .local v7, "scaleX":F
    int-to-float v0, v3

    int-to-float v8, v5

    div-float v8, v0, v8

    .line 115
    .local v8, "scaleY":F
    move/from16 v9, p6

    .line 117
    .local v9, "outputRowStride":I
    new-array v10, v2, [B

    .line 118
    .local v10, "row":[B
    new-array v11, v4, [I

    .line 119
    .local v11, "sourceIndices":[I
    const/4 v0, 0x0

    .local v0, "ix":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 120
    int-to-float v12, v0

    mul-float v12, v12, v7

    .line 121
    .local v12, "sourceX":F
    float-to-int v13, v12

    .line 122
    .local v13, "floorSourceX":I
    mul-int v14, v13, p2

    aput v14, v11, v0

    .line 119
    .end local v12    # "sourceX":F
    .end local v13    # "floorSourceX":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "ix":I
    :cond_0
    monitor-enter p0

    .line 126
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 127
    const/4 v0, 0x0

    .local v0, "iy":I
    :goto_1
    if-ge v0, v5, :cond_2

    .line 128
    int-to-float v12, v0

    mul-float v12, v12, v8

    .line 129
    .local v12, "sourceY":F
    float-to-int v13, v12

    .line 130
    .local v13, "floorSourceY":I
    add-int/lit8 v14, v3, -0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    mul-int v14, v14, v2

    .line 131
    .local v14, "rowOffsetSource":I
    mul-int v15, v0, v9

    .line 133
    .local v15, "rowOffsetTarget":I
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 136
    const/4 v2, 0x0

    .local v2, "ix":I
    :goto_2
    if-ge v2, v4, :cond_1

    .line 137
    add-int v3, v15, v2

    aget v16, v11, v2

    aget-byte v16, v10, v16

    aput-byte v16, p5, v3

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 127
    .end local v2    # "ix":I
    .end local v12    # "sourceY":F
    .end local v13    # "floorSourceY":I
    .end local v14    # "rowOffsetSource":I
    .end local v15    # "rowOffsetTarget":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, p3

    move/from16 v3, p4

    goto :goto_1

    .line 140
    .end local v0    # "iy":I
    :cond_2
    monitor-exit p0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
