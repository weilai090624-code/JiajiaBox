.class Lj$/util/stream/DesugarIntStream$1;
.super Lj$/util/Spliterators$AbstractIntSpliterator;
.source "DesugarIntStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/DesugarIntStream;->iterate(ILjava/util/function/IntPredicate;Ljava/util/function/IntUnaryOperator;)Lj$/util/stream/IntStream;
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

    .line 104
    iput-object p4, p0, Lj$/util/stream/DesugarIntStream$1;->val$next:Ljava/util/function/IntUnaryOperator;

    iput p5, p0, Lj$/util/stream/DesugarIntStream$1;->val$seed:I

    iput-object p6, p0, Lj$/util/stream/DesugarIntStream$1;->val$hasNext:Ljava/util/function/IntPredicate;

    invoke-direct {p0, p1, p2, p3}, Lj$/util/Spliterators$AbstractIntSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/DesugarIntStream$1;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 130
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-boolean v0, p0, Lj$/util/stream/DesugarIntStream$1;->finished:Z

    if-eqz v0, :cond_0

    .line 132
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/DesugarIntStream$1;->finished:Z

    .line 134
    iget-boolean v0, p0, Lj$/util/stream/DesugarIntStream$1;->started:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/DesugarIntStream$1;->val$next:Ljava/util/function/IntUnaryOperator;

    iget v1, p0, Lj$/util/stream/DesugarIntStream$1;->prev:I

    invoke-interface {v0, v1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lj$/util/stream/DesugarIntStream$1;->val$seed:I

    .line 135
    .local v0, "t":I
    :goto_0
    iget-object v1, p0, Lj$/util/stream/DesugarIntStream$1;->val$hasNext:Ljava/util/function/IntPredicate;

    invoke-interface {v1, v0}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 137
    iget-object v1, p0, Lj$/util/stream/DesugarIntStream$1;->val$next:Ljava/util/function/IntUnaryOperator;

    invoke-interface {v1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    goto :goto_0

    .line 139
    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 104
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/DesugarIntStream$1;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 4
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 110
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-boolean v0, p0, Lj$/util/stream/DesugarIntStream$1;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 112
    return v1

    .line 114
    :cond_0
    iget-boolean v0, p0, Lj$/util/stream/DesugarIntStream$1;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lj$/util/stream/DesugarIntStream$1;->val$next:Ljava/util/function/IntUnaryOperator;

    iget v3, p0, Lj$/util/stream/DesugarIntStream$1;->prev:I

    invoke-interface {v0, v3}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    .local v0, "t":I
    goto :goto_0

    .line 117
    .end local v0    # "t":I
    :cond_1
    iget v0, p0, Lj$/util/stream/DesugarIntStream$1;->val$seed:I

    .line 118
    .restart local v0    # "t":I
    iput-boolean v2, p0, Lj$/util/stream/DesugarIntStream$1;->started:Z

    .line 120
    :goto_0
    iget-object v3, p0, Lj$/util/stream/DesugarIntStream$1;->val$hasNext:Ljava/util/function/IntPredicate;

    invoke-interface {v3, v0}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 121
    iput-boolean v2, p0, Lj$/util/stream/DesugarIntStream$1;->finished:Z

    .line 122
    return v1

    .line 124
    :cond_2
    iput v0, p0, Lj$/util/stream/DesugarIntStream$1;->prev:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 125
    return v2
.end method
