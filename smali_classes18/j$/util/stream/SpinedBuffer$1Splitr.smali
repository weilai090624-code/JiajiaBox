.class Lj$/util/stream/SpinedBuffer$1Splitr;
.super Ljava/lang/Object;
.source "SpinedBuffer.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/SpinedBuffer;->spliterator()Lj$/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final lastSpineElementFence:I

.field final lastSpineIndex:I

.field splChunk:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field splElementIndex:I

.field splSpineIndex:I

.field final synthetic this$0:Lj$/util/stream/SpinedBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 280
    const-class v0, Lj$/util/stream/SpinedBuffer;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/SpinedBuffer;IIII)V
    .registers 7
    .param p1, "this$0"    # Lj$/util/stream/SpinedBuffer;
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I

    .line 302
    .local p0, "this":Lj$/util/stream/SpinedBuffer$1Splitr;, "Ljava/util/stream/SpinedBuffer$1Splitr;"
    iput-object p1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->this$0:Lj$/util/stream/SpinedBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput p2, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    .line 304
    iput p3, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    .line 305
    iput p4, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 306
    iput p5, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    .line 307
    nop

    .line 308
    iget-object v0, p1, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-nez v0, :cond_15

    iget-object v0, p1, Lj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    goto :goto_19

    :cond_15
    iget-object v0, p1, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v0, v0, p2

    :goto_19
    iput-object v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    .line 309
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .line 323
    .local p0, "this":Lj$/util/stream/SpinedBuffer$1Splitr;, "Ljava/util/stream/SpinedBuffer$1Splitr;"
    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .registers 6

    .line 313
    .local p0, "this":Lj$/util/stream/SpinedBuffer$1Splitr;, "Ljava/util/stream/SpinedBuffer$1Splitr;"
    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v0, v1, :cond_e

    .line 314
    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    int-to-long v0, v0

    iget v2, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_28

    .line 318
    :cond_e
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->this$0:Lj$/util/stream/SpinedBuffer;

    iget-object v0, v0, Lj$/util/stream/SpinedBuffer;->priorElementCount:[J

    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    aget-wide v1, v0, v1

    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->this$0:Lj$/util/stream/SpinedBuffer;

    iget-object v0, v0, Lj$/util/stream/SpinedBuffer;->priorElementCount:[J

    iget v3, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    aget-wide v3, v0, v3

    sub-long/2addr v1, v3

    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    int-to-long v3, v0

    sub-long v0, v1, v3

    .line 313
    :goto_28
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 347
    .local p0, "this":Lj$/util/stream/SpinedBuffer$1Splitr;, "Ljava/util/stream/SpinedBuffer$1Splitr;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-lt v0, v1, :cond_15

    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v0, v1, :cond_57

    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    if-ge v0, v1, :cond_57

    .line 351
    :cond_15
    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 353
    .local v0, "i":I
    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    .local v1, "sp":I
    :goto_19
    iget v2, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ge v1, v2, :cond_32

    .line 354
    iget-object v2, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->this$0:Lj$/util/stream/SpinedBuffer;

    iget-object v2, v2, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 355
    .local v2, "chunk":[Ljava/lang/Object;, "[TE;"
    :goto_23
    array-length v3, v2

    if-ge v0, v3, :cond_2e

    .line 356
    aget-object v3, v2, v0

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 358
    :cond_2e
    const/4 v0, 0x0

    .line 353
    .end local v2    # "chunk":[Ljava/lang/Object;, "[TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 361
    .end local v1    # "sp":I
    :cond_32
    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v2, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v1, v2, :cond_3b

    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    goto :goto_43

    :cond_3b
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->this$0:Lj$/util/stream/SpinedBuffer;

    iget-object v1, v1, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    aget-object v1, v1, v2

    .line 362
    .local v1, "chunk":[Ljava/lang/Object;, "[TE;"
    :goto_43
    iget v2, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    .line 363
    .local v2, "hElementIndex":I
    :goto_45
    if-ge v0, v2, :cond_4f

    .line 364
    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 367
    :cond_4f
    iget v3, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    iput v3, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    .line 368
    iget v3, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    iput v3, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 370
    .end local v0    # "i":I
    .end local v1    # "chunk":[Ljava/lang/Object;, "[TE;"
    .end local v2    # "hElementIndex":I
    :cond_57
    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .registers 2

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getComparator(Lj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .registers 3

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .registers 2

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 328
    .local p0, "this":Lj$/util/stream/SpinedBuffer$1Splitr;, "Ljava/util/stream/SpinedBuffer$1Splitr;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_18

    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v0, v1, :cond_17

    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    if-ge v0, v1, :cond_17

    goto :goto_18

    .line 342
    :cond_17
    return v2

    .line 332
    :cond_18
    :goto_18
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 334
    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4a

    .line 335
    iput v2, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 336
    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    .line 337
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->this$0:Lj$/util/stream/SpinedBuffer;

    iget-object v0, v0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-eqz v0, :cond_4a

    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-gt v0, v1, :cond_4a

    .line 338
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->this$0:Lj$/util/stream/SpinedBuffer;

    iget-object v0, v0, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    .line 340
    :cond_4a
    return v3
.end method

.method public trySplit()Lj$/util/Spliterator;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 374
    .local p0, "this":Lj$/util/stream/SpinedBuffer$1Splitr;, "Ljava/util/stream/SpinedBuffer$1Splitr;"
    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ge v0, v1, :cond_33

    .line 376
    new-instance v0, Lj$/util/stream/SpinedBuffer$1Splitr;

    iget-object v3, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->this$0:Lj$/util/stream/SpinedBuffer;

    iget v4, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->this$0:Lj$/util/stream/SpinedBuffer;

    iget-object v1, v1, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    array-length v7, v1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lj$/util/stream/SpinedBuffer$1Splitr;-><init>(Lj$/util/stream/SpinedBuffer;IIII)V

    .line 379
    .local v0, "ret":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TE;>;"
    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    iput v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    .line 380
    const/4 v1, 0x0

    iput v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 381
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->this$0:Lj$/util/stream/SpinedBuffer;

    iget-object v1, v1, Lj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    .line 382
    return-object v0

    .line 384
    .end local v0    # "ret":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TE;>;"
    :cond_33
    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_55

    .line 385
    iget v0, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 386
    .local v0, "t":I
    if-nez v0, :cond_44

    .line 387
    return-object v2

    .line 389
    :cond_44
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v3, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Lj$/util/DesugarArrays;->spliterator([Ljava/lang/Object;II)Lj$/util/Spliterator;

    move-result-object v1

    .line 390
    .local v1, "ret":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TE;>;"
    iget v2, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 391
    return-object v1

    .line 395
    .end local v0    # "t":I
    .end local v1    # "ret":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TE;>;"
    :cond_55
    return-object v2
.end method
