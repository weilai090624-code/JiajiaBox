.class abstract Lj$/util/stream/StreamSpliterators$SliceSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SliceSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;,
        Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfLong;,
        Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfInt;,
        Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;,
        Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Lj$/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field fence:J

.field index:J

.field s:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field final sliceFence:J

.field final sliceOrigin:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 610
    const-class v0, Lj$/util/stream/StreamSpliterators;

    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator;JJJJ)V
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

    .line 623
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Lj$/util/Spliterator;, "TT_SPLITR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    nop

    .line 625
    iput-object p1, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->s:Lj$/util/Spliterator;

    .line 626
    iput-wide p2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    .line 627
    iput-wide p4, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    .line 628
    iput-wide p6, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 629
    iput-wide p8, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    .line 630
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 686
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->s:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .locals 6

    .line 681
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 682
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v4, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 681
    :goto_0
    return-wide v0
.end method

.method protected abstract makeSpliterator(Lj$/util/Spliterator;JJJJ)Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 635
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    move-object/from16 v10, p0

    iget-wide v0, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    .line 636
    return-object v4

    .line 638
    :cond_0
    iget-wide v0, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v2, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    .line 639
    return-object v4

    .line 648
    :cond_1
    :goto_0
    iget-object v0, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->s:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v11

    .line 649
    .local v11, "leftSplit":Lj$/util/Spliterator;, "TT_SPLITR;"
    if-nez v11, :cond_2

    .line 650
    return-object v4

    .line 652
    :cond_2
    iget-wide v0, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    invoke-interface {v11}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v2

    add-long v12, v0, v2

    .line 653
    .local v12, "leftSplitFenceUnbounded":J
    iget-wide v0, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 654
    .local v14, "leftSplitFence":J
    iget-wide v0, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    cmp-long v2, v0, v14

    if-ltz v2, :cond_3

    .line 658
    iput-wide v14, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_1

    .line 660
    :cond_3
    iget-wide v0, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    cmp-long v2, v14, v0

    if-ltz v2, :cond_4

    .line 664
    iput-object v11, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->s:Lj$/util/Spliterator;

    .line 665
    iput-wide v14, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    .line 677
    .end local v11    # "leftSplit":Lj$/util/Spliterator;, "TT_SPLITR;"
    .end local v12    # "leftSplitFenceUnbounded":J
    .end local v14    # "leftSplitFence":J
    :goto_1
    goto :goto_0

    .line 667
    .restart local v11    # "leftSplit":Lj$/util/Spliterator;, "TT_SPLITR;"
    .restart local v12    # "leftSplitFenceUnbounded":J
    .restart local v14    # "leftSplitFence":J
    :cond_4
    iget-wide v0, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v2, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_5

    iget-wide v0, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    cmp-long v2, v12, v0

    if-gtz v2, :cond_5

    .line 670
    iput-wide v14, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 671
    return-object v11

    .line 675
    :cond_5
    iget-wide v2, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v4, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    iget-wide v6, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iput-wide v14, v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v8, v14

    invoke-virtual/range {v0 .. v9}, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->makeSpliterator(Lj$/util/Spliterator;JJJJ)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
