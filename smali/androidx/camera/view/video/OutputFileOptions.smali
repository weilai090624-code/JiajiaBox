.class public abstract Landroidx/camera/view/video/OutputFileOptions;
.super Ljava/lang/Object;
.source "OutputFileOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/view/video/OutputFileOptions$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY_METADATA:Landroidx/camera/view/video/Metadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    invoke-static {}, Landroidx/camera/view/video/Metadata;->builder()Landroidx/camera/view/video/Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/view/video/Metadata$Builder;->build()Landroidx/camera/view/video/Metadata;

    move-result-object v0

    sput-object v0, Landroidx/camera/view/video/OutputFileOptions;->EMPTY_METADATA:Landroidx/camera/view/video/Metadata;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static builder(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroidx/camera/view/video/OutputFileOptions$Builder;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "saveCollection"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
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

    .line 112
    new-instance v0, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;

    invoke-direct {v0}, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;-><init>()V

    sget-object v1, Landroidx/camera/view/video/OutputFileOptions;->EMPTY_METADATA:Landroidx/camera/view/video/Metadata;

    .line 113
    invoke-virtual {v0, v1}, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;->setMetadata(Landroidx/camera/view/video/Metadata;)Landroidx/camera/view/video/OutputFileOptions$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p0}, Landroidx/camera/view/video/OutputFileOptions$Builder;->setContentResolver(Landroid/content/ContentResolver;)Landroidx/camera/view/video/OutputFileOptions$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p1}, Landroidx/camera/view/video/OutputFileOptions$Builder;->setSaveCollection(Landroid/net/Uri;)Landroidx/camera/view/video/OutputFileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/camera/view/video/OutputFileOptions$Builder;->setContentValues(Landroid/content/ContentValues;)Landroidx/camera/view/video/OutputFileOptions$Builder;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method public static builder(Landroid/os/ParcelFileDescriptor;)Landroidx/camera/view/video/OutputFileOptions$Builder;
    .locals 2
    .param p0, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileDescriptor"
        }
    .end annotation

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Using a ParcelFileDescriptor to record a video is only supported for Android 8.0 or above."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 82
    new-instance v0, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;

    invoke-direct {v0}, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;-><init>()V

    sget-object v1, Landroidx/camera/view/video/OutputFileOptions;->EMPTY_METADATA:Landroidx/camera/view/video/Metadata;

    invoke-virtual {v0, v1}, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;->setMetadata(Landroidx/camera/view/video/Metadata;)Landroidx/camera/view/video/OutputFileOptions$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Landroidx/camera/view/video/OutputFileOptions$Builder;->setFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroidx/camera/view/video/OutputFileOptions$Builder;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method public static builder(Ljava/io/File;)Landroidx/camera/view/video/OutputFileOptions$Builder;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 64
    new-instance v0, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;

    invoke-direct {v0}, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;-><init>()V

    sget-object v1, Landroidx/camera/view/video/OutputFileOptions;->EMPTY_METADATA:Landroidx/camera/view/video/Metadata;

    invoke-virtual {v0, v1}, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;->setMetadata(Landroidx/camera/view/video/Metadata;)Landroidx/camera/view/video/OutputFileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/camera/view/video/OutputFileOptions$Builder;->setFile(Ljava/io/File;)Landroidx/camera/view/video/OutputFileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private isSavingToFile()Z
    .locals 1

    .line 165
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSavingToFileDescriptor()Z
    .locals 1

    .line 172
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSavingToMediaStore()Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->getSaveCollection()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0
.end method


# virtual methods
.method abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method abstract getContentValues()Landroid/content/ContentValues;
.end method

.method abstract getFile()Ljava/io/File;
.end method

.method abstract getFileDescriptor()Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract getMetadata()Landroidx/camera/view/video/Metadata;
.end method

.method abstract getSaveCollection()Landroid/net/Uri;
.end method

.method public toVideoCaptureOutputFileOptions()Landroidx/camera/core/VideoCapture$OutputFileOptions;
    .locals 4

    .line 184
    invoke-direct {p0}, Landroidx/camera/view/video/OutputFileOptions;->isSavingToFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;

    .line 187
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-direct {v0, v1}, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;-><init>(Ljava/io/File;)V

    .local v0, "internalOutputFileOptionsBuilder":Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;
    goto :goto_0

    .line 188
    .end local v0    # "internalOutputFileOptionsBuilder":Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;
    :cond_0
    invoke-direct {p0}, Landroidx/camera/view/video/OutputFileOptions;->isSavingToFileDescriptor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    new-instance v0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;

    .line 191
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;-><init>(Ljava/io/FileDescriptor;)V

    .restart local v0    # "internalOutputFileOptionsBuilder":Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;
    goto :goto_0

    .line 193
    .end local v0    # "internalOutputFileOptionsBuilder":Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;
    :cond_1
    invoke-direct {p0}, Landroidx/camera/view/video/OutputFileOptions;->isSavingToMediaStore()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 194
    new-instance v0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;

    .line 196
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentResolver;

    .line 197
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->getSaveCollection()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 198
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 201
    .restart local v0    # "internalOutputFileOptionsBuilder":Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;
    :goto_0
    new-instance v1, Landroidx/camera/core/VideoCapture$Metadata;

    invoke-direct {v1}, Landroidx/camera/core/VideoCapture$Metadata;-><init>()V

    .line 202
    .local v1, "internalMetadata":Landroidx/camera/core/VideoCapture$Metadata;
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->getMetadata()Landroidx/camera/view/video/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/view/video/Metadata;->getLocation()Landroid/location/Location;

    move-result-object v2

    iput-object v2, v1, Landroidx/camera/core/VideoCapture$Metadata;->location:Landroid/location/Location;

    .line 203
    invoke-virtual {v0, v1}, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->setMetadata(Landroidx/camera/core/VideoCapture$Metadata;)Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;

    .line 205
    invoke-virtual {v0}, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->build()Landroidx/camera/core/VideoCapture$OutputFileOptions;

    move-result-object v2

    return-object v2
.end method
