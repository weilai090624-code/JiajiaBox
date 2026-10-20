.class final Lj$/util/stream/SortedOps;
.super Ljava/lang/Object;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/SortedOps$DoubleSortingSink;,
        Lj$/util/stream/SortedOps$SizedDoubleSortingSink;,
        Lj$/util/stream/SortedOps$AbstractDoubleSortingSink;,
        Lj$/util/stream/SortedOps$LongSortingSink;,
        Lj$/util/stream/SortedOps$SizedLongSortingSink;,
        Lj$/util/stream/SortedOps$AbstractLongSortingSink;,
        Lj$/util/stream/SortedOps$IntSortingSink;,
        Lj$/util/stream/SortedOps$SizedIntSortingSink;,
        Lj$/util/stream/SortedOps$AbstractIntSortingSink;,
        Lj$/util/stream/SortedOps$RefSortingSink;,
        Lj$/util/stream/SortedOps$SizedRefSortingSink;,
        Lj$/util/stream/SortedOps$AbstractRefSortingSink;,
        Lj$/util/stream/SortedOps$OfDouble;,
        Lj$/util/stream/SortedOps$OfLong;,
        Lj$/util/stream/SortedOps$OfInt;,
        Lj$/util/stream/SortedOps$OfRef;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeDouble(Lj$/util/stream/AbstractPipeline;)Lj$/util/stream/DoubleStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Double;",
            "*>;)",
            "Lj$/util/stream/DoubleStream;"
        }
    .end annotation

    .line 93
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    new-instance v0, Lj$/util/stream/SortedOps$OfDouble;

    invoke-direct {v0, p0}, Lj$/util/stream/SortedOps$OfDouble;-><init>(Lj$/util/stream/AbstractPipeline;)V

    return-object v0
.end method

.method static makeInt(Lj$/util/stream/AbstractPipeline;)Lj$/util/stream/IntStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Integer;",
            "*>;)",
            "Lj$/util/stream/IntStream;"
        }
    .end annotation

    .line 73
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    new-instance v0, Lj$/util/stream/SortedOps$OfInt;

    invoke-direct {v0, p0}, Lj$/util/stream/SortedOps$OfInt;-><init>(Lj$/util/stream/AbstractPipeline;)V

    return-object v0
.end method

.method static makeLong(Lj$/util/stream/AbstractPipeline;)Lj$/util/stream/LongStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Long;",
            "*>;)",
            "Lj$/util/stream/LongStream;"
        }
    .end annotation

    .line 83
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    new-instance v0, Lj$/util/stream/SortedOps$OfLong;

    invoke-direct {v0, p0}, Lj$/util/stream/SortedOps$OfLong;-><init>(Lj$/util/stream/AbstractPipeline;)V

    return-object v0
.end method

.method static makeRef(Lj$/util/stream/AbstractPipeline;)Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/AbstractPipeline<",
            "*TT;*>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 51
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    new-instance v0, Lj$/util/stream/SortedOps$OfRef;

    invoke-direct {v0, p0}, Lj$/util/stream/SortedOps$OfRef;-><init>(Lj$/util/stream/AbstractPipeline;)V

    return-object v0
.end method

.method static makeRef(Lj$/util/stream/AbstractPipeline;Ljava/util/Comparator;)Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/AbstractPipeline<",
            "*TT;*>;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 63
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    new-instance v0, Lj$/util/stream/SortedOps$OfRef;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/SortedOps$OfRef;-><init>(Lj$/util/stream/AbstractPipeline;Ljava/util/Comparator;)V

    return-object v0
.end method
