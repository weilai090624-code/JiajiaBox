.class public final enum Landroidx/camera/core/ImageSaver$SaveError;
.super Ljava/lang/Enum;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SaveError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/ImageSaver$SaveError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/ImageSaver$SaveError;

.field public static final enum CROP_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

.field public static final enum ENCODE_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

.field public static final enum FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

.field public static final enum UNKNOWN:Landroidx/camera/core/ImageSaver$SaveError;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 329
    new-instance v0, Landroidx/camera/core/ImageSaver$SaveError;

    const-string v1, "FILE_IO_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/ImageSaver$SaveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    .line 331
    new-instance v0, Landroidx/camera/core/ImageSaver$SaveError;

    const-string v1, "ENCODE_FAILED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/camera/core/ImageSaver$SaveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/ImageSaver$SaveError;->ENCODE_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    .line 333
    new-instance v0, Landroidx/camera/core/ImageSaver$SaveError;

    const-string v1, "CROP_FAILED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/camera/core/ImageSaver$SaveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/ImageSaver$SaveError;->CROP_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    .line 334
    new-instance v0, Landroidx/camera/core/ImageSaver$SaveError;

    const-string v1, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/camera/core/ImageSaver$SaveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/ImageSaver$SaveError;->UNKNOWN:Landroidx/camera/core/ImageSaver$SaveError;

    .line 327
    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/camera/core/ImageSaver$SaveError;

    sget-object v1, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/ImageSaver$SaveError;->ENCODE_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/camera/core/ImageSaver$SaveError;->CROP_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/camera/core/ImageSaver$SaveError;->UNKNOWN:Landroidx/camera/core/ImageSaver$SaveError;

    aput-object v1, v0, v5

    sput-object v0, Landroidx/camera/core/ImageSaver$SaveError;->$VALUES:[Landroidx/camera/core/ImageSaver$SaveError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 327
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/ImageSaver$SaveError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 327
    const-class v0, Landroidx/camera/core/ImageSaver$SaveError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ImageSaver$SaveError;

    return-object v0
.end method

.method public static values()[Landroidx/camera/core/ImageSaver$SaveError;
    .locals 1

    .line 327
    sget-object v0, Landroidx/camera/core/ImageSaver$SaveError;->$VALUES:[Landroidx/camera/core/ImageSaver$SaveError;

    invoke-virtual {v0}, [Landroidx/camera/core/ImageSaver$SaveError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/ImageSaver$SaveError;

    return-object v0
.end method
