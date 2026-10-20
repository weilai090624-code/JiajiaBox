.class public interface abstract Landroidx/camera/core/impl/CaptureProcessor;
.super Ljava/lang/Object;
.source "CaptureProcessor.java"


# virtual methods
.method public abstract onOutputSurface(Landroid/view/Surface;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "surface",
            "imageFormat"
        }
    .end annotation
.end method

.method public abstract onResolutionUpdate(Landroid/util/Size;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation
.end method

.method public abstract process(Landroidx/camera/core/impl/ImageProxyBundle;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation
.end method
