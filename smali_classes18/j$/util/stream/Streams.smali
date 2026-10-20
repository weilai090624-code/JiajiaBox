.class final Lj$/util/stream/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/Streams$ConcatSpliterator;,
        Lj$/util/stream/Streams$DoubleStreamBuilderImpl;,
        Lj$/util/stream/Streams$LongStreamBuilderImpl;,
        Lj$/util/stream/Streams$IntStreamBuilderImpl;,
        Lj$/util/stream/Streams$StreamBuilderImpl;,
        Lj$/util/stream/Streams$AbstractStreamBuilderImpl;,
        Lj$/util/stream/Streams$RangeLongSpliterator;,
        Lj$/util/stream/Streams$RangeIntSpliterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Error;

    const-string v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Runnable;
    .param p1, "b"    # Ljava/lang/Runnable;

    .line 836
    new-instance v0, Lj$/util/stream/Streams$1;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/Streams$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static composedClose(Lj$/util/stream/BaseStream;Lj$/util/stream/BaseStream;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/BaseStream<",
            "**>;",
            "Lj$/util/stream/BaseStream<",
            "**>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 865
    .local p0, "a":Lj$/util/stream/BaseStream;, "Ljava/util/stream/BaseStream<**>;"
    .local p1, "b":Lj$/util/stream/BaseStream;, "Ljava/util/stream/BaseStream<**>;"
    new-instance v0, Lj$/util/stream/Streams$2;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/Streams$2;-><init>(Lj$/util/stream/BaseStream;Lj$/util/stream/BaseStream;)V

    return-object v0
.end method
