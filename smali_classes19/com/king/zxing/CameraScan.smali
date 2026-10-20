.class public abstract Lcom/king/zxing/CameraScan;
.super Ljava/lang/Object;
.source "CameraScan.java"

# interfaces
.implements Lcom/king/zxing/ICamera;
.implements Lcom/king/zxing/ICameraControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/zxing/CameraScan$OnScanResultCallback;
    }
.end annotation


# static fields
.field public static LENS_FACING_BACK:I

.field public static LENS_FACING_FRONT:I

.field public static SCAN_RESULT:Ljava/lang/String;


# instance fields
.field private isNeedAutoZoom:Z

.field private isNeedTouchZoom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "SCAN_RESULT"

    sput-object v0, Lcom/king/zxing/CameraScan;->SCAN_RESULT:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/king/zxing/CameraScan;->LENS_FACING_FRONT:I

    .line 28
    const/4 v0, 0x1

    sput v0, Lcom/king/zxing/CameraScan;->LENS_FACING_BACK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/king/zxing/CameraScan;->isNeedAutoZoom:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/king/zxing/CameraScan;->isNeedTouchZoom:Z

    return-void
.end method

.method public static parseScanResult(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Landroid/content/Intent;

    .line 178
    if-eqz p0, :cond_0

    .line 179
    sget-object v0, Lcom/king/zxing/CameraScan;->SCAN_RESULT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract bindFlashlightView(Landroid/view/View;)Lcom/king/zxing/CameraScan;
.end method

.method protected isNeedAutoZoom()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/king/zxing/CameraScan;->isNeedAutoZoom:Z

    return v0
.end method

.method protected isNeedTouchZoom()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/king/zxing/CameraScan;->isNeedTouchZoom:Z

    return v0
.end method

.method public abstract setAnalyzeImage(Z)Lcom/king/zxing/CameraScan;
.end method

.method public abstract setAnalyzer(Lcom/king/zxing/analyze/Analyzer;)Lcom/king/zxing/CameraScan;
.end method

.method public abstract setBrightLightLux(F)Lcom/king/zxing/CameraScan;
.end method

.method public abstract setCameraConfig(Lcom/king/zxing/config/CameraConfig;)Lcom/king/zxing/CameraScan;
.end method

.method public abstract setDarkLightLux(F)Lcom/king/zxing/CameraScan;
.end method

.method public setNeedAutoZoom(Z)Lcom/king/zxing/CameraScan;
    .locals 0
    .param p1, "needAutoZoom"    # Z

    .line 74
    iput-boolean p1, p0, Lcom/king/zxing/CameraScan;->isNeedAutoZoom:Z

    .line 75
    return-object p0
.end method

.method public setNeedTouchZoom(Z)Lcom/king/zxing/CameraScan;
    .locals 0
    .param p1, "needTouchZoom"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/king/zxing/CameraScan;->isNeedTouchZoom:Z

    .line 57
    return-object p0
.end method

.method public abstract setOnScanResultCallback(Lcom/king/zxing/CameraScan$OnScanResultCallback;)Lcom/king/zxing/CameraScan;
.end method

.method public abstract setPlayBeep(Z)Lcom/king/zxing/CameraScan;
.end method

.method public abstract setVibrate(Z)Lcom/king/zxing/CameraScan;
.end method
