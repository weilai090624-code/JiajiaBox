.class final Lj$/util/stream/Streams$RangeLongSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Lj$/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeLongSpliterator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BALANCED_SPLIT_THRESHOLD:J = 0x1000000L

.field private static final RIGHT_BALANCED_SPLIT_RATIO:J = 0x8L


# instance fields
.field private from:J

.field private last:I

.field private final upTo:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 176
    const-class v0, Lj$/util/stream/Streams;

    return-void
.end method

.method private constructor <init>(JJI)V
    .locals 0
    .param p1, "from"    # J
    .param p3, "upTo"    # J
    .param p5, "last"    # I

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    nop

    .line 193
    iput-wide p1, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->from:J

    .line 194
    iput-wide p3, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->upTo:J

    .line 195
    iput p5, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->last:I

    .line 196
    return-void
.end method

.method constructor <init>(JJZ)V
    .locals 0
    .param p1, "from"    # J
    .param p3, "upTo"    # J
    .param p5, "closed"    # Z

    .line 188
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/Streams$RangeLongSpliterator;-><init>(JJI)V

    .line 189
    return-void
.end method

.method private splitPoint(J)J
    .locals 4
    .param p1, "size"    # J

    .line 285
    const-wide/32 v0, 0x1000000

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 v0, 0x2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x8

    .line 287
    .local v0, "d":J
    :goto_0
    div-long v2, p1, v0

    return-wide v2
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 241
    const/16 v0, 0x4555

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 236
    iget-wide v0, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iget-wide v2, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->from:J

    sub-long/2addr v0, v2

    iget v2, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->last:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 176
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Streams$RangeLongSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 7
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 218
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-wide v0, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->from:J

    .line 221
    .local v0, "i":J
    iget-wide v2, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->upTo:J

    .line 222
    .local v2, "hUpTo":J
    iget v4, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->last:I

    .line 223
    .local v4, "hLast":I
    iget-wide v5, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iput-wide v5, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->from:J

    .line 224
    const/4 v5, 0x0

    iput v5, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->last:I

    .line 225
    :goto_0
    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    .line 226
    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    .end local v0    # "i":J
    .local v5, "i":J
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    move-wide v0, v5

    goto :goto_0

    .line 228
    .end local v5    # "i":J
    .restart local v0    # "i":J
    :cond_0
    if-lez v4, :cond_1

    .line 230
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 232
    :cond_1
    return-void
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

    .line 248
    const/4 v0, 0x0

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

    .line 176
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Streams$RangeLongSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

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
    .locals 7
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 200
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-wide v0, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->from:J

    .line 203
    .local v0, "i":J
    iget-wide v2, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->upTo:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    .line 204
    iget-wide v2, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->from:J

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    iput-wide v2, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->from:J

    .line 205
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 206
    return v4

    .line 208
    :cond_0
    iget v2, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->last:I

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 209
    iput v3, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->last:I

    .line 210
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 211
    return v4

    .line 213
    :cond_1
    return v3
.end method

.method public trySplit()Lj$/util/Spliterator$OfLong;
    .locals 10

    .line 253
    invoke-virtual {p0}, Lj$/util/stream/Streams$RangeLongSpliterator;->estimateSize()J

    move-result-wide v0

    .line 254
    .local v0, "size":J
    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 255
    const/4 v2, 0x0

    goto :goto_0

    .line 257
    :cond_0
    new-instance v2, Lj$/util/stream/Streams$RangeLongSpliterator;

    iget-wide v4, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->from:J

    iget-wide v6, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->from:J

    invoke-direct {p0, v0, v1}, Lj$/util/stream/Streams$RangeLongSpliterator;->splitPoint(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lj$/util/stream/Streams$RangeLongSpliterator;->from:J

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/Streams$RangeLongSpliterator;-><init>(JJI)V

    .line 254
    :goto_0
    return-object v2
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lj$/util/stream/Streams$RangeLongSpliterator;->trySplit()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lj$/util/stream/Streams$RangeLongSpliterator;->trySplit()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
