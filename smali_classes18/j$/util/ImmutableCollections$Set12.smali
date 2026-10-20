.class final Lj$/util/ImmutableCollections$Set12;
.super Lj$/util/ImmutableCollections$AbstractImmutableSet;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Set12"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/ImmutableCollections$AbstractImmutableSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final e0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final e1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 502
    .local p0, "this":Lj$/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lj$/util/ImmutableCollections$AbstractImmutableSet;-><init>()V

    .line 503
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    .line 505
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 507
    .local p0, "this":Lj$/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    .local p2, "e1":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lj$/util/ImmutableCollections$AbstractImmutableSet;-><init>()V

    .line 508
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iput-object p1, p0, Lj$/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    .line 513
    iput-object p2, p0, Lj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    .line 514
    return-void

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;

    .line 557
    .local p0, "this":Lj$/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 7

    .line 561
    .local p0, "this":Lj$/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    iget-object v0, p0, Lj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Lj$/util/CollSer;

    iget-object v4, p0, Lj$/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-direct {v0, v3, v1}, Lj$/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    .line 564
    :cond_0
    new-instance v0, Lj$/util/CollSer;

    iget-object v4, p0, Lj$/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    iget-object v5, p0, Lj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v2

    aput-object v5, v6, v1

    invoke-direct {v0, v3, v6}, Lj$/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 523
    .local p0, "this":Lj$/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    iget-object v0, p0, Lj$/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 528
    .local p0, "this":Lj$/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    iget-object v0, p0, Lj$/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 533
    .local p0, "this":Lj$/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    new-instance v0, Lj$/util/ImmutableCollections$Set12$1;

    invoke-direct {v0, p0}, Lj$/util/ImmutableCollections$Set12$1;-><init>(Lj$/util/ImmutableCollections$Set12;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 518
    .local p0, "this":Lj$/util/ImmutableCollections$Set12;, "Ljava/util/ImmutableCollections$Set12<TE;>;"
    iget-object v0, p0, Lj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method
