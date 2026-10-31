.class public final Landroidx/camera/camera2/internal/CameraUnavailableExceptionHelper;
.super Ljava/lang/Object;
.source "CameraUnavailableExceptionHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFrom(Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;)Landroidx/camera/core/CameraUnavailableException;
    .registers 3
    .param p0, "e"    # Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->getReason()I

    move-result v0

    sparse-switch v0, :sswitch_data_1c

    .line 59
    const/4 v0, 0x0

    .local v0, "errorCode":I
    goto :goto_15

    .line 56
    .end local v0    # "errorCode":I
    :sswitch_9
    const/4 v0, 0x6

    .line 57
    .restart local v0    # "errorCode":I
    goto :goto_15

    .line 53
    .end local v0    # "errorCode":I
    :sswitch_b
    const/4 v0, 0x5

    .line 54
    .restart local v0    # "errorCode":I
    goto :goto_15

    .line 50
    .end local v0    # "errorCode":I
    :sswitch_d
    const/4 v0, 0x4

    .line 51
    .restart local v0    # "errorCode":I
    goto :goto_15

    .line 47
    .end local v0    # "errorCode":I
    :sswitch_f
    const/4 v0, 0x3

    .line 48
    .restart local v0    # "errorCode":I
    goto :goto_15

    .line 44
    .end local v0    # "errorCode":I
    :sswitch_11
    const/4 v0, 0x2

    .line 45
    .restart local v0    # "errorCode":I
    goto :goto_15

    .line 41
    .end local v0    # "errorCode":I
    :sswitch_13
    const/4 v0, 0x1

    .line 42
    .restart local v0    # "errorCode":I
    nop

    .line 61
    :goto_15
    new-instance v1, Landroidx/camera/core/CameraUnavailableException;

    invoke-direct {v1, v0, p0}, Landroidx/camera/core/CameraUnavailableException;-><init>(ILjava/lang/Throwable;)V

    return-object v1

    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_11
        0x3 -> :sswitch_f
        0x4 -> :sswitch_d
        0x5 -> :sswitch_b
        0x2711 -> :sswitch_9
    .end sparse-switch
.end method
