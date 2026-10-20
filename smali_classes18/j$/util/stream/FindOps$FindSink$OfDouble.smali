.class final Lj$/util/stream/FindOps$FindSink$OfDouble;
.super Lj$/util/stream/FindOps$FindSink;
.source "FindOps.java"

# interfaces
.implements Lj$/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/FindOps$FindSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/FindOps$FindSink<",
        "Ljava/lang/Double;",
        "Lj$/util/OptionalDouble;",
        ">;",
        "Lj$/util/stream/Sink$OfDouble;"
    }
.end annotation


# static fields
.field static final OP_FIND_ANY:Lj$/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Lj$/util/OptionalDouble;",
            ">;"
        }
    .end annotation
.end field

.field static final OP_FIND_FIRST:Lj$/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Lj$/util/OptionalDouble;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 264
    new-instance v6, Lj$/util/stream/FindOps$FindOp;

    sget-object v2, Lj$/util/stream/StreamShape;->DOUBLE_VALUE:Lj$/util/stream/StreamShape;

    .line 265
    invoke-static {}, Lj$/util/OptionalDouble;->empty()Lj$/util/OptionalDouble;

    move-result-object v3

    new-instance v4, Lj$/util/stream/FindOps$FindSink$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lj$/util/stream/FindOps$FindSink$OfDouble$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Lj$/util/stream/FindOps$FindSink$OfDouble$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lj$/util/stream/FindOps$FindSink$OfDouble$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/FindOps$FindOp;-><init>(ZLj$/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v6, Lj$/util/stream/FindOps$FindSink$OfDouble;->OP_FIND_FIRST:Lj$/util/stream/TerminalOp;

    .line 267
    new-instance v0, Lj$/util/stream/FindOps$FindOp;

    sget-object v9, Lj$/util/stream/StreamShape;->DOUBLE_VALUE:Lj$/util/stream/StreamShape;

    .line 268
    invoke-static {}, Lj$/util/OptionalDouble;->empty()Lj$/util/OptionalDouble;

    move-result-object v10

    new-instance v11, Lj$/util/stream/FindOps$FindSink$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Lj$/util/stream/FindOps$FindSink$OfDouble$$ExternalSyntheticLambda0;-><init>()V

    new-instance v12, Lj$/util/stream/FindOps$FindSink$OfDouble$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Lj$/util/stream/FindOps$FindSink$OfDouble$$ExternalSyntheticLambda1;-><init>()V

    const/4 v8, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lj$/util/stream/FindOps$FindOp;-><init>(ZLj$/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v0, Lj$/util/stream/FindOps$FindSink$OfDouble;->OP_FIND_ANY:Lj$/util/stream/TerminalOp;

    .line 267
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Lj$/util/stream/FindOps$FindSink;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "value"    # D

    .line 256
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/FindOps$FindSink$OfDouble;->accept(Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Double;)V
    .locals 0

    .line 251
    invoke-super {p0, p1}, Lj$/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method public get()Lj$/util/OptionalDouble;
    .locals 2

    .line 261
    iget-boolean v0, p0, Lj$/util/stream/FindOps$FindSink$OfDouble;->hasValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/FindOps$FindSink$OfDouble;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/OptionalDouble;->of(D)Lj$/util/OptionalDouble;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 251
    invoke-virtual {p0}, Lj$/util/stream/FindOps$FindSink$OfDouble;->get()Lj$/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method
