.class public final synthetic Landroidx/camera/core/impl/ImageOutputConfig$-CC;
.super Ljava/lang/Object;
.source "ImageOutputConfig.java"


# direct methods
.method public static $default$getDefaultResolution(Landroidx/camera/core/impl/ImageOutputConfig;)Landroid/util/Size;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/ImageOutputConfig;

    .line 175
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_DEFAULT_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ImageOutputConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    return-object v0
.end method

.method public static $default$getDefaultResolution(Landroidx/camera/core/impl/ImageOutputConfig;Landroid/util/Size;)Landroid/util/Size;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/ImageOutputConfig;
    .param p1, "valueIfMissing"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "_this",
            "valueIfMissing"
        }
    .end annotation

    .line 164
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_DEFAULT_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0, p1}, Landroidx/camera/core/impl/ImageOutputConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    return-object v0
.end method

.method public static $default$getMaxResolution(Landroidx/camera/core/impl/ImageOutputConfig;)Landroid/util/Size;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/ImageOutputConfig;

    .line 200
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_MAX_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ImageOutputConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    return-object v0
.end method

.method public static $default$getMaxResolution(Landroidx/camera/core/impl/ImageOutputConfig;Landroid/util/Size;)Landroid/util/Size;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/ImageOutputConfig;
    .param p1, "valueIfMissing"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "_this",
            "valueIfMissing"
        }
    .end annotation

    .line 188
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_MAX_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0, p1}, Landroidx/camera/core/impl/ImageOutputConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    return-object v0
.end method

.method public static $default$getSupportedResolutions(Landroidx/camera/core/impl/ImageOutputConfig;)Ljava/util/List;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/ImageOutputConfig;

    .line 232
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_SUPPORTED_RESOLUTIONS:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ImageOutputConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static $default$getSupportedResolutions(Landroidx/camera/core/impl/ImageOutputConfig;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/ImageOutputConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "_this",
            "valueIfMissing"
        }
    .end annotation

    .line 217
    .local p1, "valueIfMissing":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;[Landroid/util/Size;>;>;"
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_SUPPORTED_RESOLUTIONS:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0, p1}, Landroidx/camera/core/impl/ImageOutputConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static $default$getTargetAspectRatio(Landroidx/camera/core/impl/ImageOutputConfig;)I
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/ImageOutputConfig;

    .line 98
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ASPECT_RATIO:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ImageOutputConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static $default$getTargetResolution(Landroidx/camera/core/impl/ImageOutputConfig;)Landroid/util/Size;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/ImageOutputConfig;

    .line 152
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ImageOutputConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    return-object v0
.end method

.method public static $default$getTargetResolution(Landroidx/camera/core/impl/ImageOutputConfig;Landroid/util/Size;)Landroid/util/Size;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/ImageOutputConfig;
    .param p1, "valueIfMissing"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "_this",
            "valueIfMissing"
        }
    .end annotation

    .line 141
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0, p1}, Landroidx/camera/core/impl/ImageOutputConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    return-object v0
.end method

.method public static $default$getTargetRotation(Landroidx/camera/core/impl/ImageOutputConfig;)I
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/ImageOutputConfig;

    .line 129
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ROTATION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ImageOutputConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static $default$getTargetRotation(Landroidx/camera/core/impl/ImageOutputConfig;I)I
    .locals 2
    .param p0, "_this"    # Landroidx/camera/core/impl/ImageOutputConfig;
    .param p1, "valueIfMissing"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "_this",
            "valueIfMissing"
        }
    .end annotation

    .line 114
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ROTATION:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroidx/camera/core/impl/ImageOutputConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static $default$hasTargetAspectRatio(Landroidx/camera/core/impl/ImageOutputConfig;)Z
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/ImageOutputConfig;

    .line 87
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ASPECT_RATIO:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ImageOutputConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v0

    return v0
.end method
