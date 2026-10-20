.class final Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;
.super Lj$/util/stream/Nodes$SizedCollectorTask;
.source "Nodes.java"

# interfaces
.implements Lj$/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes$SizedCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/Nodes$SizedCollectorTask<",
        "TP_IN;TP_OUT;",
        "Lj$/util/stream/Sink<",
        "TP_OUT;>;",
        "Lj$/util/stream/Nodes$SizedCollectorTask$OfRef<",
        "TP_IN;TP_OUT;>;>;",
        "Lj$/util/stream/Sink<",
        "TP_OUT;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TP_OUT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/PipelineHelper;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;",
            "Lj$/util/stream/PipelineHelper<",
            "TP_OUT;>;[TP_OUT;)V"
        }
    .end annotation

    .line 1910
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p2, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TP_OUT;"
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0}, Lj$/util/stream/Nodes$SizedCollectorTask;-><init>(Lj$/util/Spliterator;Lj$/util/stream/PipelineHelper;I)V

    .line 1911
    iput-object p3, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    .line 1912
    return-void
.end method

.method constructor <init>(Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;Lj$/util/Spliterator;JJ)V
    .locals 9
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Nodes$SizedCollectorTask$OfRef<",
            "TP_IN;TP_OUT;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;JJ)V"
        }
    .end annotation

    .line 1916
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "parent":Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    iget-object v0, p1, Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    array-length v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lj$/util/stream/Nodes$SizedCollectorTask;-><init>(Lj$/util/stream/Nodes$SizedCollectorTask;Lj$/util/Spliterator;JJI)V

    .line 1917
    iget-object v0, p1, Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    iput-object v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    .line 1918
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .line 1928
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "value":Ljava/lang/Object;, "TP_OUT;"
    iget v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;->index:I

    iget v1, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;->fence:I

    if-ge v0, v1, :cond_0

    .line 1931
    iget-object v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;->index:I

    aput-object p1, v0, v1

    .line 1932
    return-void

    .line 1929
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method makeChild(Lj$/util/Spliterator;JJ)Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;
    .locals 8
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;JJ)",
            "Lj$/util/stream/Nodes$SizedCollectorTask$OfRef<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    .line 1923
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v7, Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;-><init>(Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;Lj$/util/Spliterator;JJ)V

    return-object v7
.end method

.method bridge synthetic makeChild(Lj$/util/Spliterator;JJ)Lj$/util/stream/Nodes$SizedCollectorTask;
    .locals 0

    .line 1903
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    invoke-virtual/range {p0 .. p5}, Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;->makeChild(Lj$/util/Spliterator;JJ)Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;

    move-result-object p1

    return-object p1
.end method
