.class public Landroidx/camera/core/VideoCapture$OutputFileResults;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputFileResults"
.end annotation


# instance fields
.field private mSavedUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .param p1, "savedUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedUri"
        }
    .end annotation

    .line 1638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1639
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$OutputFileResults;->mSavedUri:Landroid/net/Uri;

    .line 1640
    return-void
.end method


# virtual methods
.method public getSavedUri()Landroid/net/Uri;
    .locals 1

    .line 1651
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileResults;->mSavedUri:Landroid/net/Uri;

    return-object v0
.end method
