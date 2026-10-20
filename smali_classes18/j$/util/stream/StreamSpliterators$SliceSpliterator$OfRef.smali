.class final Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;
.super Lj$/util/stream/StreamSpliterators$SliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/StreamSpliterators$SliceSpliterator<",
        "TT;",
        "Lj$/util/Spliterator<",
        "TT;>;>;",
        "Lj$/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/Spliterator;JJ)V
    .locals 14
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;JJ)V"
        }
    .end annotation

    .line 694
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-interface {p1}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    move-wide/from16 v12, p4

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v2 .. v11}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Lj$/util/Spliterator;JJJJ)V

    .line 695
    return-void
.end method

.method private constructor <init>(Lj$/util/Spliterator;JJJJ)V
    .locals 0
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;JJJJ)V"
        }
    .end annotation

    .line 699
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-direct/range {p0 .. p9}, Lj$/util/stream/StreamSpliterators$SliceSpliterator;-><init>(Lj$/util/Spliterator;JJJJ)V

    .line 700
    return-void
.end method

.method static synthetic lambda$forEachRemaining$1(Ljava/lang/Object;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Object;

    .line 745
    return-void
.end method

.method static synthetic lambda$tryAdvance$0(Ljava/lang/Object;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Object;

    .line 717
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 730
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 733
    return-void

    .line 735
    :cond_0
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 736
    return-void

    .line 738
    :cond_1
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-object v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Lj$/util/Spliterator;

    invoke-interface {v2}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceFence:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 740
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 741
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    iput-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_2

    .line 744
    :cond_2
    :goto_0
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-lez v6, :cond_3

    .line 745
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Lj$/util/Spliterator;

    new-instance v1, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 746
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_0

    .line 749
    :cond_3
    :goto_1
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v6, v0, v2

    if-gez v6, :cond_4

    .line 750
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 749
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_1

    .line 753
    :cond_4
    :goto_2
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

.method protected makeSpliterator(Lj$/util/Spliterator;JJJJ)Lj$/util/Spliterator;
    .locals 11
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;JJJJ)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 706
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Lj$/util/Spliterator;JJJJ)V

    return-object v10
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 711
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    .line 714
    return v4

    .line 716
    :cond_0
    :goto_0
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    const-wide/16 v5, 0x1

    cmp-long v7, v0, v2

    if-lez v7, :cond_1

    .line 717
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Lj$/util/Spliterator;

    new-instance v1, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 718
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_0

    .line 721
    :cond_1
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v7, v0, v2

    if-ltz v7, :cond_2

    .line 722
    return v4

    .line 724
    :cond_2
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    .line 725
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method
