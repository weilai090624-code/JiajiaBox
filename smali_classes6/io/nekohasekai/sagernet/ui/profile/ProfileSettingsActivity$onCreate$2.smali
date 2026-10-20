.class final Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ProfileSettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->onCreate(Landroid/os/Bundle;)V
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
    c = "io.nekohasekai.sagernet.ui.profile.ProfileSettingsActivity$onCreate$2"
    f = "ProfileSettingsActivity.kt"
    i = {}
    l = {
        0x70,
        0x79
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $editingId:J

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->$editingId:J

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->this$0:Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;

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

    new-instance v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;

    iget-wide v1, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->$editingId:J

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->this$0:Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;-><init>(JLio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 106
    iget v1, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 107
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-wide v1, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->$editingId:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-nez v6, :cond_0

    .line 108
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->selectedGroupForImport()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/nekohasekai/sagernet/database/DataStore;->setEditingGroup(J)V

    .line 109
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->this$0:Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->this$0:Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->createEntity()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/fmt/Serializable;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->applyDefaultValues(Lio/nekohasekai/sagernet/fmt/Serializable;)Lio/nekohasekai/sagernet/fmt/Serializable;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->init(Lio/nekohasekai/sagernet/fmt/AbstractBean;)V

    goto :goto_1

    .line 111
    :cond_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->this$0:Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->getProxyEntity()Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v1

    if-nez v1, :cond_2

    .line 112
    new-instance v1, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2$1;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->this$0:Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;

    invoke-direct {v1, v2, v5}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2$1;-><init>(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->label:I

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 106
    return-object v0

    .line 115
    :cond_1
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 117
    :cond_2
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->this$0:Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->getProxyEntity()Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getGroupId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/nekohasekai/sagernet/database/DataStore;->setEditingGroup(J)V

    .line 118
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->this$0:Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->this$0:Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->getProxyEntity()Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type T of io.nekohasekai.sagernet.ui.profile.ProfileSettingsActivity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->init(Lio/nekohasekai/sagernet/fmt/AbstractBean;)V

    .line 121
    :goto_1
    new-instance v1, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2$2;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->this$0:Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;

    invoke-direct {v1, v2, v5}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2$2;-><init>(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x2

    iput v3, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;->label:I

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    .line 106
    return-object v0

    .line 126
    :cond_3
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
