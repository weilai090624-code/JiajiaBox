.class public final synthetic Lj$/util/stream/Collectors$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BinaryOperator;

.field public final synthetic f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BinaryOperator;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/BinaryOperator;

    iput-object p2, p0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda4;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda4;->f$1:Ljava/util/function/Function;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2}, Lj$/util/stream/Collectors;->lambda$reducing$49(Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
