.class abstract Lj$/util/stream/Streams$AbstractStreamBuilderImpl;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Lj$/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field count:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 291
    .local p0, "this":Lj$/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lj$/util/stream/Streams-IA;)V
    .registers 2

    invoke-direct {p0}, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .line 314
    .local p0, "this":Lj$/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    const/16 v0, 0x4450

    return v0
.end method

.method public estimateSize()J
    .registers 3

    .line 309
    .local p0, "this":Lj$/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    iget v0, p0, Lj$/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$forEachRemaining(Lj$/util/Spliterator;Ljava/util/function/Consumer;)V

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

.method public trySplit()Lj$/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 304
    .local p0, "this":Lj$/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    const/4 v0, 0x0

    return-object v0
.end method
