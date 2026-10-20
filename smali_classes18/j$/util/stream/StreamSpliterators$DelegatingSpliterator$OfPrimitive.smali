.class Lj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;
.super Lj$/util/stream/StreamSpliterators$DelegatingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators$DelegatingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
        "Lj$/util/stream/StreamSpliterators$DelegatingSpliterator<",
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
.method constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .line 563
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT_SPLITR;>;"
    invoke-direct {p0, p1}, Lj$/util/stream/StreamSpliterators$DelegatingSpliterator;-><init>(Ljava/util/function/Supplier;)V

    .line 564
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

    .line 573
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->get()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 574
    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 568
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->get()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 559
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    invoke-super {p0}, Lj$/util/stream/StreamSpliterators$DelegatingSpliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
