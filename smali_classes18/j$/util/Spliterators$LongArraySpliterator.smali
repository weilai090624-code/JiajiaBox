.class final Lj$/util/Spliterators$LongArraySpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongArraySpliterator"
.end annotation


# instance fields
.field private final array:[J

.field private final characteristics:I

.field private final fence:I

.field private index:I


# direct methods
.method public constructor <init>([JI)V
    .locals 2
    .param p1, "array"    # [J
    .param p2, "additionalCharacteristics"    # I

    .line 1081
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Lj$/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    .line 1082
    return-void
.end method

.method public constructor <init>([JIII)V
    .locals 1
    .param p1, "array"    # [J
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "additionalCharacteristics"    # I

    .line 1093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1094
    iput-object p1, p0, Lj$/util/Spliterators$LongArraySpliterator;->array:[J

    .line 1095
    iput p2, p0, Lj$/util/Spliterators$LongArraySpliterator;->index:I

    .line 1096
    iput p3, p0, Lj$/util/Spliterators$LongArraySpliterator;->fence:I

    .line 1097
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lj$/util/Spliterators$LongArraySpliterator;->characteristics:I

    .line 1098
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 1135
    iget v0, p0, Lj$/util/Spliterators$LongArraySpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1131
    iget v0, p0, Lj$/util/Spliterators$LongArraySpliterator;->fence:I

    iget v1, p0, Lj$/util/Spliterators$LongArraySpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1067
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/Spliterators$LongArraySpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 6
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 1111
    if-eqz p1, :cond_2

    .line 1113
    iget-object v0, p0, Lj$/util/Spliterators$LongArraySpliterator;->array:[J

    move-object v1, v0

    .local v1, "a":[J
    array-length v0, v0

    iget v2, p0, Lj$/util/Spliterators$LongArraySpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-lt v0, v2, :cond_1

    iget v0, p0, Lj$/util/Spliterators$LongArraySpliterator;->index:I

    move v2, v0

    .local v2, "i":I
    if-ltz v0, :cond_1

    iput v3, p0, Lj$/util/Spliterators$LongArraySpliterator;->index:I

    if-ge v2, v3, :cond_1

    .line 1115
    :cond_0
    aget-wide v4, v1, v2

    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_0

    .line 1117
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 1112
    .end local v1    # "a":[J
    .end local v3    # "hi":I
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1140
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lj$/util/Spliterators$LongArraySpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    const/4 v0, 0x0

    return-object v0

    .line 1142
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
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

    .line 1067
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/Spliterators$LongArraySpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 3
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 1121
    if-eqz p1, :cond_1

    .line 1123
    iget v0, p0, Lj$/util/Spliterators$LongArraySpliterator;->index:I

    if-ltz v0, :cond_0

    iget v0, p0, Lj$/util/Spliterators$LongArraySpliterator;->index:I

    iget v1, p0, Lj$/util/Spliterators$LongArraySpliterator;->fence:I

    if-ge v0, v1, :cond_0

    .line 1124
    iget-object v0, p0, Lj$/util/Spliterators$LongArraySpliterator;->array:[J

    iget v1, p0, Lj$/util/Spliterators$LongArraySpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/Spliterators$LongArraySpliterator;->index:I

    aget-wide v1, v0, v1

    invoke-interface {p1, v1, v2}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1125
    const/4 v0, 0x1

    return v0

    .line 1127
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1122
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public trySplit()Lj$/util/Spliterator$OfLong;
    .locals 5

    .line 1102
    iget v0, p0, Lj$/util/Spliterators$LongArraySpliterator;->index:I

    .local v0, "lo":I
    iget v1, p0, Lj$/util/Spliterators$LongArraySpliterator;->fence:I

    add-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x1

    .line 1103
    .local v1, "mid":I
    if-lt v0, v1, :cond_0

    .line 1104
    const/4 v2, 0x0

    goto :goto_0

    .line 1105
    :cond_0
    new-instance v2, Lj$/util/Spliterators$LongArraySpliterator;

    iget-object v3, p0, Lj$/util/Spliterators$LongArraySpliterator;->array:[J

    iput v1, p0, Lj$/util/Spliterators$LongArraySpliterator;->index:I

    iget v4, p0, Lj$/util/Spliterators$LongArraySpliterator;->characteristics:I

    invoke-direct {v2, v3, v0, v1, v4}, Lj$/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    .line 1103
    :goto_0
    return-object v2
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1067
    invoke-virtual {p0}, Lj$/util/Spliterators$LongArraySpliterator;->trySplit()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 1067
    invoke-virtual {p0}, Lj$/util/Spliterators$LongArraySpliterator;->trySplit()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
