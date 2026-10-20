.class final Landroidx/camera/core/impl/AutoValue_DeviceProperties;
.super Landroidx/camera/core/impl/DeviceProperties;
.source "AutoValue_DeviceProperties.java"


# instance fields
.field private final manufacturer:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final sdkVersion:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "sdkVersion"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "manufacturer",
            "model",
            "sdkVersion"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Landroidx/camera/core/impl/DeviceProperties;-><init>()V

    .line 20
    if-eqz p1, :cond_1

    .line 23
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->manufacturer:Ljava/lang/String;

    .line 24
    if-eqz p2, :cond_0

    .line 27
    iput-object p2, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->model:Ljava/lang/String;

    .line 28
    iput p3, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->sdkVersion:I

    .line 29
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null model"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null manufacturer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 59
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 60
    return v0

    .line 62
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/DeviceProperties;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 63
    move-object v1, p1

    check-cast v1, Landroidx/camera/core/impl/DeviceProperties;

    .line 64
    .local v1, "that":Landroidx/camera/core/impl/DeviceProperties;
    iget-object v3, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->manufacturer:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/camera/core/impl/DeviceProperties;->manufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->model:Ljava/lang/String;

    .line 65
    invoke-virtual {v1}, Landroidx/camera/core/impl/DeviceProperties;->model()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->sdkVersion:I

    .line 66
    invoke-virtual {v1}, Landroidx/camera/core/impl/DeviceProperties;->sdkVersion()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    .line 68
    .end local v1    # "that":Landroidx/camera/core/impl/DeviceProperties;
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 73
    const/4 v0, 0x1

    .line 74
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 75
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->manufacturer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 76
    mul-int v0, v0, v1

    .line 77
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->model:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 78
    mul-int v0, v0, v1

    .line 79
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->sdkVersion:I

    xor-int/2addr v0, v1

    .line 80
    return v0
.end method

.method public manufacturer()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public model()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->model:Ljava/lang/String;

    return-object v0
.end method

.method public sdkVersion()I
    .locals 1

    .line 45
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->sdkVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceProperties{manufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->sdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
