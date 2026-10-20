.class public final Lj$/util/Spliterators;
.super Ljava/lang/Object;
.source "Spliterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/Spliterators$DoubleIteratorSpliterator;,
        Lj$/util/Spliterators$LongIteratorSpliterator;,
        Lj$/util/Spliterators$IntIteratorSpliterator;,
        Lj$/util/Spliterators$IteratorSpliterator;,
        Lj$/util/Spliterators$AbstractDoubleSpliterator;,
        Lj$/util/Spliterators$AbstractLongSpliterator;,
        Lj$/util/Spliterators$AbstractIntSpliterator;,
        Lj$/util/Spliterators$AbstractSpliterator;,
        Lj$/util/Spliterators$DoubleArraySpliterator;,
        Lj$/util/Spliterators$LongArraySpliterator;,
        Lj$/util/Spliterators$IntArraySpliterator;,
        Lj$/util/Spliterators$ArraySpliterator;,
        Lj$/util/Spliterators$EmptySpliterator;
    }
.end annotation


# static fields
.field private static final EMPTY_DOUBLE_SPLITERATOR:Lj$/util/Spliterator$OfDouble;

.field private static final EMPTY_INT_SPLITERATOR:Lj$/util/Spliterator$OfInt;

.field private static final EMPTY_LONG_SPLITERATOR:Lj$/util/Spliterator$OfLong;

