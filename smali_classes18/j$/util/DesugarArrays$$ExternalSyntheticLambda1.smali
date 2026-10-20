.class public final synthetic Lj$/util/DesugarArrays$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:[D

.field public final synthetic f$1:Ljava/util/function/IntToDoubleFunction;


# direct methods
.method public synthetic constructor <init>([DLjava/util/function/IntToDoubleFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/DesugarArrays$$ExternalSyntheticLambda1;->f$0:[D

    iput-object p2, p0, Lj$/util/DesugarArrays$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/IntToDoubleFunction;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, Lj$/util/DesugarArrays$$ExternalSyntheticLambda1;->f$0:[D

    iget-object v1, p0, Lj$/util/DesugarArrays$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/IntToDoubleFunction;

    invoke-static {v0, v1, p1}, Lj$/util/DesugarArrays;->lambda$parallelSetAll$3([DLjava/util/function/IntToDoubleFunction;I)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method
