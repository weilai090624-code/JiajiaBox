.class abstract Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "UnorderedSliceSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;,
        Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;,
        Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;,
        Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;,
        Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;,
        Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Lj$/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final CHUNK_SIZE:I = 0x80


# instance fields
.field protected final chunkSize:I

.field private final permits:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final s:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field private final skipThreshold:J

.field protected final unlimited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 902
    const-class v0, Lj$/util/stream/StreamSpliterators;

    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator;JJ)V
    .locals 4
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    .line 912
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Lj$/util/Spliterator;, "TT_SPLITR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    iput-object p1, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Lj$/util/Spliterator;

    .line 914
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    .line 915
    cmp-long v2, p4, v0

    if-ltz v2, :cond_1

    move-wide v2, p4

    goto :goto_1

    :cond_1
    move-wide v2, v0

    :goto_1
    iput-wide v2, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    .line 919
    const/16 v2, 0x80

    iput v2, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    .line 920
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    cmp-long v3, p4, v0

    if-ltz v3, :cond_2

    add-long v0, p2, p4

    goto :goto_2

    :cond_2
    move-wide v0, p2

    :goto_2
    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 921
    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator<",
            "TT;TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .line 924
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Lj$/util/Spliterator;, "TT_SPLITR;"
    .local p2, "parent":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    iput-object p1, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Lj$/util/Spliterator;

    .line 926
    iget-boolean v0, p2, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    iput-boolean v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    .line 927
    iget-object v0, p2, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 928
    iget-wide v0, p2, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    iput-wide v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    .line 929
    iget v0, p2, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    iput v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    .line 930
    return-void
.end method


# virtual methods
.method protected final acquirePermits(J)J
    .locals 9
    .param p1, "numElements"    # J

    .line 950
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    nop

    .line 952
    :cond_0
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 953
    .local v0, "remainingPermits":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 954
    iget-boolean v4, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz v4, :cond_1

    move-wide v2, p1

    :cond_1
    return-wide v2

    .line 955
    :cond_2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 956
    .local v4, "grabbing":J
    cmp-long v6, v4, v2

    if-lez v6, :cond_3

    iget-object v6, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long v7, v0, v4

    .line 957
    invoke-virtual {v6, v0, v1, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 959
    :cond_3
    iget-boolean v6, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz v6, :cond_4

    .line 960
    sub-long v6, p1, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2

    .line 961
    :cond_4
    iget-wide v6, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    cmp-long v8, v0, v6

    if-lez v8, :cond_5

    .line 962
    iget-wide v6, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    sub-long v6, v0, v6

    sub-long v6, v4, v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2

    .line 964
    :cond_5
    return-wide v4
.end method

.method public final characteristics()I
    .locals 1

    .line 993
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4051

    return v0
.end method

.method public final estimateSize()J
    .locals 2

    .line 989
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract makeSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            ")TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method protected final permitStatus()Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    .locals 5

    .line 971
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 972
    sget-object v0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    return-object v0

    .line 974
    :cond_0
    iget-boolean v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz v0, :cond_1

    sget-object v0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->UNLIMITED:Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    goto :goto_0

    :cond_1
    sget-object v0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    :goto_0
    return-object v0
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 979
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 980
    return-object v4

    .line 982
    :cond_0
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    .line 983
    .local v0, "split":Lj$/util/Spliterator;, "TT_SPLITR;"
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->makeSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v4

    :goto_0
    return-object v4
.end method
