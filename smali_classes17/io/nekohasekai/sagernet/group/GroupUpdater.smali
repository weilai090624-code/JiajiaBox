.class public abstract Lio/nekohasekai/sagernet/group/GroupUpdater;
.super Ljava/lang/Object;
.source "GroupUpdater.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;,
        Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGroupUpdater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupUpdater.kt\nio/nekohasekai/sagernet/group/GroupUpdater\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,171:1\n1053#2:172\n*S KotlinDebug\n*F\n+ 1 GroupUpdater.kt\nio/nekohasekai/sagernet/group/GroupUpdater\n*L\n95#1:172\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001b\u001cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J0\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u00a6@\u00a2\u0006\u0002\u0010\u000eJ&\u0010\u000f\u001a\u00020\u00052\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0084@\u00a2\u0006\u0002\u0010\u0015J&\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00122\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00112\u0006\u0010\u001a\u001a\u00020\rH\u0004\u00a8\u0006\u001d"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/group/GroupUpdater;",
        "",
        "<init>",
        "()V",
        "doUpdate",
        "",
        "proxyGroup",
        "Lio/nekohasekai/sagernet/database/ProxyGroup;",
        "subscription",
        "Lio/nekohasekai/sagernet/database/SubscriptionBean;",
        "userInterface",
        "Lio/nekohasekai/sagernet/database/GroupManager$Interface;",
        "byUser",
        "",
        "(Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/database/SubscriptionBean;Lio/nekohasekai/sagernet/database/GroupManager$Interface;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "forceResolve",
        "profiles",
        "",
        "Lio/nekohasekai/sagernet/fmt/AbstractBean;",
        "groupId",
        "",
        "(Ljava/util/List;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "rewriteAddress",
        "bean",
        "addresses",
        "Ljava/net/InetAddress;",
        "ipv6First",
        "Progress",
        "Companion",
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
.field public static final Companion:Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;

.field private static final progress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;",
            ">;"
        }
    .end annotation
.end field

