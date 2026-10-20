.class public Lorg/ini4j/CommonMultiMap;
.super Lorg/ini4j/BasicMultiMap;
.source "CommonMultiMap.java"

# interfaces
.implements Lorg/ini4j/CommentedMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ini4j/BasicMultiMap<",
        "TK;TV;>;",
        "Lorg/ini4j/CommentedMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final FIRST_CATEGORY:Ljava/lang/String; = ""

.field private static final LAST_CATEGORY:Ljava/lang/String; = "zzzzzzzzzzzzzzzzzzzzzz"

.field private static final META_COMMENT:Ljava/lang/String; = "comment"

.field private static final SEPARATOR:Ljava/lang/String; = ";#;"

.field private static final serialVersionUID:J = 0x29ced5700e028b72L


# instance fields
.field private _meta:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    .local p0, "this":Lorg/ini4j/CommonMultiMap;, "Lorg/ini4j/CommonMultiMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/ini4j/BasicMultiMap;-><init>()V

    return-void
.end method

.method private makeKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;

    .line 116
    .local p0, "this":Lorg/ini4j/CommonMultiMap;, "Lorg/ini4j/CommonMultiMap<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "buff":Ljava/lang/StringBuilder;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, ";#;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private meta()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/ini4j/CommonMultiMap;, "Lorg/ini4j/CommonMultiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/ini4j/CommonMultiMap;->_meta:Ljava/util/SortedMap;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/ini4j/CommonMultiMap;->_meta:Ljava/util/SortedMap;

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/ini4j/CommonMultiMap;->_meta:Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 38
    .local p0, "this":Lorg/ini4j/CommonMultiMap;, "Lorg/ini4j/CommonMultiMap<TK;TV;>;"
    invoke-super {p0}, Lorg/ini4j/BasicMultiMap;->clear()V

    .line 39
    iget-object v0, p0, Lorg/ini4j/CommonMultiMap;->_meta:Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lorg/ini4j/CommonMultiMap;->_meta:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 43
    :cond_0
    return-void
.end method

.method public getComment(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 33
    .local p0, "this":Lorg/ini4j/CommonMultiMap;, "Lorg/ini4j/CommonMultiMap<TK;TV;>;"
    const-string v0, "comment"

    invoke-virtual {p0, v0, p1}, Lorg/ini4j/CommonMultiMap;->getMeta(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getMeta(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;

    .line 93
    .local p0, "this":Lorg/ini4j/CommonMultiMap;, "Lorg/ini4j/CommonMultiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/ini4j/CommonMultiMap;->_meta:Ljava/util/SortedMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ini4j/CommonMultiMap;->_meta:Ljava/util/SortedMap;

    invoke-direct {p0, p1, p2}, Lorg/ini4j/CommonMultiMap;->makeKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/ini4j/CommonMultiMap;, "Lorg/ini4j/CommonMultiMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-super {p0, p1}, Lorg/ini4j/BasicMultiMap;->putAll(Ljava/util/Map;)V

    .line 49
    instance-of v0, p1, Lorg/ini4j/CommonMultiMap;

    if-eqz v0, :cond_0

    .line 51
    move-object v0, p1

    check-cast v0, Lorg/ini4j/CommonMultiMap;

    iget-object v0, v0, Lorg/ini4j/CommonMultiMap;->_meta:Ljava/util/SortedMap;

    .line 53
    .local v0, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Lorg/ini4j/CommonMultiMap;->meta()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 58
    .end local v0    # "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public putComment(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/ini4j/CommonMultiMap;, "Lorg/ini4j/CommonMultiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "comment"

    invoke-virtual {p0, v0, p1, p2}, Lorg/ini4j/CommonMultiMap;->putMeta(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method putMeta(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/ini4j/CommonMultiMap;, "Lorg/ini4j/CommonMultiMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Lorg/ini4j/CommonMultiMap;->meta()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/ini4j/CommonMultiMap;->makeKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/ini4j/CommonMultiMap;, "Lorg/ini4j/CommonMultiMap<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/ini4j/BasicMultiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, "ret":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/ini4j/CommonMultiMap;->removeMeta(Ljava/lang/Object;)V

    .line 71
    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/ini4j/CommonMultiMap;, "Lorg/ini4j/CommonMultiMap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/ini4j/BasicMultiMap;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "ret":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/ini4j/CommonMultiMap;->length(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lorg/ini4j/CommonMultiMap;->removeMeta(Ljava/lang/Object;)V

    .line 83
    :cond_0
    return-object v0
.end method

.method public removeComment(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 88
    .local p0, "this":Lorg/ini4j/CommonMultiMap;, "Lorg/ini4j/CommonMultiMap<TK;TV;>;"
    const-string v0, "comment"

    invoke-virtual {p0, v0, p1}, Lorg/ini4j/CommonMultiMap;->removeMeta(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method removeMeta(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;

    .line 111
    .local p0, "this":Lorg/ini4j/CommonMultiMap;, "Lorg/ini4j/CommonMultiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/ini4j/CommonMultiMap;->_meta:Ljava/util/SortedMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ini4j/CommonMultiMap;->_meta:Ljava/util/SortedMap;

    invoke-direct {p0, p1, p2}, Lorg/ini4j/CommonMultiMap;->makeKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method removeMeta(Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 103
    .local p0, "this":Lorg/ini4j/CommonMultiMap;, "Lorg/ini4j/CommonMultiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/ini4j/CommonMultiMap;->_meta:Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/ini4j/CommonMultiMap;->_meta:Ljava/util/SortedMap;

    const-string v1, ""

    invoke-direct {p0, v1, p1}, Lorg/ini4j/CommonMultiMap;->makeKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zzzzzzzzzzzzzzzzzzzzzz"

    invoke-direct {p0, v2, p1}, Lorg/ini4j/CommonMultiMap;->makeKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 107
    :cond_0
    return-void
.end method