.field private static final EMPTY_SPLITERATOR:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/Spliterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lj$/util/Spliterators$EmptySpliterator$OfRef;

    invoke-direct {v0}, Lj$/util/Spliterators$EmptySpliterator$OfRef;-><init>()V

    sput-object v0, Lj$/util/Spliterators;->EMPTY_SPLITERATOR:Lj$/util/Spliterator;

    .line 79
    new-instance v0, Lj$/util/Spliterators$EmptySpliterator$OfInt;

    invoke-direct {v0}, Lj$/util/Spliterators$EmptySpliterator$OfInt;-><init>()V

    sput-object v0, Lj$/util/Spliterators;->EMPTY_INT_SPLITERATOR:Lj$/util/Spliterator$OfInt;

    .line 95
    new-instance v0, Lj$/util/Spliterators$EmptySpliterator$OfLong;

    invoke-direct {v0}, Lj$/util/Spliterators$EmptySpliterator$OfLong;-><init>()V

    sput-object v0, Lj$/util/Spliterators;->EMPTY_LONG_SPLITERATOR:Lj$/util/Spliterator$OfLong;

    .line 111
    new-instance v0, Lj$/util/Spliterators$EmptySpliterator$OfDouble;

    invoke-direct {v0}, Lj$/util/Spliterators$EmptySpliterator$OfDouble;-><init>()V

    sput-object v0, Lj$/util/Spliterators;->EMPTY_DOUBLE_SPLITERATOR:Lj$/util/Spliterator$OfDouble;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFromToBounds(III)V
    .locals 3
    .param p0, "arrayLength"    # I
    .param p1, "origin"    # I
    .param p2, "fence"    # I

    .line 386
    if-gt p1, p2, :cond_2

    .line 390
    if-ltz p1, :cond_1

    .line 393
    if-gt p2, p0, :cond_0

    .line 396
    return-void

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 391
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 387
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origin("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > fence("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static emptyDoubleSpliterator()Lj$/util/Spliterator$OfDouble;
    .locals 1

    .line 108
    sget-object v0, Lj$/util/Spliterators;->EMPTY_DOUBLE_SPLITERATOR:Lj$/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public static emptyIntSpliterator()Lj$/util/Spliterator$OfInt;
    .locals 1

    .line 76
    sget-object v0, Lj$/util/Spliterators;->EMPTY_INT_SPLITERATOR:Lj$/util/Spliterator$OfInt;

    return-object v0
.end method

.method public static emptyLongSpliterator()Lj$/util/Spliterator$OfLong;
    .locals 1

    .line 92
    sget-object v0, Lj$/util/Spliterators;->EMPTY_LONG_SPLITERATOR:Lj$/util/Spliterator$OfLong;

    return-object v0
.end method

.method public static emptySpliterator()Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 60
    sget-object v0, Lj$/util/Spliterators;->EMPTY_SPLITERATOR:Lj$/util/Spliterator;

    return-object v0
.end method

.method public static iterator(Lj$/util/Spliterator$OfDouble;)Lj$/util/PrimitiveIterator$OfDouble;
    .locals 1
    .param p0, "spliterator"    # Lj$/util/Spliterator$OfDouble;

    .line 802
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    new-instance v0, Lj$/util/Spliterators$4Adapter;

    invoke-direct {v0, p0}, Lj$/util/Spliterators$4Adapter;-><init>(Lj$/util/Spliterator$OfDouble;)V

    return-object v0
.end method

.method public static iterator(Lj$/util/Spliterator$OfInt;)Lj$/util/PrimitiveIterator$OfInt;
    .locals 1
    .param p0, "spliterator"    # Lj$/util/Spliterator$OfInt;

    .line 712
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance v0, Lj$/util/Spliterators$2Adapter;

    invoke-direct {v0, p0}, Lj$/util/Spliterators$2Adapter;-><init>(Lj$/util/Spliterator$OfInt;)V

    return-object v0
.end method

.method public static iterator(Lj$/util/Spliterator$OfLong;)Lj$/util/PrimitiveIterator$OfLong;
    .locals 1
    .param p0, "spliterator"    # Lj$/util/Spliterator$OfLong;

    .line 757
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    new-instance v0, Lj$/util/Spliterators$3Adapter;

    invoke-direct {v0, p0}, Lj$/util/Spliterators$3Adapter;-><init>(Lj$/util/Spliterator$OfLong;)V

    return-object v0
.end method

.method public static iterator(Lj$/util/Spliterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "+TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 667
    .local p0, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<+TT;>;"
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    new-instance v0, Lj$/util/Spliterators$1Adapter;

    invoke-direct {v0, p0}, Lj$/util/Spliterators$1Adapter;-><init>(Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public static spliterator(Lj$/util/PrimitiveIterator$OfDouble;JI)Lj$/util/Spliterator$OfDouble;
    .locals 2
    .param p0, "iterator"    # Lj$/util/PrimitiveIterator$OfDouble;
    .param p1, "size"    # J
    .param p3, "characteristics"    # I

    .line 622
    new-instance v0, Lj$/util/Spliterators$DoubleIteratorSpliterator;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/PrimitiveIterator$OfDouble;

    invoke-direct {v0, v1, p1, p2, p3}, Lj$/util/Spliterators$DoubleIteratorSpliterator;-><init>(Lj$/util/PrimitiveIterator$OfDouble;JI)V

    return-object v0
.end method

.method public static spliterator([DI)Lj$/util/Spliterator$OfDouble;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "additionalCharacteristics"    # I

    .line 334
    new-instance v0, Lj$/util/Spliterators$DoubleArraySpliterator;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    invoke-direct {v0, v1, p1}, Lj$/util/Spliterators$DoubleArraySpliterator;-><init>([DI)V

    return-object v0
.end method

.method public static spliterator([DIII)Lj$/util/Spliterator$OfDouble;
    .locals 1
    .param p0, "array"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I

    .line 371
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v0, v0

    invoke-static {v0, p1, p2}, Lj$/util/Spliterators;->checkFromToBounds(III)V

    .line 372
    new-instance v0, Lj$/util/Spliterators$DoubleArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v0
.end method

.method public static spliterator(Lj$/util/PrimitiveIterator$OfInt;JI)Lj$/util/Spliterator$OfInt;
    .locals 2
    .param p0, "iterator"    # Lj$/util/PrimitiveIterator$OfInt;
    .param p1, "size"    # J
    .param p3, "characteristics"    # I

    .line 508
    new-instance v0, Lj$/util/Spliterators$IntIteratorSpliterator;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/PrimitiveIterator$OfInt;

    invoke-direct {v0, v1, p1, p2, p3}, Lj$/util/Spliterators$IntIteratorSpliterator;-><init>(Lj$/util/PrimitiveIterator$OfInt;JI)V

    return-object v0
.end method

.method public static spliterator([II)Lj$/util/Spliterator$OfInt;
    .locals 2
    .param p0, "array"    # [I
    .param p1, "additionalCharacteristics"    # I

    .line 206
    new-instance v0, Lj$/util/Spliterators$IntArraySpliterator;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-direct {v0, v1, p1}, Lj$/util/Spliterators$IntArraySpliterator;-><init>([II)V

    return-object v0
.end method

.method public static spliterator([IIII)Lj$/util/Spliterator$OfInt;
    .locals 1
    .param p0, "array"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I

    .line 239
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    invoke-static {v0, p1, p2}, Lj$/util/Spliterators;->checkFromToBounds(III)V

    .line 240
    new-instance v0, Lj$/util/Spliterators$IntArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    return-object v0
.end method

.method public static spliterator(Lj$/util/PrimitiveIterator$OfLong;JI)Lj$/util/Spliterator$OfLong;
    .locals 2
    .param p0, "iterator"    # Lj$/util/PrimitiveIterator$OfLong;
    .param p1, "size"    # J
    .param p3, "characteristics"    # I

    .line 565
    new-instance v0, Lj$/util/Spliterators$LongIteratorSpliterator;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/PrimitiveIterator$OfLong;

    invoke-direct {v0, v1, p1, p2, p3}, Lj$/util/Spliterators$LongIteratorSpliterator;-><init>(Lj$/util/PrimitiveIterator$OfLong;JI)V

    return-object v0
.end method

.method public static spliterator([JI)Lj$/util/Spliterator$OfLong;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "additionalCharacteristics"    # I

    .line 268
    new-instance v0, Lj$/util/Spliterators$LongArraySpliterator;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-direct {v0, v1, p1}, Lj$/util/Spliterators$LongArraySpliterator;-><init>([JI)V

    return-object v0
.end method

.method public static spliterator([JIII)Lj$/util/Spliterator$OfLong;
    .locals 1
    .param p0, "array"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I

    .line 305
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    array-length v0, v0

    invoke-static {v0, p1, p2}, Lj$/util/Spliterators;->checkFromToBounds(III)V

    .line 306
    new-instance v0, Lj$/util/Spliterators$LongArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/Collection;I)Lj$/util/Spliterator;
    .locals 2
    .param p1, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;I)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 420
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Lj$/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1, p1}, Lj$/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Collection;I)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/Iterator;JI)Lj$/util/Spliterator;
    .locals 2
    .param p1, "size"    # J
    .param p3, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;JI)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 451
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    new-instance v0, Lj$/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-direct {v0, v1, p1, p2, p3}, Lj$/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Iterator;JI)V

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;I)Lj$/util/Spliterator;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "additionalCharacteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 142
    new-instance v0, Lj$/util/Spliterators$ArraySpliterator;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lj$/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;III)Lj$/util/Spliterator;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "III)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 177
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0, p1, p2}, Lj$/util/Spliterators;->checkFromToBounds(III)V

    .line 178
    new-instance v0, Lj$/util/Spliterators$ArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Lj$/util/PrimitiveIterator$OfDouble;I)Lj$/util/Spliterator$OfDouble;
    .locals 2
    .param p0, "iterator"    # Lj$/util/PrimitiveIterator$OfDouble;
    .param p1, "characteristics"    # I

    .line 649
    new-instance v0, Lj$/util/Spliterators$DoubleIteratorSpliterator;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/PrimitiveIterator$OfDouble;

    invoke-direct {v0, v1, p1}, Lj$/util/Spliterators$DoubleIteratorSpliterator;-><init>(Lj$/util/PrimitiveIterator$OfDouble;I)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Lj$/util/PrimitiveIterator$OfInt;I)Lj$/util/Spliterator$OfInt;
    .locals 2
    .param p0, "iterator"    # Lj$/util/PrimitiveIterator$OfInt;
    .param p1, "characteristics"    # I

    .line 535
    new-instance v0, Lj$/util/Spliterators$IntIteratorSpliterator;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/PrimitiveIterator$OfInt;

    invoke-direct {v0, v1, p1}, Lj$/util/Spliterators$IntIteratorSpliterator;-><init>(Lj$/util/PrimitiveIterator$OfInt;I)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Lj$/util/PrimitiveIterator$OfLong;I)Lj$/util/Spliterator$OfLong;
    .locals 2
    .param p0, "iterator"    # Lj$/util/PrimitiveIterator$OfLong;
    .param p1, "characteristics"    # I

    .line 592
    new-instance v0, Lj$/util/Spliterators$LongIteratorSpliterator;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/PrimitiveIterator$OfLong;

    invoke-direct {v0, v1, p1}, Lj$/util/Spliterators$LongIteratorSpliterator;-><init>(Lj$/util/PrimitiveIterator$OfLong;I)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;
    .locals 2
    .param p1, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;I)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 478
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    new-instance v0, Lj$/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-direct {v0, v1, p1}, Lj$/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Iterator;I)V

    return-object v0
.end method
