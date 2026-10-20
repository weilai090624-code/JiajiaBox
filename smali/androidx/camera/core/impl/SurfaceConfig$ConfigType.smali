.class public final enum Landroidx/camera/core/impl/SurfaceConfig$ConfigType;
.super Ljava/lang/Enum;
.source "SurfaceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/SurfaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/impl/SurfaceConfig$ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

.field public static final enum JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

.field public static final enum PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

.field public static final enum RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

.field public static final enum YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 84
    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const-string v1, "PRIV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 85
    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const-string v1, "YUV"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 86
    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const-string v1, "JPEG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 87
    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const-string v1, "RAW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    aput-object v1, v0, v5

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->$VALUES:[Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

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

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/SurfaceConfig$ConfigType;
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

    .line 83
    const-class v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    return-object v0
.end method

.method public static values()[Landroidx/camera/core/impl/SurfaceConfig$ConfigType;
    .locals 1

    .line 83
    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->$VALUES:[Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    invoke-virtual {v0}, [Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    return-object v0
.end method
