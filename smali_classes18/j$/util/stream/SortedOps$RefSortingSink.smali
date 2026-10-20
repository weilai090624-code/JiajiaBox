.class final Lj$/util/stream/SortedOps$RefSortingSink;
.super Lj$/util/stream/SortedOps$AbstractRefSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RefSortingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/SortedOps$AbstractRefSortingSink<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/stream/Sink;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Sink<",
            "-TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 388
    .local p0, "this":Lj$/util/stream/SortedOps$RefSortingSink;, "Ljava/util/stream/SortedOps$RefSortingSink<TT;>;"
    .local p1, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/SortedOps$AbstractRefSortingSink;-><init>(Lj$/util/stream/Sink;Ljava/util/Comparator;)V

    .line 389
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 417
    .local p0, "this":Lj$/util/stream/SortedOps$RefSortingSink;, "Ljava/util/stream/SortedOps$RefSortingSink<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lj$/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 393
    .local p0, "this":Lj$/util/stream/SortedOps$RefSortingSink;, "Ljava/util/stream/SortedOps$RefSortingSink<TT;>;"
    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 395
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    new-instance v0, Ljava/util/ArrayList;

    if-ltz v2, :cond_0

    long-to-int v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lj$/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    .line 396
    return-void

    .line 394
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 3

    .line 400
    .local p0, "this":Lj$/util/stream/SortedOps$RefSortingSink;, "Ljava/util/stream/SortedOps$RefSortingSink<TT;>;"
    iget-object v0, p0, Lj$/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lj$/util/stream/SortedOps$RefSortingSink;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 401
    iget-object v0, p0, Lj$/util/stream/SortedOps$RefSortingSink;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 402
    iget-boolean v0, p0, Lj$/util/stream/SortedOps$RefSortingSink;->cancellationRequestedCalled:Z

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lj$/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lj$/util/stream/SortedOps$RefSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lj$/util/stream/SortedOps$RefSortingSink$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lj$/util/stream/SortedOps$RefSortingSink$$ExternalSyntheticLambda0;-><init>(Lj$/util/stream/Sink;)V

    invoke-static {v0, v2}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 406
    :cond_0
    iget-object v0, p0, Lj$/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 407
    .local v1, "t":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lj$/util/stream/SortedOps$RefSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v2}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 408
    :cond_1
    iget-object v2, p0, Lj$/util/stream/SortedOps$RefSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v2, v1}, Lj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 409
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 411
    :cond_2
    :goto_1
    iget-object v0, p0, Lj$/util/stream/SortedOps$RefSortingSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->end()V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    .line 413
    return-void
.end method
