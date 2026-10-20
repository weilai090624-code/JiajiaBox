.class final Lj$/util/ImmutableCollections$Map1;
.super Lj$/util/ImmutableCollections$AbstractImmutableMap;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Map1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/ImmutableCollections$AbstractImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final k0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final v0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 747
    .local p0, "this":Lj$/util/ImmutableCollections$Map1;, "Ljava/util/ImmutableCollections$Map1<TK;TV;>;"
    .local p1, "k0":Ljava/lang/Object;, "TK;"
    .local p2, "v0":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lj$/util/ImmutableCollections$AbstractImmutableMap;-><init>()V

    .line 748
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    .line 749
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

    .line 750
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;

    .line 773
    .local p0, "this":Lj$/util/ImmutableCollections$Map1;, "Ljava/util/ImmutableCollections$Map1<TK;TV;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 5

    .line 777
    .local p0, "this":Lj$/util/ImmutableCollections$Map1;, "Ljava/util/ImmutableCollections$Map1<TK;TV;>;"
    new-instance v0, Lj$/util/CollSer;

    iget-object v1, p0, Lj$/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    iget-object v2, p0, Lj$/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x3

    invoke-direct {v0, v1, v3}, Lj$/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 764
    .local p0, "this":Lj$/util/ImmutableCollections$Map1;, "Ljava/util/ImmutableCollections$Map1<TK;TV;>;"
    iget-object v0, p0, Lj$/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 769
    .local p0, "this":Lj$/util/ImmutableCollections$Map1;, "Ljava/util/ImmutableCollections$Map1<TK;TV;>;"
    iget-object v0, p0, Lj$/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 754
    .local p0, "this":Lj$/util/ImmutableCollections$Map1;, "Ljava/util/ImmutableCollections$Map1<TK;TV;>;"
    new-instance v0, Lj$/util/KeyValueHolder;

    iget-object v1, p0, Lj$/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    iget-object v2, p0, Lj$/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lj$/util/KeyValueHolder;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lj$/util/ImmutableCollections$Map1$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 759
    .local p0, "this":Lj$/util/ImmutableCollections$Map1;, "Ljava/util/ImmutableCollections$Map1<TK;TV;>;"
    iget-object v0, p0, Lj$/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 782
    .local p0, "this":Lj$/util/ImmutableCollections$Map1;, "Ljava/util/ImmutableCollections$Map1<TK;TV;>;"
    iget-object v0, p0, Lj$/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
