.class Lj$/util/stream/Stream$2;
.super Lj$/util/Spliterators$AbstractSpliterator;
.source "Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/Stream$-CC;->iterate(Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/UnaryOperator;)Lj$/util/stream/Stream;
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

    .line 1280
    iput-object p4, p0, Lj$/util/stream/Stream$2;->val$next:Ljava/util/function/UnaryOperator;

    iput-object p5, p0, Lj$/util/stream/Stream$2;->val$seed:Ljava/lang/Object;

    iput-object p6, p0, Lj$/util/stream/Stream$2;->val$hasNext:Ljava/util/function/Predicate;

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

    .line 1307
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    iget-boolean v0, p0, Lj$/util/stream/Stream$2;->finished:Z

    if-eqz v0, :cond_0

    .line 1309
    return-void

    .line 1310
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/Stream$2;->finished:Z

    .line 1311
    iget-boolean v0, p0, Lj$/util/stream/Stream$2;->started:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/Stream$2;->val$next:Ljava/util/function/UnaryOperator;

    iget-object v1, p0, Lj$/util/stream/Stream$2;->prev:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj$/util/stream/Stream$2;->val$seed:Ljava/lang/Object;

    .line 1312
    .local v0, "t":Ljava/lang/Object;, "TT;"
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lj$/util/stream/Stream$2;->prev:Ljava/lang/Object;

    .line 1313
    :goto_1
    iget-object v1, p0, Lj$/util/stream/Stream$2;->val$hasNext:Ljava/util/function/Predicate;

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1314
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1315
    iget-object v1, p0, Lj$/util/stream/Stream$2;->val$next:Ljava/util/function/UnaryOperator;

    invoke-interface {v1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 1317
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

    .line 1286
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    iget-boolean v0, p0, Lj$/util/stream/Stream$2;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1288
    return v1

    .line 1290
    :cond_0
    iget-boolean v0, p0, Lj$/util/stream/Stream$2;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1291
    iget-object v0, p0, Lj$/util/stream/Stream$2;->val$next:Ljava/util/function/UnaryOperator;

    iget-object v3, p0, Lj$/util/stream/Stream$2;->prev:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 1293
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v0, p0, Lj$/util/stream/Stream$2;->val$seed:Ljava/lang/Object;

    .line 1294
    .restart local v0    # "t":Ljava/lang/Object;, "TT;"
    iput-boolean v2, p0, Lj$/util/stream/Stream$2;->started:Z

    .line 1296
    :goto_0
    iget-object v3, p0, Lj$/util/stream/Stream$2;->val$hasNext:Ljava/util/function/Predicate;

    invoke-interface {v3, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1297
    const/4 v3, 0x0

    iput-object v3, p0, Lj$/util/stream/Stream$2;->prev:Ljava/lang/Object;

    .line 1298
    iput-boolean v2, p0, Lj$/util/stream/Stream$2;->finished:Z

    .line 1299
    return v1

    .line 1301
    :cond_2
    iput-object v0, p0, Lj$/util/stream/Stream$2;->prev:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1302
    return v2
.end method
