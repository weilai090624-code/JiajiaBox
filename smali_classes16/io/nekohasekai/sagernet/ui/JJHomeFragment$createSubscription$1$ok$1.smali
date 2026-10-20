.class final Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JJHomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJJHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JJHomeFragment.kt\nio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1013:1\n1#2:1014\n*E\n"
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
    c = "io.nekohasekai.sagernet.ui.JJHomeFragment$createSubscription$1$ok$1"
    f = "JJHomeFragment.kt"
    i = {}
    l = {
        0x29d,
        0x29f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $link:Ljava/lang/String;

.field final synthetic $subName:Ljava/lang/String;

.field label:I

.field private createdGroupId:J

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->$subName:Ljava/lang/String;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->$link:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->$subName:Ljava/lang/String;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->$link:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;-><init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 663
    iget v2, v1, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v2

    goto/16 :goto_2

    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v2, p1

    .restart local v2    # "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v2

    goto/16 :goto_1

    .line 672
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 663
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    .line 664
    .restart local v2    # "$result":Ljava/lang/Object;
    nop

    .line 665
    :try_start_1
    new-instance v21, Lio/nekohasekai/sagernet/database/ProxyGroup;

    const/16 v19, 0x3ef

    const/16 v20, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v4, v21

    invoke-direct/range {v4 .. v20}, Lio/nekohasekai/sagernet/database/ProxyGroup;-><init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v4, v1, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->$subName:Ljava/lang/String;

    iget-object v5, v1, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iget-object v6, v1, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->$link:Ljava/lang/String;

    move-object/from16 v7, v21

    .local v7, "$this$invokeSuspend_u24lambda_u242":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v8, 0x0

    .line 666
    .local v8, "$i$a$-apply-JJHomeFragment$createSubscription$1$ok$1$group$1":I
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_1

    .line 1014
    const/4 v4, 0x0

    .line 666
    .local v4, "$i$a$-ifEmpty-JJHomeFragment$createSubscription$1$ok$1$group$1$1":I
    const v9, 0x7f130299

    invoke-virtual {v5, v9}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "getString(...)"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Subscription #"

    .end local v4    # "$i$a$-ifEmpty-JJHomeFragment$createSubscription$1$ok$1$group$1$1":I
    :cond_1
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setName(Ljava/lang/String;)V

    .line 667
    new-instance v4, Lio/nekohasekai/sagernet/database/SubscriptionBean;

    invoke-direct {v4}, Lio/nekohasekai/sagernet/database/SubscriptionBean;-><init>()V

    move-object v5, v4

    .line 1014
    .local v5, "$this$invokeSuspend_u24lambda_u242_u24lambda_u241":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    const/4 v9, 0x0

    .line 667
    .local v9, "$i$a$-apply-JJHomeFragment$createSubscription$1$ok$1$group$1$2":I
    iput-object v6, v5, Lio/nekohasekai/sagernet/database/SubscriptionBean;->link:Ljava/lang/String;

    .end local v5    # "$this$invokeSuspend_u24lambda_u242_u24lambda_u241":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    .end local v9    # "$i$a$-apply-JJHomeFragment$createSubscription$1$ok$1$group$1$2":I
    invoke-virtual {v7, v4}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setSubscription(Lio/nekohasekai/sagernet/database/SubscriptionBean;)V

    .line 668
    nop

    .line 665
    .end local v7    # "$this$invokeSuspend_u24lambda_u242":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v8    # "$i$a$-apply-JJHomeFragment$createSubscription$1$ok$1$group$1":I
    move-object/from16 v4, v21

    .line 669
    .local v4, "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    sget-object v5, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v10, v1, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->label:I

    invoke-virtual {v5, v4, v6}, Lio/nekohasekai/sagernet/database/GroupManager;->createGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    if-ne v5, v0, :cond_2

    .line 663
    return-object v0

    .line 669
    :cond_2
    move-object v4, v2

    move-object v2, v5

    .line 663
    .end local v2    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    :goto_1
    :try_start_2
    check-cast v2, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 670
    .local v2, "created":Lio/nekohasekai/sagernet/database/ProxyGroup;
    sget-object v5, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v6

    iput-wide v6, v1, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->createdGroupId:J

    .line 671
    iget-object v5, v1, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x2

    iput v7, v1, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->label:I

    invoke-static {v5, v2, v6}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$updateGroup(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v2    # "created":Lio/nekohasekai/sagernet/database/ProxyGroup;
    if-ne v5, v0, :cond_3

    .line 663
    return-object v0

    .line 671
    :cond_3
    move-object v2, v5

    :goto_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 672
    :catch_1
    move-exception v0

    move-object v2, v4

    .line 673
    .end local v4    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .local v2, "$result":Ljava/lang/Object;
    :goto_3
    sget-object v4, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 674
    move-object v4, v2

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    :goto_4
    if-eqz v3, :rollback_import

    sget-object v5, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-wide v6, v1, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->createdGroupId:J

    invoke-virtual {v5, v6, v7}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedGroup(J)V

    goto :import_finished

    :rollback_import
    iget-wide v6, v1, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->createdGroupId:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :import_finished

    sget-object v5, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    const/4 v8, 0x3

    iput v8, v1, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;->label:I

    invoke-virtual {v5, v6, v7, v1}, Lio/nekohasekai/sagernet/database/GroupManager;->deleteGroup(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne v5, v0, :import_finished

    return-object v0

    :rollback_resumed
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :import_finished
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 675
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :rollback_resumed
    .end packed-switch
.end method
