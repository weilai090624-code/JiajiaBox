.class public Lcom/king/zxing/DecodeConfig;
.super Ljava/lang/Object;
.source "DecodeConfig.java"


# static fields
.field public static final DEFAULT_AREA_RECT_RATIO:F = 0.8f


# instance fields
.field private analyzeAreaRect:Landroid/graphics/Rect;

.field private areaRectHorizontalOffset:I

.field private areaRectRatio:F

.field private areaRectVerticalOffset:I

.field private hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isFullAreaScan:Z

.field private isMultiDecode:Z

.field private isSupportLuminanceInvert:Z

.field private isSupportLuminanceInvertMultiDecode:Z

.field private isSupportVerticalCode:Z

.field private isSupportVerticalCodeMultiDecode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/king/zxing/DecodeFormatManager;->DEFAULT_HINTS:Ljava/util/Map;

    iput-object v0, p0, Lcom/king/zxing/DecodeConfig;->hints:Ljava/util/Map;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/king/zxing/DecodeConfig;->isMultiDecode:Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/king/zxing/DecodeConfig;->isFullAreaScan:Z

    .line 85
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/king/zxing/DecodeConfig;->areaRectRatio:F

    .line 97
    return-void
.end method


# virtual methods
.method public getAnalyzeAreaRect()Landroid/graphics/Rect;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/king/zxing/DecodeConfig;->analyzeAreaRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getAreaRectHorizontalOffset()I
    .locals 1

    .line 327
    iget v0, p0, Lcom/king/zxing/DecodeConfig;->areaRectHorizontalOffset:I

    return v0
.end method

.method public getAreaRectRatio()F
    .locals 1

    .line 280
    iget v0, p0, Lcom/king/zxing/DecodeConfig;->areaRectRatio:F

    return v0
.end method

.method public getAreaRectVerticalOffset()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/king/zxing/DecodeConfig;->areaRectVerticalOffset:I

    return v0
.end method

.method public getHints()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/king/zxing/DecodeConfig;->hints:Ljava/util/Map;

    return-object v0
.end method

.method public isFullAreaScan()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/king/zxing/DecodeConfig;->isFullAreaScan:Z

    return v0
.end method

.method public isMultiDecode()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/king/zxing/DecodeConfig;->isMultiDecode:Z

    return v0
.end method

.method public isSupportLuminanceInvert()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/king/zxing/DecodeConfig;->isSupportLuminanceInvert:Z

    return v0
.end method

.method public isSupportLuminanceInvertMultiDecode()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/king/zxing/DecodeConfig;->isSupportLuminanceInvertMultiDecode:Z

    return v0
.end method

.method public isSupportVerticalCode()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/king/zxing/DecodeConfig;->isSupportVerticalCode:Z

    return v0
.end method

.method public isSupportVerticalCodeMultiDecode()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/king/zxing/DecodeConfig;->isSupportVerticalCodeMultiDecode:Z

    return v0
.end method

.method public setAnalyzeAreaRect(Landroid/graphics/Rect;)Lcom/king/zxing/DecodeConfig;
    .locals 0
    .param p1, "analyzeAreaRect"    # Landroid/graphics/Rect;

    .line 243
    iput-object p1, p0, Lcom/king/zxing/DecodeConfig;->analyzeAreaRect:Landroid/graphics/Rect;

    .line 244
    return-object p0
.end method

.method public setAreaRectHorizontalOffset(I)Lcom/king/zxing/DecodeConfig;
    .locals 0
    .param p1, "areaRectHorizontalOffset"    # I

    .line 336
    iput p1, p0, Lcom/king/zxing/DecodeConfig;->areaRectHorizontalOffset:I

    .line 337
    return-object p0
.end method

.method public setAreaRectRatio(F)Lcom/king/zxing/DecodeConfig;
    .locals 0
    .param p1, "areaRectRatio"    # F

    .line 300
    iput p1, p0, Lcom/king/zxing/DecodeConfig;->areaRectRatio:F

    .line 301
    return-object p0
.end method

.method public setAreaRectVerticalOffset(I)Lcom/king/zxing/DecodeConfig;
    .locals 0
    .param p1, "areaRectVerticalOffset"    # I

    .line 318
    iput p1, p0, Lcom/king/zxing/DecodeConfig;->areaRectVerticalOffset:I

    .line 319
    return-object p0
.end method

.method public setFullAreaScan(Z)Lcom/king/zxing/DecodeConfig;
    .locals 0
    .param p1, "fullAreaScan"    # Z

    .line 271
    iput-boolean p1, p0, Lcom/king/zxing/DecodeConfig;->isFullAreaScan:Z

    .line 272
    return-object p0
.end method

.method public setHints(Ljava/util/Map;)Lcom/king/zxing/DecodeConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/king/zxing/DecodeConfig;"
        }
    .end annotation

    .line 121
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/king/zxing/DecodeConfig;->hints:Ljava/util/Map;

    .line 122
    return-object p0
.end method

.method public setMultiDecode(Z)Lcom/king/zxing/DecodeConfig;
    .locals 0
    .param p1, "multiDecode"    # Z

    .line 176
    iput-boolean p1, p0, Lcom/king/zxing/DecodeConfig;->isMultiDecode:Z

    .line 177
    return-object p0
.end method

.method public setSupportLuminanceInvert(Z)Lcom/king/zxing/DecodeConfig;
    .locals 0
    .param p1, "supportLuminanceInvert"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/king/zxing/DecodeConfig;->isSupportLuminanceInvert:Z

    .line 140
    return-object p0
.end method

.method public setSupportLuminanceInvertMultiDecode(Z)Lcom/king/zxing/DecodeConfig;
    .locals 0
    .param p1, "supportLuminanceInvertMultiDecode"    # Z

    .line 195
    iput-boolean p1, p0, Lcom/king/zxing/DecodeConfig;->isSupportLuminanceInvertMultiDecode:Z

    .line 196
    return-object p0
.end method

.method public setSupportVerticalCode(Z)Lcom/king/zxing/DecodeConfig;
    .locals 0
    .param p1, "supportVerticalCode"    # Z

    .line 157
    iput-boolean p1, p0, Lcom/king/zxing/DecodeConfig;->isSupportVerticalCode:Z

    .line 158
    return-object p0
.end method

.method public setSupportVerticalCodeMultiDecode(Z)Lcom/king/zxing/DecodeConfig;
    .locals 0
    .param p1, "supportVerticalCodeMultiDecode"    # Z

    .line 214
    iput-boolean p1, p0, Lcom/king/zxing/DecodeConfig;->isSupportVerticalCodeMultiDecode:Z

    .line 215
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecodeConfig{hints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/king/zxing/DecodeConfig;->hints:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMultiDecode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/king/zxing/DecodeConfig;->isMultiDecode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSupportLuminanceInvert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/king/zxing/DecodeConfig;->isSupportLuminanceInvert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSupportLuminanceInvertMultiDecode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/king/zxing/DecodeConfig;->isSupportLuminanceInvertMultiDecode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSupportVerticalCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/king/zxing/DecodeConfig;->isSupportVerticalCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSupportVerticalCodeMultiDecode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/king/zxing/DecodeConfig;->isSupportVerticalCodeMultiDecode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", analyzeAreaRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/king/zxing/DecodeConfig;->analyzeAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFullAreaScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/king/zxing/DecodeConfig;->isFullAreaScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", areaRectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/king/zxing/DecodeConfig;->areaRectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", areaRectVerticalOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/king/zxing/DecodeConfig;->areaRectVerticalOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", areaRectHorizontalOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/king/zxing/DecodeConfig;->areaRectHorizontalOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
