.class final Lj$/util/Spliterators$ArraySpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArraySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;

.field private final characteristics:I

.field private final fence:I

.field private index:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "additionalCharacteristics"    # I

    .line 913
    .local p0, "this":Lj$/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Lj$/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    .line 914
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;III)V
    .locals 1
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "additionalCharacteristics"    # I

    .line 925
    .local p0, "this":Lj$/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 926
    iput-object p1, p0, Lj$/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    .line 927
    iput p2, p0, Lj$/util/Spliterators$ArraySpliterator;->index:I

    .line 928
    iput p3, p0, Lj$/util/Spliterators$ArraySpliterator;->fence:I

    .line 929
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lj$/util/Spliterators$ArraySpliterator;->characteristics:I

    .line 930
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 969
    .local p0, "this":Lj$/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    iget v0, p0, Lj$/util/Spliterators$ArraySpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 965
    .local p0, "this":Lj$/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    iget v0, p0, Lj$/util/Spliterators$ArraySpliterator;->fence:I

    iget v1, p0, Lj$/util/Spliterators$ArraySpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 944
    .local p0, "this":Lj$/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz p1, :cond_2

    .line 946
    iget-object v0, p0, Lj$/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    move-object v1, v0

    .local v1, "a":[Ljava/lang/Object;
    array-length v0, v0

    iget v2, p0, Lj$/util/Spliterators$ArraySpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-lt v0, v2, :cond_1

    iget v0, p0, Lj$/util/Spliterators$ArraySpliterator;->index:I

    move v2, v0

    .local v2, "i":I
    if-ltz v0, :cond_1

    iput v3, p0, Lj$/util/Spliterators$ArraySpliterator;->index:I

    if-ge v2, v3, :cond_1

    .line 948
    :cond_0
    aget-object v0, v1, v2

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_0

    .line 950
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 945
    .end local v1    # "a":[Ljava/lang/Object;
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
            "-TT;>;"
        }
    .end annotation

    .line 974
    .local p0, "this":Lj$/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lj$/util/Spliterators$ArraySpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    const/4 v0, 0x0

    return-object v0

    .line 976
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

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 954
    .local p0, "this":Lj$/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz p1, :cond_1

    .line 956
    iget v0, p0, Lj$/util/Spliterators$ArraySpliterator;->index:I

    if-ltz v0, :cond_0

    iget v0, p0, Lj$/util/Spliterators$ArraySpliterator;->index:I

    iget v1, p0, Lj$/util/Spliterators$ArraySpliterator;->fence:I

    if-ge v0, v1, :cond_0

    .line 957
    iget-object v0, p0, Lj$/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lj$/util/Spliterators$ArraySpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/Spliterators$ArraySpliterator;->index:I

    aget-object v0, v0, v1

    .line 958
    .local v0, "e":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 959
    const/4 v1, 0x1

    return v1

    .line 961
    .end local v0    # "e":Ljava/lang/Object;, "TT;"
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 955
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 934
    .local p0, "this":Lj$/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    iget v0, p0, Lj$/util/Spliterators$ArraySpliterator;->index:I

    .local v0, "lo":I
    iget v1, p0, Lj$/util/Spliterators$ArraySpliterator;->fence:I

    add-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x1

    .line 935
    .local v1, "mid":I
    if-lt v0, v1, :cond_0

    .line 936
    const/4 v2, 0x0

    goto :goto_0

    .line 937
    :cond_0
    new-instance v2, Lj$/util/Spliterators$ArraySpliterator;

    iget-object v3, p0, Lj$/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    iput v1, p0, Lj$/util/Spliterators$ArraySpliterator;->index:I

    iget v4, p0, Lj$/util/Spliterators$ArraySpliterator;->characteristics:I

    invoke-direct {v2, v3, v0, v1, v4}, Lj$/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    .line 935
    :goto_0
    return-object v2
.end method
