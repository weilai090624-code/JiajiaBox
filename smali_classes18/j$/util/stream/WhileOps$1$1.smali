.class Lj$/util/stream/WhileOps$1$1;
.super Lj$/util/stream/Sink$ChainedReference;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/WhileOps$1;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
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
.field take:Z

.field final synthetic this$0:Lj$/util/stream/WhileOps$1;


# direct methods
.method constructor <init>(Lj$/util/stream/WhileOps$1;Lj$/util/stream/Sink;)V
    .registers 4
    .param p1, "this$0"    # Lj$/util/stream/WhileOps$1;

    .line 88
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    iput-object p1, p0, Lj$/util/stream/WhileOps$1$1;->this$0:Lj$/util/stream/WhileOps$1;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedReference;-><init>(Lj$/util/stream/Sink;)V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$1$1;->take:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 98
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$1$1;->take:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lj$/util/stream/WhileOps$1$1;->this$0:Lj$/util/stream/WhileOps$1;

    iget-object v0, v0, Lj$/util/stream/WhileOps$1;->val$predicate:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$1$1;->take:Z

    if-eqz v0, :cond_15

    .line 99
    iget-object v0, p0, Lj$/util/stream/WhileOps$1$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 101
    :cond_15
    return-void
.end method

.method public begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 93
    iget-object v0, p0, Lj$/util/stream/WhileOps$1$1;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 94
    return-void
.end method

.method public cancellationRequested()Z
    .registers 2

    .line 105
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$1$1;->take:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lj$/util/stream/WhileOps$1$1;->downstream:Lj$/util/stream/Sink;

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
