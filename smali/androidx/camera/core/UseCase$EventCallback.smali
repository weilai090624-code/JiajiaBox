.class public interface abstract Landroidx/camera/core/UseCase$EventCallback;
.super Ljava/lang/Object;
.source "UseCase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/UseCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventCallback"
.end annotation


# virtual methods
.method public abstract onAttach(Landroidx/camera/core/CameraInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraInfo"
        }
    .end annotation
.end method

.method public abstract onDetach()V
.end method
