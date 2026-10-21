.class final Lcom/google/common/collect/Collections2$PermutationCollection;
.super Ljava/util/AbstractCollection;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermutationCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final inputList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;)V"
        }
    .end annotation

    .line 582
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationCollection;, "Lcom/google/common/collect/Collections2$PermutationCollection<TE;>;"
    .local p1, "input":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 583
    iput-object p1, p0, Lcom/google/common/collect/Collections2$PermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    .line 584
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 603
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationCollection;, "Lcom/google/common/collect/Collections2$PermutationCollection<TE;>;"
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_e

    .line 604
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 605
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Collections2$PermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    # invokes: Lcom/google/common/collect/Collections2;->isPermutation(Ljava/util/List;Ljava/util/List;)Z
    invoke-static {v1, v0}, Lcom/google/common/collect/Collections2;->access$000(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    return v1

    .line 607
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 593
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationCollection;, "Lcom/google/common/collect/Collections2$PermutationCollection<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 598
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationCollection;, "Lcom/google/common/collect/Collections2$PermutationCollection<TE;>;"
    new-instance v0, Lcom/google/common/collect/Collections2$PermutationIterator;

    iget-object v1, p0, Lcom/google/common/collect/Collections2$PermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Lcom/google/common/collect/Collections2$PermutationIterator;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 588
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationCollection;, "Lcom/google/common/collect/Collections2$PermutationCollection<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/IntMath;->factorial(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 612
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationCollection;, "Lcom/google/common/collect/Collections2$PermutationCollection<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "permutations("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
