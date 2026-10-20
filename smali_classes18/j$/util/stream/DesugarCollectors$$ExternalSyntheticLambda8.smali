.class public final synthetic Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;

.field public final synthetic f$1:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda8;->f$0:Ljava/util/function/Predicate;

    iput-object p2, p0, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda8;->f$1:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda8;->f$0:Ljava/util/function/Predicate;

    iget-object v1, p0, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda8;->f$1:Ljava/util/function/BiConsumer;

    invoke-static {v0, v1, p1, p2}, Lj$/util/stream/DesugarCollectors;->lambda$filtering$0(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
