.class public final Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;
.super Landroidx/work/CoroutineWorker;
.source "SubscriptionUpdater.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubscriptionUpdater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionUpdater.kt\nio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,97:1\n774#2:98\n865#2,2:99\n774#2:101\n865#2,2:102\n*S KotlinDebug\n*F\n+ 1 SubscriptionUpdater.kt\nio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask\n*L\n66#1:98\n66#1:99,2\n69#1:101\n69#1:102,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0010\u001a\u00020\u0011H\u0096@\u00a2\u0006\u0002\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;",
        "Landroidx/work/CoroutineWorker;",
        "appContext",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "nm",
        "Landroidx/core/app/NotificationManagerCompat;",
        "getNm",
        "()Landroidx/core/app/NotificationManagerCompat;",
        "notification",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "getNotification",
        "()Landroidx/core/app/NotificationCompat$Builder;",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final nm:Landroidx/core/app/NotificationManagerCompat;

.field private final notification:Landroidx/core/app/NotificationCompat$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "params"    # Landroidx/work/WorkerParameters;

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 55
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;->nm:Landroidx/core/app/NotificationManagerCompat;

    .line 62
    nop

    .line 57
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "service-subscription"

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1300fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1302a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 61
    const v1, 0x7f08010e

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 62
    const-string v1, "service"

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "setCategory(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;->notification:Landroidx/core/app/NotificationCompat$Builder;

    .line 51
    return-void
.end method


