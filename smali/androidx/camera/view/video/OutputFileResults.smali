.class public abstract Landroidx/camera/view/video/OutputFileResults;
.super Ljava/lang/Object;
.source "OutputFileResults.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static create(Landroid/net/Uri;)Landroidx/camera/view/video/OutputFileResults;
    .locals 1
    .param p0, "savedUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedUri"
        }
    .end annotation

    .line 45
    new-instance v0, Landroidx/camera/view/video/AutoValue_OutputFileResults;

    invoke-direct {v0, p0}, Landroidx/camera/view/video/AutoValue_OutputFileResults;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public abstract getSavedUri()Landroid/net/Uri;
.end method
