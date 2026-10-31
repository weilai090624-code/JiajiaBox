.class Lj$/util/stream/WhileOps$3$1;
.super Lj$/util/stream/Sink$ChainedLong;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/WhileOps$3;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
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
.field take:Z

.field final synthetic this$0:Lj$/util/stream/WhileOps$3;


# direct methods
.method constructor <init>(Lj$/util/stream/WhileOps$3;Lj$/util/stream/Sink;)V
    .registers 4
    .param p1, "this$0"    # Lj$/util/stream/WhileOps$3;

    .line 202
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Lj$/util/stream/WhileOps$3$1;->this$0:Lj$/util/stream/WhileOps$3;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedLong;-><init>(Lj$/util/stream/Sink;)V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$3$1;->take:Z

    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 4
    .param p1, "t"    # J

    .line 212
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$3$1;->take:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lj$/util/stream/WhileOps$3$1;->this$0:Lj$/util/stream/WhileOps$3;

    iget-object v0, v0, Lj$/util/stream/WhileOps$3;->val$predicate:Ljava/util/function/LongPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$3$1;->take:Z

    if-eqz v0, :cond_15

    .line 213
    iget-object v0, p0, Lj$/util/stream/WhileOps$3$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Sink;->accept(J)V

    .line 215
    :cond_15
    return-void
.end method

.method public begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 207
    iget-object v0, p0, Lj$/util/stream/WhileOps$3$1;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 208
    return-void
.end method

.method public cancellationRequested()Z
    .registers 2

    .line 219
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$3$1;->take:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lj$/util/stream/WhileOps$3$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
