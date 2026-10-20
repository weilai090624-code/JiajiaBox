.class final Landroidx/camera/core/impl/utils/Exif$Speed;
.super Ljava/lang/Object;
.source "Exif.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/utils/Exif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Speed"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/utils/Exif$Speed$Converter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromKilometersPerHour(D)Landroidx/camera/core/impl/utils/Exif$Speed$Converter;
    .locals 3
    .param p0, "kph"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kph"
        }
    .end annotation

    .line 629
    new-instance v0, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;

    const-wide v1, 0x3fe3e2456f75d9a1L    # 0.621371

    mul-double v1, v1, p0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;-><init>(D)V

    return-object v0
.end method

.method static fromKnots(D)Landroidx/camera/core/impl/utils/Exif$Speed$Converter;
    .locals 3
    .param p0, "knots"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "knots"
        }
    .end annotation

    .line 641
    new-instance v0, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;

    const-wide v1, 0x3ff269984a0e410bL    # 1.15078

    mul-double v1, v1, p0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;-><init>(D)V

    return-object v0
.end method

.method static fromMetersPerSecond(D)Landroidx/camera/core/impl/utils/Exif$Speed$Converter;
    .locals 3
    .param p0, "mps"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mps"
        }
    .end annotation

    .line 633
    new-instance v0, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;

    const-wide v1, 0x4001e540cc78e9f7L    # 2.23694

    mul-double v1, v1, p0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;-><init>(D)V

    return-object v0
.end method

.method static fromMilesPerHour(D)Landroidx/camera/core/impl/utils/Exif$Speed$Converter;
    .locals 1
    .param p0, "mph"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mph"
        }
    .end annotation

    .line 637
    new-instance v0, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;

    invoke-direct {v0, p0, p1}, Landroidx/camera/core/impl/utils/Exif$Speed$Converter;-><init>(D)V

    return-object v0
.end method
