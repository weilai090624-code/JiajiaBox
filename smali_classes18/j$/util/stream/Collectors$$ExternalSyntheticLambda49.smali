.class public final synthetic Lj$/util/stream/Collectors$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda49;->f$0:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda49;->f$0:Ljava/util/function/BinaryOperator;

    check-cast p1, Lj$/util/stream/Collectors$Partition;

    check-cast p2, Lj$/util/stream/Collectors$Partition;

    invoke-static {v0, p1, p2}, Lj$/util/stream/Collectors;->lambda$partitioningBy$63(Ljava/util/function/BinaryOperator;Lj$/util/stream/Collectors$Partition;Lj$/util/stream/Collectors$Partition;)Lj$/util/stream/Collectors$Partition;

    move-result-object p1

    return-object p1
.end method
