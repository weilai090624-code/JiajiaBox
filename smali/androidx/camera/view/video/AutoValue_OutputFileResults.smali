.class final Landroidx/camera/view/video/AutoValue_OutputFileResults;
.super Landroidx/camera/view/video/OutputFileResults;
.source "AutoValue_OutputFileResults.java"


# instance fields
.field private final savedUri:Landroid/net/Uri;


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

    .line 14
    invoke-direct {p0}, Landroidx/camera/view/video/OutputFileResults;-><init>()V

    .line 15
    iput-object p1, p0, Landroidx/camera/view/video/AutoValue_OutputFileResults;->savedUri:Landroid/net/Uri;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 33
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 34
    return v0

    .line 36
    :cond_0
    instance-of v1, p1, Landroidx/camera/view/video/OutputFileResults;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 37
    move-object v1, p1

    check-cast v1, Landroidx/camera/view/video/OutputFileResults;

    .line 38
    .local v1, "that":Landroidx/camera/view/video/OutputFileResults;
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_OutputFileResults;->savedUri:Landroid/net/Uri;

    if-nez v3, :cond_2

    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileResults;->getSavedUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_OutputFileResults;->savedUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroidx/camera/view/video/OutputFileResults;->getSavedUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .line 40
    .end local v1    # "that":Landroidx/camera/view/video/OutputFileResults;
    :cond_3
    return v2
.end method

.method public getSavedUri()Landroid/net/Uri;
    .locals 1

    .line 21
    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_OutputFileResults;->savedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 45
    const/4 v0, 0x1

    .line 46
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 47
    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_OutputFileResults;->savedUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_OutputFileResults;->savedUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    .line 48
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutputFileResults{savedUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_OutputFileResults;->savedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
