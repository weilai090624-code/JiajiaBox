.class final Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GroupUpdater.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;->executeUpdate(Lio/nekohasekai/sagernet/database/ProxyGroup;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "io.nekohasekai.sagernet.group.GroupUpdater$Companion$executeUpdate$2"
    f = "GroupUpdater.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x3
    }
    l = {
        0x88,
        0x8f,
        0x90,
        0x97,
        0x9b,
        0x9c
    }
    m = "invokeSuspend"
    n = {
        "$this$coroutineScope",
        "$this$coroutineScope",
        "subscription",
        "userInterface",
        "$this$coroutineScope",
        "userInterface"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $byUser:Z

.field final synthetic $proxyGroup:Lio/nekohasekai/sagernet/database/ProxyGroup;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/database/ProxyGroup;ZLkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->$proxyGroup:Lio/nekohasekai/sagernet/database/ProxyGroup;

    iput-boolean p2, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->$byUser:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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

    new-instance v0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;

    iget-object v1, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->$proxyGroup:Lio/nekohasekai/sagernet/database/ProxyGroup;

    iget-boolean v2, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->$byUser:Z

    invoke-direct {v0, v1, v2, p2}, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 134
    iget v1, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_178

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_172

    :pswitch_19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_15a

    :pswitch_1e
    iget-object v1, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/nekohasekai/sagernet/database/GroupManager$Interface;

    .local v1, "userInterface":Lio/nekohasekai/sagernet/database/GroupManager$Interface;
    :try_start_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_27

    goto/16 :goto_133

    .line 153
    :catchall_27
    move-exception v3

    goto/16 :goto_135

    .line 134
    .end local v1    # "userInterface":Lio/nekohasekai/sagernet/database/GroupManager$Interface;
    :pswitch_2a
    iget-object v0, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .local v0, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_10d

    .end local v0    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :pswitch_33
    iget-object v1, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lio/nekohasekai/sagernet/database/GroupManager$Interface;

    .restart local v1    # "userInterface":Lio/nekohasekai/sagernet/database/GroupManager$Interface;
    iget-object v5, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$1:Ljava/lang/Object;

    check-cast v5, Lio/nekohasekai/sagernet/database/SubscriptionBean;

    .local v5, "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    iget-object v6, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .local v6, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v1

    move-object v1, p1

    goto/16 :goto_e7

    .end local v1    # "userInterface":Lio/nekohasekai/sagernet/database/GroupManager$Interface;
    .end local v5    # "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    .end local v6    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :pswitch_46
    iget-object v1, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .local v1, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v1

    goto :goto_86

    .end local v1    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_4f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 135
    .restart local v1    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    sget-object v5, Lio/nekohasekai/sagernet/group/GroupUpdater;->Companion:Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;->getUpdating()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->$proxyGroup:Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f

    invoke-static {v1, v4, v3, v4}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 136
    :cond_6f
    sget-object v5, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    iget-object v6, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->$proxyGroup:Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v6

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->label:I

    invoke-virtual {v5, v6, v7, v8}, Lio/nekohasekai/sagernet/database/GroupManager;->postReload(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_85

    .line 134
    return-object v0

    .line 136
    :cond_85
    move-object v6, v1

    .line 138
    .end local v1    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v6    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :goto_86
    iget-object v1, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->$proxyGroup:Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v1

    .line 139
    .restart local v5    # "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/bg/BaseService$State;->getConnected()Z

    move-result v1

    .line 140
    .local v1, "connected":Z
    sget-object v7, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/GroupManager;->getUserInterface()Lio/nekohasekai/sagernet/database/GroupManager$Interface;

    move-result-object v7

    .line 142
    .local v7, "userInterface":Lio/nekohasekai/sagernet/database/GroupManager$Interface;
    iget-boolean v8, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->$byUser:Z

    if-eqz v8, :cond_115

    iget-object v8, v5, Lio/nekohasekai/sagernet/database/SubscriptionBean;->link:Ljava/lang/String;

    const/4 v9, 0x2

    if-eqz v8, :cond_b3

    const-string v10, "http://"

    invoke-static {v8, v10, v2, v9, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-ne v8, v3, :cond_b3

    const/4 v8, 0x1

    goto :goto_b4

    :cond_b3
    const/4 v8, 0x0

    :goto_b4
    if-nez v8, :cond_be

    iget-object v8, v5, Lio/nekohasekai/sagernet/database/SubscriptionBean;->updateWhenConnectedOnly:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_115

    :cond_be
    if-nez v1, :cond_115

    .line 143
    .end local v1    # "connected":Z
    if-eqz v7, :cond_f5

    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v1

    const v8, 0x7f1302c6

    invoke-virtual {v1, v8}, Lio/nekohasekai/sagernet/SagerNet;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v8, "getString(...)"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v6, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$1:Ljava/lang/Object;

    iput-object v7, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$2:Ljava/lang/Object;

    iput v9, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->label:I

    invoke-interface {v7, v1, v8}, Lio/nekohasekai/sagernet/database/GroupManager$Interface;->confirm(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_e4

    .line 134
    return-object v0

    .line 143
    :cond_e4
    move-object v12, v1

    move-object v1, p1

    move-object p1, v12

    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_e7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_f1

    move-object p1, v1

    goto :goto_f5

    :cond_f1
    move-object p1, v1

    move-object v11, v5

    move-object v1, v7

    goto :goto_117

    .line 144
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v5    # "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    .end local v7    # "userInterface":Lio/nekohasekai/sagernet/database/GroupManager$Interface;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_f5
    :goto_f5
    sget-object v1, Lio/nekohasekai/sagernet/group/GroupUpdater;->Companion:Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;

    iget-object v2, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->$proxyGroup:Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v6, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$2:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->label:I

    invoke-virtual {v1, v2, v5}, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;->finishUpdate(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_10c

    .line 134
    return-object v0

    .line 144
    :cond_10c
    move-object v0, v6

    .line 145
    .end local v6    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v0    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :goto_10d
    invoke-static {v0, v4, v3, v4}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 146
    .end local v0    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 150
    .restart local v5    # "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    .restart local v7    # "userInterface":Lio/nekohasekai/sagernet/database/GroupManager$Interface;
    :cond_115
    move-object v11, v5

    move-object v1, v7

    .end local v5    # "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    .end local v7    # "userInterface":Lio/nekohasekai/sagernet/database/GroupManager$Interface;
    .local v1, "userInterface":Lio/nekohasekai/sagernet/database/GroupManager$Interface;
    .local v11, "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    :goto_117
    nop

    .line 151
    :try_start_118
    sget-object v5, Lio/nekohasekai/sagernet/group/RawUpdater;->INSTANCE:Lio/nekohasekai/sagernet/group/RawUpdater;

    iget-object v6, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->$proxyGroup:Lio/nekohasekai/sagernet/database/ProxyGroup;

    iget-boolean v9, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->$byUser:Z

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$2:Ljava/lang/Object;

    const/4 v7, 0x4

    iput v7, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->label:I

    move-object v7, v11

    move-object v8, v1

    invoke-virtual/range {v5 .. v10}, Lio/nekohasekai/sagernet/group/RawUpdater;->doUpdate(Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/database/SubscriptionBean;Lio/nekohasekai/sagernet/database/GroupManager$Interface;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_130
    .catchall {:try_start_118 .. :try_end_130} :catchall_27

    .end local v11    # "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    if-ne v2, v0, :cond_133

    .line 134
    return-object v0

    .line 152
    :cond_133
    :goto_133
    const/4 v2, 0x1

    .end local v1    # "userInterface":Lio/nekohasekai/sagernet/database/GroupManager$Interface;
    goto :goto_173

    .line 154
    .restart local v1    # "userInterface":Lio/nekohasekai/sagernet/database/GroupManager$Interface;
    .local v3, "e":Ljava/lang/Throwable;
    :goto_135
    sget-object v5, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    invoke-virtual {v5, v3}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 155
    if-eqz v1, :cond_15b

    iget-object v5, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->$proxyGroup:Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-static {v3}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .end local v1    # "userInterface":Lio/nekohasekai/sagernet/database/GroupManager$Interface;
    .end local v3    # "e":Ljava/lang/Throwable;
    const-string v3, "<get-readableMessage>(...)"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$2:Ljava/lang/Object;

    const/4 v7, 0x5

    iput v7, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->label:I

    invoke-interface {v1, v5, v6, v3}, Lio/nekohasekai/sagernet/database/GroupManager$Interface;->onUpdateFailure(Lio/nekohasekai/sagernet/database/ProxyGroup;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_15a

    .line 134
    return-object v0

    .line 155
    :cond_15a
    :goto_15a
    nop

    .line 156
    :cond_15b
    sget-object v1, Lio/nekohasekai/sagernet/group/GroupUpdater;->Companion:Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;

    iget-object v3, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->$proxyGroup:Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->L$2:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion$executeUpdate$2;->label:I

    invoke-virtual {v1, v3, v5}, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;->finishUpdate(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_172

    .line 134
    return-object v0

    .line 157
    :cond_172
    :goto_172
    nop

    :goto_173
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 158
    return-object v0

    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_46
        :pswitch_33
        :pswitch_2a
        :pswitch_1e
        :pswitch_19
        :pswitch_14
    .end packed-switch
.end method
