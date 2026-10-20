.class Lj$/util/stream/IntStream$1;
.super Lj$/util/Spliterators$AbstractIntSpliterator;
.source "IntStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/IntStream$-CC;->iterate(ILjava/util/function/IntUnaryOperator;)Lj$/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field prev:I

.field started:Z

.field final synthetic val$f:Ljava/util/function/IntUnaryOperator;

.field final synthetic val$seed:I


# direct methods
.method constructor <init>(JILjava/util/function/IntUnaryOperator;I)V
    .locals 0
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 908
    iput-object p4, p0, Lj$/util/stream/IntStream$1;->val$f:Ljava/util/function/IntUnaryOperator;

    iput p5, p0, Lj$/util/stream/IntStream$1;->val$seed:I

    invoke-direct {p0, p1, p2, p3}, Lj$/util/Spliterators$AbstractIntSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 908
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/IntStream$1;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 914
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    iget-boolean v0, p0, Lj$/util/stream/IntStream$1;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lj$/util/stream/IntStream$1;->val$f:Ljava/util/function/IntUnaryOperator;

    iget v2, p0, Lj$/util/stream/IntStream$1;->prev:I

    invoke-interface {v0, v2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    .local v0, "t":I
    goto :goto_0

    .line 919
    .end local v0    # "t":I
    :cond_0
    iget v0, p0, Lj$/util/stream/IntStream$1;->val$seed:I

    .line 920
    .restart local v0    # "t":I
    iput-boolean v1, p0, Lj$/util/stream/IntStream$1;->started:Z

    .line 922
    :goto_0
    iput v0, p0, Lj$/util/stream/IntStream$1;->prev:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 923
    return v1
.end method
