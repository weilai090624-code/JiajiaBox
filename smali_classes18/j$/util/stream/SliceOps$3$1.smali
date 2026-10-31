.class Lj$/util/stream/SliceOps$3$1;
.super Lj$/util/stream/Sink$ChainedLong;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/SliceOps$3;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field m:J

.field n:J

.field final synthetic this$0:Lj$/util/stream/SliceOps$3;


# direct methods
.method constructor <init>(Lj$/util/stream/SliceOps$3;Lj$/util/stream/Sink;)V
    .registers 8
    .param p1, "this$0"    # Lj$/util/stream/SliceOps$3;

    .line 403
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Lj$/util/stream/SliceOps$3$1;->this$0:Lj$/util/stream/SliceOps$3;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedLong;-><init>(Lj$/util/stream/Sink;)V

    .line 404
    iget-object v0, p0, Lj$/util/stream/SliceOps$3$1;->this$0:Lj$/util/stream/SliceOps$3;

    iget-wide v0, v0, Lj$/util/stream/SliceOps$3;->val$skip:J

    iput-wide v0, p0, Lj$/util/stream/SliceOps$3$1;->n:J

    .line 405
    iget-object v0, p0, Lj$/util/stream/SliceOps$3$1;->this$0:Lj$/util/stream/SliceOps$3;

    iget-wide v0, v0, Lj$/util/stream/SliceOps$3;->val$limit:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1a

    iget-object v0, p0, Lj$/util/stream/SliceOps$3$1;->this$0:Lj$/util/stream/SliceOps$3;

    iget-wide v0, v0, Lj$/util/stream/SliceOps$3;->val$limit:J

    goto :goto_1f

    :cond_1a
    const-wide v0, 0x7fffffffffffffffL

    :goto_1f
    iput-wide v0, p0, Lj$/util/stream/SliceOps$3$1;->m:J

    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 10
    .param p1, "t"    # J

    .line 414
    iget-wide v0, p0, Lj$/util/stream/SliceOps$3$1;->n:J

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_1b

    .line 415
    iget-wide v0, p0, Lj$/util/stream/SliceOps$3$1;->m:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_20

    .line 416
    iget-wide v0, p0, Lj$/util/stream/SliceOps$3$1;->m:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/SliceOps$3$1;->m:J

    .line 417
    iget-object v0, p0, Lj$/util/stream/SliceOps$3$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Sink;->accept(J)V

    goto :goto_20

    .line 421
    :cond_1b
    iget-wide v0, p0, Lj$/util/stream/SliceOps$3$1;->n:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/SliceOps$3$1;->n:J

    .line 423
    :cond_20
    :goto_20
    return-void
.end method

.method public begin(J)V
    .registers 11
    .param p1, "size"    # J

    .line 409
    iget-object v0, p0, Lj$/util/stream/SliceOps$3$1;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/SliceOps$3$1;->this$0:Lj$/util/stream/SliceOps$3;

    iget-wide v4, v1, Lj$/util/stream/SliceOps$3;->val$skip:J

    iget-wide v6, p0, Lj$/util/stream/SliceOps$3$1;->m:J

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Lj$/util/stream/SliceOps;->-$$Nest$smcalcSize(JJJ)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 410
    return-void
.end method

.method public cancellationRequested()Z
    .registers 6

    .line 427
    iget-wide v0, p0, Lj$/util/stream/SliceOps$3$1;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    iget-object v0, p0, Lj$/util/stream/SliceOps$3$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method
