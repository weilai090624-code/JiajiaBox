.class final Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;
.super Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;
.source "AutoValue_ImageReaderFormatRecommender_FormatCombo.java"


# instance fields
.field private final imageAnalysisFormat:I

.field private final imageCaptureFormat:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "imageCaptureFormat"    # I
    .param p2, "imageAnalysisFormat"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageCaptureFormat",
            "imageAnalysisFormat"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;-><init>()V

    .line 15
    iput p1, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageCaptureFormat:I

    .line 16
    iput p2, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageAnalysisFormat:I

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 39
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 40
    return v0

    .line 42
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 43
    move-object v1, p1

    check-cast v1, Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;

    .line 44
    .local v1, "that":Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;
    iget v3, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageCaptureFormat:I

    invoke-virtual {v1}, Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;->imageCaptureFormat()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageAnalysisFormat:I

    .line 45
    invoke-virtual {v1}, Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;->imageAnalysisFormat()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    .line 47
    .end local v1    # "that":Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 52
    const/4 v0, 0x1

    .line 53
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 54
    iget v2, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageCaptureFormat:I

    xor-int/2addr v0, v2

    .line 55
    mul-int v0, v0, v1

    .line 56
    iget v1, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageAnalysisFormat:I

    xor-int/2addr v0, v1

    .line 57
    return v0
.end method

.method imageAnalysisFormat()I
    .locals 1

    .line 26
    iget v0, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageAnalysisFormat:I

    return v0
.end method

.method imageCaptureFormat()I
    .locals 1

    .line 21
    iget v0, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageCaptureFormat:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FormatCombo{imageCaptureFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageCaptureFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageAnalysisFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;->imageAnalysisFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
