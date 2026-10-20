.class final Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;
.super Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Taking"
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
.method constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;",
            "Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<",
            "TT;>;)V"
        }
    .end annotation

    .line 744
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p2, "parent":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;-><init>(Lj$/util/Spliterator;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;)V

    .line 745
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

    .line 740
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p3, "p":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;-><init>(Lj$/util/Spliterator;ZLjava/util/function/Predicate;)V

    .line 741
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

    .line 776
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;-><init>(Lj$/util/Spliterator;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;)V

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

    .line 749
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v0, 0x1

    .line 750
    .local v0, "test":Z
    iget-boolean v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->takeOrDrop:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 751
    invoke-virtual {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->s:Lj$/util/Spliterator;

    .line 752
    invoke-interface {v1, p0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->p:Ljava/util/function/Predicate;

    iget-object v3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->t:Ljava/lang/Object;

    .line 753
    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    if-eqz v1, :cond_0

    .line 754
    iget-object v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->t:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 755
    return v2

    .line 759
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->takeOrDrop:Z

    .line 762
    if-nez v0, :cond_1

    .line 763
    iget-object v3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 764
    :cond_1
    return v1
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 771
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking<TT;>;"
    iget-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method
