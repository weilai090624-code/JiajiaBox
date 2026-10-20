.class public final Landroidx/camera/core/VideoCapture$OutputFileOptions;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputFileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY_METADATA:Landroidx/camera/core/VideoCapture$Metadata;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContentValues:Landroid/content/ContentValues;

.field private final mFile:Ljava/io/File;

.field private final mFileDescriptor:Ljava/io/FileDescriptor;

.field private final mMetadata:Landroidx/camera/core/VideoCapture$Metadata;

.field private final mSaveCollection:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1666
    new-instance v0, Landroidx/camera/core/VideoCapture$Metadata;

    invoke-direct {v0}, Landroidx/camera/core/VideoCapture$Metadata;-><init>()V

    sput-object v0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->EMPTY_METADATA:Landroidx/camera/core/VideoCapture$Metadata;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/FileDescriptor;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroidx/camera/core/VideoCapture$Metadata;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;
    .param p4, "saveCollection"    # Landroid/net/Uri;
    .param p5, "contentValues"    # Landroid/content/ContentValues;
    .param p6, "metadata"    # Landroidx/camera/core/VideoCapture$Metadata;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "fileDescriptor",
            "contentResolver",
            "saveCollection",
            "contentValues",
            "metadata"
        }
    .end annotation

    .line 1686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1687
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mFile:Ljava/io/File;

    .line 1688
    iput-object p2, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 1689
    iput-object p3, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mContentResolver:Landroid/content/ContentResolver;

    .line 1690
    iput-object p4, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mSaveCollection:Landroid/net/Uri;

    .line 1691
    iput-object p5, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mContentValues:Landroid/content/ContentValues;

    .line 1692
    if-nez p6, :cond_0

    sget-object v0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->EMPTY_METADATA:Landroidx/camera/core/VideoCapture$Metadata;

    goto :goto_0

    :cond_0
    move-object v0, p6

    :goto_0
    iput-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mMetadata:Landroidx/camera/core/VideoCapture$Metadata;

    .line 1693
    return-void
.end method


# virtual methods
.method getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 1712
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method getContentValues()Landroid/content/ContentValues;
    .locals 1

    .line 1724
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method getFile()Ljava/io/File;
    .locals 1

    .line 1698
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mFile:Ljava/io/File;

    return-object v0
.end method

.method getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 1706
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method getMetadata()Landroidx/camera/core/VideoCapture$Metadata;
    .locals 1

    .line 1730
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mMetadata:Landroidx/camera/core/VideoCapture$Metadata;

    return-object v0
.end method

.method getSaveCollection()Landroid/net/Uri;
    .locals 1

    .line 1718
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mSaveCollection:Landroid/net/Uri;

    return-object v0
.end method

.method isSavingToFile()Z
    .locals 1

    .line 1741
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$OutputFileOptions;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSavingToFileDescriptor()Z
    .locals 1

    .line 1746
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$OutputFileOptions;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSavingToMediaStore()Z
    .locals 1

    .line 1735
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$OutputFileOptions;->getSaveCollection()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1736
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1735
    :goto_0
    return v0
.end method
