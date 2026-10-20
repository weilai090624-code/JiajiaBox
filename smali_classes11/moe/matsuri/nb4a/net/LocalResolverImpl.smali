.class public final Lmoe/matsuri/nb4a/net/LocalResolverImpl;
.super Ljava/lang/Object;
.source "LocalResolverImpl.kt"

# interfaces
.implements Llibcore/LocalDNSTransport;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0017J \u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lmoe/matsuri/nb4a/net/LocalResolverImpl;",
        "Llibcore/LocalDNSTransport;",
        "<init>",
        "()V",
        "RCODE_NXDOMAIN",
        "",
        "raw",
        "",
        "networkHandle",
        "",
        "exchange",
        "",
        "ctx",
        "Llibcore/ExchangeContext;",
        "message",
        "",
        "lookup",
        "network",
        "",
        "domain",
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
.field public static final INSTANCE:Lmoe/matsuri/nb4a/net/LocalResolverImpl;

.field private static final RCODE_NXDOMAIN:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmoe/matsuri/nb4a/net/LocalResolverImpl;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/net/LocalResolverImpl;-><init>()V

    sput-object v0, Lmoe/matsuri/nb4a/net/LocalResolverImpl;->INSTANCE:Lmoe/matsuri/nb4a/net/LocalResolverImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exchange(Llibcore/ExchangeContext;[B)V
    .locals 9
    .param p1, "ctx"    # Llibcore/ExchangeContext;
    .param p2, "message"    # [B

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 38
    .local v0, "signal":Landroid/os/CancellationSignal;
    new-instance v1, Lmoe/matsuri/nb4a/net/LocalResolverImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lmoe/matsuri/nb4a/net/LocalResolverImpl$$ExternalSyntheticLambda0;-><init>(Landroid/os/CancellationSignal;)V

    invoke-virtual {p1, v1}, Llibcore/ExchangeContext;->onCancel(Llibcore/Func;)V

    .line 40
    new-instance v1, Lmoe/matsuri/nb4a/net/LocalResolverImpl$exchange$callback$1;

    invoke-direct {v1, p1}, Lmoe/matsuri/nb4a/net/LocalResolverImpl$exchange$callback$1;-><init>(Llibcore/ExchangeContext;)V

    move-object v8, v1

    .line 56
    .local v8, "callback":Lmoe/matsuri/nb4a/net/LocalResolverImpl$exchange$callback$1;
    invoke-static {}, Landroid/net/DnsResolver;->getInstance()Landroid/net/DnsResolver;

    move-result-object v1

    .line 57
    sget-object v2, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getUnderlyingNetwork()Landroid/net/Network;

    move-result-object v2

    .line 58
    nop

    .line 59
    nop

    .line 60
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 61
    nop

    .line 62
    move-object v7, v8

    check-cast v7, Landroid/net/DnsResolver$Callback;

    .line 56
    const/4 v4, 0x1

    move-object v3, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Landroid/net/DnsResolver;->rawQuery(Landroid/net/Network;[BILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    .line 64
    return-void
.end method

.method public lookup(Llibcore/ExchangeContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "ctx"    # Llibcore/ExchangeContext;
    .param p2, "network"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domain"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    .line 68
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 69
    .local v0, "signal":Landroid/os/CancellationSignal;
    new-instance v1, Lmoe/matsuri/nb4a/net/LocalResolverImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lmoe/matsuri/nb4a/net/LocalResolverImpl$$ExternalSyntheticLambda0;-><init>(Landroid/os/CancellationSignal;)V

    invoke-virtual {p1, v1}, Llibcore/ExchangeContext;->onCancel(Llibcore/Func;)V

    .line 71
    new-instance v1, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$callback$1;

    invoke-direct {v1, p1}, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$callback$1;-><init>(Llibcore/ExchangeContext;)V

    .line 101
    .local v1, "callback":Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$callback$1;
    nop

    .line 102
    const-string v3, "4"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {p2, v3, v4, v5, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 103
    :cond_0
    const-string v3, "6"

    invoke-static {p2, v3, v4, v5, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 104
    :cond_1
    nop

    .line 101
    :goto_0
    nop

    .line 106
    .local v2, "type":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    .line 107
    invoke-static {}, Landroid/net/DnsResolver;->getInstance()Landroid/net/DnsResolver;

    move-result-object v3

    .line 108
    sget-object v4, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getUnderlyingNetwork()Landroid/net/Network;

    move-result-object v4

    .line 109
    nop

    .line 110
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 111
    nop

    .line 112
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    invoke-static {v5}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object v8

    .line 113
    nop

    .line 114
    move-object v10, v1

    check-cast v10, Landroid/net/DnsResolver$Callback;

    .line 107
    const/4 v7, 0x1

    move-object v5, p3

    move-object v9, v0

    invoke-virtual/range {v3 .. v10}, Landroid/net/DnsResolver;->query(Landroid/net/Network;Ljava/lang/String;IILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    goto :goto_1

    .line 117
    :cond_2
    invoke-static {}, Landroid/net/DnsResolver;->getInstance()Landroid/net/DnsResolver;

    move-result-object v3

    .line 118
    sget-object v4, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getUnderlyingNetwork()Landroid/net/Network;

    move-result-object v4

    .line 119
    nop

    .line 120
    nop

    .line 121
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    invoke-static {v5}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object v7

    .line 122
    nop

    .line 123
    move-object v9, v1

    check-cast v9, Landroid/net/DnsResolver$Callback;

    .line 117
    const/4 v6, 0x1

    move-object v5, p3

    move-object v8, v0

    invoke-virtual/range {v3 .. v9}, Landroid/net/DnsResolver;->query(Landroid/net/Network;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    .end local v0    # "signal":Landroid/os/CancellationSignal;
    .end local v1    # "callback":Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$callback$1;
    .end local v2    # "type":Ljava/lang/Integer;
    goto :goto_1

    .line 127
    :cond_3
    new-instance v0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;

    invoke-direct {v0, p3, p1, v2}, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;-><init>(Ljava/lang/String;Llibcore/ExchangeContext;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnIoDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 149
    :goto_1
    return-void
.end method

.method public networkHandle()J
    .locals 4

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const-wide/16 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 30
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getUnderlyingNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v2

    :cond_0
    return-wide v2

    .line 32
    :cond_1
    return-wide v2
.end method

.method public raw()Z
    .locals 2

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
