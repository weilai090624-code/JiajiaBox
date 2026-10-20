.class Lj$/util/stream/IntStream$2;
.super Lj$/util/Spliterators$AbstractIntSpliterator;
.source "IntStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/IntStream$-CC;->iterate(ILjava/util/function/IntPredicate;Ljava/util/function/IntUnaryOperator;)Lj$/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field finished:Z

.field prev:I

.field started:Z

.field final synthetic val$hasNext:Ljava/util/function/IntPredicate;

.field final synthetic val$next:Ljava/util/function/IntUnaryOperator;

.field final synthetic val$seed:I


# direct methods
.method constructor <init>(JILjava/util/function/IntUnaryOperator;ILjava/util/function/IntPredicate;)V
    .locals 0
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 970
    iput-object p4, p0, Lj$/util/stream/IntStream$2;->val$next:Ljava/util/function/IntUnaryOperator;

    iput p5, p0, Lj$/util/stream/IntStream$2;->val$seed:I

    iput-object p6, p0, Lj$/util/stream/IntStream$2;->val$hasNext:Ljava/util/function/IntPredicate;

    invoke-direct {p0, p1, p2, p3}, Lj$/util/Spliterators$AbstractIntSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 970
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/IntStream$2;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 996
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget-boolean v0, p0, Lj$/util/stream/IntStream$2;->finished:Z

    if-eqz v0, :cond_0

    .line 998
    return-void

    .line 999
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/IntStream$2;->finished:Z

    .line 1000
    iget-boolean v0, p0, Lj$/util/stream/IntStream$2;->started:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/IntStream$2;->val$next:Ljava/util/function/IntUnaryOperator;

    iget v1, p0, Lj$/util/stream/IntStream$2;->prev:I

    invoke-interface {v0, v1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lj$/util/stream/IntStream$2;->val$seed:I

    .line 1001
    .local v0, "t":I
    :goto_0
    iget-object v1, p0, Lj$/util/stream/IntStream$2;->val$hasNext:Ljava/util/function/IntPredicate;

    invoke-interface {v1, v0}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1002
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1003
    iget-object v1, p0, Lj$/util/stream/IntStream$2;->val$next:Ljava/util/function/IntUnaryOperator;

    invoke-interface {v1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    goto :goto_0

    .line 1005
    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 970
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/IntStream$2;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 4
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 976
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    iget-boolean v0, p0, Lj$/util/stream/IntStream$2;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 978
    return v1

    .line 980
    :cond_0
    iget-boolean v0, p0, Lj$/util/stream/IntStream$2;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 981
    iget-object v0, p0, Lj$/util/stream/IntStream$2;->val$next:Ljava/util/function/IntUnaryOperator;

    iget v3, p0, Lj$/util/stream/IntStream$2;->prev:I

    invoke-interface {v0, v3}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    .local v0, "t":I
    goto :goto_0

    .line 983
    .end local v0    # "t":I
    :cond_1
    iget v0, p0, Lj$/util/stream/IntStream$2;->val$seed:I

    .line 984
    .restart local v0    # "t":I
    iput-boolean v2, p0, Lj$/util/stream/IntStream$2;->started:Z

    .line 986
    :goto_0
    iget-object v3, p0, Lj$/util/stream/IntStream$2;->val$hasNext:Ljava/util/function/IntPredicate;

    invoke-interface {v3, v0}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 987
    iput-boolean v2, p0, Lj$/util/stream/IntStream$2;->finished:Z

    .line 988
    return v1

    .line 990
    :cond_2
    iput v0, p0, Lj$/util/stream/IntStream$2;->prev:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 991
    return v2
.end method
