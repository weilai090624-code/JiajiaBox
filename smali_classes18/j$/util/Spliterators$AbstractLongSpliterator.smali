.class public abstract Lj$/util/Spliterators$AbstractLongSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractLongSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;
    }
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J


# direct methods
.method protected constructor <init>(JI)V
    .locals 1
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 1506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1507
    iput-wide p1, p0, Lj$/util/Spliterators$AbstractLongSpliterator;->est:J

    .line 1508
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_0

    .line 1509
    or-int/lit16 v0, p3, 0x4000

    goto :goto_0

    .line 1510
    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Lj$/util/Spliterators$AbstractLongSpliterator;->characteristics:I

    .line 1511
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 1570
    iget v0, p0, Lj$/util/Spliterators$AbstractLongSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1558
    iget-wide v0, p0, Lj$/util/Spliterators$AbstractLongSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/util/function/LongConsumer;)V

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

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfLong;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public trySplit()Lj$/util/Spliterator$OfLong;
    .locals 11

    .line 1529
    new-instance v0, Lj$/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;

    invoke-direct {v0}, Lj$/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;-><init>()V

    .line 1530
    .local v0, "holder":Lj$/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;
    iget-wide v1, p0, Lj$/util/Spliterators$AbstractLongSpliterator;->est:J

    .line 1531
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    invoke-virtual {p0, v0}, Lj$/util/Spliterators$AbstractLongSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1532
    iget v3, p0, Lj$/util/Spliterators$AbstractLongSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 1533
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    .line 1534
    long-to-int v3, v1

    .line 1535
    :cond_0
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_1

    .line 1536
    const/high16 v3, 0x2000000

    .line 1537
    :cond_1
    new-array v4, v3, [J

    .line 1538
    .local v4, "a":[J
    const/4 v5, 0x0

    .line 1539
    .local v5, "j":I
    :cond_2
    iget-wide v6, v0, Lj$/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;->value:J

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_3

    invoke-virtual {p0, v0}, Lj$/util/Spliterators$AbstractLongSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1540
    :cond_3
    iput v5, p0, Lj$/util/Spliterators$AbstractLongSpliterator;->batch:I

    .line 1541
    iget-wide v6, p0, Lj$/util/Spliterators$AbstractLongSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4

    .line 1542
    iget-wide v6, p0, Lj$/util/Spliterators$AbstractLongSpliterator;->est:J

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lj$/util/Spliterators$AbstractLongSpliterator;->est:J

    .line 1543
    :cond_4
    new-instance v6, Lj$/util/Spliterators$LongArraySpliterator;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lj$/util/Spliterators$AbstractLongSpliterator;->characteristics()I

    move-result v8

    invoke-direct {v6, v4, v7, v5, v8}, Lj$/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v6

    .line 1545
    .end local v3    # "n":I
    .end local v4    # "a":[J
    .end local v5    # "j":I
    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1489
    invoke-virtual {p0}, Lj$/util/Spliterators$AbstractLongSpliterator;->trySplit()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 1489
    invoke-virtual {p0}, Lj$/util/Spliterators$AbstractLongSpliterator;->trySplit()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
