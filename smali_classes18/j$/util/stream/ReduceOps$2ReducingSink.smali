.class Lj$/util/stream/ReduceOps$2ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Lj$/util/stream/ReduceOps$AccumulatingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/ReduceOps;->makeRef(Ljava/util/function/BinaryOperator;)Lj$/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/stream/ReduceOps$AccumulatingSink<",
        "TT;",
        "Lj$/util/Optional<",
        "TT;>;",
        "Lj$/util/stream/ReduceOps$2ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field private empty:Z

.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$operator:Ljava/util/function/BinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/function/BinaryOperator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->val$operator:Ljava/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .registers 3

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;D)V

    return-void
.end method

.method public synthetic accept(I)V
    .registers 2

    invoke-static {p0, p1}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;I)V

    return-void
.end method

.method public synthetic accept(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$-CC;->$default$accept(Lj$/util/stream/Sink;J)V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 119
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->empty:Z

    if-eqz v0, :cond_a

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->empty:Z

    .line 121
    iput-object p1, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    goto :goto_14

    .line 123
    :cond_a
    iget-object v0, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->val$operator:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    .line 125
    :goto_14
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public begin(J)V
    .registers 4
    .param p1, "size"    # J

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->empty:Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$cancellationRequested(Lj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public combine(Lj$/util/stream/ReduceOps$2ReducingSink;)V
    .registers 3
    .param p1, "other"    # Lj$/util/stream/ReduceOps$2ReducingSink;

    .line 134
    iget-boolean v0, p1, Lj$/util/stream/ReduceOps$2ReducingSink;->empty:Z

    if-nez v0, :cond_9

    .line 135
    iget-object v0, p1, Lj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lj$/util/stream/ReduceOps$2ReducingSink;->accept(Ljava/lang/Object;)V

    .line 136
    :cond_9
    return-void
.end method

.method public bridge synthetic combine(Lj$/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    .line 107
    check-cast p1, Lj$/util/stream/ReduceOps$2ReducingSink;

    invoke-virtual {p0, p1}, Lj$/util/stream/ReduceOps$2ReducingSink;->combine(Lj$/util/stream/ReduceOps$2ReducingSink;)V

    return-void
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Lj$/util/stream/Sink$-CC;->$default$end(Lj$/util/stream/Sink;)V

    return-void
.end method

.method public get()Lj$/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 129
    iget-boolean v0, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->empty:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 107
    invoke-virtual {p0}, Lj$/util/stream/ReduceOps$2ReducingSink;->get()Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method
