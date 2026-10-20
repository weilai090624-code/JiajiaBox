.class public final synthetic Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;

.field public final synthetic f$1:Landroidx/camera/core/VideoCapture$OutputFileResults;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;Landroidx/camera/core/VideoCapture$OutputFileResults;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;

    iput-object p2, p0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper$$ExternalSyntheticLambda1;->f$1:Landroidx/camera/core/VideoCapture$OutputFileResults;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;

    iget-object v1, p0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper$$ExternalSyntheticLambda1;->f$1:Landroidx/camera/core/VideoCapture$OutputFileResults;

    invoke-virtual {v0, v1}, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;->lambda$onVideoSaved$0$androidx-camera-core-VideoCapture$VideoSavedListenerWrapper(Landroidx/camera/core/VideoCapture$OutputFileResults;)V

    return-void
.end method
