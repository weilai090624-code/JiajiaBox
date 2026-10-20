.class public final Lio/nekohasekai/sagernet/bg/GuardedProcessPool;
.super Ljava/lang/Object;
.source "GuardedProcessPool.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Companion;,
        Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGuardedProcessPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GuardedProcessPool.kt\nio/nekohasekai/sagernet/bg/GuardedProcessPool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n1#2:126\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000  2\u00020\u0001:\u0002 !B+\u0012\"\u0010\u0002\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJS\u0010\u0015\u001a\u00020\u00062\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0014\u0008\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00180\u001a2 \u0008\u0002\u0010\u001b\u001a\u001a\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u001cH\u0007\u00a2\u0006\u0002\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0001H\u0007R,\u0010\u0002\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\""
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/GuardedProcessPool;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "onFatal",
        "Lkotlin/Function2;",
        "Ljava/io/IOException;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function2;)V",
        "Lkotlin/jvm/functions/Function2;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "processCount",
        "",
        "getProcessCount",
        "()I",
        "setProcessCount",
        "(I)V",
        "start",
        "cmd",
        "",
        "",
        "env",
        "",
        "onRestartCallback",
        "Lkotlin/Function1;",
        "(Ljava/util/List;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V",
        "close",
        "scope",
        "Companion",
        "Guard",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Companion;

.field private static final pid$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final onFatal:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/io/IOException;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private processCount:I


# direct methods
.method public static synthetic $r8$lambda$vhzj4IAi9qJpDJB8oQ4-1KJeTz8()Ljava/lang/reflect/Field;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;->pid_delegate$lambda$3()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;->Companion:Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Companion;

    .line 22
    new-instance v0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;->pid$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .param p1, "onFatal"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/io/IOException;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onFatal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;->onFatal:Lkotlin/jvm/functions/Function2;

    .line 102
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 20
    return-void
.end method

.method public static final synthetic access$getOnFatal$p(Lio/nekohasekai/sagernet/bg/GuardedProcessPool;)Lkotlin/jvm/functions/Function2;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/GuardedProcessPool;

    .line 20
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;->onFatal:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public static final synthetic access$getPid$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 20
    sget-object v0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;->pid$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final pid_delegate$lambda$3()Ljava/lang/reflect/Field;
    .locals 4

    .line 23
    const-string v0, "java.lang.ProcessManager$ProcessImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 24
    move-object v1, v0

    .line 126
    .local v1, "$this$pid_delegate_u24lambda_u243_u24lambda_u242":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 24
    .local v2, "$i$a$-apply-GuardedProcessPool$Companion$pid$2$1":I
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .end local v1    # "$this$pid_delegate_u24lambda_u243_u24lambda_u242":Ljava/lang/reflect/Field;
    .end local v2    # "$i$a$-apply-GuardedProcessPool$Companion$pid$2$1":I
    return-object v0
.end method

.method public static synthetic start$default(Lio/nekohasekai/sagernet/bg/GuardedProcessPool;Ljava/util/List;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 105
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 108
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    .line 105
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 109
    const/4 p3, 0x0

    .line 105
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;->start(Ljava/util/List;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final close(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 10
    .param p1, "scope"    # Lkotlinx/coroutines/CoroutineScope;

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/Job;

    .line 126
    .local v0, "job":Lkotlinx/coroutines/Job;
    const/4 v1, 0x0

    .line 122
    .local v1, "$i$a$-also-GuardedProcessPool$close$1":I
    new-instance v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$close$1$1;

    invoke-direct {v3, v0, v2}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$close$1$1;-><init>(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 123
    .end local v0    # "job":Lkotlinx/coroutines/Job;
    .end local v1    # "$i$a$-also-GuardedProcessPool$close$1":I
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 102
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getProcessCount()I
    .locals 1

    .line 103
    iget v0, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;->processCount:I

    return v0
.end method

.method public final setProcessCount(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 103
    iput p1, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;->processCount:I

    return-void
.end method

.method public final start(Ljava/util/List;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1, "cmd"    # Ljava/util/List;
    .param p2, "env"    # Ljava/util/Map;
    .param p3, "onRestartCallback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "env"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/nekohasekai/sagernet/utils/Commandline;->INSTANCE:Lio/nekohasekai/sagernet/utils/Commandline;

    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/utils/Commandline;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ktx/Logs;->i(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;

    invoke-direct {v0, p0, p1, p2}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;-><init>(Lio/nekohasekai/sagernet/bg/GuardedProcessPool;Ljava/util/List;Ljava/util/Map;)V

    .local v0, "$this$start_u24lambda_u240":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    const/4 v1, 0x0

    .line 113
    .local v1, "$i$a$-apply-GuardedProcessPool$start$1":I
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->start()V

    .line 114
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$start$1$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, p3, v4}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$start$1$1;-><init>(Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v5, v3

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 115
    nop

    .line 112
    .end local v0    # "$this$start_u24lambda_u240":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    .end local v1    # "$i$a$-apply-GuardedProcessPool$start$1":I
    nop

    .line 116
    iget v0, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;->processCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;->processCount:I

    .line 117
    return-void
.end method
