.class public Lorg/yaml/snakeyaml/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;,
        Lorg/yaml/snakeyaml/util/ArrayUtils$UnmodifiableArrayList;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static toUnmodifiableCompositeList([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;[TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 49
    .local p0, "array1":[Ljava/lang/Object;, "[TE;"
    .local p1, "array2":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    if-nez v0, :cond_0

    .line 50
    invoke-static {p1}, Lorg/yaml/snakeyaml/util/ArrayUtils;->toUnmodifiableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TE;>;"
    goto :goto_0

    .line 51
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 52
    invoke-static {p0}, Lorg/yaml/snakeyaml/util/ArrayUtils;->toUnmodifiableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<TE;>;"
    goto :goto_0

    .line 54
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;

    invoke-direct {v0, p0, p1}, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 56
    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :goto_0
    return-object v0
.end method

.method public static toUnmodifiableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 35
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/util/ArrayUtils$UnmodifiableArrayList;

    invoke-direct {v0, p0}, Lorg/yaml/snakeyaml/util/ArrayUtils$UnmodifiableArrayList;-><init>([Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
