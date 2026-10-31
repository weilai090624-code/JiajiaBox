.class public final Landroidx/camera/core/impl/SurfaceCombination;
.super Ljava/lang/Object;
.source "SurfaceCombination.java"


# instance fields
.field private final mSurfaceConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    .line 37
    return-void
.end method

.method private static generateArrangements(Ljava/util/List;I[II)V
    .registers 8
    .param p1, "n"    # I
    .param p2, "result"    # [I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "arrangementsResultList",
            "n",
            "result",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;I[II)V"
        }
    .end annotation

    .line 41
    .local p0, "arrangementsResultList":Ljava/util/List;, "Ljava/util/List<[I>;"
    array-length v0, p2

    if-lt p3, v0, :cond_d

    .line 42
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void

    .line 46
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, p1, :cond_29

    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, "included":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_12
    if-ge v2, p3, :cond_1d

    .line 50
    aget v3, p2, v2

    if-ne v0, v3, :cond_1a

    .line 51
    const/4 v1, 0x1

    .line 52
    goto :goto_1d

    .line 49
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 56
    .end local v2    # "j":I
    :cond_1d
    :goto_1d
    if-nez v1, :cond_26

    .line 57
    aput v0, p2, p3

    .line 58
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p1, p2, v2}, Landroidx/camera/core/impl/SurfaceCombination;->generateArrangements(Ljava/util/List;I[II)V

    .line 46
    .end local v1    # "included":Z
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 61
    .end local v0    # "i":I
    :cond_29
    return-void
.end method

.method private getElementsArrangements(I)Ljava/util/List;
    .registers 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "arrangementsResultList":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-array v1, p1, [I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->generateArrangements(Ljava/util/List;I[II)V

    .line 134
    return-object v0
.end method


# virtual methods
.method public addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z
    .registers 3
    .param p1, "surfaceConfig"    # Landroidx/camera/core/impl/SurfaceConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceConfig"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getSurfaceConfigList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    return-object v0
.end method

.method public isSupported(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;)Z"
        }
    .end annotation

    .line 86
    .local p1, "configList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/SurfaceConfig;>;"
    const/4 v0, 0x0

    .line 88
    .local v0, "isSupported":Z
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 89
    const/4 v1, 0x1

    return v1

    .line 98
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_17

    .line 99
    const/4 v1, 0x0

    return v1

    .line 102
    :cond_17
    iget-object v1, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/camera/core/impl/SurfaceCombination;->getElementsArrangements(I)Ljava/util/List;

    move-result-object v1

    .line 104
    .local v1, "elementsArrangements":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 105
    .local v3, "elementsArrangement":[I
    const/4 v4, 0x1

    .line 107
    .local v4, "checkResult":Z
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_33
    iget-object v6, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5e

    .line 108
    aget v6, v3, v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5b

    .line 109
    iget-object v6, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    .line 111
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/impl/SurfaceConfig;

    aget v7, v3, v5

    .line 112
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/core/impl/SurfaceConfig;

    invoke-virtual {v6, v7}, Landroidx/camera/core/impl/SurfaceConfig;->isSupported(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-result v6

    and-int/2addr v4, v6

    .line 114
    if-nez v4, :cond_5b

    .line 115
    goto :goto_5e

    .line 107
    :cond_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 120
    .end local v5    # "index":I
    :cond_5e
    :goto_5e
    if-eqz v4, :cond_62

    .line 121
    const/4 v0, 0x1

    .line 122
    goto :goto_63

    .line 124
    .end local v3    # "elementsArrangement":[I
    .end local v4    # "checkResult":Z
    :cond_62
    goto :goto_25

    .line 126
    :cond_63
    :goto_63
    return v0
.end method

.method public removeSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z
    .registers 3
    .param p1, "surfaceConfig"    # Landroidx/camera/core/impl/SurfaceConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceConfig"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroidx/camera/core/impl/SurfaceCombination;->mSurfaceConfigList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
