.class Lj$/util/AbstractList$Itr;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field cursor:I

.field expectedModCount:I

.field lastRet:I

.field final synthetic this$0:Lj$/util/AbstractList;


# direct methods
.method private constructor <init>(Lj$/util/AbstractList;)V
    .locals 0

    .line 343
    .local p0, "this":Lj$/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    iput-object p1, p0, Lj$/util/AbstractList$Itr;->this$0:Lj$/util/AbstractList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    const/4 p1, 0x0

    iput p1, p0, Lj$/util/AbstractList$Itr;->cursor:I

    .line 354
    const/4 p1, -0x1

    iput p1, p0, Lj$/util/AbstractList$Itr;->lastRet:I

    .line 361
    iget-object p1, p0, Lj$/util/AbstractList$Itr;->this$0:Lj$/util/AbstractList;

    iget p1, p1, Lj$/util/AbstractList;->modCount:I

    iput p1, p0, Lj$/util/AbstractList$Itr;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Lj$/util/AbstractList;Lj$/util/AbstractList-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/util/AbstractList$Itr;-><init>(Lj$/util/AbstractList;)V

    return-void
.end method


# virtual methods
.method final checkForComodification()V
    .locals 2

    .line 398
    .local p0, "this":Lj$/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    iget-object v0, p0, Lj$/util/AbstractList$Itr;->this$0:Lj$/util/AbstractList;

    iget v0, v0, Lj$/util/AbstractList;->modCount:I

    iget v1, p0, Lj$/util/AbstractList$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 400
    return-void

    .line 399
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 364
    .local p0, "this":Lj$/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    iget v0, p0, Lj$/util/AbstractList$Itr;->cursor:I

    iget-object v1, p0, Lj$/util/AbstractList$Itr;->this$0:Lj$/util/AbstractList;

    invoke-virtual {v1}, Lj$/util/AbstractList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 368
    .local p0, "this":Lj$/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    invoke-virtual {p0}, Lj$/util/AbstractList$Itr;->checkForComodification()V

    .line 370
    :try_start_0
    iget v0, p0, Lj$/util/AbstractList$Itr;->cursor:I

    .line 371
    .local v0, "i":I
    iget-object v1, p0, Lj$/util/AbstractList$Itr;->this$0:Lj$/util/AbstractList;

    invoke-virtual {v1, v0}, Lj$/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 372
    .local v1, "next":Ljava/lang/Object;, "TE;"
    iput v0, p0, Lj$/util/AbstractList$Itr;->lastRet:I

    .line 373
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lj$/util/AbstractList$Itr;->cursor:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    return-object v1

    .line 375
    .end local v0    # "i":I
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0}, Lj$/util/AbstractList$Itr;->checkForComodification()V

    .line 377
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 2

    .line 382
    .local p0, "this":Lj$/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    iget v0, p0, Lj$/util/AbstractList$Itr;->lastRet:I

    if-ltz v0, :cond_1

    .line 384
    invoke-virtual {p0}, Lj$/util/AbstractList$Itr;->checkForComodification()V

    .line 387
    :try_start_0
    iget-object v0, p0, Lj$/util/AbstractList$Itr;->this$0:Lj$/util/AbstractList;

    iget v1, p0, Lj$/util/AbstractList$Itr;->lastRet:I

    invoke-virtual {v0, v1}, Lj$/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 388
    iget v0, p0, Lj$/util/AbstractList$Itr;->lastRet:I

    iget v1, p0, Lj$/util/AbstractList$Itr;->cursor:I

    if-ge v0, v1, :cond_0

    .line 389
    iget v0, p0, Lj$/util/AbstractList$Itr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lj$/util/AbstractList$Itr;->cursor:I

    .line 390
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lj$/util/AbstractList$Itr;->lastRet:I

    .line 391
    iget-object v0, p0, Lj$/util/AbstractList$Itr;->this$0:Lj$/util/AbstractList;

    iget v0, v0, Lj$/util/AbstractList;->modCount:I

    iput v0, p0, Lj$/util/AbstractList$Itr;->expectedModCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    nop

    .line 395
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 383
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
