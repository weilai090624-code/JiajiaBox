.class final Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;
.super Landroidx/camera/view/video/OutputFileOptions$Builder;
.source "AutoValue_OutputFileOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/video/AutoValue_OutputFileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private contentValues:Landroid/content/ContentValues;

.field private file:Ljava/io/File;

.field private fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private metadata:Landroidx/camera/view/video/Metadata;

.field private saveCollection:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Landroidx/camera/view/video/OutputFileOptions$Builder;-><init>()V

    .line 134
    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/view/video/OutputFileOptions;
    .locals 10

    .line 170
    const-string v0, ""

    .line 171
    .local v0, "missing":Ljava/lang/String;
    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;->metadata:Landroidx/camera/view/video/Metadata;

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " metadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    new-instance v1, Landroidx/camera/view/video/AutoValue_OutputFileOptions;

    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;->file:Ljava/io/File;

    iget-object v4, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    iget-object v5, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;->contentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;->saveCollection:Landroid/net/Uri;

    iget-object v7, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;->contentValues:Landroid/content/ContentValues;

    iget-object v8, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;->metadata:Landroidx/camera/view/video/Metadata;

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroidx/camera/view/video/AutoValue_OutputFileOptions;-><init>(Ljava/io/File;Landroid/os/ParcelFileDescriptor;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroidx/camera/view/video/Metadata;Landroidx/camera/view/video/AutoValue_OutputFileOptions$1;)V

    return-object v1

    .line 175
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setContentResolver(Landroid/content/ContentResolver;)Landroidx/camera/view/video/OutputFileOptions$Builder;
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentResolver"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;->contentResolver:Landroid/content/ContentResolver;

    .line 148
    return-object p0
.end method

.method setContentValues(Landroid/content/ContentValues;)Landroidx/camera/view/video/OutputFileOptions$Builder;
    .locals 0
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentValues"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;->contentValues:Landroid/content/ContentValues;

    .line 158
    return-object p0
.end method

.method setFile(Ljava/io/File;)Landroidx/camera/view/video/OutputFileOptions$Builder;
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

    .line 137
    iput-object p1, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;->file:Ljava/io/File;

    .line 138
    return-object p0
.end method

.method setFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroidx/camera/view/video/OutputFileOptions$Builder;
    .locals 0
    .param p1, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileDescriptor"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 143
    return-object p0
.end method

.method public setMetadata(Landroidx/camera/view/video/Metadata;)Landroidx/camera/view/video/OutputFileOptions$Builder;
    .locals 2
    .param p1, "metadata"    # Landroidx/camera/view/video/Metadata;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metadata"
        }
    .end annotation

    .line 162
    if-eqz p1, :cond_0

    .line 165
    iput-object p1, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;->metadata:Landroidx/camera/view/video/Metadata;

    .line 166
    return-object p0

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null metadata"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setSaveCollection(Landroid/net/Uri;)Landroidx/camera/view/video/OutputFileOptions$Builder;
    .locals 0
    .param p1, "saveCollection"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saveCollection"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Landroidx/camera/view/video/AutoValue_OutputFileOptions$Builder;->saveCollection:Landroid/net/Uri;

    .line 153
    return-object p0
.end method
