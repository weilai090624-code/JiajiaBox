.class public final synthetic Landroidx/camera/core/internal/IoConfig$-CC;
.super Ljava/lang/Object;
.source "IoConfig.java"


# direct methods
.method public static $default$getIoExecutor(Landroidx/camera/core/internal/IoConfig;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/internal/IoConfig;

    .line 62
    sget-object v0, Landroidx/camera/core/internal/IoConfig;->OPTION_IO_EXECUTOR:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/internal/IoConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static $default$getIoExecutor(Landroidx/camera/core/internal/IoConfig;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/internal/IoConfig;
    .param p1, "valueIfMissing"    # Ljava/util/concurrent/Executor;
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

    .line 50
    sget-object v0, Landroidx/camera/core/internal/IoConfig;->OPTION_IO_EXECUTOR:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0, p1}, Landroidx/camera/core/internal/IoConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method
