.class public final synthetic Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lj$/util/stream/MatchOps$MatchKind;

.field public final synthetic f$1:Ljava/util/function/LongPredicate;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$0:Lj$/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/LongPredicate;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$0:Lj$/util/stream/MatchOps$MatchKind;

    iget-object v1, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/LongPredicate;

    invoke-static {v0, v1}, Lj$/util/stream/MatchOps;->lambda$makeLong$2(Lj$/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)Lj$/util/stream/MatchOps$BooleanTerminalSink;

    move-result-object v0

    return-object v0
.end method
