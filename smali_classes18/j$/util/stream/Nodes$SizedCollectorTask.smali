.class abstract Lj$/util/stream/Nodes$SizedCollectorTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "Nodes.java"

# interfaces
.implements Lj$/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SizedCollectorTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;,
        Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;,
        Lj$/util/stream/Nodes$SizedCollectorTask$OfInt;,
        Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "T_SINK::",
        "Lj$/util/stream/Sink<",
        "TP_OUT;>;K:",
        "Lj$/util/stream/Nodes$SizedCollectorTask<",
        "TP_IN;TP_OUT;TT_SINK;TK;>;>",
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;",
        "Lj$/util/stream/Sink<",
        "TP_OUT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected fence:I

.field protected final helper:Lj$/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/PipelineHelper<",
            "TP_OUT;>;"
        }
    .end annotation
.end field

.field protected index:I

.field protected length:J

.field protected offset:J

.field protected final spliterator:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/Spliterator<",
            "TP_IN;>;"
        }
    .end annotation
.end field

.field protected final targetSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1829
    const-class v0, Lj$/util/stream/Nodes;

    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/PipelineHelper;I)V
    .locals 2
    .param p3, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;",
            "Lj$/util/stream/PipelineHelper<",
            "TP_OUT;>;I)V"
        }
    .end annotation

    .line 1844
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p2, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CountedCompleter;-><init>()V

    .line 1845
    nop

    .line 1846
    iput-object p1, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->spliterator:Lj$/util/Spliterator;

    .line 1847
    iput-object p2, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->helper:Lj$/util/stream/PipelineHelper;

    .line 1848
    invoke-interface {p1}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v0

    iput-wide v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    .line 1849
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->offset:J

    .line 1850
    int-to-long v0, p3

    iput-wide v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->length:J

    .line 1851
    return-void
.end method

.method constructor <init>(Lj$/util/stream/Nodes$SizedCollectorTask;Lj$/util/Spliterator;JJI)V
    .locals 7
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .param p7, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;JJI)V"
        }
    .end annotation

    .line 1855
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    .local p1, "parent":Lj$/util/stream/Nodes$SizedCollectorTask;, "TK;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 1856
    nop

    .line 1857
    iput-object p2, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->spliterator:Lj$/util/Spliterator;

    .line 1858
    iget-object v0, p1, Lj$/util/stream/Nodes$SizedCollectorTask;->helper:Lj$/util/stream/PipelineHelper;

    iput-object v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->helper:Lj$/util/stream/PipelineHelper;

    .line 1859
    iget-wide v0, p1, Lj$/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    iput-wide v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    .line 1860
    iput-wide p3, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->offset:J

    .line 1861
    iput-wide p5, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->length:J

    .line 1863
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    cmp-long v2, p5, v0

    if-ltz v2, :cond_0

    add-long v0, p3, p5

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    int-to-long v2, p7

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 1868
    return-void

    .line 1864
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1866
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    .line 1865
    const-string v1, "offset and length interval [%d, %d + %d) is not within array size interval [0, %d)"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public synthetic accept(D)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;D)V

    return-void
.end method

.method public synthetic accept(I)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;I)V

    return-void
.end method

.method public synthetic accept(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;J)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 1894
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    iget-wide v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->length:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 1899
    iget-wide v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->offset:J

    long-to-int v1, v0

    iput v1, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->index:I

    .line 1900
    iget v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->index:I

    iget-wide v1, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->length:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    iput v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask;->fence:I

    .line 1901
    return-void

    .line 1895
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size passed to Sink.begin exceeds array length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic cancellationRequested()Z
    .locals 1

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$cancellationRequested(Lj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public compute()V
    .locals 17

    .line 1872
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    move-object/from16 v0, p0

    .line 1873
    .local v0, "task":Lj$/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    move-object/from16 v1, p0

    iget-object v8, v1, Lj$/util/stream/Nodes$SizedCollectorTask;->spliterator:Lj$/util/Spliterator;

    .line 1874
    .local v8, "rightSplit":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :goto_0
    invoke-interface {v8}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v2

    iget-wide v4, v0, Lj$/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 1875
    invoke-interface {v8}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v2

    move-object v10, v2

    .local v10, "leftSplit":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    if-eqz v2, :cond_0

    .line 1876
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lj$/util/stream/Nodes$SizedCollectorTask;->setPendingCount(I)V

    .line 1877
    invoke-interface {v10}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v15

    .line 1878
    .local v15, "leftSplitSize":J
    iget-wide v11, v0, Lj$/util/stream/Nodes$SizedCollectorTask;->offset:J

    move-object v9, v0

    move-wide v13, v15

    invoke-virtual/range {v9 .. v14}, Lj$/util/stream/Nodes$SizedCollectorTask;->makeChild(Lj$/util/Spliterator;JJ)Lj$/util/stream/Nodes$SizedCollectorTask;

    move-result-object v2

    invoke-virtual {v2}, Lj$/util/stream/Nodes$SizedCollectorTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 1879
    iget-wide v2, v0, Lj$/util/stream/Nodes$SizedCollectorTask;->offset:J

    add-long v4, v2, v15

    iget-wide v2, v0, Lj$/util/stream/Nodes$SizedCollectorTask;->length:J

    sub-long v6, v2, v15

    move-object v2, v0

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Lj$/util/stream/Nodes$SizedCollectorTask;->makeChild(Lj$/util/Spliterator;JJ)Lj$/util/stream/Nodes$SizedCollectorTask;

    move-result-object v0

    .line 1881
    .end local v15    # "leftSplitSize":J
    goto :goto_0

    .line 1883
    .end local v10    # "leftSplit":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_0
    nop

    .line 1885
    move-object v2, v0

    .line 1886
    .local v2, "sink":Lj$/util/stream/Sink;, "TT_SINK;"
    iget-object v3, v0, Lj$/util/stream/Nodes$SizedCollectorTask;->helper:Lj$/util/stream/PipelineHelper;

    invoke-virtual {v3, v2, v8}, Lj$/util/stream/PipelineHelper;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    .line 1887
    invoke-virtual {v0}, Lj$/util/stream/Nodes$SizedCollectorTask;->propagateCompletion()V

    .line 1888
    return-void
.end method

.method public synthetic end()V
    .locals 0

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$end(Lj$/util/stream/Sink;)V

    return-void
.end method

.method abstract makeChild(Lj$/util/Spliterator;JJ)Lj$/util/stream/Nodes$SizedCollectorTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;JJ)TK;"
        }
    .end annotation
.end method
