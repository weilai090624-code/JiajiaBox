.class final Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;
.super Lj$/util/stream/StreamSpliterators$ArrayBuffer;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators$ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/StreamSpliterators$ArrayBuffer;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 1461
    .local p0, "this":Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    invoke-direct {p0}, Lj$/util/stream/StreamSpliterators$ArrayBuffer;-><init>()V

    .line 1462
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    .line 1463
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1467
    .local p0, "this":Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->index:I

    aput-object p1, v0, v1

    .line 1468
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public forEach(Ljava/util/function/Consumer;J)V
    .registers 8
    .param p2, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;J)V"
        }
    .end annotation

    .line 1471
    .local p0, "this":Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    int-to-long v1, v0

    cmp-long v3, v1, p2

    if-gez v3, :cond_10

    .line 1473
    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 1474
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1471
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1476
    .end local v0    # "i":I
    :cond_10
    return-void
.end method
