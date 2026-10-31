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
    .registers 7
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
    .registers 8
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
    .registers 7
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

    if-ne p1, p0, :cond_4

    .line 94
    return v0

    .line 96
    :cond_4
    instance-of v1, p1, Landroidx/camera/view/video/OutputFileOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_8e

    .line 97
    move-object v1, p1

    check-cast v1, Landroidx/camera/view/video/OutputFileOptions;

    .line 98
    .local v1, "that":Landroidx/camera/view/video/OutputFileOptions;
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->file:Ljava/io/File;

    if-nez v3, :cond_17

    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getFile()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_8c

    goto :goto_23

    :cond_17
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->file:Ljava/io/File;

    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    :goto_23
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_2e

    .line 99
    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-nez v3, :cond_8c

    goto :goto_3a

    :cond_2e
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    :goto_3a
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentResolver:Landroid/content/ContentResolver;

    if-nez v3, :cond_45

    .line 100
    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_8c

    goto :goto_51

    :cond_45
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    :goto_51
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->saveCollection:Landroid/net/Uri;

    if-nez v3, :cond_5c

    .line 101
    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getSaveCollection()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_8c

    goto :goto_68

    :cond_5c
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->saveCollection:Landroid/net/Uri;

    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getSaveCollection()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    :goto_68
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentValues:Landroid/content/ContentValues;

    if-nez v3, :cond_73

    .line 102
    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    if-nez v3, :cond_8c

    goto :goto_7f

    :cond_73
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    :goto_7f
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->metadata:Landroidx/camera/view/video/Metadata;

    .line 103
    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileOptions;->getMetadata()Landroidx/camera/view/video/Metadata;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    goto :goto_8d

    :cond_8c
    const/4 v0, 0x0

    .line 98
    :goto_8d
    return v0

    .line 105
    .end local v1    # "that":Landroidx/camera/view/video/OutputFileOptions;
    :cond_8e
    return v2
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .line 58
    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method getContentValues()Landroid/content/ContentValues;
    .registers 2

    .line 70
    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method getFile()Ljava/io/File;
    .registers 2

    .line 46
    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->file:Ljava/io/File;

    return-object v0
.end method

.method getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 52
    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getMetadata()Landroidx/camera/view/video/Metadata;
    .registers 2

    .line 76
    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->metadata:Landroidx/camera/view/video/Metadata;

    return-object v0
.end method

.method getSaveCollection()Landroid/net/Uri;
    .registers 2

    .line 64
    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->saveCollection:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 110
    const/4 v0, 0x1

    .line 111
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 112
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->file:Ljava/io/File;

    const/4 v3, 0x0

    if-nez v2, :cond_d

    const/4 v2, 0x0

    goto :goto_13

    :cond_d
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    :goto_13
    xor-int/2addr v0, v2

    .line 113
    mul-int v0, v0, v1

    .line 114
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_22

    :cond_1c
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_22
    xor-int/2addr v0, v2

    .line 115
    mul-int v0, v0, v1

    .line 116
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentResolver:Landroid/content/ContentResolver;

    if-nez v2, :cond_2b

    const/4 v2, 0x0

    goto :goto_31

    :cond_2b
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    xor-int/2addr v0, v2

    .line 117
    mul-int v0, v0, v1

    .line 118
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->saveCollection:Landroid/net/Uri;

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    goto :goto_40

    :cond_3a
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->saveCollection:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_40
    xor-int/2addr v0, v2

    .line 119
    mul-int v0, v0, v1

    .line 120
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentValues:Landroid/content/ContentValues;

    if-nez v2, :cond_48

    goto :goto_4e

    :cond_48
    iget-object v2, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->hashCode()I

    move-result v3

    :goto_4e
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
    .registers 3

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
