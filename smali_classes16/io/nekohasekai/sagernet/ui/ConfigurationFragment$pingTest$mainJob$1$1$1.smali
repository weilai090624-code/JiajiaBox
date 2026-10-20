.class final Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigurationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.nekohasekai.sagernet.ui.ConfigurationFragment$pingTest$mainJob$1$1$1"
    f = "ConfigurationFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $icmpPing:Z

.field final synthetic $profiles:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;ZLio/nekohasekai/sagernet/ui/ConfigurationFragment;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;",
            "Z",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->$profiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->$test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    iput-boolean p3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->$icmpPing:Z

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v6, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->$profiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->$test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->$icmpPing:Z

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;ZLio/nekohasekai/sagernet/ui/ConfigurationFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 737
    iget v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p1, "$result":Ljava/lang/Object;
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 738
    .local v0, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :cond_0
    :goto_0
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 739
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->$profiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/database/ProxyEntity;

    if-nez v1, :cond_1

    .end local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    goto/16 :goto_4

    .line 741
    .restart local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v1, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setStatus(I)V

    .line 742
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v3, "address":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v4

    iget-object v4, v4, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 743
    iget-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v5, "element"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lio/nekohasekai/sagernet/ktx/NetsKt;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_4

    .line 744
    nop

    .line 745
    :try_start_0
    sget-object v4, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getUnderlyingNetwork()Landroid/net/Network;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .local v4, "$this$invokeSuspend_u24lambda_u240":[Ljava/net/InetAddress;
    const/4 v7, 0x0

    .line 746
    .local v7, "$i$a$-apply-ConfigurationFragment$pingTest$mainJob$1$1$1$1":I
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v8, v4

    if-nez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_3

    .line 747
    aget-object v8, v4, v2

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    .end local v4    # "$this$invokeSuspend_u24lambda_u240":[Ljava/net/InetAddress;
    :cond_3
    nop

    .line 745
    .end local v7    # "$i$a$-apply-ConfigurationFragment$pingTest$mainJob$1$1$1$1":I
    goto :goto_2

    .line 750
    :catch_0
    move-exception v4

    .line 753
    :cond_4
    :goto_2
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 754
    iget-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lio/nekohasekai/sagernet/ktx/NetsKt;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_5

    .line 755
    .end local v3    # "address":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-virtual {v1, v5}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setStatus(I)V

    .line 756
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v2

    const v3, 0x7f1300a6

    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/SagerNet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setError(Ljava/lang/String;)V

    .line 757
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->$test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-virtual {v2, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->update(Lio/nekohasekai/sagernet/database/ProxyEntity;)V

    .line 758
    .end local v1    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    goto/16 :goto_0

    .line 760
    .restart local v1    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .restart local v3    # "address":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_5
    nop

    .line 761
    :try_start_1
    iget-boolean v4, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->$icmpPing:Z

    if-nez v4, :cond_0

    .line 765
    sget-object v4, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getUnderlyingNetwork()Landroid/net/Network;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    if-nez v4, :cond_7

    .line 766
    :cond_6
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 765
    :cond_7
    nop

    .line 764
    nop

    .line 767
    .local v4, "socket":Ljava/net/Socket;
    nop

    .line 768
    const/16 v7, 0xbb8

    :try_start_2
    invoke-virtual {v4, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 769
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    check-cast v8, Ljava/net/SocketAddress;

    invoke-virtual {v4, v8}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 770
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 771
    .local v8, "start":J
    nop

    .line 772
    new-instance v10, Ljava/net/InetSocketAddress;

    .line 773
    iget-object v11, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v12

    iget-object v12, v12, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverPort:Ljava/lang/Integer;

    .end local v3    # "address":Lkotlin/jvm/internal/Ref$ObjectRef;
    const-string v3, "serverPort"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 772
    invoke-direct {v10, v11, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    check-cast v10, Ljava/net/SocketAddress;

    .line 774
    nop

    .line 771
    invoke-virtual {v4, v10, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 776
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_8

    .line 781
    .end local v8    # "start":J
    :try_start_3
    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v4    # "socket":Ljava/net/Socket;
    goto/16 :goto_4

    .line 777
    .restart local v4    # "socket":Ljava/net/Socket;
    .restart local v8    # "start":J
    :cond_8
    :try_start_4
    invoke-virtual {v1, v6}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setStatus(I)V

    .line 778
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v8

    long-to-int v3, v6

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setPing(I)V

    .line 779
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->$test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-virtual {v3, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->update(Lio/nekohasekai/sagernet/database/ProxyEntity;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 781
    .end local v8    # "start":J
    :try_start_5
    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 782
    .end local v4    # "socket":Ljava/net/Socket;
    goto/16 :goto_0

    .line 781
    .restart local v4    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v3

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .end local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local v1    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 784
    .end local v4    # "socket":Ljava/net/Socket;
    .restart local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .restart local v1    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 785
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 786
    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v4}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 788
    .local v3, "message":Ljava/lang/String;
    iget-boolean v4, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->$icmpPing:Z

    const v6, 0x7f1300b1

    if-eqz v4, :cond_9

    .line 789
    .end local v3    # "message":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setStatus(I)V

    .line 790
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v2, v6}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setError(Ljava/lang/String;)V

    goto :goto_3

    .line 792
    .restart local v3    # "message":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1, v5}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setStatus(I)V

    .line 793
    nop

    .line 794
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const-string v7, "failed:"

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-static {v4, v7, v2, v5, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 795
    .end local v3    # "message":Ljava/lang/String;
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    const v3, 0x7f1300b0

    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 794
    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setError(Ljava/lang/String;)V

    goto :goto_3

    .line 797
    .restart local v3    # "message":Ljava/lang/String;
    :cond_a
    nop

    .line 798
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const-string v7, "ECONNREFUSED"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v4, v7, v2, v5, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 799
    .end local v3    # "message":Ljava/lang/String;
    nop

    .line 800
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    const v3, 0x7f1300ac

    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 799
    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setError(Ljava/lang/String;)V

    goto :goto_3

    .line 803
    .restart local v3    # "message":Ljava/lang/String;
    :cond_b
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const-string v7, "ENETUNREACH"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v4, v7, v2, v5, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 804
    .end local v3    # "message":Ljava/lang/String;
    nop

    .line 805
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v2, v6}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 804
    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setError(Ljava/lang/String;)V

    goto :goto_3

    .line 809
    .restart local v3    # "message":Ljava/lang/String;
    :cond_c
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setStatus(I)V

    .line 810
    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setError(Ljava/lang/String;)V

    .line 815
    .end local v3    # "message":Ljava/lang/String;
    :goto_3
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1$1$1;->$test:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-virtual {v2, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->update(Lio/nekohasekai/sagernet/database/ProxyEntity;)V

    .end local v1    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    goto/16 :goto_0

    .line 818
    .end local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :cond_d
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
