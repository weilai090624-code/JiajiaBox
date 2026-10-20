.class final Lj$/util/stream/FindOps$FindSink$OfInt;
.super Lj$/util/stream/FindOps$FindSink;
.source "FindOps.java"

# interfaces
.implements Lj$/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/FindOps$FindSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/FindOps$FindSink<",
        "Ljava/lang/Integer;",
        "Lj$/util/OptionalInt;",
        ">;",
        "Lj$/util/stream/Sink$OfInt;"
    }
.end annotation


# static fields
.field static final OP_FIND_ANY:Lj$/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Lj$/util/OptionalInt;",
            ">;"
        }
    .end annotation
.end field

.field static final OP_FIND_FIRST:Lj$/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Lj$/util/OptionalInt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 220
    new-instance v6, Lj$/util/stream/FindOps$FindOp;

    sget-object v2, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    .line 221
    invoke-static {}, Lj$/util/OptionalInt;->empty()Lj$/util/OptionalInt;

    move-result-object v3

    new-instance v4, Lj$/util/stream/FindOps$FindSink$OfInt$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lj$/util/stream/FindOps$FindSink$OfInt$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Lj$/util/stream/FindOps$FindSink$OfInt$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lj$/util/stream/FindOps$FindSink$OfInt$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/FindOps$FindOp;-><init>(ZLj$/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v6, Lj$/util/stream/FindOps$FindSink$OfInt;->OP_FIND_FIRST:Lj$/util/stream/TerminalOp;

    .line 223
    new-instance v0, Lj$/util/stream/FindOps$FindOp;

    sget-object v9, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    .line 224
    invoke-static {}, Lj$/util/OptionalInt;->empty()Lj$/util/OptionalInt;

    move-result-object v10

    new-instance v11, Lj$/util/stream/FindOps$FindSink$OfInt$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Lj$/util/stream/FindOps$FindSink$OfInt$$ExternalSyntheticLambda0;-><init>()V

    new-instance v12, Lj$/util/stream/FindOps$FindSink$OfInt$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Lj$/util/stream/FindOps$FindSink$OfInt$$ExternalSyntheticLambda1;-><init>()V

    const/4 v8, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lj$/util/stream/FindOps$FindOp;-><init>(ZLj$/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v0, Lj$/util/stream/FindOps$FindSink$OfInt;->OP_FIND_ANY:Lj$/util/stream/TerminalOp;

    .line 223
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Lj$/util/stream/FindOps$FindSink;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "value"    # I

    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/FindOps$FindSink$OfInt;->accept(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Integer;)V
    .locals 0

    .line 207
    invoke-super {p0, p1}, Lj$/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public get()Lj$/util/OptionalInt;
    .locals 1

    .line 217
    iget-boolean v0, p0, Lj$/util/stream/FindOps$FindSink$OfInt;->hasValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/FindOps$FindSink$OfInt;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lj$/util/OptionalInt;->of(I)Lj$/util/OptionalInt;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 207
    invoke-virtual {p0}, Lj$/util/stream/FindOps$FindSink$OfInt;->get()Lj$/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method
