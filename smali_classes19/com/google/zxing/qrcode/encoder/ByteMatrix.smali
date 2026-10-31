.class public final Lcom/google/zxing/qrcode/encoder/ByteMatrix;
.super Ljava/lang/Object;
.source "ByteMatrix.java"


# instance fields
.field private final bytes:[[B

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p2, v0, v1

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 35
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 36
    iput p2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 37
    return-void
.end method


# virtual methods
.method public clear(B)V
    .registers 6
    .param p1, "value"    # B

    .line 71
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 72
    invoke-static {v3, p1}, Ljava/util/Arrays;->fill([BB)V

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 74
    :cond_e
    return-void
.end method

.method public get(II)B
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 48
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    aget-byte v0, v0, p1

    return v0
.end method

.method public getArray()[[B
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    return v0
.end method

.method public set(IIB)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # B

    .line 59
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    aput-byte p3, v0, p1

    .line 60
    return-void
.end method

.method public set(III)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # I

    .line 63
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    int-to-byte v1, p3

    aput-byte v1, v0, p1

    .line 64
    return-void
.end method

.method public set(IIZ)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # Z

    .line 67
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    int-to-byte v1, p3

    aput-byte v1, v0, p1

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    mul-int v1, v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_10
    iget v2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    if-ge v1, v2, :cond_3f

    .line 80
    iget-object v2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v2, v2, v1

    .line 81
    .local v2, "bytesY":[B
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_19
    iget v4, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    if-ge v3, v4, :cond_37

    .line 82
    aget-byte v4, v2, v3

    packed-switch v4, :pswitch_data_44

    .line 90
    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 87
    :pswitch_28
    const-string v4, " 1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    goto :goto_34

    .line 84
    :pswitch_2e
    const-string v4, " 0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    nop

    .line 81
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 94
    .end local v3    # "x":I
    :cond_37
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .end local v2    # "bytesY":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 96
    .end local v1    # "y":I
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_28
    .end packed-switch
.end method
