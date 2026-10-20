.class abstract Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;
.super Ljava/lang/Object;
.source "ImageReaderFormatRecommender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageReaderFormatRecommender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FormatCombo"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(II)Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;
    .locals 1
    .param p0, "imageCaptureFormat"    # I
    .param p1, "imageAnalysisFormat"    # I
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

    .line 41
    new-instance v0, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;

    invoke-direct {v0, p0, p1}, Landroidx/camera/core/AutoValue_ImageReaderFormatRecommender_FormatCombo;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method abstract imageAnalysisFormat()I
.end method

.method abstract imageCaptureFormat()I
.end method
