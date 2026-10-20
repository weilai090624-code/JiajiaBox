.class final Landroidx/camera/core/impl/utils/Exif$Speed$Converter;
.super Ljava/lang/Object;
.source "Exif.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/utils/Exif$Speed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Converter"
.end annotation


# instance fields
.field final mMph:D


# direct methods
.method constructor <init>(D)V
    .locals 0
    .param p1, "mph"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mph"
        }
    .end annotation

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-wide p1, p0, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;->mMph:D

    .line 649
    return-void
.end method


# virtual methods
.method toKilometersPerHour()D
    .locals 4

    .line 652
    iget-wide v0, p0, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;->mMph:D

    const-wide v2, 0x3fe3e2456f75d9a1L    # 0.621371

    div-double/2addr v0, v2

    return-wide v0
.end method

.method toKnots()D
    .locals 4

    .line 660
    iget-wide v0, p0, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;->mMph:D

    const-wide v2, 0x3ff269984a0e410bL    # 1.15078

    div-double/2addr v0, v2

    return-wide v0
.end method

.method toMetersPerSecond()D
    .locals 4

    .line 664
    iget-wide v0, p0, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;->mMph:D

    const-wide v2, 0x4001e540cc78e9f7L    # 2.23694

    div-double/2addr v0, v2

    return-wide v0
.end method

.method toMilesPerHour()D
    .locals 2

    .line 656
    iget-wide v0, p0, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;->mMph:D

    return-wide v0
.end method
