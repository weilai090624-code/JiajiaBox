.class abstract Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.super Ljava/lang/Object;
.source "SpinedBuffer.java"

# interfaces
.implements Lj$/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SpinedBuffer$OfPrimitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_SP",
        "LITR::Lj$/util/Spliterator$OfPrimitive<",
        "TE;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator$OfPrimitive<",
        "TE;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final lastSpineElementFence:I

.field final lastSpineIndex:I

.field splChunk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field

.field splElementIndex:I

.field splSpineIndex:I

.field final synthetic this$0:Lj$/util/stream/SpinedBuffer$OfPrimitive;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 623
    const-class v0, Lj$/util/stream/SpinedBuffer;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/SpinedBuffer$OfPrimitive;IIII)V
    .locals 1
    .param p1, "this$0"    # Lj$/util/stream/SpinedBuffer$OfPrimitive;
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I

    .line 646
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    iput-object p1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Lj$/util/stream/SpinedBuffer$OfPrimitive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    iput p2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 648
    iput p3, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    .line 649
    iput p4, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 650
    iput p5, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    .line 651
    nop

    .line 652
    iget-object v0, p1, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p1, Lj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v0, v0, p2

    :goto_0
    iput-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    .line 653
    return-void
.end method


# virtual methods
.method abstract arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;ITT_CONS;)V"
        }
    .end annotation
.end method

.method abstract arraySpliterator(Ljava/lang/Object;II)Lj$/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;II)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public characteristics()I
    .locals 1

    .line 674
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 5

    .line 664
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v0, v1, :cond_0

    .line 665
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    int-to-long v0, v0

    iget v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    .line 669
    :cond_0
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Lj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    aget-wide v1, v0, v1

    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Lj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v3, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-wide v3, v0, v3

    sub-long/2addr v1, v3

    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    int-to-long v3, v0

    sub-long v0, v1, v3

    .line 664
    :goto_0
    return-wide v0
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 698
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    if-ge v0, v1, :cond_3

    .line 702
    :cond_0
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 704
    .local v0, "i":I
    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .local v1, "sp":I
    :goto_0
    iget v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ge v1, v2, :cond_1

    .line 705
    iget-object v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Lj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v2, v2, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 706
    .local v2, "chunk":Ljava/lang/Object;, "TT_ARR;"
    iget-object v3, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Lj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v4, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Lj$/util/stream/SpinedBuffer$OfPrimitive;

    invoke-virtual {v4, v2}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v2, v0, v4, p1}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 707
    const/4 v0, 0x0

    .line 704
    .end local v2    # "chunk":Ljava/lang/Object;, "TT_ARR;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    .end local v1    # "sp":I
    :cond_1
    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Lj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v1, v1, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    aget-object v1, v1, v2

    .line 711
    .local v1, "chunk":Ljava/lang/Object;, "TT_ARR;"
    :goto_1
    iget-object v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Lj$/util/stream/SpinedBuffer$OfPrimitive;

    iget v3, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    invoke-virtual {v2, v1, v0, v3, p1}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 713
    iget v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    iput v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 714
    iget v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    iput v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 716
    .end local v0    # "i":I
    .end local v1    # "chunk":Ljava/lang/Object;, "TT_ARR;"
    :cond_3
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

.method abstract newSpliterator(IIII)Lj$/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 679
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    return v2

    .line 683
    :cond_1
    :goto_0
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    invoke-virtual {p0, v0, v1, p1}, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 685
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Lj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v3, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 686
    iput v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 687
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 688
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Lj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-gt v0, v1, :cond_2

    .line 689
    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Lj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    .line 691
    :cond_2
    return v3
.end method

.method public trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 720
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ge v0, v1, :cond_0

    .line 722
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget-object v3, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Lj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v4, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Lj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v4, v4, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v5, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    .line 723
    invoke-virtual {v3, v4}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v3

    .line 722
    invoke-virtual {p0, v0, v1, v2, v3}, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->newSpliterator(IIII)Lj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    .line 725
    .local v0, "ret":Lj$/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    iput v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 726
    const/4 v1, 0x0

    iput v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 727
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Lj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v1, v1, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    .line 728
    return-object v0

    .line 730
    .end local v0    # "ret":Lj$/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    :cond_0
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 731
    iget v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    iget v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 732
    .local v0, "t":I
    if-nez v0, :cond_1

    .line 733
    return-object v2

    .line 735
    :cond_1
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    invoke-virtual {p0, v1, v2, v0}, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->arraySpliterator(Ljava/lang/Object;II)Lj$/util/Spliterator$OfPrimitive;

    move-result-object v1

    .line 736
    .local v1, "ret":Lj$/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    iget v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 737
    return-object v1

    .line 741
    .end local v0    # "t":I
    .end local v1    # "ret":Lj$/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    :cond_2
    return-object v2
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 623
    .local p0, "this":Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Lj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method
