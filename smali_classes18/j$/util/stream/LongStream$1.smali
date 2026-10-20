.class Lj$/util/stream/LongStream$1;
.super Lj$/util/Spliterators$AbstractLongSpliterator;
.source "LongStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/LongStream$-CC;->iterate(JLjava/util/function/LongUnaryOperator;)Lj$/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field prev:J

.field started:Z

.field final synthetic val$f:Ljava/util/function/LongUnaryOperator;

.field final synthetic val$seed:J


# direct methods
.method constructor <init>(JILjava/util/function/LongUnaryOperator;J)V
    .locals 0
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 898
    iput-object p4, p0, Lj$/util/stream/LongStream$1;->val$f:Ljava/util/function/LongUnaryOperator;

    iput-wide p5, p0, Lj$/util/stream/LongStream$1;->val$seed:J

    invoke-direct {p0, p1, p2, p3}, Lj$/util/Spliterators$AbstractLongSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 898
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/LongStream$1;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 4
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 904
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    iget-boolean v0, p0, Lj$/util/stream/LongStream$1;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lj$/util/stream/LongStream$1;->val$f:Ljava/util/function/LongUnaryOperator;

    iget-wide v2, p0, Lj$/util/stream/LongStream$1;->prev:J

    invoke-interface {v0, v2, v3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    .local v2, "t":J
    goto :goto_0

    .line 909
    .end local v2    # "t":J
    :cond_0
    iget-wide v2, p0, Lj$/util/stream/LongStream$1;->val$seed:J

    .line 910
    .restart local v2    # "t":J
    iput-boolean v1, p0, Lj$/util/stream/LongStream$1;->started:Z

    .line 912
    :goto_0
    iput-wide v2, p0, Lj$/util/stream/LongStream$1;->prev:J

    invoke-interface {p1, v2, v3}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 913
    return v1
.end method