.field private static final updating:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/group/GroupUpdater;->Companion:Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;

    .line 124
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/group/GroupUpdater;->updating:Ljava/util/Set;

    .line 125
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/group/GroupUpdater;->progress:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getProgress$cp()Ljava/util/Map;
    .locals 1

    .line 23
    sget-object v0, Lio/nekohasekai/sagernet/group/GroupUpdater;->progress:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getUpdating$cp()Ljava/util/Set;
    .locals 1

    .line 23
    sget-object v0, Lio/nekohasekai/sagernet/group/GroupUpdater;->updating:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public abstract doUpdate(Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/database/SubscriptionBean;Lio/nekohasekai/sagernet/database/GroupManager$Interface;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            "Lio/nekohasekai/sagernet/database/SubscriptionBean;",
            "Lio/nekohasekai/sagernet/database/GroupManager$Interface;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method protected final forceResolve(Ljava/util/List;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/nekohasekai/sagernet/fmt/AbstractBean;",
            ">;",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;

    iget v2, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;-><init>(Lio/nekohasekai/sagernet/group/GroupUpdater;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 39
    iget v5, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->label:I

    const/4 v6, 0x1

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
    iget-object v4, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    .local v4, "lookupPool":Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    .end local v4    # "lookupPool":Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    :pswitch_1
    iget v5, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->I$0:I

    .local v5, "ipv6Mode":I
    iget-object v7, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;

    .local v7, "progress":Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;
    iget-object v8, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$4:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .local v8, "lookupJobs":Ljava/util/List;
    iget-object v9, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    .local v9, "lookupPool":Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    iget-object v10, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    .local v10, "groupId":Ljava/lang/Long;
    iget-object v11, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .local v11, "profiles":Ljava/util/List;
    iget-object v12, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/nekohasekai/sagernet/group/GroupUpdater;

    .local v12, "this":Lio/nekohasekai/sagernet/group/GroupUpdater;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v5    # "ipv6Mode":I
    .end local v7    # "progress":Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;
    .end local v8    # "lookupJobs":Ljava/util/List;
    .end local v9    # "lookupPool":Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .end local v10    # "groupId":Ljava/lang/Long;
    .end local v11    # "profiles":Ljava/util/List;
    .end local v12    # "this":Lio/nekohasekai/sagernet/group/GroupUpdater;
    :pswitch_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v12, p0

    .restart local v12    # "this":Lio/nekohasekai/sagernet/group/GroupUpdater;
    move-object/from16 v10, p2

    .restart local v10    # "groupId":Ljava/lang/Long;
    move-object/from16 v11, p1

    .line 42
    .restart local v11    # "profiles":Ljava/util/List;
    sget-object v5, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/DataStore;->getIpv6Mode()I

    move-result v5

    .line 43
    .restart local v5    # "ipv6Mode":I
    const/4 v7, 0x5

    const-string v8, "DNS Lookup"

    invoke-static {v7, v8}, Lkotlinx/coroutines/ThreadPoolDispatcherKt;->newFixedThreadPoolContext(ILjava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v9

    .line 44
    .restart local v9    # "lookupPool":Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v7

    check-cast v8, Ljava/util/List;

    .line 45
    .restart local v8    # "lookupJobs":Ljava/util/List;
    new-instance v7, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v7, v13}, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;-><init>(I)V

    .line 46
    .restart local v7    # "progress":Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;
    if-eqz v10, :cond_2

    .line 47
    sget-object v13, Lio/nekohasekai/sagernet/group/GroupUpdater;->progress:Ljava/util/Map;

    const-string v14, "progress"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v13, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iput-object v12, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$4:Ljava/lang/Object;

    iput-object v7, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$5:Ljava/lang/Object;

    iput v5, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->I$0:I

    iput v6, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->label:I

    invoke-virtual {v13, v14, v15, v1}, Lio/nekohasekai/sagernet/database/GroupManager;->postReload(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v4, :cond_1

    .line 39
    return-object v4

    .line 50
    :cond_1
    :goto_1
    move-object/from16 v17, v10

    move-object/from16 v18, v12

    goto :goto_2

    .line 46
    :cond_2
    move-object/from16 v17, v10

    move-object/from16 v18, v12

    .line 50
    .end local v10    # "groupId":Ljava/lang/Long;
    .end local v12    # "this":Lio/nekohasekai/sagernet/group/GroupUpdater;
    .local v17, "groupId":Ljava/lang/Long;
    .local v18, "this":Lio/nekohasekai/sagernet/group/GroupUpdater;
    :goto_2
    const/16 v19, 0x0

    const/4 v15, 0x2

    if-lt v5, v15, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 52
    .local v5, "ipv6First":Z
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .end local v11    # "profiles":Ljava/util/List;
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    .line 53
    .local v11, "profile":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    nop

    .line 55
    instance-of v10, v11, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    if-nez v10, :cond_6

    .line 58
    iget-object v10, v11, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    const-string v12, "serverAddress"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lio/nekohasekai/sagernet/ktx/NetsKt;->isIpAddress(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 60
    sget-object v10, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object/from16 v21, v10

    check-cast v21, Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v22, v9

    check-cast v22, Lkotlin/coroutines/CoroutineContext;

    new-instance v23, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$2;

    if-eqz v5, :cond_4

    const/4 v13, 0x1

    goto :goto_5

    :cond_4
    const/4 v13, 0x0

    .end local v11    # "profile":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    :goto_5
    const/16 v16, 0x0

    move-object/from16 v10, v23

    move-object/from16 v12, v18

    move-object/from16 v14, v17

    const/4 v6, 0x2

    move-object v15, v7

    invoke-direct/range {v10 .. v16}, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$2;-><init>(Lio/nekohasekai/sagernet/fmt/AbstractBean;Lio/nekohasekai/sagernet/group/GroupUpdater;ZLjava/lang/Long;Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v24, v23

    check-cast v24, Lkotlin/jvm/functions/Function2;

    const/16 v25, 0x2

    const/16 v26, 0x0

    const/16 v23, 0x0

    invoke-static/range {v21 .. v26}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    const/4 v15, 0x2

    goto :goto_4

    .line 58
    .restart local v11    # "profile":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    :cond_5
    const/4 v6, 0x2

    const/4 v6, 0x1

    const/4 v15, 0x2

    goto :goto_4

    .line 55
    :cond_6
    const/4 v6, 0x2

    const/4 v6, 0x1

    const/4 v15, 0x2

    goto :goto_4

    .line 52
    .end local v11    # "profile":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    :cond_7
    const/4 v6, 0x2

    .line 88
    .end local v5    # "ipv6First":Z
    .end local v7    # "progress":Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;
    .end local v17    # "groupId":Ljava/lang/Long;
    .end local v18    # "this":Lio/nekohasekai/sagernet/group/GroupUpdater;
    move-object v5, v8

    check-cast v5, Ljava/util/Collection;

    iput-object v9, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$2:Ljava/lang/Object;

    iput-object v7, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$3:Ljava/lang/Object;

    iput-object v7, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$4:Ljava/lang/Object;

    iput-object v7, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->L$5:Ljava/lang/Object;

    iput v6, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$forceResolve$1;->label:I

    invoke-static {v5, v1}, Lkotlinx/coroutines/AwaitKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v8    # "lookupJobs":Ljava/util/List;
    if-ne v5, v4, :cond_8

    .line 39
    return-object v4

    .line 88
    :cond_8
    move-object v4, v9

    .line 89
    .end local v9    # "lookupPool":Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .restart local v4    # "lookupPool":Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    :goto_6
    invoke-virtual {v4}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;->close()V

    .line 90
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final rewriteAddress(Lio/nekohasekai/sagernet/fmt/AbstractBean;Ljava/util/List;Z)V
    .locals 6
    .param p1, "bean"    # Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .param p2, "addresses"    # Ljava/util/List;
    .param p3, "ipv6First"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/fmt/AbstractBean;",
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetAddress;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addresses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 172
    .local v1, "$i$f$sortedBy":I
    new-instance v2, Lio/nekohasekai/sagernet/group/GroupUpdater$rewriteAddress$$inlined$sortedBy$1;

    invoke-direct {v2, p3}, Lio/nekohasekai/sagernet/group/GroupUpdater$rewriteAddress$$inlined$sortedBy$1;-><init>(Z)V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 95
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedBy":I
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "address":Ljava/lang/String;
    move-object v1, p1

    .local v1, "$this$rewriteAddress_u24lambda_u241":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    const/4 v2, 0x0

    .line 98
    .local v2, "$i$a$-with-GroupUpdater$rewriteAddress$1":I
    nop

    .line 99
    instance-of v3, v1, Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    const-string v4, "sni"

    if-eqz v3, :cond_0

    .line 100
    move-object v3, v1

    check-cast v3, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    invoke-static {v3}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->isTLS(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    iget-object v3, v3, Lio/nekohasekai/sagernet/fmt/http/HttpBean;->sni:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    iget-object v4, p1, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    iput-object v4, v3, Lio/nekohasekai/sagernet/fmt/http/HttpBean;->sni:Ljava/lang/String;

    goto/16 :goto_0

    .line 102
    :cond_0
    instance-of v3, v1, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    if-eqz v3, :cond_1

    .line 103
    nop

    .line 104
    move-object v3, v1

    check-cast v3, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    iget-object v3, v3, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->security:Ljava/lang/String;

    .line 103
    nop

    .line 104
    const-string v5, "tls"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    iget-object v3, v3, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->sni:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    iget-object v4, p1, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    iput-object v4, v3, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->sni:Ljava/lang/String;

    goto :goto_0

    .line 107
    :cond_1
    instance-of v3, v1, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    if-eqz v3, :cond_2

    .line 108
    move-object v3, v1

    check-cast v3, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    iget-object v3, v3, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;->sni:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    iget-object v4, p1, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    iput-object v4, v3, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;->sni:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_2
    instance-of v3, v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    if-eqz v3, :cond_3

    .line 111
    move-object v3, v1

    check-cast v3, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    iget-object v3, v3, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->sni:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    iget-object v4, p1, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    iput-object v4, v3, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->sni:Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_3
    instance-of v3, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    if-eqz v3, :cond_4

    .line 114
    move-object v3, v1

    check-cast v3, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    iget-object v3, v3, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    iget-object v4, p1, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    iput-object v4, v3, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    .line 118
    :cond_4
    :goto_0
    iput-object v0, p1, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    .line 119
    nop

    .line 97
    .end local v1    # "$this$rewriteAddress_u24lambda_u241":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .end local v2    # "$i$a$-with-GroupUpdater$rewriteAddress$1":I
    nop

    .line 120
    return-void
.end method
