.class public final Lcom/google/common/util/concurrent/ClosingFuture;
.super Ljava/lang/Object;
.source "ClosingFuture.java"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
    value = "Use ClosingFuture.from(Futures.immediate*Future)"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ClosingFuture$State;,
        Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;,
        Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;,
        Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;,
        Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;,
        Lcom/google/common/util/concurrent/ClosingFuture$Combiner2;,
        Lcom/google/common/util/concurrent/ClosingFuture$Combiner;,
        Lcom/google/common/util/concurrent/ClosingFuture$Peeker;,
        Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;,
        Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloser;,
        Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;,
        Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;,
        Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable;,
        Lcom/google/common/util/concurrent/ClosingFuture$ClosingCallable;,
        Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final closeables:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

.field private final future:Lcom/google/common/util/concurrent/FluentFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/FluentFuture<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/common/util/concurrent/ClosingFuture$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 200
    const-class v0, Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/ClosingFuture;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 617
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    .local p1, "callable":Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable;, "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/common/util/concurrent/ClosingFuture$State;->OPEN:Lcom/google/common/util/concurrent/ClosingFuture$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 590
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;-><init>(Lcom/google/common/util/concurrent/ClosingFuture$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->closeables:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    .line 618
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture$3;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable;)V

    .line 620
    invoke-static {v0}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;->create(Lcom/google/common/util/concurrent/AsyncCallable;)Lcom/google/common/util/concurrent/TrustedListenableFutureTask;

    move-result-object v0

    .line 639
    .local v0, "task":Lcom/google/common/util/concurrent/TrustedListenableFutureTask;, "Lcom/google/common/util/concurrent/TrustedListenableFutureTask<TV;>;"
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 640
    iput-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->future:Lcom/google/common/util/concurrent/FluentFuture;

    .line 641
    return-void
.end method

.method private constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture$ClosingCallable;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ClosingFuture$ClosingCallable<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 597
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    .local p1, "callable":Lcom/google/common/util/concurrent/ClosingFuture$ClosingCallable;, "Lcom/google/common/util/concurrent/ClosingFuture$ClosingCallable<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/common/util/concurrent/ClosingFuture$State;->OPEN:Lcom/google/common/util/concurrent/ClosingFuture$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 590
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;-><init>(Lcom/google/common/util/concurrent/ClosingFuture$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->closeables:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    .line 598
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture$2;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$ClosingCallable;)V

    .line 600
    invoke-static {v0}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/TrustedListenableFutureTask;

    move-result-object v0

    .line 613
    .local v0, "task":Lcom/google/common/util/concurrent/TrustedListenableFutureTask;, "Lcom/google/common/util/concurrent/TrustedListenableFutureTask<TV;>;"
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 614
    iput-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->future:Lcom/google/common/util/concurrent/FluentFuture;

    .line 615
    return-void
.end method

