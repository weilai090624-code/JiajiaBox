.class final Lj$/util/stream/StreamSpliterators$DistinctSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DistinctSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "TT;>;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final NULL_VALUE:Ljava/lang/Object;


# instance fields
.field private final s:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final seen:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private tmpSlot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1248
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->NULL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1260
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Lj$/util/Spliterator;Lj$/util/concurrent/ConcurrentHashMap;)V

    .line 1261
    return-void
.end method

.method private constructor <init>(Lj$/util/Spliterator;Lj$/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1263
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p2, "seen":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1264
    iput-object p1, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->s:Lj$/util/Spliterator;

    .line 1265
    iput-object p2, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1266
    return-void
.end method

.method private mapNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1275
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->NULL_VALUE:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1270
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    .line 1271
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public characteristics()I
    .locals 1

    .line 1312
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->s:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4055

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1307
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->s:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1292
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->s:Lj$/util/Spliterator;

    new-instance v1, Lj$/util/stream/StreamSpliterators$DistinctSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lj$/util/stream/StreamSpliterators$DistinctSpliterator$$ExternalSyntheticLambda0;-><init>(Lj$/util/stream/StreamSpliterators$DistinctSpliterator;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 1297
    return-void
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

    .line 1319
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->s:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

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

.method synthetic lambda$forEachRemaining$0$java-util-stream-StreamSpliterators$DistinctSpliterator(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 3
    .param p1, "action"    # Ljava/util/function/Consumer;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1293
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p2}, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->mapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1294
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1296
    :cond_0
    return-void
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

    .line 1280
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    nop

    :cond_0
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->s:Lj$/util/Spliterator;

    invoke-interface {v0, p0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1281
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->mapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1282
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1283
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    .line 1284
    const/4 v0, 0x1

    return v0

    .line 1287
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1301
    .local p0, "this":Lj$/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->s:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    .line 1302
    .local v0, "split":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    if-eqz v0, :cond_0

    new-instance v1, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;

    iget-object v2, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v0, v2}, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Lj$/util/Spliterator;Lj$/util/concurrent/ConcurrentHashMap;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
