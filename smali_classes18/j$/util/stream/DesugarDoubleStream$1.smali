.class Lj$/util/stream/DesugarDoubleStream$1;
.super Lj$/util/Spliterators$AbstractDoubleSpliterator;
.source "DesugarDoubleStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/DesugarDoubleStream;->iterate(DLjava/util/function/DoublePredicate;Ljava/util/function/DoubleUnaryOperator;)Lj$/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field finished:Z

.field prev:D

.field started:Z

.field final synthetic val$hasNext:Ljava/util/function/DoublePredicate;

.field final synthetic val$next:Ljava/util/function/DoubleUnaryOperator;

.field final synthetic val$seed:D


# direct methods
.method constructor <init>(JILjava/util/function/DoubleUnaryOperator;DLjava/util/function/DoublePredicate;)V
    .locals 0
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 104
    iput-object p4, p0, Lj$/util/stream/DesugarDoubleStream$1;->val$next:Ljava/util/function/DoubleUnaryOperator;

    iput-wide p5, p0, Lj$/util/stream/DesugarDoubleStream$1;->val$seed:D

    iput-object p7, p0, Lj$/util/stream/DesugarDoubleStream$1;->val$hasNext:Ljava/util/function/DoublePredicate;

    invoke-direct {p0, p1, p2, p3}, Lj$/util/Spliterators$AbstractDoubleSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/DesugarDoubleStream$1;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 3
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 130
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-boolean v0, p0, Lj$/util/stream/DesugarDoubleStream$1;->finished:Z

    if-eqz v0, :cond_0

    .line 132
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/DesugarDoubleStream$1;->finished:Z

    .line 134
    iget-boolean v0, p0, Lj$/util/stream/DesugarDoubleStream$1;->started:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/DesugarDoubleStream$1;->val$next:Ljava/util/function/DoubleUnaryOperator;

    iget-wide v1, p0, Lj$/util/stream/DesugarDoubleStream$1;->prev:D

    invoke-interface {v0, v1, v2}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lj$/util/stream/DesugarDoubleStream$1;->val$seed:D

    .line 135
    .local v0, "t":D
    :goto_0
    iget-object v2, p0, Lj$/util/stream/DesugarDoubleStream$1;->val$hasNext:Ljava/util/function/DoublePredicate;

    invoke-interface {v2, v0, v1}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 137
    iget-object v2, p0, Lj$/util/stream/DesugarDoubleStream$1;->val$next:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v2, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    goto :goto_0

    .line 139
    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 104
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/DesugarDoubleStream$1;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 5
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 110
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-boolean v0, p0, Lj$/util/stream/DesugarDoubleStream$1;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 112
    return v1

    .line 114
    :cond_0
    iget-boolean v0, p0, Lj$/util/stream/DesugarDoubleStream$1;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lj$/util/stream/DesugarDoubleStream$1;->val$next:Ljava/util/function/DoubleUnaryOperator;

    iget-wide v3, p0, Lj$/util/stream/DesugarDoubleStream$1;->prev:D

    invoke-interface {v0, v3, v4}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v3

    .local v3, "t":D
    goto :goto_0

    .line 117
    .end local v3    # "t":D
    :cond_1
    iget-wide v3, p0, Lj$/util/stream/DesugarDoubleStream$1;->val$seed:D

    .line 118
    .restart local v3    # "t":D
    iput-boolean v2, p0, Lj$/util/stream/DesugarDoubleStream$1;->started:Z

    .line 120
    :goto_0
    iget-object v0, p0, Lj$/util/stream/DesugarDoubleStream$1;->val$hasNext:Ljava/util/function/DoublePredicate;

    invoke-interface {v0, v3, v4}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    iput-boolean v2, p0, Lj$/util/stream/DesugarDoubleStream$1;->finished:Z

    .line 122
    return v1

    .line 124
    :cond_2
    iput-wide v3, p0, Lj$/util/stream/DesugarDoubleStream$1;->prev:D

    invoke-interface {p1, v3, v4}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 125
    return v2
.end method
