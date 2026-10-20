.class final Landroidx/camera/view/video/AutoValue_Metadata;
.super Landroidx/camera/view/video/Metadata;
.source "AutoValue_Metadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/view/video/AutoValue_Metadata$Builder;
    }
.end annotation


# instance fields
.field private final location:Landroid/location/Location;


# direct methods
.method private constructor <init>(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Landroidx/camera/view/video/Metadata;-><init>()V

    .line 15
    iput-object p1, p0, Landroidx/camera/view/video/AutoValue_Metadata;->location:Landroid/location/Location;

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Landroid/location/Location;Landroidx/camera/view/video/AutoValue_Metadata$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/location/Location;
    .param p2, "x1"    # Landroidx/camera/view/video/AutoValue_Metadata$1;

    .line 9
    invoke-direct {p0, p1}, Landroidx/camera/view/video/AutoValue_Metadata;-><init>(Landroid/location/Location;)V

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
    instance-of v1, p1, Landroidx/camera/view/video/Metadata;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 37
    move-object v1, p1

    check-cast v1, Landroidx/camera/view/video/Metadata;

    .line 38
    .local v1, "that":Landroidx/camera/view/video/Metadata;
    iget-object v3, p0, Landroidx/camera/view/video/AutoValue_Metadata;->location:Landroid/location/Location;

    if-nez v3, :cond_2

    invoke-virtual {v1}, Landroidx/camera/view/video/Metadata;->getLocation()Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_Metadata;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroidx/camera/view/video/Metadata;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .line 40
    .end local v1    # "that":Landroidx/camera/view/video/Metadata;
    :cond_3
    return v2
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 21
    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_Metadata;->location:Landroid/location/Location;

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
    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_Metadata;->location:Landroid/location/Location;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_Metadata;->location:Landroid/location/Location;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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

    const-string v1, "Metadata{location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_Metadata;->location:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
