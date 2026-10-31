.class public final Lcom/google/zxing/MultiFormatWriter;
.super Ljava/lang/Object;
.source "MultiFormatWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .registers 11
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 49
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 13
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 59
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    invoke-virtual {p2}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_74

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No encoder available for format "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :pswitch_1b
    new-instance v0, Lcom/google/zxing/aztec/AztecWriter;

    invoke-direct {v0}, Lcom/google/zxing/aztec/AztecWriter;-><init>()V

    .line 98
    .local v0, "writer":Lcom/google/zxing/Writer;
    goto :goto_69

    .line 94
    .end local v0    # "writer":Lcom/google/zxing/Writer;
    :pswitch_21
    new-instance v0, Lcom/google/zxing/datamatrix/DataMatrixWriter;

    invoke-direct {v0}, Lcom/google/zxing/datamatrix/DataMatrixWriter;-><init>()V

    .line 95
    .restart local v0    # "writer":Lcom/google/zxing/Writer;
    goto :goto_69

    .line 91
    .end local v0    # "writer":Lcom/google/zxing/Writer;
    :pswitch_27
    new-instance v0, Lcom/google/zxing/oned/CodaBarWriter;

    invoke-direct {v0}, Lcom/google/zxing/oned/CodaBarWriter;-><init>()V

    .line 92
    .restart local v0    # "writer":Lcom/google/zxing/Writer;
    goto :goto_69

    .line 88
    .end local v0    # "writer":Lcom/google/zxing/Writer;
    :pswitch_2d
    new-instance v0, Lcom/google/zxing/pdf417/PDF417Writer;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/PDF417Writer;-><init>()V

    .line 89
    .restart local v0    # "writer":Lcom/google/zxing/Writer;
    goto :goto_69

    .line 85
    .end local v0    # "writer":Lcom/google/zxing/Writer;
    :pswitch_33
    new-instance v0, Lcom/google/zxing/oned/ITFWriter;

    invoke-direct {v0}, Lcom/google/zxing/oned/ITFWriter;-><init>()V

    .line 86
    .restart local v0    # "writer":Lcom/google/zxing/Writer;
    goto :goto_69

    .line 82
    .end local v0    # "writer":Lcom/google/zxing/Writer;
    :pswitch_39
    new-instance v0, Lcom/google/zxing/oned/Code128Writer;

    invoke-direct {v0}, Lcom/google/zxing/oned/Code128Writer;-><init>()V

    .line 83
    .restart local v0    # "writer":Lcom/google/zxing/Writer;
    goto :goto_69

    .line 79
    .end local v0    # "writer":Lcom/google/zxing/Writer;
    :pswitch_3f
    new-instance v0, Lcom/google/zxing/oned/Code93Writer;

    invoke-direct {v0}, Lcom/google/zxing/oned/Code93Writer;-><init>()V

    .line 80
    .restart local v0    # "writer":Lcom/google/zxing/Writer;
    goto :goto_69

    .line 76
    .end local v0    # "writer":Lcom/google/zxing/Writer;
    :pswitch_45
    new-instance v0, Lcom/google/zxing/oned/Code39Writer;

    invoke-direct {v0}, Lcom/google/zxing/oned/Code39Writer;-><init>()V

    .line 77
    .restart local v0    # "writer":Lcom/google/zxing/Writer;
    goto :goto_69

    .line 73
    .end local v0    # "writer":Lcom/google/zxing/Writer;
    :pswitch_4b
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    .line 74
    .restart local v0    # "writer":Lcom/google/zxing/Writer;
    goto :goto_69

    .line 70
    .end local v0    # "writer":Lcom/google/zxing/Writer;
    :pswitch_51
    new-instance v0, Lcom/google/zxing/oned/UPCAWriter;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCAWriter;-><init>()V

    .line 71
    .restart local v0    # "writer":Lcom/google/zxing/Writer;
    goto :goto_69

    .line 67
    .end local v0    # "writer":Lcom/google/zxing/Writer;
    :pswitch_57
    new-instance v0, Lcom/google/zxing/oned/EAN13Writer;

    invoke-direct {v0}, Lcom/google/zxing/oned/EAN13Writer;-><init>()V

    .line 68
    .restart local v0    # "writer":Lcom/google/zxing/Writer;
    goto :goto_69

    .line 64
    .end local v0    # "writer":Lcom/google/zxing/Writer;
    :pswitch_5d
    new-instance v0, Lcom/google/zxing/oned/UPCEWriter;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEWriter;-><init>()V

    .line 65
    .restart local v0    # "writer":Lcom/google/zxing/Writer;
    goto :goto_69

    .line 61
    .end local v0    # "writer":Lcom/google/zxing/Writer;
    :pswitch_63
    new-instance v0, Lcom/google/zxing/oned/EAN8Writer;

    invoke-direct {v0}, Lcom/google/zxing/oned/EAN8Writer;-><init>()V

    .line 62
    .restart local v0    # "writer":Lcom/google/zxing/Writer;
    nop

    .line 102
    :goto_69
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/google/zxing/Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_63
        :pswitch_5d
        :pswitch_57
        :pswitch_51
        :pswitch_4b
        :pswitch_45
        :pswitch_3f
        :pswitch_39
        :pswitch_33
        :pswitch_2d
        :pswitch_27
        :pswitch_21
        :pswitch_1b
    .end packed-switch
.end method
