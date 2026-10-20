.class public final Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;
.super Ljava/lang/Object;
.source "SubscriptionUpdater.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubscriptionUpdater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionUpdater.kt\nio/nekohasekai/sagernet/bg/SubscriptionUpdater\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n774#2:98\n865#2,2:99\n2341#2,14:101\n1#3:115\n*S KotlinDebug\n*F\n+ 1 SubscriptionUpdater.kt\nio/nekohasekai/sagernet/bg/SubscriptionUpdater\n*L\n27#1:98\n27#1:99,2\n32#1:101,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\tB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0008R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;",
        "",
        "<init>",
        "()V",
        "WORK_NAME",
        "",
        "reconfigureUpdater",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "UpdateTask",
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
.field public static final INSTANCE:Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;

.field private static final WORK_NAME:Ljava/lang/String; = "SubscriptionUpdater"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;->INSTANCE:Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reconfigureUpdater(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
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

    move-object/from16 v0, p1

    instance-of v1, v0, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$reconfigureUpdater$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$reconfigureUpdater$1;

    iget v2, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$reconfigureUpdater$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$reconfigureUpdater$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$reconfigureUpdater$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$reconfigureUpdater$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$reconfigureUpdater$1;-><init>(Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$reconfigureUpdater$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 23
    iget v5, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$reconfigureUpdater$1;->label:I

    const-string v6, "SubscriptionUpdater"

    packed-switch v5, :pswitch_data_0

    move-object v12, v1

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v3

    goto :goto_1

    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Landroidx/work/multiprocess/RemoteWorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/multiprocess/RemoteWorkManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroidx/work/multiprocess/RemoteWorkManager;->cancelUniqueWork(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 26
    sget-object v5, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v5

    const/4 v7, 0x1

    iput v7, v1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$reconfigureUpdater$1;->label:I

    invoke-interface {v5, v1}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->subscriptions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_1

    .line 23
    return-object v4

    :cond_1
    :goto_1
    move-object v4, v5

    check-cast v4, Ljava/lang/Iterable;

    .line 27
    .local v4, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 98
    .local v5, "$i$f$filter":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v7, "destination$iv$iv":Ljava/util/Collection;
    const/4 v8, 0x0

    .line 99
    .local v8, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v4

    check-cast v10, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v10, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v11, 0x0

    .line 27
    .local v11, "$i$a$-filter-SubscriptionUpdater$reconfigureUpdater$subscriptions$1":I
    invoke-virtual {v10}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v12, v12, Lio/nekohasekai/sagernet/database/SubscriptionBean;->autoUpdate:Ljava/lang/Boolean;

    const-string v13, "autoUpdate"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 99
    .end local v10    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v11    # "$i$a$-filter-SubscriptionUpdater$reconfigureUpdater$subscriptions$1":I
    if-eqz v10, :cond_2

    invoke-interface {v7, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 100
    .end local v4    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$filterTo":I
    move-object v4, v7

    check-cast v4, Ljava/util/List;

    .line 98
    nop

    .line 27
    .end local v5    # "$i$f$filter":I
    nop

    .line 26
    nop

    .line 28
    .local v4, "subscriptions":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v5

    .line 31
    :cond_4
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 32
    .local v5, "minDelay":Lkotlin/jvm/internal/Ref$LongRef;
    move-object v7, v4

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$minByOrNull$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 101
    .local v8, "$i$f$minByOrNull":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 102
    .local v7, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x0

    goto :goto_4

    .line 103
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 104
    .local v9, "minElem$iv":Ljava/lang/Object;
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_4

    .line 105
    :cond_6
    move-object v10, v9

    check-cast v10, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .restart local v10    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v11, 0x0

    .line 32
    .local v11, "$i$a$-minByOrNull-SubscriptionUpdater$reconfigureUpdater$minDelay$1":I
    invoke-virtual {v10}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v12, Lio/nekohasekai/sagernet/database/SubscriptionBean;->autoUpdateDelay:Ljava/lang/Integer;

    .line 105
    .end local v10    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v11    # "$i$a$-minByOrNull-SubscriptionUpdater$reconfigureUpdater$minDelay$1":I
    check-cast v10, Ljava/lang/Comparable;

    .line 107
    .local v10, "minValue$iv":Ljava/lang/Comparable;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 108
    .local v11, "e$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v12, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v13, 0x0

    .line 32
    .local v13, "$i$a$-minByOrNull-SubscriptionUpdater$reconfigureUpdater$minDelay$1":I
    invoke-virtual {v12}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v12, v14, Lio/nekohasekai/sagernet/database/SubscriptionBean;->autoUpdateDelay:Ljava/lang/Integer;

    .line 108
    .end local v12    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v13    # "$i$a$-minByOrNull-SubscriptionUpdater$reconfigureUpdater$minDelay$1":I
    check-cast v12, Ljava/lang/Comparable;

    .line 109
    .local v12, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v10, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v13

    if-lez v13, :cond_7

    .line 110
    .end local v9    # "minElem$iv":Ljava/lang/Object;
    .end local v10    # "minValue$iv":Ljava/lang/Comparable;
    move-object v9, v11

    .line 111
    .restart local v9    # "minElem$iv":Ljava/lang/Object;
    move-object v10, v12

    .line 113
    .end local v11    # "e$iv":Ljava/lang/Object;
    .end local v12    # "v$iv":Ljava/lang/Comparable;
    .restart local v10    # "minValue$iv":Ljava/lang/Comparable;
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_e

    .line 114
    nop

    .end local v7    # "iterator$iv":Ljava/util/Iterator;
    .end local v8    # "$i$f$minByOrNull":I
    .end local v9    # "minElem$iv":Ljava/lang/Object;
    .end local v10    # "minValue$iv":Ljava/lang/Comparable;
    :goto_4
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 32
    invoke-virtual {v9}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v7, Lio/nekohasekai/sagernet/database/SubscriptionBean;->autoUpdateDelay:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    .line 31
    iput-wide v7, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    .line 34
    .local v7, "now":J
    new-instance v9, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 35
    .local v9, "minInitDelay":Lkotlin/jvm/internal/Ref$LongRef;
    move-object v10, v4

    check-cast v10, Ljava/lang/Iterable;

    .end local v4    # "subscriptions":Ljava/util/List;
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 115
    .local v10, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v11, 0x0

    .line 35
    .local v11, "$i$a$-minOf-SubscriptionUpdater$reconfigureUpdater$minInitDelay$1":I
    invoke-virtual {v10}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v12, v12, Lio/nekohasekai/sagernet/database/SubscriptionBean;->lastUpdated:Ljava/lang/Integer;

    const-string v13, "lastUpdated"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    sub-long v14, v7, v14

    move-object v12, v1

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v12, "$continuation":Lkotlin/coroutines/Continuation;
    iget-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const/16 v2, 0x3c

    move-object/from16 v16, v3

    .end local v3    # "$result":Ljava/lang/Object;
    .local v16, "$result":Ljava/lang/Object;
    int-to-long v2, v2

    mul-long v0, v0, v2

    sub-long/2addr v14, v0

    .end local v10    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v11    # "$i$a$-minOf-SubscriptionUpdater$reconfigureUpdater$minInitDelay$1":I
    :cond_8
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 115
    .local v0, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v1, 0x0

    .line 35
    .local v1, "$i$a$-minOf-SubscriptionUpdater$reconfigureUpdater$minInitDelay$1":I
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v10, Lio/nekohasekai/sagernet/database/SubscriptionBean;->lastUpdated:Ljava/lang/Integer;

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    sub-long v10, v7, v10

    move-object/from16 v17, v0

    move/from16 v18, v1

    .end local v0    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v1    # "$i$a$-minOf-SubscriptionUpdater$reconfigureUpdater$minInitDelay$1":I
    .local v17, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .local v18, "$i$a$-minOf-SubscriptionUpdater$reconfigureUpdater$minInitDelay$1":I
    iget-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    mul-long v0, v0, v2

    sub-long v0, v10, v0

    .end local v17    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v18    # "$i$a$-minOf-SubscriptionUpdater$reconfigureUpdater$minInitDelay$1":I
    cmp-long v10, v14, v0

    if-lez v10, :cond_8

    move-wide v14, v0

    goto :goto_5

    .line 34
    .end local v7    # "now":J
    :cond_9
    iput-wide v14, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 36
    iget-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v2, 0xf

    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    iput-wide v2, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 37
    :cond_a
    iget-wide v0, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v2, 0x3c

    cmp-long v4, v0, v2

    if-lez v4, :cond_b

    iput-wide v2, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 40
    :cond_b
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/multiprocess/RemoteWorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/multiprocess/RemoteWorkManager;

    move-result-object v0

    .line 41
    nop

    .line 42
    sget-object v1, Landroidx/work/ExistingPeriodicWorkPolicy;->UPDATE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 43
    new-instance v2, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v3, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater$UpdateTask;

    iget-wide v7, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v7, v8, v4}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 44
    .end local v5    # "minDelay":Lkotlin/jvm/internal/Ref$LongRef;
    move-object v3, v2

    .local v3, "$this$reconfigureUpdater_u24lambda_u243":Landroidx/work/PeriodicWorkRequest$Builder;
    const/4 v4, 0x0

    .line 45
    .local v4, "$i$a$-apply-SubscriptionUpdater$reconfigureUpdater$2":I
    iget-wide v7, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v10, 0x0

    cmp-long v5, v7, v10

    if-lez v5, :cond_c

    iget-wide v7, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v7, v8, v5}, Landroidx/work/PeriodicWorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    .line 46
    .end local v3    # "$this$reconfigureUpdater_u24lambda_u243":Landroidx/work/PeriodicWorkRequest$Builder;
    .end local v9    # "minInitDelay":Lkotlin/jvm/internal/Ref$LongRef;
    :cond_c
    nop

    .end local v4    # "$i$a$-apply-SubscriptionUpdater$reconfigureUpdater$2":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 44
    nop

    .line 47
    invoke-virtual {v2}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v2

    check-cast v2, Landroidx/work/PeriodicWorkRequest;

    .line 40
    invoke-virtual {v0, v6, v1, v2}, Landroidx/work/multiprocess/RemoteWorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 49
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 35
    .end local v12    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v16    # "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v3, "$result":Ljava/lang/Object;
    .restart local v5    # "minDelay":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v7    # "now":J
    .restart local v9    # "minInitDelay":Lkotlin/jvm/internal/Ref$LongRef;
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 113
    .local v4, "subscriptions":Ljava/util/List;
    .local v7, "iterator$iv":Ljava/util/Iterator;
    .restart local v8    # "$i$f$minByOrNull":I
    .local v9, "minElem$iv":Ljava/lang/Object;
    .local v10, "minValue$iv":Ljava/lang/Comparable;
    :cond_e
    move-object v12, v1

    move-object/from16 v16, v3

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v12    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v16    # "$result":Ljava/lang/Object;
    move-object/from16 v2, p0

    move-object/from16 v0, p1

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
