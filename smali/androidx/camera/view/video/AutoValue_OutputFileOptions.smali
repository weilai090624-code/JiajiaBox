.class final Landroidx/camera/view/video/AutoValue_OutputFileOptions;
.super Landroidx/camera/view/video/OutputFileOptions;
.source "AutoValue_OutputFileOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;
    }
.end annotation


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final contentValues:Landroid/content/ContentValues;

.field private final file:Ljava/io/File;

.field private final fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final metadata:Landroidx/camera/view/video/Metadata;

.field private final saveCollection:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Ljava/io/File;Landroid/os/ParcelFileDescriptor;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroidx/camera/view/video/Metadata;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;
    .param p4, "saveCollection"    # Landroid/net/Uri;
    .param p5, "contentValues"    # Landroid/content/ContentValues;
    .param p6, "metadata"    # Landroidx/camera/view/video/Metadata;
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

    .line 34
    invoke-direct {p0}, Landroidx/camera/view/video/OutputFileOptions;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->file:Ljava/io/File;

    .line 36
    iput-object p2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 37
    iput-object p3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentResolver:Landroid/content/ContentResolver;

    .line 38
    iput-object p4, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->saveCollection:Landroid/net/Uri;

    .line 39
    iput-object p5, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentValues:Landroid/content/ContentValues;

    .line 40
    iput-object p6, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->metadata:Landroidx/camera/view/video/Metadata;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Landroid/os/ParcelFileDescriptor;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroidx/camera/view/video/Metadata;Landroidx/camera/view/video/AutoValue_OutputFileOptions$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/File;
    .param p2, "x1"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "x2"    # Landroid/content/ContentResolver;
    .param p4, "x3"    # Landroid/net/Uri;
    .param p5, "x4"    # Landroid/content/ContentValues;
    .param p6, "x5"    # Landroidx/camera/view/video/Metadata;
    .param p7, "x6"    # Landroidx/camera/view/video/AutoValue_OutputFileOptions$1;

    .line 14
    invoke-direct/range {p0 .. p6}, Landroidx/camera/view/video/AutoValue_OutputFileOptions;-><init>(Ljava/io/File;Landroid/os/ParcelFileDescriptor;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroidx/camera/view/video/Metadata;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 93
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 94
    return v0

    .line 96
    :cond_0
    instance-of v1, p1, Landroidx/camera/view/video/OutputFileOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 97
    move-object v1, p1

    check-cast v1, Landroidx/camera/view/video/OutputFileOptions;

    .line 98
    .local v1, "that":Landroidx/camera/view/video/OutputFileOptions;
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->file:Ljava/io/File;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getFile()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->file:Ljava/io/File;

    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_0
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_2

    .line 99
    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_1
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentResolver:Landroid/content/ContentResolver;

    if-nez v3, :cond_3

    .line 100
    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->saveCollection:Landroid/net/Uri;

    if-nez v3, :cond_4

    .line 101
    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getSaveCollection()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_4
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->saveCollection:Landroid/net/Uri;

    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getSaveCollection()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_3
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentValues:Landroid/content/ContentValues;

    if-nez v3, :cond_5

    .line 102
    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_5
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->metadata:Landroidx/camera/view/video/Metadata;

    .line 103
    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getMetadata()Landroidx/camera/view/video/Metadata;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    .line 98
    :goto_5
    return v0

    .line 105
    .end local v1    # "that":Landroidx/camera/view/video/OutputFileOptions;
    :cond_7
    return v2
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method getContentValues()Landroid/content/ContentValues;
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method getFile()Ljava/io/File;
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->file:Ljava/io/File;

    return-object v0
.end method

.method getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getMetadata()Landroidx/camera/view/video/Metadata;
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->metadata:Landroidx/camera/view/video/Metadata;

    return-object v0
.end method

.method getSaveCollection()Landroid/net/Uri;
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->saveCollection:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 110
    const/4 v0, 0x1

    .line 111
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 112
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->file:Ljava/io/File;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    .line 113
    mul-int v0, v0, v1

    .line 114
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    .line 115
    mul-int v0, v0, v1

    .line 116
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentResolver:Landroid/content/ContentResolver;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    .line 117
    mul-int v0, v0, v1

    .line 118
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->saveCollection:Landroid/net/Uri;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->saveCollection:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    .line 119
    mul-int v0, v0, v1

    .line 120
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentValues:Landroid/content/ContentValues;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    .line 121
    mul-int v0, v0, v1

    .line 122
    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->metadata:Landroidx/camera/view/video/Metadata;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 123
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutputFileOptions{file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileDescriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentResolver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", saveCollection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->saveCollection:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->metadata:Landroidx/camera/view/video/Metadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
