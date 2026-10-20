.class final enum Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;
.super Ljava/lang/Enum;
.source "Camera2CameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/Camera2CameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InternalState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

.field public static final enum CLOSING:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

.field public static final enum INITIALIZED:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

.field public static final enum OPENED:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

.field public static final enum OPENING:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

.field public static final enum PENDING_OPEN:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

.field public static final enum RELEASED:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

.field public static final enum RELEASING:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

.field public static final enum REOPENING:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1179
    new-instance v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->INITIALIZED:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    .line 1188
    new-instance v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    const-string v1, "PENDING_OPEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->PENDING_OPEN:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    .line 1195
    new-instance v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    const-string v1, "OPENING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->OPENING:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    .line 1202
    new-instance v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    const-string v1, "OPENED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->OPENED:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    .line 1208
    new-instance v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    const-string v1, "CLOSING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->CLOSING:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    .line 1218
    new-instance v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    const-string v1, "REOPENING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->REOPENING:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    .line 1224
    new-instance v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    const-string v1, "RELEASING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->RELEASING:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    .line 1231
    new-instance v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    const-string v1, "RELEASED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->RELEASED:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    .line 1168
    const/16 v0, 0x8

    new-array v0, v0, [Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    sget-object v1, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->INITIALIZED:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->PENDING_OPEN:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->OPENING:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->OPENED:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    aput-object v1, v0, v5

    sget-object v1, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->CLOSING:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    aput-object v1, v0, v6

    sget-object v1, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->REOPENING:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    aput-object v1, v0, v7

    sget-object v1, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->RELEASING:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    aput-object v1, v0, v8

    sget-object v1, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->RELEASED:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    aput-object v1, v0, v9

    sput-object v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->$VALUES:[Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

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

    .line 1168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;
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

    .line 1168
    const-class v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    return-object v0
.end method

.method public static values()[Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;
    .locals 1

    .line 1168
    sget-object v0, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->$VALUES:[Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    invoke-virtual {v0}, [Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    return-object v0
.end method
