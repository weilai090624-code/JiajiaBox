.class Lj$/util/stream/WhileOps$2$1;
.super Lj$/util/stream/Sink$ChainedInt;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/WhileOps$2;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
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
.field take:Z

.field final synthetic this$0:Lj$/util/stream/WhileOps$2;


# direct methods
.method constructor <init>(Lj$/util/stream/WhileOps$2;Lj$/util/stream/Sink;)V
    .locals 1
    .param p1, "this$0"    # Lj$/util/stream/WhileOps$2;

    .line 145
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Lj$/util/stream/WhileOps$2$1;->this$0:Lj$/util/stream/WhileOps$2;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedInt;-><init>(Lj$/util/stream/Sink;)V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$2$1;->take:Z

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "t"    # I

    .line 155
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$2$1;->take:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/WhileOps$2$1;->this$0:Lj$/util/stream/WhileOps$2;

    iget-object v0, v0, Lj$/util/stream/WhileOps$2;->val$predicate:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$2$1;->take:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lj$/util/stream/WhileOps$2$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 150
    iget-object v0, p0, Lj$/util/stream/WhileOps$2$1;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 151
    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$2$1;->take:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/WhileOps$2$1;->downstream:Lj$/util/stream/Sink;

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
