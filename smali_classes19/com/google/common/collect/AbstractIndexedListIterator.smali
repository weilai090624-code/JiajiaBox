.class abstract Lcom/google/common/collect/AbstractIndexedListIterator;
.super Lcom/google/common/collect/UnmodifiableListIterator;
.source "AbstractIndexedListIterator.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/UnmodifiableListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private position:I

.field private final size:I


# direct methods
.method protected constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 52
    .local p0, "this":Lcom/google/common/collect/AbstractIndexedListIterator;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    .line 53
    return-void
.end method

.method protected constructor <init>(II)V
    .registers 3
    .param p1, "size"    # I
    .param p2, "position"    # I

    .line 65
    .local p0, "this":Lcom/google/common/collect/AbstractIndexedListIterator;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableListIterator;-><init>()V

    .line 66
    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 67
    iput p1, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->size:I

    .line 68
    iput p2, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    .line 69
    return-void
.end method


# virtual methods
.method protected abstract get(I)Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .registers 3

    .line 73
    .local p0, "this":Lcom/google/common/collect/AbstractIndexedListIterator;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    iget v1, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->size:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final hasPrevious()Z
    .registers 2

    .line 92
    .local p0, "this":Lcom/google/common/collect/AbstractIndexedListIterator;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/google/common/collect/AbstractIndexedListIterator;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIndexedListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 82
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractIndexedListIterator;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 80
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .registers 2

    .line 87
    .local p0, "this":Lcom/google/common/collect/AbstractIndexedListIterator;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/google/common/collect/AbstractIndexedListIterator;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIndexedListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 101
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractIndexedListIterator;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 99
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .registers 2

    .line 106
    .local p0, "this":Lcom/google/common/collect/AbstractIndexedListIterator;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
