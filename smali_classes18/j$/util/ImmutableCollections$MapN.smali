.class final Lj$/util/ImmutableCollections$MapN;
.super Lj$/util/ImmutableCollections$AbstractImmutableMap;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapN"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/ImmutableCollections$MapN$MapNIterator;
    }
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


# static fields
.field static EMPTY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field final size:I

.field final table:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 803
    sget-object v0, Lj$/util/ImmutableCollections$MapN;->EMPTY_MAP:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 804
    new-instance v0, Lj$/util/ImmutableCollections$MapN;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lj$/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lj$/util/ImmutableCollections$MapN;->EMPTY_MAP:Ljava/util/Map;

    .line 806
    :cond_0
    return-void
.end method

.method varargs constructor <init>([Ljava/lang/Object;)V
    .locals 8
    .param p1, "input"    # [Ljava/lang/Object;

    .line 814
    .local p0, "this":Lj$/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    invoke-direct {p0}, Lj$/util/ImmutableCollections$AbstractImmutableMap;-><init>()V

    .line 815
    array-length v0, p1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 818
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/ImmutableCollections$MapN;->size:I

    .line 820
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    .line 821
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v1, -0x2

    .line 822
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    .line 824
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 826
    aget-object v2, p1, v1

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 828
    .local v2, "k":Ljava/lang/Object;, "TK;"
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 829
    .local v3, "v":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v2}, Lj$/util/ImmutableCollections$MapN;->probe(Ljava/lang/Object;)I

    move-result v4

    .line 830
    .local v4, "idx":I
    if-gez v4, :cond_0

    .line 833
    add-int/lit8 v5, v4, 0x1

    neg-int v5, v5

    .line 834
    .local v5, "dest":I
    iget-object v6, p0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aput-object v2, v6, v5

    .line 835
    iget-object v6, p0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v7, v5, 0x1

    aput-object v3, v6, v7

    .line 824
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "idx":I
    .end local v5    # "dest":I
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 831
    .restart local v2    # "k":Ljava/lang/Object;, "TK;"
    .restart local v3    # "v":Ljava/lang/Object;, "TV;"
    .restart local v4    # "idx":I
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicate key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 838
    .end local v1    # "i":I
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "idx":I
    :cond_1
    return-void

    .line 816
    .end local v0    # "len":I
    :cond_2
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "length is odd"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private probe(Ljava/lang/Object;)I
    .locals 3
    .param p1, "pk"    # Ljava/lang/Object;

    .line 957
    .local p0, "this":Lj$/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    shr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 960
    .local v0, "idx":I
    :goto_0
    iget-object v1, p0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 961
    .local v1, "ek":Ljava/lang/Object;, "TK;"
    if-nez v1, :cond_0

    .line 962
    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 963
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 964
    return v0

    .line 965
    :cond_1
    add-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_2

    .line 966
    const/4 v0, 0x0

    .line 968
    .end local v1    # "ek":Ljava/lang/Object;, "TK;"
    :cond_2
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;

    .line 972
    .local p0, "this":Lj$/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 7

    .line 976
    .local p0, "this":Lj$/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    iget v0, p0, Lj$/util/ImmutableCollections$MapN;->size:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 977
    .local v0, "array":[Ljava/lang/Object;
    iget-object v1, p0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    .line 978
    .local v1, "len":I
    const/4 v2, 0x0

    .line 979
    .local v2, "dest":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 980
    iget-object v4, p0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    .line 981
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "dest":I
    .local v4, "dest":I
    iget-object v5, p0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v5, v5, v3

    aput-object v5, v0, v2

    .line 982
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "dest":I
    .restart local v2    # "dest":I
    iget-object v5, p0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    aput-object v5, v0, v4

    .line 979
    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 985
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Lj$/util/CollSer;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Lj$/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v3
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 842
    .local p0, "this":Lj$/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    iget v0, p0, Lj$/util/ImmutableCollections$MapN;->size:I

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lj$/util/ImmutableCollections$MapN;->probe(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 848
    .local p0, "this":Lj$/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 850
    iget-object v1, p0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 851
    .local v1, "v":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 852
    const/4 v2, 0x1

    return v2

    .line 849
    .end local v1    # "v":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 855
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 939
    .local p0, "this":Lj$/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    new-instance v0, Lj$/util/ImmutableCollections$MapN$1;

    invoke-direct {v0, p0}, Lj$/util/ImmutableCollections$MapN$1;-><init>(Lj$/util/ImmutableCollections$MapN;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 873
    .local p0, "this":Lj$/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    iget v0, p0, Lj$/util/ImmutableCollections$MapN;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 874
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    return-object v1

    .line 877
    :cond_0
    invoke-direct {p0, p1}, Lj$/util/ImmutableCollections$MapN;->probe(Ljava/lang/Object;)I

    move-result v0

    .line 878
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 879
    iget-object v1, p0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    return-object v1

    .line 881
    :cond_1
    return-object v1
.end method

.method public hashCode()I
    .locals 6

    .line 860
    .local p0, "this":Lj$/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    const/4 v0, 0x0

    .line 861
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 862
    iget-object v2, p0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 863
    .local v2, "k":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 864
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v4, p0, Lj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 861
    .end local v2    # "k":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 867
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .line 887
    .local p0, "this":Lj$/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    iget v0, p0, Lj$/util/ImmutableCollections$MapN;->size:I

    return v0
.end method
