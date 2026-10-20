.class final Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;
.super Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator<",
        "TT;",
        "Lj$/util/Spliterator<",
        "TT;>;>;",
        "Lj$/util/Spliterator<",
        "TT;>;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field tmpSlot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/Spliterator;JJ)V
    .locals 0
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;JJ)V"
        }
    .end annotation

    .line 1002
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Lj$/util/Spliterator;JJ)V

    .line 1003
    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;",
            "Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<",
            "TT;>;)V"
        }
    .end annotation

    .line 1006
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p2, "parent":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Lj$/util/Spliterator;Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V

    .line 1007
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1011
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    .line 1012
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1032
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    const/4 v0, 0x0

    .line 1036
    .local v0, "sb":Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    :goto_0
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->permitStatus()Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v1

    move-object v2, v1

    .local v2, "permitStatus":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    sget-object v3, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-eq v1, v3, :cond_5

    .line 1037
    sget-object v1, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-ne v2, v1, :cond_4

    .line 1039
    if-nez v0, :cond_0

    .line 1040
    new-instance v1, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;

    iget v3, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->chunkSize:I

    invoke-direct {v1, v3}, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;-><init>(I)V

    move-object v0, v1

    goto :goto_1

    .line 1042
    :cond_0
    invoke-virtual {v0}, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->reset()V

    .line 1043
    :goto_1
    const-wide/16 v3, 0x0

    .line 1044
    .local v3, "permitsRequested":J
    :cond_1
    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->s:Lj$/util/Spliterator;

    invoke-interface {v1, v0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    move-wide v3, v5

    iget v1, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->chunkSize:I

    int-to-long v7, v1

    cmp-long v1, v5, v7

    if-ltz v1, :cond_1

    .line 1045
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 1046
    return-void

    .line 1047
    :cond_3
    invoke-virtual {p0, v3, v4}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->acquirePermits(J)J

    move-result-wide v5

    invoke-virtual {v0, p1, v5, v6}, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->forEach(Ljava/util/function/Consumer;J)V

    .line 1048
    .end local v3    # "permitsRequested":J
    goto :goto_0

    .line 1051
    :cond_4
    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->s:Lj$/util/Spliterator;

    invoke-interface {v1, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 1052
    return-void

    .line 1055
    :cond_5
    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getComparator(Lj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method protected makeSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;
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

    .line 1059
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;-><init>(Lj$/util/Spliterator;Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;)V

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1016
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    :cond_0
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->permitStatus()Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v0

    sget-object v1, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 1019
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->s:Lj$/util/Spliterator;

    invoke-interface {v0, p0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1020
    return v2

    .line 1021
    :cond_1
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->acquirePermits(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 1022
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1023
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    .line 1024
    const/4 v0, 0x1

    return v0

    .line 1027
    :cond_2
    return v2
.end method
