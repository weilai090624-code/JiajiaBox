.class abstract Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;
.super Ljava/lang/Object;
.source "WhileOps.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/WhileOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "UnorderedWhileSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;,
        Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;,
        Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;,
        Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Lj$/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final CANCEL_CHECK_COUNT:I = 0x3f


# instance fields
.field final cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field count:I

.field final noSplitting:Z

.field final s:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field takeOrDrop:Z


# direct methods
.method constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Lj$/util/stream/WhileOps$UnorderedWhileSpliterator<",
            "TT;TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .line 678
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Lj$/util/Spliterator;, "TT_SPLITR;"
    .local p2, "parent":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->takeOrDrop:Z

    .line 679
    iput-object p1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Lj$/util/Spliterator;

    .line 680
    iget-boolean v0, p2, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    .line 681
    iget-object v0, p2, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 682
    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator;Z)V
    .locals 1
    .param p2, "noSplitting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Z)V"
        }
    .end annotation

    .line 672
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Lj$/util/Spliterator;, "TT_SPLITR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->takeOrDrop:Z

    .line 673
    iput-object p1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Lj$/util/Spliterator;

    .line 674
    iput-boolean p2, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    .line 675
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 676
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 692
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4041

    return v0
.end method

.method checkCancelOnCount()Z
    .locals 1

    .line 713
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    iget v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->count:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 686
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$forEachRemaining(Lj$/util/Spliterator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 702
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 697
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method abstract makeSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            ")TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 708
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    .line 709
    .local v0, "ls":Lj$/util/Spliterator;, "TT_SPLITR;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;->makeSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v1

    :cond_1
    return-object v1
.end method
