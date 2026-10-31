.class final enum Lcom/google/zxing/qrcode/decoder/DataMask$7;
.super Lcom/google/zxing/qrcode/decoder/DataMask;
.source "DataMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/qrcode/decoder/DataMask;-><init>(Ljava/lang/String;ILcom/google/zxing/qrcode/decoder/DataMask$1;)V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .registers 5
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 104
    mul-int v0, p1, p2

    rem-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method
