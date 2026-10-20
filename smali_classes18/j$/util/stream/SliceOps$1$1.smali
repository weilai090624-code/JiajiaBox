.class Lj$/util/stream/SliceOps$1$1;
.super Lj$/util/stream/Sink$ChainedReference;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/SliceOps$1;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedReference<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field m:J

.field n:J

.field final synthetic this$0:Lj$/util/stream/SliceOps$1;


# direct methods
.method constructor <init>(Lj$/util/stream/SliceOps$1;Lj$/util/stream/Sink;)V
    .locals 5
    .param p1, "this$0"    # Lj$/util/stream/SliceOps$1;

    .line 185
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    iput-object p1, p0, Lj$/util/stream/SliceOps$1$1;->this$0:Lj$/util/stream/SliceOps$1;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedReference;-><init>(Lj$/util/stream/Sink;)V

    .line 186
    iget-object v0, p0, Lj$/util/stream/SliceOps$1$1;->this$0:Lj$/util/stream/SliceOps$1;

    iget-wide v0, v0, Lj$/util/stream/SliceOps$1;->val$skip:J

    iput-wide v0, p0, Lj$/util/stream/SliceOps$1$1;->n:J

    .line 187
    iget-object v0, p0, Lj$/util/stream/SliceOps$1$1;->this$0:Lj$/util/stream/SliceOps$1;

    iget-wide v0, v0, Lj$/util/stream/SliceOps$1;->val$limit:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, Lj$/util/stream/SliceOps$1$1;->this$0:Lj$/util/stream/SliceOps$1;

    iget-wide v0, v0, Lj$/util/stream/SliceOps$1;->val$limit:J

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput-wide v0, p0, Lj$/util/stream/SliceOps$1$1;->m:J

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 196
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-wide v0, p0, Lj$/util/stream/SliceOps$1$1;->n:J

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 197
    iget-wide v0, p0, Lj$/util/stream/SliceOps$1$1;->m:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 198
    iget-wide v0, p0, Lj$/util/stream/SliceOps$1$1;->m:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/SliceOps$1$1;->m:J

    .line 199
    iget-object v0, p0, Lj$/util/stream/SliceOps$1$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-wide v0, p0, Lj$/util/stream/SliceOps$1$1;->n:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/SliceOps$1$1;->n:J

    .line 205
    :cond_1
    :goto_0
    return-void
.end method

.method public begin(J)V
    .locals 8
    .param p1, "size"    # J

    .line 191
    iget-object v0, p0, Lj$/util/stream/SliceOps$1$1;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/SliceOps$1$1;->this$0:Lj$/util/stream/SliceOps$1;

    iget-wide v4, v1, Lj$/util/stream/SliceOps$1;->val$skip:J

    iget-wide v6, p0, Lj$/util/stream/SliceOps$1$1;->m:J

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Lj$/util/stream/SliceOps;->-$$Nest$smcalcSize(JJJ)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 192
    return-void
.end method

.method public cancellationRequested()Z
    .locals 5

    .line 209
    iget-wide v0, p0, Lj$/util/stream/SliceOps$1$1;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lj$/util/stream/SliceOps$1$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
