.class final Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScannerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/ScannerActivity;->onScanResultCallback(Lcom/google/zxing/Result;Z)Z
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScannerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScannerActivity.kt\nio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,231:1\n29#2:232\n*S KotlinDebug\n*F\n+ 1 ScannerActivity.kt\nio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1\n*L\n141#1:232\n*E\n"
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
    c = "io.nekohasekai.sagernet.ui.ScannerActivity$onScanResultCallback$1"
    f = "ScannerActivity.kt"
    i = {
        0x1
    }
    l = {
        0x7a,
        0x82,
        0x86,
        0x91
    }
    m = "invokeSuspend"
    n = {
        "currentGroupId"
    }
    s = {
        "J$0"
    }
.end annotation


# instance fields
.field final synthetic $result:Lcom/google/zxing/Result;

.field J$0:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ScannerActivity;


# direct methods
.method constructor <init>(Lcom/google/zxing/Result;Lio/nekohasekai/sagernet/ui/ScannerActivity;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/Result;",
            "Lio/nekohasekai/sagernet/ui/ScannerActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->$result:Lcom/google/zxing/Result;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->this$0:Lio/nekohasekai/sagernet/ui/ScannerActivity;

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

    new-instance v0, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->$result:Lcom/google/zxing/Result;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->this$0:Lio/nekohasekai/sagernet/ui/ScannerActivity;

    invoke-direct {v0, v1, v2, p2}, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;-><init>(Lcom/google/zxing/Result;Lio/nekohasekai/sagernet/ui/ScannerActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 119
    iget v1, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_134

    .end local p0    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local p0    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;
    .local p1, "$result":Ljava/lang/Object;
    :pswitch_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    goto/16 :goto_109

    :pswitch_19
    :try_start_19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1c
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_19 .. :try_end_1c} :catch_33
    .catchall {:try_start_19 .. :try_end_1c} :catchall_2f

    goto/16 :goto_d6

    :pswitch_1e
    iget-wide v4, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->J$0:J

    .local v4, "currentGroupId":J
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    :try_start_24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    goto/16 :goto_b3

    .end local v4    # "currentGroupId":J
    :pswitch_2a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2d
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_24 .. :try_end_2d} :catch_33
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2f

    move-object v1, p1

    goto :goto_59

    .line 143
    :catchall_2f
    move-exception v1

    move-object v6, p0

    goto/16 :goto_ec

    .line 138
    :catch_33
    move-exception v0

    move-object v6, p0

    goto/16 :goto_10c

    .line 119
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 120
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 121
    :try_start_3b
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->$result:Lcom/google/zxing/Result;

    if-eqz v1, :cond_e2

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e2

    .line 122
    .local v5, "text":Ljava/lang/String;
    sget-object v4, Lio/nekohasekai/sagernet/group/RawUpdater;->INSTANCE:Lio/nekohasekai/sagernet/group/RawUpdater;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->label:I

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lio/nekohasekai/sagernet/group/RawUpdater;->parseRaw$default(Lio/nekohasekai/sagernet/group/RawUpdater;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_53
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_3b .. :try_end_53} :catch_10a
    .catchall {:try_start_3b .. :try_end_53} :catchall_ea

    .end local v5    # "text":Ljava/lang/String;
    if-ne v1, v0, :cond_56

    .line 119
    return-object v0

    .line 122
    :cond_56
    move-object v11, v1

    move-object v1, p1

    move-object p1, v11

    .line 119
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_59
    :try_start_59
    check-cast p1, Ljava/util/List;

    .line 123
    .local p1, "results":Ljava/util/List;
    move-object v4, p1

    check-cast v4, Ljava/util/Collection;
    :try_end_5e
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_59 .. :try_end_5e} :catch_de
    .catchall {:try_start_59 .. :try_end_5e} :catchall_d8

    if-eqz v4, :cond_75

    :try_start_60
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4
    :try_end_64
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_60 .. :try_end_64} :catch_70
    .catchall {:try_start_60 .. :try_end_64} :catchall_69

    if-eqz v4, :cond_67

    goto :goto_75

    :cond_67
    const/4 v4, 0x0

    goto :goto_76

    .line 143
    .end local p1    # "results":Ljava/util/List;
    :catchall_69
    move-exception p1

    move-object v6, p0

    move-object v11, v1

    move-object v1, p1

    move-object p1, v11

    goto/16 :goto_ec

    .line 138
    :catch_70
    move-exception v0

    move-object v6, p0

    move-object p1, v1

    goto/16 :goto_10c

    .line 123
    .restart local p1    # "results":Ljava/util/List;
    :cond_75
    :goto_75
    const/4 v4, 0x1

    :goto_76
    if-nez v4, :cond_c1

    .line 124
    :try_start_78
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->selectedGroupForImport()J

    move-result-wide v4

    .line 125
    .restart local v4    # "currentGroupId":J
    sget-object v6, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedGroup()J

    move-result-wide v6
    :try_end_84
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_78 .. :try_end_84} :catch_de
    .catchall {:try_start_78 .. :try_end_84} :catchall_d8

    cmp-long v8, v6, v4

    if-eqz v8, :cond_8d

    .line 126
    :try_start_88
    sget-object v6, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v6, v4, v5}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedGroup(J)V
    :try_end_8d
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_88 .. :try_end_8d} :catch_70
    .catchall {:try_start_88 .. :try_end_8d} :catchall_69

    .line 129
    :cond_8d
    :try_start_8d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6
    :try_end_91
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_8d .. :try_end_91} :catch_de
    .catchall {:try_start_8d .. :try_end_91} :catchall_d8

    move-object p1, v1

    move-object v1, v6

    move-object v6, p0

    .end local v1    # "$result":Ljava/lang/Object;
    .end local p0    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;
    .local v6, "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;
    .local p1, "$result":Ljava/lang/Object;
    :goto_94
    :try_start_94
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_130

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    .line 130
    .local v7, "profile":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    sget-object v8, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    move-object v9, v6

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v1, v6, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->L$0:Ljava/lang/Object;

    iput-wide v4, v6, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->J$0:J

    const/4 v10, 0x2

    iput v10, v6, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->label:I

    invoke-virtual {v8, v4, v5, v7, v9}, Lio/nekohasekai/sagernet/database/ProfileManager;->createProfile(JLio/nekohasekai/sagernet/fmt/AbstractBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    .end local v7    # "profile":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    if-ne v8, v0, :cond_b3

    .line 119
    return-object v0

    .line 131
    :cond_b3
    :goto_b3
    iget-object v7, v6, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->this$0:Lio/nekohasekai/sagernet/ui/ScannerActivity;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getImportedN()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I
    :try_end_bc
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_94 .. :try_end_bc} :catch_bf
    .catchall {:try_start_94 .. :try_end_bc} :catchall_bd

    goto :goto_94

    .line 143
    .end local v4    # "currentGroupId":J
    :catchall_bd
    move-exception v1

    goto :goto_ec

    .line 138
    :catch_bf
    move-exception v0

    goto :goto_10c

    .line 134
    .end local v6    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_c1
    :try_start_c1
    new-instance p1, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1$1;

    invoke-direct {p1, v3}, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x3

    iput v4, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->label:I

    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_d2
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_c1 .. :try_end_d2} :catch_de
    .catchall {:try_start_c1 .. :try_end_d2} :catchall_d8

    if-ne p1, v0, :cond_d5

    .line 119
    return-object v0

    .line 134
    :cond_d5
    move-object p1, v1

    .end local v1    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_d6
    move-object v6, p0

    goto :goto_130

    .line 143
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :catchall_d8
    move-exception p1

    move-object v6, p0

    move-object v11, v1

    move-object v1, p1

    move-object p1, v11

    goto :goto_ec

    .line 138
    :catch_de
    move-exception v0

    move-object v6, p0

    move-object p1, v1

    goto :goto_10c

    .line 121
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_e2
    :try_start_e2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "QR code not found"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "$result":Ljava/lang/Object;
    throw v1
    :try_end_ea
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_e2 .. :try_end_ea} :catch_10a
    .catchall {:try_start_e2 .. :try_end_ea} :catchall_ea

    .line 143
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_ea
    move-exception v1

    move-object v6, p0

    .line 144
    .local v1, "e":Ljava/lang/Throwable;
    .restart local v6    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;
    :goto_ec
    sget-object v2, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    invoke-virtual {v2, v1}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 145
    new-instance v2, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1$3;

    iget-object v4, v6, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->this$0:Lio/nekohasekai/sagernet/ui/ScannerActivity;

    invoke-direct {v2, v4, v1, v3}, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1$3;-><init>(Lio/nekohasekai/sagernet/ui/ScannerActivity;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object v4, v6

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v3, v6, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v6, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->label:I

    invoke-static {v2, v4}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "e":Ljava/lang/Throwable;
    if-ne v1, v0, :cond_109

    .line 119
    return-object v0

    .line 151
    :cond_109
    :goto_109
    goto :goto_130

    .line 138
    .end local v6    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;
    :catch_10a
    move-exception v0

    move-object v6, p0

    .line 139
    .local v0, "e":Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException;
    .restart local v6    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;
    :goto_10c
    iget-object v1, v6, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->this$0:Lio/nekohasekai/sagernet/ui/ScannerActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v6, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;->this$0:Lio/nekohasekai/sagernet/ui/ScannerActivity;

    check-cast v3, Landroid/content/Context;

    const-class v4, Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v2

    .local v3, "$this$invokeSuspend_u24lambda_u240":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 140
    .local v4, "$i$a$-apply-ScannerActivity$onScanResultCallback$1$2":I
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException;->getLink()Ljava/lang/String;

    move-result-object v5

    .local v5, "$this$toUri$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 232
    .local v7, "$i$f$toUri":I
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 141
    .end local v5    # "$this$toUri$iv":Ljava/lang/String;
    .end local v7    # "$i$f$toUri":I
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 142
    nop

    .line 139
    .end local v3    # "$this$invokeSuspend_u24lambda_u240":Landroid/content/Intent;
    .end local v4    # "$i$a$-apply-ScannerActivity$onScanResultCallback$1$2":I
    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    .end local v0    # "e":Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException;
    :cond_130
    :goto_130
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_37
        :pswitch_2a
        :pswitch_1e
        :pswitch_19
        :pswitch_13
    .end packed-switch
.end method
