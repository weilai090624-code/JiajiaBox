.class public final enum Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;
.super Ljava/lang/Enum;
.source "UseCaseConfigFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/UseCaseConfigFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

.field public static final enum IMAGE_ANALYSIS:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

.field public static final enum IMAGE_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

.field public static final enum PREVIEW:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

.field public static final enum VIDEO_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    const-string v1, "IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->IMAGE_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 40
    new-instance v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    const-string v1, "PREVIEW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->PREVIEW:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 45
    new-instance v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    const-string v1, "IMAGE_ANALYSIS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->IMAGE_ANALYSIS:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 50
    new-instance v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    const-string v1, "VIDEO_CAPTURE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->VIDEO_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->IMAGE_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->PREVIEW:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->IMAGE_ANALYSIS:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->VIDEO_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    aput-object v1, v0, v5

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->$VALUES:[Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;
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

    .line 30
    const-class v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    return-object v0
.end method

.method public static values()[Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;
    .locals 1

    .line 30
    sget-object v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->$VALUES:[Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    invoke-virtual {v0}, [Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    return-object v0
.end method
