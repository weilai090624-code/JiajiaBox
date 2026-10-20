.class final Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GroupSettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->onCreate(Landroid/os/Bundle;)V
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
    c = "io.nekohasekai.sagernet.ui.GroupSettingsActivity$onCreate$2"
    f = "GroupSettingsActivity.kt"
    i = {}
    l = {
        0xda,
        0xe2
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $editingId:J

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;


# direct methods
.method constructor <init>(JLio/nekohasekai/sagernet/ui/GroupSettingsActivity;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;->$editingId:J

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;->this$0:Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;

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

    new-instance v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;

    iget-wide v1, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;->$editingId:J

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;->this$0:Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;-><init>(JLio/nekohasekai/sagernet/ui/GroupSettingsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 212
    iget v2, v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    move-object/from16 v1, p1

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v1, p1

    .restart local v1    # "$result":Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    .line 213
    .local v2, "$result":Ljava/lang/Object;
    iget-wide v3, v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;->$editingId:J

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-nez v8, :cond_0

    .line 214
    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;->this$0:Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;

    new-instance v4, Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-object v8, v4

    const/16 v23, 0x3ff

    const/16 v24, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    invoke-direct/range {v8 .. v24}, Lio/nekohasekai/sagernet/database/ProxyGroup;-><init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v4}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->init(Lio/nekohasekai/sagernet/database/ProxyGroup;)V

    goto :goto_1

    .line 216
    :cond_0
    sget-object v3, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v3

    iget-wide v4, v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;->$editingId:J

    invoke-interface {v3, v4, v5}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->getById(J)Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-result-object v3

    .line 217
    .local v3, "entity":Lio/nekohasekai/sagernet/database/ProxyGroup;
    if-nez v3, :cond_2

    .line 218
    .end local v3    # "entity":Lio/nekohasekai/sagernet/database/ProxyGroup;
    new-instance v3, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2$1;

    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;->this$0:Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;

    invoke-direct {v3, v4, v7}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2$1;-><init>(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;->label:I

    invoke-static {v3, v4}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 212
    return-object v1

    .line 218
    :cond_1
    move-object v1, v2

    .line 221
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :goto_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 223
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v2    # "$result":Ljava/lang/Object;
    .restart local v3    # "entity":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :cond_2
    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;->this$0:Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;

    invoke-virtual {v4, v3}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->init(Lio/nekohasekai/sagernet/database/ProxyGroup;)V

    .line 226
    .end local v3    # "entity":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :goto_1
    new-instance v3, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2$2;

    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;->this$0:Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;

    invoke-direct {v3, v4, v7}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2$2;-><init>(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x2

    iput v5, v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;->label:I

    invoke-static {v3, v4}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_3

    .line 212
    return-object v1

    .line 226
    :cond_3
    move-object v1, v2

    .line 234
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :goto_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
