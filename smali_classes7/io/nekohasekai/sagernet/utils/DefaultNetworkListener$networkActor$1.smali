.class final Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultNetworkListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ActorScope<",
        "Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultNetworkListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultNetworkListener.kt\nio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,155:1\n1#2:156\n1863#3,2:157\n1863#3,2:159\n1863#3,2:161\n1863#3,2:163\n*S KotlinDebug\n*F\n+ 1 DefaultNetworkListener.kt\nio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1\n*L\n59#1:157,2\n61#1:159,2\n63#1:161,2\n70#1:163,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ActorScope;",
        "Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;"
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
    c = "io.nekohasekai.sagernet.utils.DefaultNetworkListener$networkActor$1"
    f = "DefaultNetworkListener.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x26
    }
    m = "invokeSuspend"
    n = {
        "listeners",
        "network",
        "pendingRequests"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;

    invoke-direct {v0, p2}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/channels/ActorScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;->invoke(Lkotlinx/coroutines/channels/ActorScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ActorScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ActorScope<",
            "Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 34
    iget v2, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local p0    # "this":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local p0    # "this":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;
    :pswitch_0
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    iget-object v3, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .local v4, "pendingRequests":Ljava/util/ArrayList;
    iget-object v5, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v5, "network":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v6, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    .local v6, "listeners":Ljava/util/Map;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v0

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_1

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v4    # "pendingRequests":Ljava/util/ArrayList;
    .end local v5    # "network":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "listeners":Ljava/util/Map;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    .restart local v2    # "$result":Ljava/lang/Object;
    iget-object v3, v0, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ActorScope;

    .line 35
    .local v3, "$this$actor":Lkotlinx/coroutines/channels/ActorScope;
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 36
    .local v4, "listeners":Ljava/util/Map;
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 37
    .restart local v5    # "network":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v6, "pendingRequests":Ljava/util/ArrayList;
    invoke-interface {v3}, Lkotlinx/coroutines/channels/ActorScope;->getChannel()Lkotlinx/coroutines/channels/Channel;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/channels/Channel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7

    move-object v3, v7

    move-object v7, v0

    move-object/from16 v16, v6

    move-object v6, v4

    move-object/from16 v4, v16

    .end local v3    # "$this$actor":Lkotlinx/coroutines/channels/ActorScope;
    .end local p0    # "this":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;
    .local v4, "pendingRequests":Ljava/util/ArrayList;
    .local v6, "listeners":Ljava/util/Map;
    .local v7, "this":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;
    :goto_0
    move-object v8, v7

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v6, v7, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;->L$0:Ljava/lang/Object;

    iput-object v5, v7, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;->L$1:Ljava/lang/Object;

    iput-object v4, v7, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;->L$2:Ljava/lang/Object;

    iput-object v3, v7, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;->L$3:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v7, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;->label:I

    invoke-interface {v3, v8}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_0

    .line 34
    return-object v1

    .line 38
    :cond_0
    move-object/from16 v16, v3

    move-object v3, v2

    move-object v2, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object/from16 v4, v16

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v4    # "pendingRequests":Ljava/util/ArrayList;
    .local v3, "$result":Ljava/lang/Object;
    .local v5, "pendingRequests":Ljava/util/ArrayList;
    .local v6, "network":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v7, "listeners":Ljava/util/Map;
    .local v8, "this":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$networkActor$1;
    :goto_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;

    .line 39
    .local v2, "message":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;
    instance-of v9, v2, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Start;

    if-eqz v9, :cond_2

    .line 40
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->INSTANCE:Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;

    invoke-static {v9}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->access$register(Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;)V

    .line 41
    :cond_1
    move-object v9, v2

    check-cast v9, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Start;

    invoke-virtual {v9}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Start;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v2

    check-cast v10, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Start;

    invoke-virtual {v10}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Start;->getListener()Lkotlin/jvm/functions/Function1;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v9, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v9, :cond_d

    move-object v9, v2

    check-cast v9, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Start;

    invoke-virtual {v9}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Start;->getListener()Lkotlin/jvm/functions/Function1;

    move-result-object v9

    iget-object v10, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v9, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 44
    :cond_2
    instance-of v9, v2, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;

    if-eqz v9, :cond_5

    .line 45
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 46
    iget-object v9, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v9, :cond_3

    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_3
    move-object v9, v2

    check-cast v9, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;

    invoke-virtual {v9}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;->getResponse()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    .line 47
    .end local v2    # "message":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;
    iget-object v9, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 46
    invoke-interface {v2, v9}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    goto/16 :goto_6

    .line 156
    .end local v5    # "pendingRequests":Ljava/util/ArrayList;
    .end local v6    # "network":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "listeners":Ljava/util/Map;
    :cond_4
    const/4 v1, 0x0

    .line 45
    .local v1, "$i$a$-check-DefaultNetworkListener$networkActor$1$1":I
    nop

    .end local v1    # "$i$a$-check-DefaultNetworkListener$networkActor$1$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Getting network without any listeners is not supported"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .restart local v2    # "message":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;
    .restart local v5    # "pendingRequests":Ljava/util/ArrayList;
    .restart local v6    # "network":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "listeners":Ljava/util/Map;
    :cond_5
    instance-of v9, v2, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Stop;

    const/4 v10, 0x0

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    .line 51
    move-object v9, v2

    check-cast v9, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Stop;

    invoke-virtual {v9}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Stop;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 53
    .end local v2    # "message":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;
    iput-object v10, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 54
    sget-object v2, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->INSTANCE:Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;

    invoke-static {v2}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;->access$unregister(Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;)V

    goto/16 :goto_6

    .line 57
    .restart local v2    # "message":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;
    :cond_6
    instance-of v9, v2, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Put;

    if-eqz v9, :cond_9

    .line 58
    move-object v9, v2

    check-cast v9, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Put;

    invoke-virtual {v9}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Put;->getNetwork()Landroid/net/Network;

    move-result-object v9

    iput-object v9, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 59
    move-object v9, v5

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 157
    .local v10, "$i$f$forEach":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v9    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v12, v9

    check-cast v12, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;

    .local v12, "it":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;
    const/4 v13, 0x0

    .line 59
    .local v13, "$i$a$-forEach-DefaultNetworkListener$networkActor$1$2":I
    invoke-virtual {v12}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;->getResponse()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v14

    move-object v15, v2

    check-cast v15, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Put;

    invoke-virtual {v15}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Put;->getNetwork()Landroid/net/Network;

    move-result-object v15

    invoke-interface {v14, v15}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 157
    .end local v9    # "element$iv":Ljava/lang/Object;
    .end local v12    # "it":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;
    .end local v13    # "$i$a$-forEach-DefaultNetworkListener$networkActor$1$2":I
    goto :goto_2

    .line 158
    .end local v2    # "message":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;
    :cond_7
    nop

    .line 60
    .end local v10    # "$i$f$forEach":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 61
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 159
    .local v9, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "element$iv":Ljava/lang/Object;
    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function1;

    .local v11, "it":Lkotlin/jvm/functions/Function1;
    const/4 v12, 0x0

    .line 61
    .local v12, "$i$a$-forEach-DefaultNetworkListener$networkActor$1$3":I
    iget-object v13, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v11, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .end local v2    # "element$iv":Ljava/lang/Object;
    .end local v11    # "it":Lkotlin/jvm/functions/Function1;
    .end local v12    # "$i$a$-forEach-DefaultNetworkListener$networkActor$1$3":I
    goto :goto_3

    .line 160
    :cond_8
    nop

    .end local v9    # "$i$f$forEach":I
    goto :goto_6

    .line 63
    .local v2, "message":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;
    :cond_9
    instance-of v9, v2, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Update;

    if-eqz v9, :cond_b

    iget-object v9, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Update;

    invoke-virtual {v10}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Update;->getNetwork()Landroid/net/Network;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    move-object v2, v9

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 161
    .restart local v9    # "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "element$iv":Ljava/lang/Object;
    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function1;

    .restart local v11    # "it":Lkotlin/jvm/functions/Function1;
    const/4 v12, 0x0

    .line 64
    .local v12, "$i$a$-forEach-DefaultNetworkListener$networkActor$1$4":I
    nop

    .line 65
    iget-object v13, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 64
    invoke-interface {v11, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    nop

    .line 161
    .end local v2    # "element$iv":Ljava/lang/Object;
    .end local v11    # "it":Lkotlin/jvm/functions/Function1;
    .end local v12    # "$i$a$-forEach-DefaultNetworkListener$networkActor$1$4":I
    goto :goto_4

    .line 162
    :cond_a
    nop

    .end local v9    # "$i$f$forEach":I
    goto :goto_6

    .line 68
    .local v2, "message":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;
    :cond_b
    instance-of v9, v2, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Lost;

    if-eqz v9, :cond_e

    iget-object v9, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Lost;

    invoke-virtual {v11}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Lost;->getNetwork()Landroid/net/Network;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 69
    .end local v2    # "message":Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;
    iput-object v10, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 70
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 163
    .restart local v9    # "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "element$iv":Ljava/lang/Object;
    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function1;

    .local v12, "it":Lkotlin/jvm/functions/Function1;
    const/4 v13, 0x0

    .line 70
    .local v13, "$i$a$-forEach-DefaultNetworkListener$networkActor$1$5":I
    invoke-interface {v12, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .end local v2    # "element$iv":Ljava/lang/Object;
    .end local v12    # "it":Lkotlin/jvm/functions/Function1;
    .end local v13    # "$i$a$-forEach-DefaultNetworkListener$networkActor$1$5":I
    goto :goto_5

    .line 164
    :cond_c
    nop

    .line 38
    .end local v9    # "$i$f$forEach":I
    :cond_d
    :goto_6
    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_0

    .end local v5    # "pendingRequests":Ljava/util/ArrayList;
    .end local v6    # "network":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "listeners":Ljava/util/Map;
    :cond_e
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 73
    .restart local v5    # "pendingRequests":Ljava/util/ArrayList;
    .restart local v6    # "network":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "listeners":Ljava/util/Map;
    :cond_f
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
