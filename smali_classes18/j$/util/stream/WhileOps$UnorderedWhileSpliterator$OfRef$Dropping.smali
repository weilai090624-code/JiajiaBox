.class final Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;
.super Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dropping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;",
            "Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<",
            "TT;>;)V"
        }
    .end annotation

    .line 786
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<TT;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p2, "parent":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<TT;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;-><init>(Lj$/util/Spliterator;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;)V

    .line 787
    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator;ZLjava/util/function/Predicate;)V
    .locals 0
    .param p2, "noSplitting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;Z",
            "Ljava/util/function/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 782
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<TT;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p3, "p":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;-><init>(Lj$/util/Spliterator;ZLjava/util/function/Predicate;)V

    .line 783
    return-void
.end method


# virtual methods
.method makeSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 818
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<TT;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;-><init>(Lj$/util/Spliterator;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;)V

    return-object v0
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

    .line 791
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->takeOrDrop:Z

    if-eqz v0, :cond_3

    .line 792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->takeOrDrop:Z

    .line 794
    const/4 v0, 0x0

    .line 795
    .local v0, "dropped":Z
    :goto_0
    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->s:Lj$/util/Spliterator;

    invoke-interface {v1, p0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v1

    move v2, v1

    .local v2, "adv":Z
    if-eqz v1, :cond_0

    .line 796
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->p:Ljava/util/function/Predicate;

    iget-object v3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->t:Ljava/lang/Object;

    .line 797
    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    const/4 v0, 0x1

    goto :goto_0

    .line 802
    :cond_0
    if-eqz v2, :cond_2

    .line 805
    if-eqz v0, :cond_1

    .line 806
    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 807
    :cond_1
    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->t:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 809
    :cond_2
    return v2

    .line 812
    .end local v0    # "dropped":Z
    .end local v2    # "adv":Z
    :cond_3
    iget-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->s:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method
