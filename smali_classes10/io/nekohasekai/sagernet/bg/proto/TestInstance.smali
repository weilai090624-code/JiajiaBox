.class public final Lio/nekohasekai/sagernet/bg/proto/TestInstance;
.super Lio/nekohasekai/sagernet/bg/proto/BoxInstance;
.source "TestInstance.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u000c\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0014J\u000e\u0010\u0010\u001a\u00020\u000fH\u0094@\u00a2\u0006\u0002\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/proto/TestInstance;",
        "Lio/nekohasekai/sagernet/bg/proto/BoxInstance;",
        "profile",
        "Lio/nekohasekai/sagernet/database/ProxyEntity;",
        "link",
        "",
        "timeout",
        "",
        "<init>",
        "(Lio/nekohasekai/sagernet/database/ProxyEntity;Ljava/lang/String;I)V",
        "getLink",
        "()Ljava/lang/String;",
        "doTest",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "buildConfig",
        "",
        "loadConfig",
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


# instance fields
.field private final link:Ljava/lang/String;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lio/nekohasekai/sagernet/database/ProxyEntity;Ljava/lang/String;I)V
    .locals 1
    .param p1, "profile"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .param p2, "link"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    const-string v0, "profile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/bg/proto/BoxInstance;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity;)V

    .line 16
    iput-object p2, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->link:Ljava/lang/String;

    iput p3, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->timeout:I

    return-void
.end method

.method public static final synthetic access$getTimeout$p(Lio/nekohasekai/sagernet/bg/proto/TestInstance;)I
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/proto/TestInstance;

    .line 16
    iget v0, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->timeout:I

    return v0
.end method


# virtual methods
.method protected buildConfig()V
    .locals 5

    .line 44
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->getProfile()Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$default(Lio/nekohasekai/sagernet/database/ProxyEntity;ZZILjava/lang/Object;)Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->setConfig(Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;)V

    .line 45
    return-void
.end method

.method public final doTest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 20
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .local v1, "c":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 21
    .local v2, "$i$a$-suspendCoroutine-TestInstance$doTest$2":I
    new-instance v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;

    new-instance v4, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$1;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-direct {v3, v4}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, v3}, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->setProcesses(Lio/nekohasekai/sagernet/bg/GuardedProcessPool;)V

    .line 25
    new-instance v3, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;

    invoke-direct {v3, p0, v1, v5}, Lio/nekohasekai/sagernet/bg/proto/TestInstance$doTest$2$2;-><init>(Lio/nekohasekai/sagernet/bg/proto/TestInstance;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v3}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 40
    nop

    .line 20
    .end local v1    # "c":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutine-TestInstance$doTest$2":I
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->link:Ljava/lang/String;

    return-object v0
.end method

.method protected loadConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 49
    sget-boolean v0, Lio/nekohasekai/sagernet/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->getConfig()Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ktx/Logs;->d(Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->getConfig()Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getConfig()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmoe/matsuri/nb4a/net/LocalResolverImpl;->INSTANCE:Lmoe/matsuri/nb4a/net/LocalResolverImpl;

    check-cast v1, Llibcore/LocalDNSTransport;

    invoke-static {v0, v1}, Llibcore/Libcore;->newSingBoxInstance(Ljava/lang/String;Llibcore/LocalDNSTransport;)Llibcore/BoxInstance;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->setBox(Llibcore/BoxInstance;)V

    .line 51
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
