.class public Landroidx/camera/core/impl/utils/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/utils/ExifData$Builder;,
        Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EXIF_POINTER_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

.field static final EXIF_TAGS:[[Landroidx/camera/core/impl/utils/ExifTag;

.field private static final IFD_EXIF_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

.field static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_GPS_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

.field static final IFD_TYPE_EXIF:I = 0x1

.field static final IFD_TYPE_GPS:I = 0x2

.field static final IFD_TYPE_INTEROPERABILITY:I = 0x3

.field static final IFD_TYPE_PRIMARY:I = 0x0

.field private static final MM_IN_MICRONS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ExifData"

.field static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field static final TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/utils/ExifAttribute;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mByteOrder:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 159
    const-string v12, "DOUBLE"

    const-string v13, "IFD"

    const-string v0, ""

    const-string v1, "BYTE"

    const-string v2, "STRING"

    const-string v3, "USHORT"

    const-string v4, "ULONG"

    const-string v5, "URATIONAL"

    const-string v6, "SBYTE"

    const-string v7, "UNDEFINED"

    const-string v8, "SSHORT"

    const-string v9, "SLONG"

    const-string v10, "SRATIONAL"

    const-string v11, "SINGLE"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 177
    const/16 v0, 0xe

    new-array v1, v0, [Landroidx/camera/core/impl/utils/ExifTag;

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "ImageWidth"

    const/16 v4, 0x100

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v4, "ImageLength"

    const/16 v7, 0x101

    invoke-direct {v2, v4, v7, v5, v6}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v7, "Make"

    const/16 v8, 0x10f

    const/4 v9, 0x2

    invoke-direct {v2, v7, v8, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v9

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v7, "Model"

    const/16 v8, 0x110

    invoke-direct {v2, v7, v8, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v5

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v7, "Orientation"

    const/16 v8, 0x112

    invoke-direct {v2, v7, v8, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v6

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v7, "XResolution"

    const/16 v8, 0x11a

    const/4 v10, 0x5

    invoke-direct {v2, v7, v8, v10}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v10

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v7, "YResolution"

    const/16 v8, 0x11b

    invoke-direct {v2, v7, v8, v10}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x6

    aput-object v2, v1, v7

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v8, "ResolutionUnit"

    const/16 v11, 0x128

    invoke-direct {v2, v8, v11, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x7

    aput-object v2, v1, v8

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v11, "Software"

    const/16 v12, 0x131

    invoke-direct {v2, v11, v12, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x8

    aput-object v2, v1, v11

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v12, "DateTime"

    const/16 v13, 0x132

    invoke-direct {v2, v12, v13, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x9

    aput-object v2, v1, v12

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v13, "YCbCrPositioning"

    const/16 v14, 0x213

    invoke-direct {v2, v13, v14, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0xa

    aput-object v2, v1, v13

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v14, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v2, v14, v15, v6}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v16, 0xb

    aput-object v2, v1, v16

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v15, "ExifIFDPointer"

    const v0, 0x8769

    invoke-direct {v2, v15, v0, v6}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v0, 0xc

    aput-object v2, v1, v0

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v0, "GPSInfoIFDPointer"

    const v12, 0x8825

    invoke-direct {v2, v0, v12, v6}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0xd

    aput-object v2, v1, v12

    sput-object v1, Landroidx/camera/core/impl/utils/ExifData;->IFD_TIFF_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    .line 197
    const/16 v1, 0x25

    new-array v1, v1, [Landroidx/camera/core/impl/utils/ExifTag;

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const v12, 0x829a

    const-string v13, "ExposureTime"

    invoke-direct {v2, v13, v12, v10}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v12, "FNumber"

    const v3, 0x829d

    invoke-direct {v2, v12, v3, v10}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v4

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "ExposureProgram"

    const v12, 0x8822

    invoke-direct {v2, v3, v12, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v9

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "PhotographicSensitivity"

    const v12, 0x8827

    invoke-direct {v2, v3, v12, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v5

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "SensitivityType"

    const v12, 0x8830

    invoke-direct {v2, v3, v12, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v6

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "ExifVersion"

    const v12, 0x9000

    invoke-direct {v2, v3, v12, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v10

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "DateTimeOriginal"

    const v12, 0x9003

    invoke-direct {v2, v3, v12, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v7

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "DateTimeDigitized"

    const v12, 0x9004

    invoke-direct {v2, v3, v12, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v8

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "ComponentsConfiguration"

    const v12, 0x9101

    invoke-direct {v2, v3, v12, v8}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v11

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "ShutterSpeedValue"

    const v12, 0x9201

    const/16 v11, 0xa

    invoke-direct {v2, v3, v12, v11}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "ApertureValue"

    const v12, 0x9202

    invoke-direct {v2, v3, v12, v10}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v11

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "BrightnessValue"

    const v12, 0x9203

    invoke-direct {v2, v3, v12, v11}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v16

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "ExposureBiasValue"

    const v12, 0x9204

    invoke-direct {v2, v3, v12, v11}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "MaxApertureValue"

    const v11, 0x9205

    invoke-direct {v2, v3, v11, v10}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "MeteringMode"

    const v11, 0x9207

    invoke-direct {v2, v3, v11, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "LightSource"

    const v11, 0x9208

    invoke-direct {v2, v3, v11, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "Flash"

    const v11, 0x9209

    invoke-direct {v2, v3, v11, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "FocalLength"

    const v11, 0x920a

    invoke-direct {v2, v3, v11, v10}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "SubSecTime"

    const v11, 0x9290

    invoke-direct {v2, v3, v11, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "SubSecTimeOriginal"

    const v11, 0x9291

    invoke-direct {v2, v3, v11, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "SubSecTimeDigitized"

    const v11, 0x9292

    invoke-direct {v2, v3, v11, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x14

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "FlashpixVersion"

    const v11, 0xa000

    invoke-direct {v2, v3, v11, v8}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x15

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "ColorSpace"

    const v11, 0xa001

    invoke-direct {v2, v3, v11, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x16

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "PixelXDimension"

    const v11, 0xa002

    invoke-direct {v2, v3, v11, v5, v6}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x17

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "PixelYDimension"

    const v11, 0xa003

    invoke-direct {v2, v3, v11, v5, v6}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x18

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "InteroperabilityIFDPointer"

    const v11, 0xa005

    invoke-direct {v2, v3, v11, v6}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x19

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "FocalPlaneResolutionUnit"

    const v11, 0xa210

    invoke-direct {v2, v3, v11, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "SensingMethod"

    const v11, 0xa217

    invoke-direct {v2, v3, v11, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "FileSource"

    const v11, 0xa300

    invoke-direct {v2, v3, v11, v8}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "SceneType"

    const v11, 0xa301

    invoke-direct {v2, v3, v11, v8}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "CustomRendered"

    const v11, 0xa401

    invoke-direct {v2, v3, v11, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "ExposureMode"

    const v11, 0xa402

    invoke-direct {v2, v3, v11, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "WhiteBalance"

    const v11, 0xa403

    invoke-direct {v2, v3, v11, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x20

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "SceneCaptureType"

    const v11, 0xa406

    invoke-direct {v2, v3, v11, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x21

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "Contrast"

    const v11, 0xa408

    invoke-direct {v2, v3, v11, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x22

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "Saturation"

    const v11, 0xa409

    invoke-direct {v2, v3, v11, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x23

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "Sharpness"

    const v11, 0xa40a

    invoke-direct {v2, v3, v11, v5}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x24

    aput-object v2, v1, v3

    sput-object v1, Landroidx/camera/core/impl/utils/ExifData;->IFD_EXIF_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    .line 239
    const/16 v1, 0xd

    new-array v1, v1, [Landroidx/camera/core/impl/utils/ExifTag;

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "GPSVersionID"

    const/4 v11, 0x0

    invoke-direct {v2, v3, v11, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v11

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "GPSLatitudeRef"

    invoke-direct {v2, v3, v4, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v4

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "GPSLatitude"

    const/16 v11, 0xa

    invoke-direct {v2, v3, v9, v10, v11}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v9

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "GPSLongitudeRef"

    invoke-direct {v2, v3, v5, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v5

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "GPSLongitude"

    invoke-direct {v2, v3, v6, v10, v11}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v6

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "GPSAltitudeRef"

    invoke-direct {v2, v3, v10, v4}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v10

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "GPSAltitude"

    invoke-direct {v2, v3, v7, v10}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v7

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "GPSTimeStamp"

    invoke-direct {v2, v3, v8, v10}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v8

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "GPSSpeedRef"

    const/16 v7, 0xc

    invoke-direct {v2, v3, v7, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "GPSTrackRef"

    const/16 v7, 0xe

    invoke-direct {v2, v3, v7, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "GPSImgDirectionRef"

    const/16 v7, 0x10

    invoke-direct {v2, v3, v7, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "GPSDestBearingRef"

    const/16 v7, 0x17

    invoke-direct {v2, v3, v7, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v16

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v3, "GPSDestDistanceRef"

    const/16 v7, 0x19

    invoke-direct {v2, v3, v7, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sput-object v1, Landroidx/camera/core/impl/utils/ExifData;->IFD_GPS_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    .line 258
    new-array v1, v6, [Landroidx/camera/core/impl/utils/ExifTag;

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const/16 v3, 0x14a

    invoke-direct {v2, v14, v3, v6}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const v3, 0x8769

    invoke-direct {v2, v15, v3, v6}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v4

    new-instance v2, Landroidx/camera/core/impl/utils/ExifTag;

    const v3, 0x8825

    invoke-direct {v2, v0, v3, v6}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v9

    new-instance v0, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v2, "InteroperabilityIFDPointer"

    const v3, 0xa005

    invoke-direct {v0, v2, v3, v6}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v1, v5

    sput-object v1, Landroidx/camera/core/impl/utils/ExifData;->EXIF_POINTER_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    .line 266
    new-array v0, v4, [Landroidx/camera/core/impl/utils/ExifTag;

    new-instance v1, Landroidx/camera/core/impl/utils/ExifTag;

    const-string v2, "InteroperabilityIndex"

    invoke-direct {v1, v2, v4, v9}, Landroidx/camera/core/impl/utils/ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData;->IFD_INTEROPERABILITY_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    .line 271
    new-array v0, v6, [[Landroidx/camera/core/impl/utils/ExifTag;

    sget-object v1, Landroidx/camera/core/impl/utils/ExifData;->IFD_TIFF_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/utils/ExifData;->IFD_EXIF_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/camera/core/impl/utils/ExifData;->IFD_GPS_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    aput-object v1, v0, v9

    sget-object v1, Landroidx/camera/core/impl/utils/ExifData;->IFD_INTEROPERABILITY_TAGS:[Landroidx/camera/core/impl/utils/ExifTag;

    aput-object v1, v0, v5

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData;->EXIF_TAGS:[[Landroidx/camera/core/impl/utils/ExifTag;

    .line 282
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "FNumber"

    const-string v2, "GPSTimeStamp"

    filled-new-array {v1, v13, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData;->sTagSetForCompatibility:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteOrder;Ljava/util/List;)V
    .locals 2
    .param p1, "order"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "order",
            "attributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/utils/ExifAttribute;",
            ">;>;)V"
        }
    .end annotation

    .line 290
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Landroidx/camera/core/impl/utils/ExifAttribute;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Landroidx/camera/core/impl/utils/ExifData;->EXIF_TAGS:[[Landroidx/camera/core/impl/utils/ExifTag;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Malformed attributes list. Number of IFDs mismatch."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 293
    iput-object p1, p0, Landroidx/camera/core/impl/utils/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 294
    iput-object p2, p0, Landroidx/camera/core/impl/utils/ExifData;->mAttributes:Ljava/util/List;

    .line 295
    return-void
.end method

.method public static builderForDevice()Landroidx/camera/core/impl/utils/ExifData$Builder;
    .locals 4

    .line 387
    new-instance v0, Landroidx/camera/core/impl/utils/ExifData$Builder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;-><init>(Ljava/nio/ByteOrder;)V

    .line 388
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Orientation"

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    .line 389
    const-string v2, "XResolution"

    const-string v3, "72/1"

    invoke-virtual {v0, v2, v3}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    .line 390
    const-string v2, "YResolution"

    invoke-virtual {v0, v2, v3}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    .line 391
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResolutionUnit"

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    .line 393
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 392
    const-string v2, "YCbCrPositioning"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 395
    const-string v2, "Make"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 396
    const-string v2, "Model"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    .line 387
    return-object v0
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 363
    const-string v0, "ISOSpeedRatings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const-string p1, "PhotographicSensitivity"

    .line 372
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroidx/camera/core/impl/utils/ExifData;->EXIF_TAGS:[[Landroidx/camera/core/impl/utils/ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 373
    iget-object v1, p0, Landroidx/camera/core/impl/utils/ExifData;->mAttributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/utils/ExifAttribute;

    .line 374
    .local v1, "value":Landroidx/camera/core/impl/utils/ExifAttribute;
    if-eqz v1, :cond_1

    .line 375
    return-object v1

    .line 372
    .end local v1    # "value":Landroidx/camera/core/impl/utils/ExifAttribute;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 321
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/utils/ExifData;->getExifAttribute(Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifAttribute;

    move-result-object v0

    .line 322
    .local v0, "attribute":Landroidx/camera/core/impl/utils/ExifAttribute;
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 323
    sget-object v2, Landroidx/camera/core/impl/utils/ExifData;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    iget-object v1, p0, Landroidx/camera/core/impl/utils/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/utils/ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 326
    :cond_0
    const-string v2, "GPSTimeStamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 328
    iget v2, v0, Landroidx/camera/core/impl/utils/ExifAttribute;->format:I

    const/4 v3, 0x5

    const-string v4, "ExifData"

    if-eq v2, v3, :cond_1

    iget v2, v0, Landroidx/camera/core/impl/utils/ExifAttribute;->format:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS Timestamp format is not rational. format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroidx/camera/core/impl/utils/ExifAttribute;->format:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-object v1

    .line 334
    :cond_1
    iget-object v2, p0, Landroidx/camera/core/impl/utils/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 335
    invoke-virtual {v0, v2}, Landroidx/camera/core/impl/utils/ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/camera/core/impl/utils/LongRational;

    .line 336
    .local v2, "array":[Landroidx/camera/core/impl/utils/LongRational;
    if-eqz v2, :cond_3

    array-length v3, v2

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    goto :goto_0

    .line 340
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    .line 341
    invoke-virtual {v4}, Landroidx/camera/core/impl/utils/LongRational;->getNumerator()J

    move-result-wide v6

    long-to-float v4, v6

    aget-object v6, v2, v3

    invoke-virtual {v6}, Landroidx/camera/core/impl/utils/LongRational;->getDenominator()J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v7, v2, v6

    .line 342
    invoke-virtual {v7}, Landroidx/camera/core/impl/utils/LongRational;->getNumerator()J

    move-result-wide v7

    long-to-float v7, v7

    aget-object v8, v2, v6

    invoke-virtual {v8}, Landroidx/camera/core/impl/utils/LongRational;->getDenominator()J

    move-result-wide v8

    long-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v9, v2, v8

    .line 343
    invoke-virtual {v9}, Landroidx/camera/core/impl/utils/LongRational;->getNumerator()J

    move-result-wide v9

    long-to-float v9, v9

    aget-object v10, v2, v8

    invoke-virtual {v10}, Landroidx/camera/core/impl/utils/LongRational;->getDenominator()J

    move-result-wide v10

    long-to-float v10, v10

    div-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v3

    aput-object v7, v5, v6

    aput-object v9, v5, v8

    .line 340
    const-string v3, "%02d:%02d:%02d"

    invoke-static {v1, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 337
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid GPS Timestamp array. array="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-object v1

    .line 346
    .end local v2    # "array":[Landroidx/camera/core/impl/utils/LongRational;
    :cond_4
    :try_start_0
    iget-object v2, p0, Landroidx/camera/core/impl/utils/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroidx/camera/core/impl/utils/ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 347
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v1

    .line 351
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    return-object v1
.end method

.method getAttributes(I)Ljava/util/Map;
    .locals 3
    .param p1, "ifdIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ifdIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/utils/ExifAttribute;",
            ">;"
        }
    .end annotation

    .line 307
    sget-object v0, Landroidx/camera/core/impl/utils/ExifData;->EXIF_TAGS:[[Landroidx/camera/core/impl/utils/ExifTag;

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IFD index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Index should be between [0, EXIF_TAGS.length] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 310
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ExifData;->mAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 302
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method
