.class public final Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/VideoCapture$OutputFileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContentValues:Landroid/content/ContentValues;

.field private mFile:Ljava/io/File;

.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private mMetadata:Landroidx/camera/core/VideoCapture$Metadata;

.field private mSaveCollection:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "saveCollection"    # Landroid/net/Uri;
    .param p3, "contentValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "contentResolver",
            "saveCollection",
            "contentValues"
        }
    .end annotation

    .line 1816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1817
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mContentResolver:Landroid/content/ContentResolver;

    .line 1818
    iput-object p2, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mSaveCollection:Landroid/net/Uri;

    .line 1819
    iput-object p3, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mContentValues:Landroid/content/ContentValues;

    .line 1820
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 1771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1772
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mFile:Ljava/io/File;

    .line 1773
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileDescriptor"
        }
    .end annotation

    .line 1784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1785
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Using a FileDescriptor to record a video is only supported for Android 8.0 or above."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1789
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 1790
    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/core/VideoCapture$OutputFileOptions;
    .locals 8

    .line 1838
    new-instance v7, Landroidx/camera/core/VideoCapture$OutputFileOptions;

    iget-object v1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mFile:Ljava/io/File;

    iget-object v2, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-object v3, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mSaveCollection:Landroid/net/Uri;

    iget-object v5, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mContentValues:Landroid/content/ContentValues;

    iget-object v6, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mMetadata:Landroidx/camera/core/VideoCapture$Metadata;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/VideoCapture$OutputFileOptions;-><init>(Ljava/io/File;Ljava/io/FileDescriptor;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroidx/camera/core/VideoCapture$Metadata;)V

    return-object v7
.end method

.method public setMetadata(Landroidx/camera/core/VideoCapture$Metadata;)Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;
    .locals 0
    .param p1, "metadata"    # Landroidx/camera/core/VideoCapture$Metadata;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metadata"
        }
    .end annotation

    .line 1829
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mMetadata:Landroidx/camera/core/VideoCapture$Metadata;

    .line 1830
    return-object p0
.end method
