.class public final synthetic Lj$/util/DesugarArrays;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "e1"    # Ljava/lang/Object;
    .param p1, "e2"    # Ljava/lang/Object;

    .line 4825
    if-eqz p0, :cond_9

    .line 4829
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 4830
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    .local v0, "eq":Z
    goto/16 :goto_0

    .line 4831
    .end local v0    # "eq":Z
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 4832
    move-object v0, p0

    check-cast v0, [B

    move-object v1, p1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto/16 :goto_0

    .line 4833
    .end local v0    # "eq":Z
    :cond_1
    instance-of v0, p0, [S

    if-eqz v0, :cond_2

    instance-of v0, p1, [S

    if-eqz v0, :cond_2

    .line 4834
    move-object v0, p0

    check-cast v0, [S

    move-object v1, p1

    check-cast v1, [S

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto/16 :goto_0

    .line 4835
    .end local v0    # "eq":Z
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    instance-of v0, p1, [I

    if-eqz v0, :cond_3

    .line 4836
    move-object v0, p0

    check-cast v0, [I

    move-object v1, p1

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 4837
    .end local v0    # "eq":Z
    :cond_3
    instance-of v0, p0, [J

    if-eqz v0, :cond_4

    instance-of v0, p1, [J

    if-eqz v0, :cond_4

    .line 4838
    move-object v0, p0

    check-cast v0, [J

    move-object v1, p1

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 4839
    .end local v0    # "eq":Z
    :cond_4
    instance-of v0, p0, [C

    if-eqz v0, :cond_5

    instance-of v0, p1, [C

    if-eqz v0, :cond_5

    .line 4840
    move-object v0, p0

    check-cast v0, [C

    move-object v1, p1

    check-cast v1, [C

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 4841
    .end local v0    # "eq":Z
    :cond_5
    instance-of v0, p0, [F

    if-eqz v0, :cond_6

    instance-of v0, p1, [F

    if-eqz v0, :cond_6

    .line 4842
    move-object v0, p0

    check-cast v0, [F

    move-object v1, p1

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 4843
    .end local v0    # "eq":Z
    :cond_6
    instance-of v0, p0, [D

    if-eqz v0, :cond_7

    instance-of v0, p1, [D

    if-eqz v0, :cond_7

    .line 4844
    move-object v0, p0

    check-cast v0, [D

    move-object v1, p1

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 4845
    .end local v0    # "eq":Z
    :cond_7
    instance-of v0, p0, [Z

    if-eqz v0, :cond_8

    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    .line 4846
    move-object v0, p0

    check-cast v0, [Z

    move-object v1, p1

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 4848
    .end local v0    # "eq":Z
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4849
    .restart local v0    # "eq":Z
    :goto_0
    return v0

    .line 4826
    .end local v0    # "eq":Z
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "e1 is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$parallelSetAll$0([Ljava/lang/Object;Ljava/util/function/IntFunction;I)V
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "generator"    # Ljava/util/function/IntFunction;
    .param p2, "i"    # I

    .line 5286
    invoke-interface {p1, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p0, p2

    return-void
.end method

.method static synthetic lambda$parallelSetAll$1([ILjava/util/function/IntUnaryOperator;I)V
    .locals 1
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava/util/function/IntUnaryOperator;
    .param p2, "i"    # I

    .line 5343
    invoke-interface {p1, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    aput v0, p0, p2

    return-void
.end method

.method static synthetic lambda$parallelSetAll$2([JLjava/util/function/IntToLongFunction;I)V
    .locals 2
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava/util/function/IntToLongFunction;
    .param p2, "i"    # I

    .line 5400
    invoke-interface {p1, p2}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method static synthetic lambda$parallelSetAll$3([DLjava/util/function/IntToDoubleFunction;I)V
    .locals 2
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava/util/function/IntToDoubleFunction;
    .param p2, "i"    # I

    .line 5457
    invoke-interface {p1, p2}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method public static parallelSetAll([DLjava/util/function/IntToDoubleFunction;)V
    .locals 2
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava/util/function/IntToDoubleFunction;

    .line 5456
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5457
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->parallel()Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lj$/util/DesugarArrays$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lj$/util/DesugarArrays$$ExternalSyntheticLambda1;-><init>([DLjava/util/function/IntToDoubleFunction;)V

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 5458
    return-void
.end method

.method public static parallelSetAll([ILjava/util/function/IntUnaryOperator;)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava/util/function/IntUnaryOperator;

    .line 5342
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5343
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->parallel()Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lj$/util/DesugarArrays$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lj$/util/DesugarArrays$$ExternalSyntheticLambda3;-><init>([ILjava/util/function/IntUnaryOperator;)V

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 5344
    return-void
.end method

.method public static parallelSetAll([JLjava/util/function/IntToLongFunction;)V
    .locals 2
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava/util/function/IntToLongFunction;

    .line 5399
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5400
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->parallel()Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lj$/util/DesugarArrays$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lj$/util/DesugarArrays$$ExternalSyntheticLambda2;-><init>([JLjava/util/function/IntToLongFunction;)V

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 5401
    return-void
.end method

.method public static parallelSetAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction<",
            "+TT;>;)V"
        }
    .end annotation

    .line 5285
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5286
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->parallel()Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lj$/util/DesugarArrays$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lj$/util/DesugarArrays$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 5287
    return-void
.end method

.method public static setAll([DLjava/util/function/IntToDoubleFunction;)V
    .locals 3
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava/util/function/IntToDoubleFunction;

    .line 5426
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 5428
    invoke-interface {p1, v0}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 5427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5429
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static setAll([ILjava/util/function/IntUnaryOperator;)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava/util/function/IntUnaryOperator;

    .line 5312
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 5314
    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    aput v1, p0, v0

    .line 5313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5315
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static setAll([JLjava/util/function/IntToLongFunction;)V
    .locals 3
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava/util/function/IntToLongFunction;

    .line 5369
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 5371
    invoke-interface {p1, v0}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 5370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5372
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction<",
            "+TT;>;)V"
        }
    .end annotation

    .line 5254
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 5256
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v0

    .line 5255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5257
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static spliterator([D)Lj$/util/Spliterator$OfDouble;
    .locals 1
    .param p0, "array"    # [D

    .line 5599
    const/16 v0, 0x410

    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliterator([DI)Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([DII)Lj$/util/Spliterator$OfDouble;
    .locals 1
    .param p0, "array"    # [D
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 5623
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Lj$/util/Spliterators;->spliterator([DIII)Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([I)Lj$/util/Spliterator$OfInt;
    .locals 1
    .param p0, "array"    # [I

    .line 5516
    const/16 v0, 0x410

    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliterator([II)Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([III)Lj$/util/Spliterator$OfInt;
    .locals 1
    .param p0, "array"    # [I
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 5540
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Lj$/util/Spliterators;->spliterator([IIII)Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([J)Lj$/util/Spliterator$OfLong;
    .locals 1
    .param p0, "array"    # [J

    .line 5557
    const/16 v0, 0x410

    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliterator([JI)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([JII)Lj$/util/Spliterator$OfLong;
    .locals 1
    .param p0, "array"    # [J
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 5581
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Lj$/util/Spliterators;->spliterator([JIII)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;)Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 5474
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/16 v0, 0x410

    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliterator([Ljava/lang/Object;I)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;II)Lj$/util/Spliterator;
    .locals 1
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 5499
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Lj$/util/Spliterators;->spliterator([Ljava/lang/Object;III)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static stream([D)Lj$/util/stream/DoubleStream;
    .locals 2
    .param p0, "array"    # [D

    .line 5735
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lj$/util/DesugarArrays;->stream([DII)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([DII)Lj$/util/stream/DoubleStream;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 5754
    invoke-static {p0, p1, p2}, Lj$/util/DesugarArrays;->spliterator([DII)Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([I)Lj$/util/stream/IntStream;
    .locals 2
    .param p0, "array"    # [I

    .line 5671
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lj$/util/DesugarArrays;->stream([III)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([III)Lj$/util/stream/IntStream;
    .locals 2
    .param p0, "array"    # [I
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 5690
    invoke-static {p0, p1, p2}, Lj$/util/DesugarArrays;->spliterator([III)Lj$/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([J)Lj$/util/stream/LongStream;
    .locals 2
    .param p0, "array"    # [J

    .line 5703
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lj$/util/DesugarArrays;->stream([JII)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([JII)Lj$/util/stream/LongStream;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 5722
    invoke-static {p0, p1, p2}, Lj$/util/DesugarArrays;->spliterator([JII)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([Ljava/lang/Object;)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 5638
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;II)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([Ljava/lang/Object;II)Lj$/util/stream/Stream;
    .locals 2
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 5658
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1, p2}, Lj$/util/DesugarArrays;->spliterator([Ljava/lang/Object;II)Lj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