.method private constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 593
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    .local p1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/common/util/concurrent/ClosingFuture$State;->OPEN:Lcom/google/common/util/concurrent/ClosingFuture$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 590
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;-><init>(Lcom/google/common/util/concurrent/ClosingFuture$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->closeables:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    .line 594
    invoke-static {p1}, Lcom/google/common/util/concurrent/FluentFuture;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->future:Lcom/google/common/util/concurrent/FluentFuture;

    .line 595
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ClosingFuture$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p2, "x1"    # Lcom/google/common/util/concurrent/ClosingFuture$1;

    .line 198
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/FluentFuture;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/ClosingFuture;

    .line 198
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->future:Lcom/google/common/util/concurrent/FluentFuture;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/ClosingFuture;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/ClosingFuture;

    .line 198
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ClosingFuture;->close()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/ClosingFuture;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    .line 198
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture;->becomeSubsumedInto(Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$State;Lcom/google/common/util/concurrent/ClosingFuture$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/ClosingFuture;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/ClosingFuture$State;
    .param p2, "x2"    # Lcom/google/common/util/concurrent/ClosingFuture$State;

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/ClosingFuture;->checkAndUpdateState(Lcom/google/common/util/concurrent/ClosingFuture$State;Lcom/google/common/util/concurrent/ClosingFuture$State;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;Lcom/google/common/util/concurrent/ClosingFuture;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/ClosingFuture;

    .line 198
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture;->provideValueAndCloser(Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;Lcom/google/common/util/concurrent/ClosingFuture;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/ClosingFuture;

    .line 198
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->closeables:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    return-object v0
.end method

.method static synthetic access$3200()Ljava/util/logging/Logger;
    .locals 1

    .line 198
    sget-object v0, Lcom/google/common/util/concurrent/ClosingFuture;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$3300(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/Closeable;
    .param p1, "x1"    # Ljava/util/concurrent/Executor;

    .line 198
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture;->closeQuietly(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private becomeSubsumedInto(Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)V
    .locals 2
    .param p1, "otherCloseables"    # Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    .line 1142
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    sget-object v0, Lcom/google/common/util/concurrent/ClosingFuture$State;->OPEN:Lcom/google/common/util/concurrent/ClosingFuture$State;

    sget-object v1, Lcom/google/common/util/concurrent/ClosingFuture$State;->SUBSUMED:Lcom/google/common/util/concurrent/ClosingFuture$State;

    invoke-direct {p0, v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture;->checkAndUpdateState(Lcom/google/common/util/concurrent/ClosingFuture$State;Lcom/google/common/util/concurrent/ClosingFuture$State;)V

    .line 1143
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->closeables:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->add(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    .line 1144
    return-void
.end method

.method private catchingAsyncMoreGeneric(Ljava/lang/Class;Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
    .locals 2
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            "W:TV;>(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction<",
            "-TX;TW;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV;>;"
        }
    .end annotation

    .line 988
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;, "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction<-TX;TW;>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$8;

    invoke-direct {v0, p0, p2}, Lcom/google/common/util/concurrent/ClosingFuture$8;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;)V

    .line 1001
    .local v0, "asyncFunction":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<TX;TW;>;"
    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture;->future:Lcom/google/common/util/concurrent/FluentFuture;

    invoke-virtual {v1, p1, v0, p3}, Lcom/google/common/util/concurrent/FluentFuture;->catchingAsync(Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/ClosingFuture;->derive(Lcom/google/common/util/concurrent/FluentFuture;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    return-object v1
.end method

.method private catchingMoreGeneric(Ljava/lang/Class;Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
    .locals 2
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            "W:TV;>(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction<",
            "-TX;TW;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV;>;"
        }
    .end annotation

    .line 889
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;, "Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction<-TX;TW;>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$7;

    invoke-direct {v0, p0, p2}, Lcom/google/common/util/concurrent/ClosingFuture$7;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;)V

    .line 903
    .local v0, "applyFallback":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<TX;TW;>;"
    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture;->future:Lcom/google/common/util/concurrent/FluentFuture;

    invoke-virtual {v1, p1, v0, p3}, Lcom/google/common/util/concurrent/FluentFuture;->catchingAsync(Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/ClosingFuture;->derive(Lcom/google/common/util/concurrent/FluentFuture;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    return-object v1
.end method

.method private checkAndUpdateState(Lcom/google/common/util/concurrent/ClosingFuture$State;Lcom/google/common/util/concurrent/ClosingFuture$State;)V
    .locals 2
    .param p1, "oldState"    # Lcom/google/common/util/concurrent/ClosingFuture$State;
    .param p2, "newState"    # Lcom/google/common/util/concurrent/ClosingFuture$State;

    .line 2176
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    nop

    .line 2177
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/ClosingFuture;->compareAndUpdateState(Lcom/google/common/util/concurrent/ClosingFuture$State;Lcom/google/common/util/concurrent/ClosingFuture$State;)Z

    move-result v0

    .line 2176
    const-string v1, "Expected state to be %s, but it was %s"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2181
    return-void
.end method

.method private close()V
    .locals 3

    .line 1131
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    sget-object v0, Lcom/google/common/util/concurrent/ClosingFuture;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "closing {0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1132
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->closeables:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->close()V

    .line 1133
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V
    .locals 5
    .param p0, "closeable"    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 2151
    if-nez p0, :cond_0

    .line 2152
    return-void

    .line 2155
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$11;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ClosingFuture$11;-><init>(Ljava/io/Closeable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    goto :goto_0

    .line 2166
    :catch_0
    move-exception v0

    .line 2167
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    sget-object v1, Lcom/google/common/util/concurrent/ClosingFuture;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2168
    sget-object v1, Lcom/google/common/util/concurrent/ClosingFuture;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 2169
    const-string v4, "while submitting close to %s; will close inline"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2168
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2171
    :cond_1
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/common/util/concurrent/ClosingFuture;->closeQuietly(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    .line 2173
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private compareAndUpdateState(Lcom/google/common/util/concurrent/ClosingFuture$State;Lcom/google/common/util/concurrent/ClosingFuture$State;)Z
    .locals 1
    .param p1, "oldState"    # Lcom/google/common/util/concurrent/ClosingFuture$State;
    .param p2, "newState"    # Lcom/google/common/util/concurrent/ClosingFuture$State;

    .line 2184
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1, p2}, Landroidx/camera/view/PreviewView$1$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private derive(Lcom/google/common/util/concurrent/FluentFuture;)Lcom/google/common/util/concurrent/ClosingFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/FluentFuture<",
            "TU;>;)",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1136
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    .local p1, "future":Lcom/google/common/util/concurrent/FluentFuture;, "Lcom/google/common/util/concurrent/FluentFuture<TU;>;"
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/ClosingFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 1137
    .local v0, "derived":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TU;>;"
    iget-object v1, v0, Lcom/google/common/util/concurrent/ClosingFuture;->closeables:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/ClosingFuture;->becomeSubsumedInto(Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)V

    .line 1138
    return-object v0
.end method

.method public static eventuallyClosing(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
    .locals 3
    .param p1, "closingExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 440
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TC;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 442
    .local v0, "closingFuture":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TC;>;"
    new-instance v1, Lcom/google/common/util/concurrent/ClosingFuture$1;

    invoke-direct {v1, v0, p1}, Lcom/google/common/util/concurrent/ClosingFuture$1;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;Ljava/util/concurrent/Executor;)V

    .line 453
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 442
    invoke-static {p0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 454
    return-object v0
.end method

.method public static from(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ClosingFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV;>;"
        }
    .end annotation

    .line 411
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ClosingFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method

.method private static provideValueAndCloser(Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;Lcom/google/common/util/concurrent/ClosingFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "V:TC;>(",
            "Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer<",
            "TC;>;",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 1101
    .local p0, "consumer":Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;, "Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer<TC;>;"
    .local p1, "closingFuture":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloser;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloser;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;)V

    invoke-interface {p0, v0}, Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;->accept(Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloser;)V

    .line 1102
    return-void
.end method

.method public static submit(Lcom/google/common/util/concurrent/ClosingFuture$ClosingCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ClosingFuture$ClosingCallable<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV;>;"
        }
    .end annotation

    .line 388
    .local p0, "callable":Lcom/google/common/util/concurrent/ClosingFuture$ClosingCallable;, "Lcom/google/common/util/concurrent/ClosingFuture$ClosingCallable<TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture;-><init>(Lcom/google/common/util/concurrent/ClosingFuture$ClosingCallable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static submitAsync(Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV;>;"
        }
    .end annotation

    .line 400
    .local p0, "callable":Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable;, "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable<TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture;-><init>(Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static varargs whenAllComplete(Lcom/google/common/util/concurrent/ClosingFuture;[Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;[",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;)",
            "Lcom/google/common/util/concurrent/ClosingFuture$Combiner;"
        }
    .end annotation

    .line 475
    .local p0, "future1":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<*>;"
    .local p1, "moreFutures":[Lcom/google/common/util/concurrent/ClosingFuture;, "[Lcom/google/common/util/concurrent/ClosingFuture<*>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->asList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/ClosingFuture;->whenAllComplete(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ClosingFuture$Combiner;

    move-result-object v0

    return-object v0
.end method

.method public static whenAllComplete(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ClosingFuture$Combiner;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;>;)",
            "Lcom/google/common/util/concurrent/ClosingFuture$Combiner;"
        }
    .end annotation

    .line 464
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/util/concurrent/ClosingFuture<*>;>;"
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;-><init>(ZLjava/lang/Iterable;Lcom/google/common/util/concurrent/ClosingFuture$1;)V

    return-object v0
.end method

.method public static whenAllSucceed(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$Combiner2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV1;>;",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV2;>;)",
            "Lcom/google/common/util/concurrent/ClosingFuture$Combiner2<",
            "TV1;TV2;>;"
        }
    .end annotation

    .line 501
    .local p0, "future1":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV1;>;"
    .local p1, "future2":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV2;>;"
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner2;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$1;)V

    return-object v0
.end method

.method public static whenAllSucceed(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV1;>;",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV2;>;",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV3;>;)",
            "Lcom/google/common/util/concurrent/ClosingFuture$Combiner3<",
            "TV1;TV2;TV3;>;"
        }
    .end annotation

    .line 518
    .local p0, "future1":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV1;>;"
    .local p1, "future2":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV2;>;"
    .local p2, "future3":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV3;>;"
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$1;)V

    return-object v0
.end method

.method public static whenAllSucceed(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            "V4:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV1;>;",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV2;>;",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV3;>;",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV4;>;)",
            "Lcom/google/common/util/concurrent/ClosingFuture$Combiner4<",
            "TV1;TV2;TV3;TV4;>;"
        }
    .end annotation

    .line 541
    .local p0, "future1":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV1;>;"
    .local p1, "future2":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV2;>;"
    .local p2, "future3":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV3;>;"
    .local p3, "future4":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV4;>;"
    new-instance v6, Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$1;)V

    return-object v6
.end method

.method public static whenAllSucceed(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            "V4:",
            "Ljava/lang/Object;",
            "V5:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV1;>;",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV2;>;",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV3;>;",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV4;>;",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV5;>;)",
            "Lcom/google/common/util/concurrent/ClosingFuture$Combiner5<",
            "TV1;TV2;TV3;TV4;TV5;>;"
        }
    .end annotation

    .line 566
    .local p0, "future1":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV1;>;"
    .local p1, "future2":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV2;>;"
    .local p2, "future3":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV3;>;"
    .local p3, "future4":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV4;>;"
    .local p4, "future5":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV5;>;"
    new-instance v7, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$1;)V

    return-object v7
.end method

.method public static varargs whenAllSucceed(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture;[Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$Combiner;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;[",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;)",
            "Lcom/google/common/util/concurrent/ClosingFuture$Combiner;"
        }
    .end annotation

    .line 584
    .local p0, "future1":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<*>;"
    .local p1, "future2":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<*>;"
    .local p2, "future3":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<*>;"
    .local p3, "future4":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<*>;"
    .local p4, "future5":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<*>;"
    .local p5, "future6":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<*>;"
    .local p6, "moreFutures":[Lcom/google/common/util/concurrent/ClosingFuture;, "[Lcom/google/common/util/concurrent/ClosingFuture<*>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/util/concurrent/ClosingFuture;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    .line 585
    invoke-static {p0, v0}, Lcom/google/common/collect/FluentIterable;->of(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    .line 586
    invoke-virtual {v0, p6}, Lcom/google/common/collect/FluentIterable;->append([Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    .line 584
    invoke-static {v0}, Lcom/google/common/util/concurrent/ClosingFuture;->whenAllSucceed(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ClosingFuture$Combiner;

    move-result-object v0

    return-object v0
.end method

.method public static whenAllSucceed(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ClosingFuture$Combiner;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;>;)",
            "Lcom/google/common/util/concurrent/ClosingFuture$Combiner;"
        }
    .end annotation

    .line 486
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/util/concurrent/ClosingFuture<*>;>;"
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;-><init>(ZLjava/lang/Iterable;Lcom/google/common/util/concurrent/ClosingFuture$1;)V

    return-object v0
.end method

.method public static withoutCloser(Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/AsyncFunction<",
            "TV;TU;>;)",
            "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction<",
            "TV;TU;>;"
        }
    .end annotation

    .line 831
    .local p0, "function":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<TV;TU;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$6;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ClosingFuture$6;-><init>(Lcom/google/common/util/concurrent/AsyncFunction;)V

    return-object v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .line 1122
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    sget-object v0, Lcom/google/common/util/concurrent/ClosingFuture;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "cancelling {0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1123
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->future:Lcom/google/common/util/concurrent/FluentFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/FluentFuture;->cancel(Z)Z

    move-result v0

    .line 1124
    .local v0, "cancelled":Z
    if-eqz v0, :cond_0

    .line 1125
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ClosingFuture;->close()V

    .line 1127
    :cond_0
    return v0
.end method

.method public catching(Ljava/lang/Class;Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV;>;"
        }
    .end annotation

    .line 883
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;, "Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction<-TX;+TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/ClosingFuture;->catchingMoreGeneric(Ljava/lang/Class;Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v0

    return-object v0
.end method

.method public catchingAsync(Ljava/lang/Class;Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV;>;"
        }
    .end annotation

    .line 980
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;, "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction<-TX;+TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/ClosingFuture;->catchingAsyncMoreGeneric(Ljava/lang/Class;Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 3

    .line 2144
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ClosingFuture$State;

    sget-object v1, Lcom/google/common/util/concurrent/ClosingFuture$State;->OPEN:Lcom/google/common/util/concurrent/ClosingFuture$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2145
    sget-object v0, Lcom/google/common/util/concurrent/ClosingFuture;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Uh oh! An open ClosingFuture has leaked and will close: {0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2146
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ClosingFuture;->finishToFuture()Lcom/google/common/util/concurrent/FluentFuture;

    .line 2148
    :cond_0
    return-void
.end method

.method public finishToFuture()Lcom/google/common/util/concurrent/FluentFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/FluentFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1021
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    sget-object v0, Lcom/google/common/util/concurrent/ClosingFuture$State;->OPEN:Lcom/google/common/util/concurrent/ClosingFuture$State;

    sget-object v1, Lcom/google/common/util/concurrent/ClosingFuture$State;->WILL_CLOSE:Lcom/google/common/util/concurrent/ClosingFuture$State;

    invoke-direct {p0, v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture;->compareAndUpdateState(Lcom/google/common/util/concurrent/ClosingFuture$State;Lcom/google/common/util/concurrent/ClosingFuture$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    sget-object v0, Lcom/google/common/util/concurrent/ClosingFuture;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "will close {0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1023
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->future:Lcom/google/common/util/concurrent/FluentFuture;

    new-instance v1, Lcom/google/common/util/concurrent/ClosingFuture$9;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/ClosingFuture$9;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;)V

    .line 1032
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 1023
    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/FluentFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 1034
    :cond_0
    sget-object v0, Lcom/google/common/util/concurrent/ClosingFuture$12;->$SwitchMap$com$google$common$util$concurrent$ClosingFuture$State:[I

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ClosingFuture$State;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/ClosingFuture$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1049
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1046
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finishToFuture() twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1040
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finishToFuture() after calling finishToValueAndCloser()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1036
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finishToFuture() after deriving another step"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1052
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->future:Lcom/google/common/util/concurrent/FluentFuture;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public finishToValueAndCloser(Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1068
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    .local p1, "consumer":Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;, "Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer<-TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-object v0, Lcom/google/common/util/concurrent/ClosingFuture$State;->OPEN:Lcom/google/common/util/concurrent/ClosingFuture$State;

    sget-object v1, Lcom/google/common/util/concurrent/ClosingFuture$State;->WILL_CREATE_VALUE_AND_CLOSER:Lcom/google/common/util/concurrent/ClosingFuture$State;

    invoke-direct {p0, v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture;->compareAndUpdateState(Lcom/google/common/util/concurrent/ClosingFuture$State;Lcom/google/common/util/concurrent/ClosingFuture$State;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    sget-object v0, Lcom/google/common/util/concurrent/ClosingFuture$12;->$SwitchMap$com$google$common$util$concurrent$ClosingFuture$State:[I

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ClosingFuture$State;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/ClosingFuture$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1087
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1078
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finishToValueAndCloser() after calling finishToFuture()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1082
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finishToValueAndCloser() twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finishToValueAndCloser() after deriving another step"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->future:Lcom/google/common/util/concurrent/FluentFuture;

    new-instance v1, Lcom/google/common/util/concurrent/ClosingFuture$10;

    invoke-direct {v1, p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture$10;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/common/util/concurrent/FluentFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1097
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public statusFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 655
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->future:Lcom/google/common/util/concurrent/FluentFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/common/base/Functions;->constant(Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v1

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/FluentFuture;->transform(Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2139
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture;->future:Lcom/google/common/util/concurrent/FluentFuture;

    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction<",
            "-TV;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TU;>;"
        }
    .end annotation

    .line 693
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    .local p1, "function":Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;, "Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction<-TV;TU;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture$4;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;)V

    .line 707
    .local v0, "applyFunction":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<TV;TU;>;"
    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture;->future:Lcom/google/common/util/concurrent/FluentFuture;

    invoke-virtual {v1, v0, p2}, Lcom/google/common/util/concurrent/FluentFuture;->transformAsync(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/ClosingFuture;->derive(Lcom/google/common/util/concurrent/FluentFuture;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    return-object v1
.end method

.method public transformAsync(Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction<",
            "-TV;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TU;>;"
        }
    .end annotation

    .line 787
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    .local p1, "function":Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;, "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction<-TV;TU;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$5;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture$5;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;)V

    .line 800
    .local v0, "applyFunction":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<TV;TU;>;"
    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture;->future:Lcom/google/common/util/concurrent/FluentFuture;

    invoke-virtual {v1, v0, p2}, Lcom/google/common/util/concurrent/FluentFuture;->transformAsync(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/ClosingFuture;->derive(Lcom/google/common/util/concurrent/FluentFuture;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    return-object v1
.end method

.method whenClosedCountDown()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 2279
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture;, "Lcom/google/common/util/concurrent/ClosingFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture;->closeables:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->whenClosedCountDown()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    return-object v0
.end method
