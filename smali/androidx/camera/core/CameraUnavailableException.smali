.class public Landroidx/camera/core/CameraUnavailableException;
.super Ljava/lang/Exception;
.source "CameraUnavailableException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/CameraUnavailableException$Reason;
    }
.end annotation


# static fields
.field public static final CAMERA_DISABLED:I = 0x1

.field public static final CAMERA_DISCONNECTED:I = 0x2

.field public static final CAMERA_ERROR:I = 0x3

.field public static final CAMERA_IN_USE:I = 0x4

.field public static final CAMERA_MAX_IN_USE:I = 0x5

.field public static final CAMERA_UNAVAILABLE_DO_NOT_DISTURB:I = 0x6

.field public static final CAMERA_UNKNOWN_ERROR:I


# instance fields
.field private final mReason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 99
    iput p1, p0, Landroidx/camera/core/CameraUnavailableException;->mReason:I

    .line 100
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reason",
            "message"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 104
    iput p1, p0, Landroidx/camera/core/CameraUnavailableException;->mReason:I

    .line 105
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reason",
            "message",
            "cause"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    iput p1, p0, Landroidx/camera/core/CameraUnavailableException;->mReason:I

    .line 111
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reason",
            "cause"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 115
    iput p1, p0, Landroidx/camera/core/CameraUnavailableException;->mReason:I

    .line 116
    return-void
.end method


# virtual methods
.method public getReason()I
    .locals 1

    .line 121
    iget v0, p0, Landroidx/camera/core/CameraUnavailableException;->mReason:I

    return v0
.end method
