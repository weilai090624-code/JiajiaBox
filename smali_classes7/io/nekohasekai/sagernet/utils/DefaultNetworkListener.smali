.class public final Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;
.super Ljava/lang/Object;
.source "DefaultNetworkListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$Callback;,
        Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u001c\u001dB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J,\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00012\u0014\u0010\n\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0012\u0004\u0012\u00020\u00080\u000bH\u0086@\u00a2\u0006\u0002\u0010\rJ\u000e\u0010\u000e\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u0016\u0010\u0010\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0001H\u0086@\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u001a\u001a\u00020\u0008H\u0002J\u0008\u0010\u001b\u001a\u00020\u0008H\u0002R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0014\u001a\n \u0016*\u0004\u0018\u00010\u00150\u0015X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;",
        "",
        "<init>",
        "()V",
        "networkActor",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;",
        "start",
        "",
        "key",
        "listener",
        "Lkotlin/Function1;",
        "Landroid/net/Network;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "get",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "stop",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fallback",
        "",
        "request",
        "Landroid/net/NetworkRequest;",
        "kotlin.jvm.PlatformType",
        "Landroid/net/NetworkRequest;",
        "mainHandler",
        "Landroid/os/Handler;",
        "register",
        "unregister",
        "NetworkMessage",
        "Callback",
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
.field public static final INSTANCE:Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;

.field private static fallback:Z

.field private static final mainHandler:Landroid/os/Handler;

.field private static final networkActor:Lkotlinx/coroutines/channels/SendChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final request:Landroid/net/NetworkRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->INSTANCE:Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;

    .line 34
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/ActorKt;->actor$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->networkActor:Lkotlinx/coroutines/channels/SendChannel;

    .line 111
    nop

    .line 104
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    move-object v1, v0

    .local v1, "$this$request_u24lambda_u241":Landroid/net/NetworkRequest$Builder;
    const/4 v2, 0x0

    .line 105
    .local v2, "$i$a$-apply-DefaultNetworkListener$request$1":I
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 106
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 107
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ne v3, v4, :cond_0

    .line 108
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 109
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 111
    :cond_0
    nop

    .line 104
    .end local v1    # "$this$request_u24lambda_u241":Landroid/net/NetworkRequest$Builder;
    .end local v2    # "$i$a$-apply-DefaultNetworkListener$request$1":I
    nop

    .line 111
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->request:Landroid/net/NetworkRequest;

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getNetworkActor$p()Lkotlinx/coroutines/channels/SendChannel;
    .locals 1

    .line 20
    sget-object v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->networkActor:Lkotlinx/coroutines/channels/SendChannel;

    return-object v0
.end method

.method public static final synthetic access$register(Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;)V
    .locals 0
    .param p0, "$this"    # Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;

    .line 20
    invoke-direct {p0}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->register()V

    return-void
.end method

.method public static final synthetic access$unregister(Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;)V
    .locals 0
    .param p0, "$this"    # Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;

    .line 20
    invoke-direct {p0}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->unregister()V

    return-void
.end method

