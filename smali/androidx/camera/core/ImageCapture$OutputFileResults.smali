.class public Landroidx/camera/core/ImageCapture$OutputFileResults;
.super Ljava/lang/Object;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputFileResults"
.end annotation


# instance fields
.field private mSavedUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .registers 2
    .param p1, "savedUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedUri"
        }
    .end annotation

    .line 1969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1970
    iput-object p1, p0, Landroidx/camera/core/ImageCapture$OutputFileResults;->mSavedUri:Landroid/net/Uri;

    .line 1971
    return-void
.end method


# virtual methods
.method public getSavedUri()Landroid/net/Uri;
    .registers 2

    .line 1984
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileResults;->mSavedUri:Landroid/net/Uri;

    return-object v0
.end method
