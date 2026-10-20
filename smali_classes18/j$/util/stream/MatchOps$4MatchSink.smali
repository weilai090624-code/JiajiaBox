.class Lj$/util/stream/MatchOps$4MatchSink;
.super Lj$/util/stream/MatchOps$BooleanTerminalSink;
.source "MatchOps.java"

# interfaces
.implements Lj$/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/MatchOps;->makeDouble(Ljava/util/function/DoublePredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MatchSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/MatchOps$BooleanTerminalSink<",
        "Ljava/lang/Double;",
        ">;",
        "Lj$/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field final synthetic val$matchKind:Lj$/util/stream/MatchOps$MatchKind;

.field final synthetic val$predicate:Ljava/util/function/DoublePredicate;


# direct methods
.method constructor <init>(Lj$/util/stream/MatchOps$MatchKind;Ljava/util/function/DoublePredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lj$/util/stream/MatchOps$4MatchSink;->val$matchKind:Lj$/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Lj$/util/stream/MatchOps$4MatchSink;->val$predicate:Ljava/util/function/DoublePredicate;

    .line 174
    invoke-direct {p0, p1}, Lj$/util/stream/MatchOps$BooleanTerminalSink;-><init>(Lj$/util/stream/MatchOps$MatchKind;)V

    .line 175
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 2
    .param p1, "t"    # D

    .line 179
    iget-boolean v0, p0, Lj$/util/stream/MatchOps$4MatchSink;->stop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/MatchOps$4MatchSink;->val$predicate:Ljava/util/function/DoublePredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    iget-object v1, p0, Lj$/util/stream/MatchOps$4MatchSink;->val$matchKind:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {v1}, Lj$/util/stream/MatchOps$MatchKind;->-$$Nest$fgetstopOnPredicateMatches(Lj$/util/stream/MatchOps$MatchKind;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/MatchOps$4MatchSink;->stop:Z

    .line 181
    iget-object v0, p0, Lj$/util/stream/MatchOps$4MatchSink;->val$matchKind:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {v0}, Lj$/util/stream/MatchOps$MatchKind;->-$$Nest$fgetshortCircuitResult(Lj$/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    iput-boolean v0, p0, Lj$/util/stream/MatchOps$4MatchSink;->value:Z

    .line 183
    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Sink$OfDouble$-CC;->$default$accept(Lj$/util/stream/Sink$OfDouble;Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Sink$OfDouble$-CC;->$default$accept(Lj$/util/stream/Sink$OfDouble;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method