.method private final register()V
    .locals 5

    .line 125
    nop

    .line 126
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->fallback:Z

    .line 127
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 128
    const/16 v3, 0x1f

    if-gt v3, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 129
    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getConnectivity()Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 130
    sget-object v2, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->request:Landroid/net/NetworkRequest;

    sget-object v3, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$Callback;->INSTANCE:Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$Callback;

    check-cast v3, Landroid/net/ConnectivityManager$NetworkCallback;

    sget-object v4, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->mainHandler:Landroid/os/Handler;

    .line 129
    invoke-virtual {v1, v2, v3, v4}, Landroid/net/ConnectivityManager;->registerBestMatchingNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto/16 :goto_3

    .line 133
    :cond_1
    const/16 v4, 0x1c

    if-gt v4, v2, :cond_2

    if-ge v2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 134
    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getConnectivity()Landroid/net/ConnectivityManager;

    move-result-object v1

    sget-object v2, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->request:Landroid/net/NetworkRequest;

    sget-object v3, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$Callback;->INSTANCE:Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$Callback;

    check-cast v3, Landroid/net/ConnectivityManager$NetworkCallback;

    sget-object v4, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_3

    .line 136
    :cond_3
    const/16 v3, 0x1a

    if-gt v3, v2, :cond_4

    if-ge v2, v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    .line 137
    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getConnectivity()Landroid/net/ConnectivityManager;

    move-result-object v1

    sget-object v2, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$Callback;->INSTANCE:Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$Callback;

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    sget-object v3, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_3

    .line 139
    :cond_5
    const/16 v4, 0x18

    if-gt v4, v2, :cond_6

    if-ge v2, v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_7

    .line 140
    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getConnectivity()Landroid/net/ConnectivityManager;

    move-result-object v1

    sget-object v2, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$Callback;->INSTANCE:Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$Callback;

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_3

    .line 143
    :cond_7
    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getConnectivity()Landroid/net/ConnectivityManager;

    move-result-object v1

    sget-object v2, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->request:Landroid/net/NetworkRequest;

    sget-object v3, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$Callback;->INSTANCE:Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$Callback;

    check-cast v3, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 149
    sput-boolean v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->fallback:Z

    .line 151
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private final unregister()V
    .locals 2

    .line 153
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getConnectivity()Landroid/net/ConnectivityManager;

    move-result-object v0

    sget-object v1, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$Callback;->INSTANCE:Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$Callback;

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method


# virtual methods
.method public final get(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/net/Network;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$get$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$get$1;

    iget v1, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$get$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$get$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$get$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$get$1;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$get$1;-><init>(Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$get$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 78
    iget v3, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$get$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v2, 0x0

    .local v2, "$i$a$-run-DefaultNetworkListener$get$2":I
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_2

    .end local v2    # "$i$a$-run-DefaultNetworkListener$get$2":I
    :pswitch_1
    const/4 v3, 0x0

    .local v3, "$i$a$-run-DefaultNetworkListener$get$2":I
    iget-object v4, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$get$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;

    .local v4, "$this$get_u24lambda_u240":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v3    # "$i$a$-run-DefaultNetworkListener$get$2":I
    .end local v4    # "$this$get_u24lambda_u240":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-boolean v3, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->fallback:Z

    if-eqz v3, :cond_2

    .line 79
    sget-object v2, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getConnectivity()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_3

    .line 80
    :cond_1
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2

    .line 81
    :cond_2
    new-instance v3, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;

    invoke-direct {v3}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;-><init>()V

    move-object v4, v3

    .restart local v4    # "$this$get_u24lambda_u240":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;
    const/4 v3, 0x0

    .line 82
    .restart local v3    # "$i$a$-run-DefaultNetworkListener$get$2":I
    sget-object v5, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->networkActor:Lkotlinx/coroutines/channels/SendChannel;

    iput-object v4, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$get$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$get$1;->label:I

    invoke-interface {v5, v4, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_3

    .line 78
    return-object v2

    .line 83
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;->getResponse()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v5

    const/4 v6, 0x0

    iput-object v6, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$get$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$get$1;->label:I

    invoke-interface {v5, v0}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "$this$get_u24lambda_u240":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;
    if-ne v4, v2, :cond_4

    .line 78
    return-object v2

    .line 83
    :cond_4
    move v2, v3

    .end local v3    # "$i$a$-run-DefaultNetworkListener$get$2":I
    .restart local v2    # "$i$a$-run-DefaultNetworkListener$get$2":I
    :goto_2
    move-object v2, v4

    check-cast v2, Landroid/net/Network;

    .line 81
    .end local v2    # "$i$a$-run-DefaultNetworkListener$get$2":I
    nop

    .line 84
    :goto_3
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final start(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "listener"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Network;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 76
    sget-object v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->networkActor:Lkotlinx/coroutines/channels/SendChannel;

    new-instance v1, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Start;

    invoke-direct {v1, p1, p2}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Start;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1, p3}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final stop(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 86
    sget-object v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->networkActor:Lkotlinx/coroutines/channels/SendChannel;

    new-instance v1, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Stop;

    invoke-direct {v1, p1}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Stop;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
