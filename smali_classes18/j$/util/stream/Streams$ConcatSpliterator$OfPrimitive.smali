.class abstract Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;
.super Lj$/util/stream/Streams$ConcatSpliterator;
.source "Streams.java"

# interfaces
.implements Lj$/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Streams$ConcatSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Lj$/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Lj$/util/stream/Streams$ConcatSpliterator<",
        "TT;TT_SP",
        "LITR;",
        ">;",
        "Lj$/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lj$/util/Spliterator$OfPrimitive;Lj$/util/Spliterator$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "TT_SP",
            "LITR;",
            ")V"
        }
    .end annotation

    .line 779
    .local p0, "this":Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "aSpliterator":Lj$/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    .local p2, "bSpliterator":Lj$/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/Streams$ConcatSpliterator;-><init>(Lj$/util/Spliterator;Lj$/util/Spliterator;)V

    .line 780
    return-void
.end method

.method synthetic constructor <init>(Lj$/util/Spliterator$OfPrimitive;Lj$/util/Spliterator$OfPrimitive;Lj$/util/stream/Streams-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;-><init>(Lj$/util/Spliterator$OfPrimitive;Lj$/util/Spliterator$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 799
    .local p0, "this":Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    iget-boolean v0, p0, Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->beforeSplit:Z

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->aSpliterator:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 801
    :cond_0
    iget-object v0, p0, Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->bSpliterator:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 802
    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 785
    .local p0, "this":Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    iget-boolean v0, p0, Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->beforeSplit:Z

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->aSpliterator:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    .line 787
    .local v0, "hasNext":Z
    if-nez v0, :cond_1

    .line 788
    const/4 v1, 0x0

    iput-boolean v1, p0, Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->beforeSplit:Z

    .line 789
    iget-object v1, p0, Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->bSpliterator:Lj$/util/Spliterator;

    check-cast v1, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v1, p1}, Lj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 793
    .end local v0    # "hasNext":Z
    :cond_0
    iget-object v0, p0, Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->bSpliterator:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    .line 794
    .restart local v0    # "hasNext":Z
    :cond_1
    :goto_0
    return v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 775
    .local p0, "this":Lj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    invoke-super {p0}, Lj$/util/stream/Streams$ConcatSpliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
