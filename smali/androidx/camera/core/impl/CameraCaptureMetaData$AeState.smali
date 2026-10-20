.class public final enum Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;
.super Ljava/lang/Enum;
.source "CameraCaptureMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraCaptureMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

.field public static final enum CONVERGED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

.field public static final enum FLASH_REQUIRED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

.field public static final enum INACTIVE:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

.field public static final enum LOCKED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

.field public static final enum SEARCHING:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

.field public static final enum UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 78
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    .line 81
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    const-string v1, "INACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->INACTIVE:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    .line 84
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    const-string v1, "SEARCHING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->SEARCHING:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    .line 90
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    const-string v1, "FLASH_REQUIRED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->FLASH_REQUIRED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    .line 93
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    const-string v1, "CONVERGED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->CONVERGED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    .line 96
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    const-string v1, "LOCKED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->LOCKED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->INACTIVE:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->SEARCHING:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->FLASH_REQUIRED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    aput-object v1, v0, v5

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->CONVERGED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    aput-object v1, v0, v6

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->LOCKED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    aput-object v1, v0, v7

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->$VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

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

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;
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

    .line 75
    const-class v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    return-object v0
.end method

.method public static values()[Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;
    .locals 1

    .line 75
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->$VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    invoke-virtual {v0}, [Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    return-object v0
.end method
