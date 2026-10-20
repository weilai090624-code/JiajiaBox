.class Lj$/util/stream/Stream$1;
.super Lj$/util/Spliterators$AbstractSpliterator;
.source "Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/Stream$-CC;->iterate(Ljava/lang/Object;Ljava/util/function/UnaryOperator;)Lj$/util/stream/Stream;
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
.field prev:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field started:Z

.field final synthetic val$f:Ljava/util/function/UnaryOperator;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method constructor <init>(JILjava/util/function/UnaryOperator;Ljava/lang/Object;)V
    .locals 0
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 1217
    iput-object p4, p0, Lj$/util/stream/Stream$1;->val$f:Ljava/util/function/UnaryOperator;

    iput-object p5, p0, Lj$/util/stream/Stream$1;->val$seed:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lj$/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1223
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    iget-boolean v0, p0, Lj$/util/stream/Stream$1;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lj$/util/stream/Stream$1;->val$f:Ljava/util/function/UnaryOperator;

    iget-object v2, p0, Lj$/util/stream/Stream$1;->prev:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 1228
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v0, p0, Lj$/util/stream/Stream$1;->val$seed:Ljava/lang/Object;

    .line 1229
    .restart local v0    # "t":Ljava/lang/Object;, "TT;"
    iput-boolean v1, p0, Lj$/util/stream/Stream$1;->started:Z

    .line 1231
    :goto_0
    iput-object v0, p0, Lj$/util/stream/Stream$1;->prev:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1232
    return v1
.end method
