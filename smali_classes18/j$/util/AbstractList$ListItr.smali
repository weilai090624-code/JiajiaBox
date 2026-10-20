.class Lj$/util/AbstractList$ListItr;
.super Lj$/util/AbstractList$Itr;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/AbstractList<",
        "TE;>.Itr;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lj$/util/AbstractList;


# direct methods
.method constructor <init>(Lj$/util/AbstractList;I)V
    .locals 1
    .param p2, "index"    # I

    .line 404
    .local p0, "this":Lj$/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    iput-object p1, p0, Lj$/util/AbstractList$ListItr;->this$0:Lj$/util/AbstractList;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lj$/util/AbstractList$Itr;-><init>(Lj$/util/AbstractList;Lj$/util/AbstractList-IA;)V

    .line 405
    iput p2, p0, Lj$/util/AbstractList$ListItr;->cursor:I

    .line 406
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 447
    .local p0, "this":Lj$/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lj$/util/AbstractList$ListItr;->checkForComodification()V

    .line 450
    :try_start_0
    iget v0, p0, Lj$/util/AbstractList$ListItr;->cursor:I

    .line 451
    .local v0, "i":I
    iget-object v1, p0, Lj$/util/AbstractList$ListItr;->this$0:Lj$/util/AbstractList;

    invoke-virtual {v1, v0, p1}, Lj$/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 452
    const/4 v1, -0x1

    iput v1, p0, Lj$/util/AbstractList$ListItr;->lastRet:I

    .line 453
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lj$/util/AbstractList$ListItr;->cursor:I

    .line 454
    iget-object v1, p0, Lj$/util/AbstractList$ListItr;->this$0:Lj$/util/AbstractList;

    iget v1, v1, Lj$/util/AbstractList;->modCount:I

    iput v1, p0, Lj$/util/AbstractList$ListItr;->expectedModCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v0    # "i":I
    nop

    .line 458
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public hasPrevious()Z
    .locals 1

    .line 409
    .local p0, "this":Lj$/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    iget v0, p0, Lj$/util/AbstractList$ListItr;->cursor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextIndex()I
    .locals 1

    .line 426
    .local p0, "this":Lj$/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    iget v0, p0, Lj$/util/AbstractList$ListItr;->cursor:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 413
    .local p0, "this":Lj$/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    invoke-virtual {p0}, Lj$/util/AbstractList$ListItr;->checkForComodification()V

    .line 415
    :try_start_0
    iget v0, p0, Lj$/util/AbstractList$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    .line 416
    .local v0, "i":I
    iget-object v1, p0, Lj$/util/AbstractList$ListItr;->this$0:Lj$/util/AbstractList;

    invoke-virtual {v1, v0}, Lj$/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 417
    .local v1, "previous":Ljava/lang/Object;, "TE;"
    iput v0, p0, Lj$/util/AbstractList$ListItr;->cursor:I

    iput v0, p0, Lj$/util/AbstractList$ListItr;->lastRet:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    return-object v1

    .line 419
    .end local v0    # "i":I
    .end local v1    # "previous":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0}, Lj$/util/AbstractList$ListItr;->checkForComodification()V

    .line 421
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public previousIndex()I
    .locals 1

    .line 430
    .local p0, "this":Lj$/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    iget v0, p0, Lj$/util/AbstractList$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 434
    .local p0, "this":Lj$/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Lj$/util/AbstractList$ListItr;->lastRet:I

    if-ltz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lj$/util/AbstractList$ListItr;->checkForComodification()V

    .line 439
    :try_start_0
    iget-object v0, p0, Lj$/util/AbstractList$ListItr;->this$0:Lj$/util/AbstractList;

    iget v1, p0, Lj$/util/AbstractList$ListItr;->lastRet:I

    invoke-virtual {v0, v1, p1}, Lj$/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Lj$/util/AbstractList$ListItr;->this$0:Lj$/util/AbstractList;

    iget v0, v0, Lj$/util/AbstractList;->modCount:I

    iput v0, p0, Lj$/util/AbstractList$ListItr;->expectedModCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    nop

    .line 444
    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 435
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
