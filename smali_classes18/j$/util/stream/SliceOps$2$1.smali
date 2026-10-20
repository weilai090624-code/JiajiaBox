.class Lj$/util/stream/SliceOps$2$1;
.super Lj$/util/stream/Sink$ChainedInt;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/SliceOps$2;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field m:J

.field n:J

.field final synthetic this$0:Lj$/util/stream/SliceOps$2;


# direct methods
.method constructor <init>(Lj$/util/stream/SliceOps$2;Lj$/util/stream/Sink;)V
    .locals 5
    .param p1, "this$0"    # Lj$/util/stream/SliceOps$2;

    .line 294
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Lj$/util/stream/SliceOps$2$1;->this$0:Lj$/util/stream/SliceOps$2;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedInt;-><init>(Lj$/util/stream/Sink;)V

    .line 295
    iget-object v0, p0, Lj$/util/stream/SliceOps$2$1;->this$0:Lj$/util/stream/SliceOps$2;

    iget-wide v0, v0, Lj$/util/stream/SliceOps$2;->val$skip:J

    iput-wide v0, p0, Lj$/util/stream/SliceOps$2$1;->n:J

    .line 296
    iget-object v0, p0, Lj$/util/stream/SliceOps$2$1;->this$0:Lj$/util/stream/SliceOps$2;

    iget-wide v0, v0, Lj$/util/stream/SliceOps$2;->val$limit:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, Lj$/util/stream/SliceOps$2$1;->this$0:Lj$/util/stream/SliceOps$2;

    iget-wide v0, v0, Lj$/util/stream/SliceOps$2;->val$limit:J

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput-wide v0, p0, Lj$/util/stream/SliceOps$2$1;->m:J

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 7
    .param p1, "t"    # I

    .line 305
    iget-wide v0, p0, Lj$/util/stream/SliceOps$2$1;->n:J

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 306
    iget-wide v0, p0, Lj$/util/stream/SliceOps$2$1;->m:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 307
    iget-wide v0, p0, Lj$/util/stream/SliceOps$2$1;->m:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/SliceOps$2$1;->m:J

    .line 308
    iget-object v0, p0, Lj$/util/stream/SliceOps$2$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(I)V

    goto :goto_0

    .line 312
    :cond_0
    iget-wide v0, p0, Lj$/util/stream/SliceOps$2$1;->n:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/SliceOps$2$1;->n:J

    .line 314
    :cond_1
    :goto_0
    return-void
.end method

.method public begin(J)V
    .locals 8
    .param p1, "size"    # J

    .line 300
    iget-object v0, p0, Lj$/util/stream/SliceOps$2$1;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/SliceOps$2$1;->this$0:Lj$/util/stream/SliceOps$2;

    iget-wide v4, v1, Lj$/util/stream/SliceOps$2;->val$skip:J

    iget-wide v6, p0, Lj$/util/stream/SliceOps$2$1;->m:J

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Lj$/util/stream/SliceOps;->-$$Nest$smcalcSize(JJJ)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 301
    return-void
.end method

.method public cancellationRequested()Z
    .locals 5

    .line 318
    iget-wide v0, p0, Lj$/util/stream/SliceOps$2$1;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lj$/util/stream/SliceOps$2$1;->downstream:Lj$/util/stream/Sink;

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
