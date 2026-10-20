.class public final synthetic Lj$/util/DoubleSummaryStatistics$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/DoublePredicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic and(Ljava/util/function/DoublePredicate;)Ljava/util/function/DoublePredicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/DoublePredicate$-CC;->$default$and(Ljava/util/function/DoublePredicate;Ljava/util/function/DoublePredicate;)Ljava/util/function/DoublePredicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Ljava/util/function/DoublePredicate;
    .locals 1

    invoke-static {p0}, Lj$/util/function/DoublePredicate$-CC;->$default$negate(Ljava/util/function/DoublePredicate;)Ljava/util/function/DoublePredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Ljava/util/function/DoublePredicate;)Ljava/util/function/DoublePredicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/DoublePredicate$-CC;->$default$or(Ljava/util/function/DoublePredicate;Ljava/util/function/DoublePredicate;)Ljava/util/function/DoublePredicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(D)Z
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    return p1
.end method
