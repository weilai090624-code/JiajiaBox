.class public Landroidx/camera/view/internal/compat/quirk/DeviceQuirksLoader;
.super Ljava/lang/Object;
.source "DeviceQuirksLoader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static loadQuirks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/Quirk;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "quirks":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/Quirk;>;"
    invoke-static {}, Landroidx/camera/view/internal/compat/quirk/PreviewOneThirdWiderQuirk;->load()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    new-instance v1, Landroidx/camera/view/internal/compat/quirk/PreviewOneThirdWiderQuirk;

    invoke-direct {v1}, Landroidx/camera/view/internal/compat/quirk/PreviewOneThirdWiderQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_0
    invoke-static {}, Landroidx/camera/view/internal/compat/quirk/SurfaceViewStretchedQuirk;->load()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    new-instance v1, Landroidx/camera/view/internal/compat/quirk/SurfaceViewStretchedQuirk;

    invoke-direct {v1}, Landroidx/camera/view/internal/compat/quirk/SurfaceViewStretchedQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    invoke-static {}, Landroidx/camera/view/internal/compat/quirk/TextureViewRotationQuirk;->load()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    new-instance v1, Landroidx/camera/view/internal/compat/quirk/TextureViewRotationQuirk;

    invoke-direct {v1}, Landroidx/camera/view/internal/compat/quirk/TextureViewRotationQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_2
    return-object v0
.end method