# virtual methods
.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;

    iget v2, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;-><init>(Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 64
    iget v5, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;->label:I

    const/4 v8, 0x1

    packed-switch v5, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v5, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v9, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;

    .local v9, "this":Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v10, 0x0

    goto/16 :goto_6

    .end local v9    # "this":Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;
    :pswitch_1
    iget-object v5, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;

    .local v5, "this":Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v3

    goto :goto_1

    .end local v5    # "this":Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;
    :pswitch_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .line 66
    .restart local v5    # "this":Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;
    sget-object v9, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v9}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v9

    iput-object v5, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;->L$0:Ljava/lang/Object;

    iput v8, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;->label:I

    invoke-interface {v9, v1}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->subscriptions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v4, :cond_1

    .line 64
    return-object v4

    :cond_1
    :goto_1
    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 98
    .local v10, "$i$f$filter":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/Collection;

    .local v9, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v11, "destination$iv$iv":Ljava/util/Collection;
    const/4 v12, 0x0

    .line 99
    .local v12, "$i$f$filterTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v9    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_2
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v14, v9

    check-cast v14, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v14, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v15, 0x0

    .line 66
    .local v15, "$i$a$-filter-SubscriptionUpdater$UpdateTask$doWork$subscriptions$1":I
    invoke-virtual {v14}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v7, Lio/nekohasekai/sagernet/database/SubscriptionBean;->autoUpdate:Ljava/lang/Boolean;

    const-string v6, "autoUpdate"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 99
    .end local v14    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v15    # "$i$a$-filter-SubscriptionUpdater$UpdateTask$doWork$subscriptions$1":I
    if-eqz v6, :cond_2

    invoke-interface {v11, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 100
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v11    # "destination$iv$iv":Ljava/util/Collection;
    .end local v12    # "$i$f$filterTo":I
    move-object v6, v11

    check-cast v6, Ljava/util/List;

    .line 98
    nop

    .line 66
    .end local v10    # "$i$f$filter":I
    nop

    .line 65
    nop

    .line 67
    .local v6, "subscriptions":Ljava/util/List;
    sget-object v7, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v7

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/bg/BaseService$State;->getConnected()Z

    move-result v7

    if-nez v7, :cond_7

    .line 68
    sget-object v7, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    const-string v9, "work: not connected"

    invoke-virtual {v7, v9}, Lio/nekohasekai/sagernet/ktx/Logs;->d(Ljava/lang/String;)V

    .line 69
    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 101
    .local v7, "$i$f$filter":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .local v6, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v9, "destination$iv$iv":Ljava/util/Collection;
    const/4 v10, 0x0

    .line 102
    .local v10, "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v6    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_4
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v6

    check-cast v12, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v12, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v13, 0x0

    .line 69
    .local v13, "$i$a$-filter-SubscriptionUpdater$UpdateTask$doWork$2":I
    invoke-virtual {v12}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v14, v14, Lio/nekohasekai/sagernet/database/SubscriptionBean;->updateWhenConnectedOnly:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_5

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    .line 102
    .end local v12    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v13    # "$i$a$-filter-SubscriptionUpdater$UpdateTask$doWork$2":I
    :goto_4
    if-eqz v12, :cond_4

    invoke-interface {v9, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 103
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$i$f$filterTo":I
    move-object v6, v9

    check-cast v6, Ljava/util/List;

    .line 101
    nop

    .line 69
    .end local v7    # "$i$f$filter":I
    nop

    .line 72
    .local v6, "subscriptions":Ljava/util/List;
    :cond_7
    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v9, v5

    move-object v5, v7

    .end local v5    # "this":Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;
    .end local v6    # "subscriptions":Ljava/util/List;
    .end local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .local v0, "$completion":Lkotlin/coroutines/Continuation;
    .local v9, "this":Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 73
    .local v6, "profile":Lio/nekohasekai/sagernet/database/ProxyGroup;
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    .local v7, "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/16 v12, 0x3e8

    int-to-long v12, v12

    div-long/2addr v10, v12

    long-to-int v11, v10

    iget-object v10, v7, Lio/nekohasekai/sagernet/database/SubscriptionBean;->lastUpdated:Ljava/lang/Integer;

    const-string v12, "lastUpdated"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    sub-int/2addr v11, v10

    iget-object v10, v7, Lio/nekohasekai/sagernet/database/SubscriptionBean;->autoUpdateDelay:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    .end local v7    # "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    if-ge v11, v10, :cond_8

    .line 76
    sget-object v7, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "work: not updating "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->displayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lio/nekohasekai/sagernet/ktx/Logs;->d(Ljava/lang/String;)V

    .line 77
    .end local v6    # "profile":Lio/nekohasekai/sagernet/database/ProxyGroup;
    goto :goto_5

    .line 79
    .restart local v6    # "profile":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :cond_8
    sget-object v7, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "work: updating "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->displayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lio/nekohasekai/sagernet/ktx/Logs;->d(Ljava/lang/String;)V

    .line 81
    iget-object v7, v9, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;->notification:Landroidx/core/app/NotificationCompat$Builder;

    .line 82
    invoke-virtual {v9}, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 83
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->displayName()Ljava/lang/String;

    move-result-object v11

    new-array v12, v8, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    .line 82
    const v11, 0x7f1302a1

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    .line 81
    invoke-virtual {v7, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 86
    iget-object v7, v9, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;->nm:Landroidx/core/app/NotificationManagerCompat;

    iget-object v10, v9, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;->notification:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v7, v11, v10}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 88
    sget-object v7, Lio/nekohasekai/sagernet/group/GroupUpdater;->Companion:Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;

    iput-object v9, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;->L$1:Ljava/lang/Object;

    iput v11, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask$doWork$1;->label:I

    const/4 v10, 0x0

    invoke-virtual {v7, v6, v10, v1}, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;->executeUpdate(Lio/nekohasekai/sagernet/database/ProxyGroup;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "profile":Lio/nekohasekai/sagernet/database/ProxyGroup;
    if-ne v6, v4, :cond_9

    .line 64
    return-object v4

    .line 88
    :cond_9
    :goto_6
    goto/16 :goto_5

    .line 72
    :cond_a
    move-object v5, v9

    .line 91
    .end local v9    # "this":Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;
    .restart local v5    # "this":Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;
    :cond_b
    iget-object v4, v5, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;->nm:Landroidx/core/app/NotificationManagerCompat;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 93
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v4

    const-string v6, "success(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getNm()Landroidx/core/app/NotificationManagerCompat;
    .locals 1

    .line 55
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;->nm:Landroidx/core/app/NotificationManagerCompat;

    return-object v0
.end method

.method public final getNotification()Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;->notification:Landroidx/core/app/NotificationCompat$Builder;

    return-object v0
.end method
