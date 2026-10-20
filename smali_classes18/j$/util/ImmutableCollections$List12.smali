.class final Lj$/util/ImmutableCollections$List12;
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
    name = "List12"
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


# instance fields
.field private final e0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final e1:Ljava/lang/Object;
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

    .line 369
    .local p0, "this":Lj$/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lj$/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 370
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    .line 372
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 374
    .local p0, "this":Lj$/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    .local p2, "e1":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lj$/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 375
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    .line 376
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    .line 377
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;

    .line 395
    .local p0, "this":Lj$/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .line 399
    .local p0, "this":Lj$/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    iget-object v0, p0, Lj$/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Lj$/util/CollSer;

    iget-object v3, p0, Lj$/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-direct {v0, v2, v4}, Lj$/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    .line 402
    :cond_0
    new-instance v0, Lj$/util/CollSer;

    iget-object v3, p0, Lj$/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    iget-object v4, p0, Lj$/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v4, v5, v2

    invoke-direct {v0, v2, v5}, Lj$/util/CollSer;-><init>(I[Ljava/lang/Object;)V

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

    .line 386
    .local p0, "this":Lj$/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    if-nez p1, :cond_0

    .line 387
    iget-object v0, p0, Lj$/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    return-object v0

    .line 388
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lj$/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lj$/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    return-object v0

    .line 391
    :cond_1
    invoke-virtual {p0, p1}, Lj$/util/ImmutableCollections$List12;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public size()I
    .locals 1

    .line 381
    .local p0, "this":Lj$/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    iget-object v0, p0, Lj$/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
