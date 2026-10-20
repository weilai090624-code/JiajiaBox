.class public Landroidx/camera/core/impl/MutableTagBundle;
.super Landroidx/camera/core/impl/TagBundle;
.source "MutableTagBundle.java"


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/TagBundle;-><init>(Ljava/util/Map;)V

    .line 32
    return-void
.end method

.method public static create()Landroidx/camera/core/impl/MutableTagBundle;
    .locals 2

    .line 41
    new-instance v0, Landroidx/camera/core/impl/MutableTagBundle;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/MutableTagBundle;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static from(Landroidx/camera/core/impl/TagBundle;)Landroidx/camera/core/impl/MutableTagBundle;
    .locals 4
    .param p0, "otherTagBundle"    # Landroidx/camera/core/impl/TagBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherTagBundle"
        }
    .end annotation

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 53
    .local v0, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroidx/camera/core/impl/TagBundle;->listKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroidx/camera/core/impl/TagBundle;->getTag(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 57
    :cond_0
    new-instance v1, Landroidx/camera/core/impl/MutableTagBundle;

    invoke-direct {v1, v0}, Landroidx/camera/core/impl/MutableTagBundle;-><init>(Ljava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method public addTagBundle(Landroidx/camera/core/impl/TagBundle;)V
    .locals 2
    .param p1, "bundle"    # Landroidx/camera/core/impl/TagBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Landroidx/camera/core/impl/MutableTagBundle;->mTagMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/camera/core/impl/TagBundle;->mTagMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Landroidx/camera/core/impl/MutableTagBundle;->mTagMap:Ljava/util/Map;

    iget-object v1, p1, Landroidx/camera/core/impl/TagBundle;->mTagMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 71
    :cond_0
    return-void
.end method

.method public putTag(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroidx/camera/core/impl/MutableTagBundle;->mTagMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method
