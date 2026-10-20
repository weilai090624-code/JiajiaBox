.class public final synthetic Lcom/google/common/collect/BiMap$-CC;
.super Ljava/lang/Object;
.source "BiMap.java"


# direct methods
.method public static bridge synthetic $default$values(Lcom/google/common/collect/BiMap;)Ljava/util/Collection;
    .locals 1
    .param p0, "_this"    # Lcom/google/common/collect/BiMap;

    .line 37
    .local p0, "this":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TK;TV;>;"
    invoke-interface {p0}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
