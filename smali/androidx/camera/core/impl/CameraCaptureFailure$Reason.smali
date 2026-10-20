.class public final enum Landroidx/camera/core/impl/CameraCaptureFailure$Reason;
.super Ljava/lang/Enum;
.source "CameraCaptureFailure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraCaptureFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/impl/CameraCaptureFailure$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

.field public static final enum ERROR:Landroidx/camera/core/impl/CameraCaptureFailure$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureFailure$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureFailure$Reason;->ERROR:Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

    sget-object v1, Landroidx/camera/core/impl/CameraCaptureFailure$Reason;->ERROR:Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

    aput-object v1, v0, v2

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureFailure$Reason;->$VALUES:[Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

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

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/CameraCaptureFailure$Reason;
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

    .line 49
    const-class v0, Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

    return-object v0
.end method

.method public static values()[Landroidx/camera/core/impl/CameraCaptureFailure$Reason;
    .locals 1

    .line 49
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureFailure$Reason;->$VALUES:[Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

    invoke-virtual {v0}, [Landroidx/camera/core/impl/CameraCaptureFailure$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

    return-object v0
.end method
