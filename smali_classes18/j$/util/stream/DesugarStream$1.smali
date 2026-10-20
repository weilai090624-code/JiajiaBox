.class Lj$/util/stream/DesugarStream$1;
.super Lj$/util/Spliterators$AbstractSpliterator;
.source "DesugarStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/DesugarStream;->iterate(Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/UnaryOperator;)Lj$/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/Spliterators$AbstractSpliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field finished:Z

.field prev:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field started:Z

.field final synthetic val$hasNext:Ljava/util/function/Predicate;

.field final synthetic val$next:Ljava/util/function/UnaryOperator;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method constructor <init>(JILjava/util/function/UnaryOperator;Ljava/lang/Object;Ljava/util/function/Predicate;)V
    .locals 0
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 203
    iput-object p4, p0, Lj$/util/stream/DesugarStream$1;->val$next:Ljava/util/function/UnaryOperator;

    iput-object p5, p0, Lj$/util/stream/DesugarStream$1;->val$seed:Ljava/lang/Object;

    iput-object p6, p0, Lj$/util/stream/DesugarStream$1;->val$hasNext:Ljava/util/function/Predicate;

    invoke-direct {p0, p1, p2, p3}, Lj$/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 230
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-boolean v0, p0, Lj$/util/stream/DesugarStream$1;->finished:Z

    if-eqz v0, :cond_0

    .line 232
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/DesugarStream$1;->finished:Z

    .line 234
    iget-boolean v0, p0, Lj$/util/stream/DesugarStream$1;->started:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/DesugarStream$1;->val$next:Ljava/util/function/UnaryOperator;

    iget-object v1, p0, Lj$/util/stream/DesugarStream$1;->prev:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj$/util/stream/DesugarStream$1;->val$seed:Ljava/lang/Object;

    .line 235
    .local v0, "t":Ljava/lang/Object;, "TT;"
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lj$/util/stream/DesugarStream$1;->prev:Ljava/lang/Object;

    .line 236
    :goto_1
    iget-object v1, p0, Lj$/util/stream/DesugarStream$1;->val$hasNext:Ljava/util/function/Predicate;

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 238
    iget-object v1, p0, Lj$/util/stream/DesugarStream$1;->val$next:Ljava/util/function/UnaryOperator;

    invoke-interface {v1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 240
    :cond_2
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 209
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-boolean v0, p0, Lj$/util/stream/DesugarStream$1;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 211
    return v1

    .line 213
    :cond_0
    iget-boolean v0, p0, Lj$/util/stream/DesugarStream$1;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lj$/util/stream/DesugarStream$1;->val$next:Ljava/util/function/UnaryOperator;

    iget-object v3, p0, Lj$/util/stream/DesugarStream$1;->prev:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 216
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v0, p0, Lj$/util/stream/DesugarStream$1;->val$seed:Ljava/lang/Object;

    .line 217
    .restart local v0    # "t":Ljava/lang/Object;, "TT;"
    iput-boolean v2, p0, Lj$/util/stream/DesugarStream$1;->started:Z

    .line 219
    :goto_0
    iget-object v3, p0, Lj$/util/stream/DesugarStream$1;->val$hasNext:Ljava/util/function/Predicate;

    invoke-interface {v3, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 220
    const/4 v3, 0x0

    iput-object v3, p0, Lj$/util/stream/DesugarStream$1;->prev:Ljava/lang/Object;

    .line 221
    iput-boolean v2, p0, Lj$/util/stream/DesugarStream$1;->finished:Z

    .line 222
    return v1

    .line 224
    :cond_2
    iput-object v0, p0, Lj$/util/stream/DesugarStream$1;->prev:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 225
    return v2
.end method
