.class abstract Lj$/util/stream/Streams$ConcatSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ConcatSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/Streams$ConcatSpliterator$OfDouble;,
        Lj$/util/stream/Streams$ConcatSpliterator$OfLong;,
        Lj$/util/stream/Streams$ConcatSpliterator$OfInt;,
        Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;,
        Lj$/util/stream/Streams$ConcatSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Lj$/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final aSpliterator:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field protected final bSpliterator:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field beforeSplit:Z

.field final unsized:Z


# direct methods
.method public constructor <init>(Lj$/util/Spliterator;Lj$/util/Spliterator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "TT_SP",
            "LITR;",
            ")V"
        }
    .end annotation

    .line 697
    .local p0, "this":Lj$/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    .local p1, "aSpliterator":Lj$/util/Spliterator;, "TT_SPLITR;"
    .local p2, "bSpliterator":Lj$/util/Spliterator;, "TT_SPLITR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-object p1, p0, Lj$/util/stream/Streams$ConcatSpliterator;->aSpliterator:Lj$/util/Spliterator;

    .line 699
    iput-object p2, p0, Lj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Lj$/util/Spliterator;

    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    .line 703
    invoke-interface {p1}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    invoke-interface {p2}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->unsized:Z

    .line 704
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 2

    .line 751
    .local p0, "this":Lj$/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->aSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    iget-object v1, p0, Lj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Lj$/util/Spliterator;

    invoke-interface {v1}, Lj$/util/Spliterator;->characteristics()I

    move-result v1

    and-int/2addr v0, v1

    .line 755
    iget-boolean v1, p0, Lj$/util/stream/Streams$ConcatSpliterator;->unsized:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4040

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/lit8 v1, v1, 0x5

    not-int v1, v1

    and-int/2addr v0, v1

    .line 753
    return v0

    .line 758
    :cond_1
    iget-object v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .locals 5

    .line 738
    .local p0, "this":Lj$/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->aSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    iget-object v2, p0, Lj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Lj$/util/Spliterator;

    invoke-interface {v2}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 742
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    return-wide v2

    .line 745
    .end local v0    # "size":J
    :cond_1
    iget-object v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 731
    .local p0, "this":Lj$/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-boolean v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->aSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 733
    :cond_0
    iget-object v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 734
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 764
    .local p0, "this":Lj$/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    .line 765
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 717
    .local p0, "this":Lj$/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-boolean v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->aSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    .line 719
    .local v0, "hasNext":Z
    if-nez v0, :cond_1

    .line 720
    const/4 v1, 0x0

    iput-boolean v1, p0, Lj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    .line 721
    iget-object v1, p0, Lj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Lj$/util/Spliterator;

    invoke-interface {v1, p1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    goto :goto_0

    .line 725
    .end local v0    # "hasNext":Z
    :cond_0
    iget-object v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    .line 726
    .restart local v0    # "hasNext":Z
    :cond_1
    :goto_0
    return v0
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 709
    .local p0, "this":Lj$/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->aSpliterator:Lj$/util/Spliterator;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    .line 710
    .local v0, "ret":Lj$/util/Spliterator;, "TT_SPLITR;"
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    .line 711
    return-object v0
.end method
