.class public Landroidx/camera/core/impl/Quirks;
.super Ljava/lang/Object;
.source "Quirks.java"


# instance fields
.field private final mQuirks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/Quirk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "quirks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/Quirk;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "quirks":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/Quirk;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/camera/core/impl/Quirks;->mQuirks:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quirkClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/camera/core/impl/Quirk;",
            ">;)Z"
        }
    .end annotation

    .line 70
    .local p1, "quirkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/camera/core/impl/Quirk;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/Quirks;->mQuirks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/Quirk;

    .line 71
    .local v1, "quirk":Landroidx/camera/core/impl/Quirk;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const/4 v0, 0x1

    return v0

    .line 74
    .end local v1    # "quirk":Landroidx/camera/core/impl/Quirk;
    :cond_0
    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "quirkClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/camera/core/impl/Quirk;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 52
    .local p1, "quirkClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/Quirks;->mQuirks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/Quirk;

    .line 53
    .local v1, "quirk":Landroidx/camera/core/impl/Quirk;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 54
    return-object v1

    .line 56
    .end local v1    # "quirk":Landroidx/camera/core/impl/Quirk;
    :cond_0
    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
