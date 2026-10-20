.class public final synthetic Lj$/util/function/LongPredicate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongPredicate;


# instance fields
.field public final synthetic f$0:Ljava/util/function/LongPredicate;

.field public final synthetic f$1:Ljava/util/function/LongPredicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/LongPredicate;Ljava/util/function/LongPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/LongPredicate$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/LongPredicate;

    iput-object p2, p0, Lj$/util/function/LongPredicate$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/LongPredicate;

    return-void
.end method


# virtual methods
.method public synthetic and(Ljava/util/function/LongPredicate;)Ljava/util/function/LongPredicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/LongPredicate$-CC;->$default$and(Ljava/util/function/LongPredicate;Ljava/util/function/LongPredicate;)Ljava/util/function/LongPredicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Ljava/util/function/LongPredicate;
    .locals 1

    invoke-static {p0}, Lj$/util/function/LongPredicate$-CC;->$default$negate(Ljava/util/function/LongPredicate;)Ljava/util/function/LongPredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Ljava/util/function/LongPredicate;)Ljava/util/function/LongPredicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/LongPredicate$-CC;->$default$or(Ljava/util/function/LongPredicate;Ljava/util/function/LongPredicate;)Ljava/util/function/LongPredicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(J)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/LongPredicate$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/LongPredicate;

    iget-object v1, p0, Lj$/util/function/LongPredicate$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/LongPredicate;

    invoke-static {v0, v1, p1, p2}, Lj$/util/function/LongPredicate$-CC;->$private$lambda$and$0(Ljava/util/function/LongPredicate;Ljava/util/function/LongPredicate;J)Z

    move-result p1

    return p1
.end method
