.class Lj$/util/stream/WhileOps$2Op$1OpSink;
.super Lj$/util/stream/Sink$ChainedInt;
.source "WhileOps.java"

# interfaces
.implements Lj$/util/stream/WhileOps$DropWhileSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/WhileOps$2Op;->opWrapSink(Lj$/util/stream/Sink;Z)Lj$/util/stream/WhileOps$DropWhileSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Integer;",
        ">;",
        "Lj$/util/stream/WhileOps$DropWhileSink<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field dropCount:J

.field take:Z

.field final synthetic this$0:Lj$/util/stream/WhileOps$2Op;

.field final synthetic val$retainAndCountDroppedElements:Z

.field final synthetic val$sink:Lj$/util/stream/Sink;


# direct methods
.method constructor <init>(Lj$/util/stream/WhileOps$2Op;Lj$/util/stream/Sink;Z)V
    .registers 4
    .param p1, "this$0"    # Lj$/util/stream/WhileOps$2Op;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 445
    iput-object p1, p0, Lj$/util/stream/WhileOps$2Op$1OpSink;->this$0:Lj$/util/stream/WhileOps$2Op;

    iput-object p2, p0, Lj$/util/stream/WhileOps$2Op$1OpSink;->val$sink:Lj$/util/stream/Sink;

    iput-boolean p3, p0, Lj$/util/stream/WhileOps$2Op$1OpSink;->val$retainAndCountDroppedElements:Z

    .line 446
    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedInt;-><init>(Lj$/util/stream/Sink;)V

    .line 447
    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 7
    .param p1, "t"    # I

    .line 451
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$2Op$1OpSink;->take:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lj$/util/stream/WhileOps$2Op$1OpSink;->this$0:Lj$/util/stream/WhileOps$2Op;

    iget-object v0, v0, Lj$/util/stream/WhileOps$2Op;->val$predicate:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lj$/util/stream/WhileOps$2Op$1OpSink;->take:Z

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 455
    .local v0, "takeElement":Z
    :goto_16
    iget-boolean v1, p0, Lj$/util/stream/WhileOps$2Op$1OpSink;->val$retainAndCountDroppedElements:Z

    if-eqz v1, :cond_23

    if-nez v0, :cond_23

    .line 456
    iget-wide v1, p0, Lj$/util/stream/WhileOps$2Op$1OpSink;->dropCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lj$/util/stream/WhileOps$2Op$1OpSink;->dropCount:J

    .line 460
    :cond_23
    iget-boolean v1, p0, Lj$/util/stream/WhileOps$2Op$1OpSink;->val$retainAndCountDroppedElements:Z

    if-nez v1, :cond_29

    if-eqz v0, :cond_2e

    .line 461
    :cond_29
    iget-object v1, p0, Lj$/util/stream/WhileOps$2Op$1OpSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v1, p1}, Lj$/util/stream/Sink;->accept(I)V

    .line 462
    :cond_2e
    return-void
.end method

.method public getDropCount()J
    .registers 3

    .line 466
    iget-wide v0, p0, Lj$/util/stream/WhileOps$2Op$1OpSink;->dropCount:J

    return-wide v0
.end method
