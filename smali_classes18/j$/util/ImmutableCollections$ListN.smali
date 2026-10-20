.class final Lj$/util/ImmutableCollections$ListN;
.super Lj$/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListN"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/ImmutableCollections$AbstractImmutableList<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 417
    sget-object v0, Lj$/util/ImmutableCollections$ListN;->EMPTY_LIST:Ljava/util/List;

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Lj$/util/ImmutableCollections$ListN;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lj$/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lj$/util/ImmutableCollections$ListN;->EMPTY_LIST:Ljava/util/List;

    .line 420
    :cond_0
    return-void
.end method

.method varargs constructor <init>([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 426
    .local p0, "this":Lj$/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    .local p1, "input":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Lj$/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 429
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 430
    .local v0, "tmp":[Ljava/lang/Object;, "[TE;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 431
    aget-object v2, p1, v1

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v1    # "i":I
    :cond_0
    iput-object v0, p0, Lj$/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    .line 434
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;

    .line 452
    .local p0, "this":Lj$/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3

    .line 456
    .local p0, "this":Lj$/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    new-instance v0, Lj$/util/CollSer;

    const/4 v1, 0x1

    iget-object v2, p0, Lj$/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lj$/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 448
    .local p0, "this":Lj$/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    iget-object v0, p0, Lj$/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 438
    .local p0, "this":Lj$/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    invoke-virtual {p0}, Lj$/util/ImmutableCollections$ListN;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 443
    .local p0, "this":Lj$/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    iget-object v0, p0, Lj$/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
