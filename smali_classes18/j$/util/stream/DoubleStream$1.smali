.class Lj$/util/stream/DoubleStream$1;
.super Lj$/util/Spliterators$AbstractDoubleSpliterator;
.source "DoubleStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/DoubleStream$-CC;->iterate(DLjava/util/function/DoubleUnaryOperator;)Lj$/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field prev:D

.field started:Z

.field final synthetic val$f:Ljava/util/function/DoubleUnaryOperator;

.field final synthetic val$seed:D


# direct methods
.method constructor <init>(JILjava/util/function/DoubleUnaryOperator;D)V
    .locals 0
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 968
    iput-object p4, p0, Lj$/util/stream/DoubleStream$1;->val$f:Ljava/util/function/DoubleUnaryOperator;

    iput-wide p5, p0, Lj$/util/stream/DoubleStream$1;->val$seed:D

    invoke-direct {p0, p1, p2, p3}, Lj$/util/Spliterators$AbstractDoubleSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 968
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/DoubleStream$1;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 4
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 974
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    iget-boolean v0, p0, Lj$/util/stream/DoubleStream$1;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lj$/util/stream/DoubleStream$1;->val$f:Ljava/util/function/DoubleUnaryOperator;

    iget-wide v2, p0, Lj$/util/stream/DoubleStream$1;->prev:D

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    .local v2, "t":D
    goto :goto_0

    .line 979
    .end local v2    # "t":D
    :cond_0
    iget-wide v2, p0, Lj$/util/stream/DoubleStream$1;->val$seed:D

    .line 980
    .restart local v2    # "t":D
    iput-boolean v1, p0, Lj$/util/stream/DoubleStream$1;->started:Z

    .line 982
    :goto_0
    iput-wide v2, p0, Lj$/util/stream/DoubleStream$1;->prev:D

    invoke-interface {p1, v2, v3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 983
    return v1
.end method
