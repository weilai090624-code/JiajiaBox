.class public final synthetic Lj$/io/DesugarBufferedReader;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lines(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;
    .locals 3
    .param p0, "this"    # Ljava/io/BufferedReader;

    .line 566
    new-instance v0, Lj$/io/DesugarBufferedReaderLinesIterator;

    invoke-direct {v0, p0}, Lj$/io/DesugarBufferedReaderLinesIterator;-><init>(Ljava/io/BufferedReader;)V

    .line 568
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v1, 0x110

    invoke-static {v0, v1}, Lj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v1

    return-object v1
.end method
