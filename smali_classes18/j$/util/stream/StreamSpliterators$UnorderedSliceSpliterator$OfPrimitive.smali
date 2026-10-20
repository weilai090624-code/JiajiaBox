.class abstract Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.super Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_BUFF:",
        "Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive<",
        "TT_CONS;>;T_SP",
        "LITR::Lj$/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator<",
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
.method constructor <init>(Lj$/util/Spliterator$OfPrimitive;JJ)V
    .locals 0
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    .line 1077
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "s":Lj$/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Lj$/util/Spliterator;JJ)V

    .line 1078
    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator$OfPrimitive;Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<",
            "TT;TT_CONS;TT_BUFF;TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .line 1081
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "s":Lj$/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    .local p2, "parent":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Lj$/util/Spliterator;Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V

    .line 1082
    return-void
.end method


# virtual methods
.method protected abstract acceptConsumed(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation
.end method

.method protected abstract bufferCreate(I)Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_BUFF;"
        }
    .end annotation
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 1105
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    const/4 v0, 0x0

    .line 1109
    .local v0, "sb":Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;, "TT_BUFF;"
    :goto_0
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->permitStatus()Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v1

    move-object v2, v1

    .local v2, "permitStatus":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    sget-object v3, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-eq v1, v3, :cond_5

    .line 1110
    sget-object v1, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-ne v2, v1, :cond_4

    .line 1112
    if-nez v0, :cond_0

    .line 1113
    iget v1, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->chunkSize:I

    invoke-virtual {p0, v1}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->bufferCreate(I)Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;

    move-result-object v0

    goto :goto_1

    .line 1115
    :cond_0
    invoke-virtual {v0}, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->reset()V

    .line 1117
    :goto_1
    move-object v1, v0

    .line 1118
    .local v1, "sbc":Ljava/lang/Object;, "TT_CONS;"
    const-wide/16 v3, 0x0

    .line 1119
    .local v3, "permitsRequested":J
    :cond_1
    iget-object v5, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->s:Lj$/util/Spliterator;

    check-cast v5, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v5, v1}, Lj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    move-wide v3, v5

    iget v7, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->chunkSize:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-ltz v9, :cond_1

    .line 1120
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 1121
    return-void

    .line 1122
    :cond_3
    invoke-virtual {p0, v3, v4}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->acquirePermits(J)J

    move-result-wide v5

    invoke-virtual {v0, p1, v5, v6}, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->forEach(Ljava/lang/Object;J)V

    .line 1123
    .end local v1    # "sbc":Ljava/lang/Object;, "TT_CONS;"
    .end local v3    # "permitsRequested":J
    goto :goto_0

    .line 1126
    :cond_4
    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->s:Lj$/util/Spliterator;

    check-cast v1, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v1, p1}, Lj$/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 1127
    return-void

    .line 1130
    :cond_5
    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$forEachRemaining(Lj$/util/Spliterator;Ljava/util/function/Consumer;)V

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

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 1086
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    move-object v0, p0

    .line 1090
    .local v0, "consumer":Ljava/lang/Object;, "TT_CONS;"
    :cond_0
    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->permitStatus()Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v1

    sget-object v2, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 1091
    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->s:Lj$/util/Spliterator;

    check-cast v1, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v1, v0}, Lj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1092
    return v3

    .line 1093
    :cond_1
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->acquirePermits(J)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    .line 1094
    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->acceptConsumed(Ljava/lang/Object;)V

    .line 1095
    const/4 v1, 0x1

    return v1

    .line 1098
    :cond_2
    return v3
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1069
    .local p0, "this":Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    invoke-super {p0}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
