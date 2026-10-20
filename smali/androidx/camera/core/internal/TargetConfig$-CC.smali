.class public final synthetic Landroidx/camera/core/internal/TargetConfig$-CC;
.super Ljava/lang/Object;
.source "TargetConfig.java"


# direct methods
.method public static $default$getTargetClass(Landroidx/camera/core/internal/TargetConfig;)Ljava/lang/Class;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/internal/TargetConfig;

    .line 77
    .local p0, "this":Landroidx/camera/core/internal/TargetConfig;, "Landroidx/camera/core/internal/TargetConfig<TT;>;"
    sget-object v0, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_CLASS:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/internal/TargetConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static $default$getTargetClass(Landroidx/camera/core/internal/TargetConfig;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/internal/TargetConfig;
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

    .line 65
    .local p0, "this":Landroidx/camera/core/internal/TargetConfig;, "Landroidx/camera/core/internal/TargetConfig<TT;>;"
    .local p1, "valueIfMissing":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_CLASS:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0, p1}, Landroidx/camera/core/internal/TargetConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static $default$getTargetName(Landroidx/camera/core/internal/TargetConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/internal/TargetConfig;

    .line 106
    .local p0, "this":Landroidx/camera/core/internal/TargetConfig;, "Landroidx/camera/core/internal/TargetConfig<TT;>;"
    sget-object v0, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_NAME:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/internal/TargetConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static $default$getTargetName(Landroidx/camera/core/internal/TargetConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/internal/TargetConfig;
    .param p1, "valueIfMissing"    # Ljava/lang/String;
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

    .line 92
    .local p0, "this":Landroidx/camera/core/internal/TargetConfig;, "Landroidx/camera/core/internal/TargetConfig<TT;>;"
    sget-object v0, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_NAME:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0, p1}, Landroidx/camera/core/internal/TargetConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
