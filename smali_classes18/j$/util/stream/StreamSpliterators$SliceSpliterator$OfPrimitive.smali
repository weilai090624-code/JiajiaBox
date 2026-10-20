.class abstract Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.super Lj$/util/stream/StreamSpliterators$SliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Lj$/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/StreamSpliterators$SliceSpliterator<",
        "TT;TT_SP",
        "LITR;",
        ">;",
        "Lj$/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfPrimitive;JJ)V
    .locals 14
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    .line 763
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    .local p1, "s":Lj$/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    invoke-interface {p1}, Lj$/util/Spliterator$OfPrimitive;->estimateSize()J

    move-result-wide v0

    move-wide/from16 v12, p4

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v2 .. v11}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Lj$/util/Spliterator$OfPrimitive;JJJJ)V

    .line 764
    return-void
.end method

.method private constructor <init>(Lj$/util/Spliterator$OfPrimitive;JJJJ)V
    .locals 0
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)V"
        }
    .end annotation

    .line 768
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    .local p1, "s":Lj$/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    invoke-direct/range {p0 .. p9}, Lj$/util/stream/StreamSpliterators$SliceSpliterator;-><init>(Lj$/util/Spliterator;JJJJ)V

    .line 769
    return-void
.end method

.method synthetic constructor <init>(Lj$/util/Spliterator$OfPrimitive;JJJJLj$/util/stream/StreamSpliterators-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Lj$/util/Spliterator$OfPrimitive;JJJJ)V

    return-void
.end method


# virtual methods
.method protected abstract emptyConsumer()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_CONS;"
        }
    .end annotation
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 792
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 795
    return-void

    .line 797
    :cond_0
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 798
    return-void

    .line 800
    :cond_1
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-object v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Lj$/util/Spliterator;

    check-cast v2, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v2}, Lj$/util/Spliterator$OfPrimitive;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceFence:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 802
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 803
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    iput-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    goto :goto_2

    .line 806
    :cond_2
    :goto_0
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-lez v6, :cond_3

    .line 807
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->emptyConsumer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    .line 808
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    goto :goto_0

    .line 811
    :cond_3
    :goto_1
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v6, v0, v2

    if-gez v6, :cond_4

    .line 812
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    .line 811
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    goto :goto_1

    .line 815
    :cond_4
    :goto_2
    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$forEachRemaining(Lj$/util/Spliterator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getComparator(Lj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
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

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 773
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    .line 776
    return v4

    .line 778
    :cond_0
    :goto_0
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    const-wide/16 v5, 0x1

    cmp-long v7, v0, v2

    if-lez v7, :cond_1

    .line 779
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->emptyConsumer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    .line 780
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    goto :goto_0

    .line 783
    :cond_1
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v7, v0, v2

    if-ltz v7, :cond_2

    .line 784
    return v4

    .line 786
    :cond_2
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    .line 787
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 756
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    invoke-super {p0}, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
